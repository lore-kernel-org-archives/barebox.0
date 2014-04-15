Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZxxm-0002sd-Ap
 for barebox@lists.infradead.org; Tue, 15 Apr 2014 07:39:26 +0000
Received: by mail-lb0-f176.google.com with SMTP id 10so6409578lbg.7
 for <barebox@lists.infradead.org>; Tue, 15 Apr 2014 00:39:00 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 15 Apr 2014 11:38:26 +0400
Message-Id: <1397547514-19925-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
References: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 02/10] MIPS: introduce arch_shutdown()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/common.h |  2 +-
 arch/mips/lib/Makefile         |  1 +
 arch/mips/lib/shutdown.c       | 10 ++++++++++
 3 files changed, 12 insertions(+), 1 deletion(-)
 create mode 100644 arch/mips/lib/shutdown.c

diff --git a/arch/mips/include/asm/common.h b/arch/mips/include/asm/common.h
index 2f5419f..ae0d805 100644
--- a/arch/mips/include/asm/common.h
+++ b/arch/mips/include/asm/common.h
@@ -20,6 +20,6 @@
 #ifndef _ASM_MIPS_COMMON_H_
 #define _ASM_MIPS_COMMON_H_
 
-/* nothing special yet */
+#define ARCH_SHUTDOWN
 
 #endif /* _ASM_MIPS_COMMON_H_ */
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index f4aee2e..c4e2214 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -7,6 +7,7 @@ obj-y += cpu-probe.o
 obj-y += traps.o
 obj-y += genex.o
 obj-y += dma.o
+obj-y += shutdown.o
 
 obj-$(CONFIG_CPU_MIPS32) += c-r4k.o
 obj-$(CONFIG_CPU_MIPS64) += c-r4k.o
diff --git a/arch/mips/lib/shutdown.c b/arch/mips/lib/shutdown.c
new file mode 100644
index 0000000..6feec9b
--- /dev/null
+++ b/arch/mips/lib/shutdown.c
@@ -0,0 +1,10 @@
+/**
+ * This function is called by shutdown_barebox to get a clean
+ * memory/cache state.
+ */
+#include <common.h>
+
+void arch_shutdown(void)
+{
+}
+EXPORT_SYMBOL(arch_shutdown);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
