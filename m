Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rbvcb-0003X9-JS
 for barebox@lists.infradead.org; Sat, 17 Dec 2011 14:52:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Dec 2011 15:52:02 +0100
Message-Id: <1324133529-2036-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
References: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] ARM i.MX51: implement a imx51_lowlevel_init
To: barebox@lists.infradead.org

Reimplement the code from lowlevel.S in C. It is run
from SDRAM anyway, so we can safely do this initialization
in a regular barebox environment instead in Assembly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx51.c             |  105 +++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx5.h |    1 +
 2 files changed, 106 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 2c1efed..2431e61 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -21,6 +21,8 @@
 #include <environment.h>
 #include <io.h>
 #include <mach/imx51-regs.h>
+#include <mach/imx5.h>
+#include <mach/clock-imx51_53.h>
 
 #include "gpio.h"
 
@@ -176,3 +178,106 @@ static int imx51_boot_save_loc(void)
 }
 
 coredevice_initcall(imx51_boot_save_loc);
+
+#define setup_pll_1000(base)	imx5_setup_pll((base), 1000, ((10 << 4) + ((1 - 1) << 0)), (12 - 1), 5)
+#define setup_pll_800(base)	imx5_setup_pll((base), 800, ((8 << 4) + ((1 - 1)  << 0)), (3 - 1), 1)
+#define setup_pll_665(base)	imx5_setup_pll((base), 665, ((6 << 4) + ((1 - 1)  << 0)), (96 - 1), 89)
+#define setup_pll_400(base)	imx5_setup_pll((base), 400, ((8 << 4) + ((2 - 1)  << 0)), (3 - 1), 1)
+#define setup_pll_455(base)	imx5_setup_pll((base), 455, ((9 << 4) + ((2 - 1)  << 0)), (48 - 1), 23)
+#define setup_pll_216(base)	imx5_setup_pll((base), 216, ((6 << 4) + ((3 - 1)  << 0)), (4 - 1), 3)
+
+void imx51_init_lowlevel(void)
+{
+	void __iomem *ccm = (void __iomem *)MX51_CCM_BASE_ADDR;
+	u32 r;
+
+	imx5_init_lowlevel();
+
+	/* disable write combine for TO 2 and lower revs */
+	if (imx_silicon_revision() < MX51_CHIP_REV_3_0) {
+		__asm__ __volatile__("mrc 15, 1, %0, c9, c0, 1":"=r"(r));
+		r |= (1 << 25);
+		__asm__ __volatile__("mcr 15, 1, %0, c9, c0, 1" : : "r"(r));
+	}
+
+	/* Gate of clocks to the peripherals first */
+	writel(0x3fffffff, ccm + MX5_CCM_CCGR0);
+	writel(0x00000000, ccm + MX5_CCM_CCGR1);
+	writel(0x00000000, ccm + MX5_CCM_CCGR2);
+	writel(0x00000000, ccm + MX5_CCM_CCGR3);
+	writel(0x00030000, ccm + MX5_CCM_CCGR4);
+	writel(0x00fff030, ccm + MX5_CCM_CCGR5);
+	writel(0x00000300, ccm + MX5_CCM_CCGR6);
+
+	/* Disable IPU and HSC dividers */
+	writel(0x00060000, ccm + MX5_CCM_CCDR);
+
+	/* Make sure to switch the DDR away from PLL 1 */
+	writel(0x19239145, ccm + MX5_CCM_CBCDR);
+	/* make sure divider effective */
+	while (readl(ccm + MX5_CCM_CDHIPR));
+
+	/* Switch ARM to step clock */
+	writel(0x4, ccm + MX5_CCM_CCSR);
+
+	setup_pll_800((void __iomem *)MX51_PLL1_BASE_ADDR);
+	setup_pll_665((void __iomem *)MX51_PLL3_BASE_ADDR);
+
+	/* Switch peripheral to PLL 3 */
+	writel(0x000010C0, ccm + MX5_CCM_CBCMR);
+	writel(0x13239145, ccm + MX5_CCM_CBCDR);
+
+	setup_pll_665((void __iomem *)MX51_PLL2_BASE_ADDR);
+
+	/* Switch peripheral to PLL2 */
+	writel(0x19239145, ccm + MX5_CCM_CBCDR);
+	writel(0x000020C0, ccm + MX5_CCM_CBCMR);
+
+	setup_pll_216((void __iomem *)MX51_PLL3_BASE_ADDR);
+
+	/* Set the platform clock dividers */
+	writel(0x00000124, MX51_ARM_BASE_ADDR + 0x14);
+
+	/* Run TO 3.0 at Full speed, for other TO's wait till we increase VDDGP */
+	if (imx_silicon_revision() == MX51_CHIP_REV_3_0)
+		writel(0x0, ccm + MX5_CCM_CACRR);
+	else
+		writel(0x1, ccm + MX5_CCM_CACRR);
+
+	/* Switch ARM back to PLL 1 */
+	writel(0x0, ccm + MX5_CCM_CCSR);
+
+	/* setup the rest */
+	/* Use lp_apm (24MHz) source for perclk */
+	writel(0x000020C2, ccm + MX5_CCM_CBCMR);
+	/* ddr clock from PLL 1, all perclk dividers are 1 since using 24MHz */
+	writel(0x59239100, ccm + MX5_CCM_CBCDR);
+
+	/* Restore the default values in the Gate registers */
+	writel(0xffffffff, ccm + MX5_CCM_CCGR0);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR1);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR2);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR3);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR4);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR5);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR6);
+
+	/* Use PLL 2 for UART's, get 66.5MHz from it */
+	writel(0xA5A2A020, ccm + MX5_CCM_CSCMR1);
+	writel(0x00C30321, ccm + MX5_CCM_CSCDR1);
+
+	/* make sure divider effective */
+	while (readl(ccm + MX5_CCM_CDHIPR));
+
+	writel(0x0, ccm + MX5_CCM_CCDR);
+
+	writel(0x1, 0x73fa8074);
+
+	r = readl(0x73f88000);
+	r |= 0x40;
+	writel(r, 0x73f88000);
+
+	r = readl(0x73f88004);
+	r |= 0x40;
+	writel(r, 0x73f88004);
+}
diff --git a/arch/arm/mach-imx/include/mach/imx5.h b/arch/arm/mach-imx/include/mach/imx5.h
index d034082..0491179 100644
--- a/arch/arm/mach-imx/include/mach/imx5.h
+++ b/arch/arm/mach-imx/include/mach/imx5.h
@@ -2,6 +2,7 @@
 #define __MACH_MX5_H
 
 void imx53_init_lowlevel(void);
+void imx51_init_lowlevel(void);
 void imx5_setup_pll(void __iomem *base, int freq, u32 op, u32 mfd, u32 mfn);
 void imx5_init_lowlevel(void);
 
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
