Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PdnBL-0003yV-4M
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 17:11:24 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 14 Jan 2011 18:10:41 +0100
Message-Id: <1295025041-27099-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] arm: add __bswapsi2 support
To: barebox@lists.infradead.org

32-bit endian conversion

needed by gcc 4.5.1

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/Makefile    |    1 +
 arch/arm/lib/_bswapsi2.S |   14 ++++++++++++++
 2 files changed, 15 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/lib/_bswapsi2.S

diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 89cb72b..56818e8 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -12,6 +12,7 @@ obj-y	+= lib1funcs.o
 obj-y	+= ashrdi3.o
 obj-y	+= ashldi3.o
 obj-y	+= lshrdi3.o
+obj-y	+= _bswapsi2.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
 
diff --git a/arch/arm/lib/_bswapsi2.S b/arch/arm/lib/_bswapsi2.S
new file mode 100644
index 0000000..7f45fa5
--- /dev/null
+++ b/arch/arm/lib/_bswapsi2.S
@@ -0,0 +1,14 @@
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+ENTRY(__bswapsi2)
+#if __LINUX_ARM_ARCH__ <= 5
+	eor	r1, r0, r0, ror #16
+	bic	r1, r1, #0xff0000
+	mov	r0, r0, ror #8
+	eor	r0, r0, r1, lsr #8
+#else
+	rev	r0, r0
+#endif
+	bx	lr
+ENDPROC(__bswapsi2)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
