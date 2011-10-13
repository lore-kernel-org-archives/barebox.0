Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RENEb-0005Q1-O8
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 15:30:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Oct 2011 17:30:03 +0200
Message-Id: <1318519808-14316-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1318519808-14316-1-git-send-email-s.hauer@pengutronix.de>
References: <1318519808-14316-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ARM i.MX53: Add lowlevel init code
To: barebox@lists.infradead.org

This adds lowlevel (AIPS, PLL, L2) initialization for i.MX53 boards.
This is a direct transcription of Freescales U-Boot assembler code
with the exception that we initialize PLL1 with 1000MHz and assume
that all necessary voltages are already adjusted when we arrive here.

It must be explicitely called from the boards so a board is free to
do it's own initialization. However, boards should use this code
and make it more configurable if necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx53.c                       |  147 +++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/clock-imx51_53.h |    3 +-
 arch/arm/mach-imx/include/mach/imx53.h          |    6 +
 3 files changed, 155 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/imx53.h

diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 8fb64bb..698a05a 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -20,6 +20,7 @@
 #include <io.h>
 #include <sizes.h>
 #include <mach/imx53-regs.h>
+#include <mach/clock-imx51_53.h>
 
 #include "gpio.h"
 
@@ -43,3 +44,149 @@ static int imx53_init(void)
 	return 0;
 }
 coredevice_initcall(imx53_init);
