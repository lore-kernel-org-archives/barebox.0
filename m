Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNqS-0001WL-MW
 for barebox@lists.infradead.org; Tue, 16 Jul 2019 13:50:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jul 2019 15:49:44 +0200
Message-Id: <20190716134948.8609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] ARM: Fix global_variable_offset() for aarch64
To: Barebox List <barebox@lists.infradead.org>

Not all toolchains use pc relative addresses for global variables.
Apparently the gcc 8.3.0 YOCTO toolchain uses absolute addresses.
This means can't simply return 0 for global_variable_offset() but
instead have to calculate the offset between the compile addresses
for global variables and their runtime address.
We do this by getting the address of a global variable pc relative
explicitely in assembly and substracting that address from the
location the C compiler thinks they are.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 9840482b23..8b2ecd9ab2 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -31,6 +31,7 @@
 #include <linux/types.h>
 #include <linux/compiler.h>
 #include <asm/barebox-arm-head.h>
+#include <asm/sections.h>
 
 /*
  * We have a 4GiB address space split into 1MiB sections, with each
@@ -43,15 +44,22 @@ unsigned long get_runtime_offset(void);
 /* global_variable_offset() - Access global variables when not running at link address
  *
  * Get the offset of global variables when not running at the address we are
- * linked at. ARM uses absolute addresses, so we must add the runtime offset
- * whereas aarch64 uses PC relative addresses, so nothing must be done here.
+ * linked at.
  */
 static inline unsigned long global_variable_offset(void)
 {
-	if (IS_ENABLED(CONFIG_CPU_32))
-		return get_runtime_offset();
-	else
-		return 0;
+#ifdef CONFIG_CPU_V8
+	unsigned long text;
+
+	__asm__ __volatile__(
+		"adr    %0, _text\n"
+		: "=r" (text)
+		:
+		: "memory");
+	return text - (unsigned long)_text;
+#else
+	return get_runtime_offset();
+#endif
 }
 
 void setup_c(void);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
