Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tws2M-0007LI-Td
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 10:22:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 11:22:00 +0100
Message-Id: <1358677320-24306-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Add errata support
To: barebox@lists.infradead.org

Recently the Kernel disabled some errata fixups for multiplatform
support, these have to be done in the bootloader now. This adds
support for fixups for errata 743622 and 751472 present on i.MX6
and enables them for this SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/errata.h |   28 ++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx6.c      |    4 ++++
 2 files changed, 32 insertions(+)
 create mode 100644 arch/arm/include/asm/errata.h

diff --git a/arch/arm/include/asm/errata.h b/arch/arm/include/asm/errata.h
new file mode 100644
index 0000000..e7d0d6b
--- /dev/null
+++ b/arch/arm/include/asm/errata.h
@@ -0,0 +1,28 @@
+#ifndef __ARM_ERRATA_H
+#define __ARM_ERRATA_H
+
+static inline void arm_errata_743622(void)
+{
+	__asm__ __volatile__(
+		"mrc	p15, 0, r0, c15, c0, 1;"	/* read diagnostic register */
+		"orr	r0, r0, #1 << 6;"		/* set bit #6 */
+		"mcr	p15, 0, r0, c15, c0, 1;"	/* write diagnostic register */
+		:
+		:
+		: "r0"
+	);
+}
+
+static inline void arm_errata_751472(void)
+{
+	__asm__ __volatile__(
+		"mrc	p15, 0, r0, c15, c0, 1;"	/* read diagnostic register */
+		"orr	r0, r0, #1 << 11;"		/* set bit #11 */
+		"mcr	p15, 0, r0, c15, c0, 1;"	/* write diagnostic register */
+		:
+		:
+		: "r0"
+	);
+}
+
+#endif /* __ARM_ERRATA_H */
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 37ee5d8..5c35732 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -15,6 +15,7 @@
 #include <common.h>
 #include <io.h>
 #include <sizes.h>
+#include <asm/errata.h>
 #include <mach/generic.h>
 #include <mach/imx6-regs.h>
 
@@ -23,6 +24,9 @@ void imx6_init_lowlevel(void)
 	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
 	void __iomem *aips2 = (void *)MX6_AIPS2_ON_BASE_ADDR;
 
+	arm_errata_743622();
+	arm_errata_751472();
+
 	/*
 	 * Set all MPROTx to be non-bufferable, trusted for R/W,
 	 * not forced to user-mode.
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