+
+static void setup_pll(void __iomem *base, int freq, u32 op, u32 mfd, u32 mfn)
+{
+	u32 r;
+
+	/*
+	 * If freq < 300MHz, we need to set dpdck0_2_en to 0
+	 */
+	r = 0x00000232;
+	if (freq >= 300)
+		r |= 0x1000;
+
+	writel(r, base + MX5_PLL_DP_CTL);
+
+	writel(0x2, base + MX5_PLL_DP_CONFIG);
+
+	writel(op, base + MX5_PLL_DP_OP);
+	writel(op, base + MX5_PLL_DP_HFS_OP);
+
+	writel(mfd, base + MX5_PLL_DP_MFD);
+	writel(mfd, base + MX5_PLL_DP_HFS_MFD);
+
+	writel(mfn, base + MX5_PLL_DP_MFN);
+	writel(mfn, base + MX5_PLL_DP_HFS_MFN);
+
+	writel(0x00001232, base + MX5_PLL_DP_CTL);
+
+	while (!(readl(base + MX5_PLL_DP_CTL) & 1));
+}
+
+#define setup_pll_1000(base)	setup_pll((base), 1000, ((10 << 4) + ((1 - 1) << 0)), (12 - 1), 5)
+#define setup_pll_400(base)	setup_pll((base), 400, ((8 << 4) + ((2 - 1)  << 0)), (3 - 1), 1)
+#define setup_pll_455(base)	setup_pll((base), 455, ((9 << 4) + ((2 - 1)  << 0)), (48 - 1), 23)
+#define setup_pll_216(base)	setup_pll((base), 216, ((8 << 4) + ((2 - 1)  << 0)), (1 - 1), 1)
+
+int mx53_init_lowlevel(void)
+{
+	void __iomem *ccm = (void __iomem *)MX53_CCM_BASE_ADDR;
+	u32 r;
+
+	/* ARM errata ID #468414 */
+        __asm__ __volatile__("mrc 15, 0, %0, c1, c0, 1":"=r"(r));
+	r |= (1 << 5);    /* enable L1NEON bit */
+	__asm__ __volatile__("mcr 15, 0, %0, c1, c0, 1" : : "r"(r));
+
+	/* explicitly disable L2 cache */
+        __asm__ __volatile__("mrc 15, 0, %0, c1, c0, 1":"=r"(r));
+	r &= ~(1 << 1);
+	__asm__ __volatile__("mcr 15, 0, %0, c1, c0, 1" : : "r"(r));
+
+
+        /* reconfigure L2 cache aux control reg */
+	r = 0xc0 |		/* tag RAM */
+		0x4 |		/* data RAM */
+		(1 << 24) |	/* disable write allocate delay */
+		(1 << 23) |	/* disable write allocate combine */
+		(1 << 22);	/* disable write allocate */
+
+	__asm__ __volatile__("mcr 15, 1, %0, c9, c0, 2" : : "r"(r));
+
+	/*
+	 * AIPS setup - Only setup MPROTx registers.
+	 * The PACR default values are good.
+	 * Set all MPROTx to be non-bufferable, trusted for R/W,
+	 * not forced to user-mode.
+	 */
+	writel(0x77777777, MX53_AIPS1_BASE_ADDR + 0);
+	writel(0x77777777, MX53_AIPS1_BASE_ADDR + 4);
+	writel(0x77777777, MX53_AIPS2_BASE_ADDR + 0);
+	writel(0x77777777, MX53_AIPS2_BASE_ADDR + 4);
+
+	/* Gate of clocks to the peripherals first */
+	writel(0x3fffffff, ccm + MX5_CCM_CCGR0);
+	writel(0x00000000, ccm + MX5_CCM_CCGR1);
+	writel(0x00000000, ccm + MX5_CCM_CCGR2);
+	writel(0x00000000, ccm + MX5_CCM_CCGR3);
+	writel(0x00030000, ccm + MX5_CCM_CCGR4);
+	writel(0x00fff030, ccm + MX5_CCM_CCGR5);
+	writel(0x0f00030f, ccm + MX5_CCM_CCGR6);
+	writel(0x00000000, ccm + MX53_CCM_CCGR7);
+
+	/* Switch ARM to step clock */
+	writel(0x4, ccm + MX5_CCM_CCSR);
+
+	setup_pll_1000((void __iomem *)MX53_PLL1_BASE_ADDR);
+	setup_pll_400((void __iomem *)MX53_PLL3_BASE_ADDR);
+
+        /* Switch peripheral to PLL3 */
+	writel(0x00015154, ccm + MX5_CCM_CBCMR);
+	writel(0x02888945 | (1<<16), ccm + MX5_CCM_CBCDR);
+
+	/* make sure change is effective */
+	while (readl(ccm + MX5_CCM_CDHIPR));
+
+	setup_pll_400((void __iomem *)MX53_PLL2_BASE_ADDR);
+
+	/* Switch peripheral to PLL2 */
+	r = 0x00808145 |
+		(2 << 10) |
+		(0 << 16) |
+		(1 << 19);
+
+	writel(r, ccm + MX5_CCM_CBCDR);
+
+	writel(0x00016154, ccm + MX5_CCM_CBCMR);
+
+	/* change uart clk parent to pll2 */
+	r = readl(ccm + MX5_CCM_CSCMR1);
+	r &= ~(3 << 24);
+	r |= (1 << 24);
+	writel(r, ccm + MX5_CCM_CSCMR1);
+
+	/* make sure change is effective */
+	while (readl(ccm + MX5_CCM_CDHIPR));
+
+	setup_pll_216((void __iomem *)MX53_PLL3_BASE_ADDR);
+	setup_pll_455((void __iomem *)MX53_PLL4_BASE_ADDR);
+
+	/* Set the platform clock dividers */
+	writel(0x00000124, MX53_ARM_BASE_ADDR + 0x14);
+
+	writel(0, ccm + MX5_CCM_CACRR);
+
+	/* Switch ARM back to PLL 1. */
+	writel(0, ccm + MX5_CCM_CCSR);
+
+	/* make uart div = 6*/
+	r = readl(ccm + MX5_CCM_CSCDR1);
+	r &= ~0x3f;
+	r |= 0x0a;
+	writel(r, ccm + MX5_CCM_CSCDR1);
+
+	/* Restore the default values in the Gate registers */
+	writel(0xffffffff, ccm + MX5_CCM_CCGR0);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR1);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR2);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR3);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR4);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR5);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR6);
+	writel(0xffffffff, ccm + MX53_CCM_CCGR7);
+
+	writel(0, ccm + MX5_CCM_CCDR);
+
+	return 0;
+}
diff --git a/arch/arm/mach-imx/include/mach/clock-imx51_53.h b/arch/arm/mach-imx/include/mach/clock-imx51_53.h
index 1e90d21..2525ccd 100644
--- a/arch/arm/mach-imx/include/mach/clock-imx51_53.h
+++ b/arch/arm/mach-imx/include/mach/clock-imx51_53.h
@@ -102,7 +102,8 @@
 #define MX5_CCM_CCGR4		0x78
 #define MX5_CCM_CCGR5		0x7C
 #define MX5_CCM_CCGR6		0x80
-#define MX5_CCM_CMEOR		0x84
+#define MX53_CCM_CCGR7		0x84
+#define MX51_CCM_CMEOR		0x84
 
 /* Define the bits in register CCR */
 #define MX5_CCM_CCR_COSC_EN		(1 << 12)
diff --git a/arch/arm/mach-imx/include/mach/imx53.h b/arch/arm/mach-imx/include/mach/imx53.h
new file mode 100644
index 0000000..b1f30d3
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx53.h
@@ -0,0 +1,6 @@
+#ifndef __MACH_MX53_H
+#define __MACH_MX53_H
+
+int mx53_init_lowlevel(void);
+
+#endif /* __MACH_MX53_H */
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
