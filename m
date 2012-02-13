Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RwtL2-0008Sd-MJ
 for barebox@lists.infradead.org; Mon, 13 Feb 2012 10:40:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Feb 2012 11:40:35 +0100
Message-Id: <1329129636-22269-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329129636-22269-1-git-send-email-s.hauer@pengutronix.de>
References: <1329129636-22269-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM i.MX5: Allow to pass cpu clock to lowlevel init
To: barebox@lists.infradead.org

Some variants of the i.MX53 do not allow to run at 1GHz, so
pass a cpu frequency parameter to the lowlevel init function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx53-loco/board.c |    2 +-
 arch/arm/boards/freescale-mx53-smd/board.c  |    2 +-
 arch/arm/mach-imx/imx53.c                   |    9 +++++++--
 arch/arm/mach-imx/include/mach/imx5.h       |    2 +-
 4 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index fa3a409..dc930b6 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -155,7 +155,7 @@ static int loco_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(loco_pads, ARRAY_SIZE(loco_pads));
 
-	imx53_init_lowlevel();
+	imx53_init_lowlevel(1000);
 
 	imx53_add_uart0();
 	return 0;
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index e7aa419..a7259ba 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -160,7 +160,7 @@ static int smd_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(smd_pads, ARRAY_SIZE(smd_pads));
 
-	imx53_init_lowlevel();
+	imx53_init_lowlevel(1000);
 
 	imx53_add_uart0();
 	imx53_add_uart1();
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 2fb18e7..4f7d1cb 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -47,11 +47,12 @@ static int imx53_init(void)
 coredevice_initcall(imx53_init);
 
 #define setup_pll_1000(base)	imx5_setup_pll((base), 1000, ((10 << 4) + ((1 - 1) << 0)), (12 - 1), 5)
+#define setup_pll_800(base)	imx5_setup_pll((base), 800, ((8 << 4) + ((1 - 1) << 0)), (3 - 1), 1)
 #define setup_pll_400(base)	imx5_setup_pll((base), 400, ((8 << 4) + ((2 - 1)  << 0)), (3 - 1), 1)
 #define setup_pll_455(base)	imx5_setup_pll((base), 455, ((9 << 4) + ((2 - 1)  << 0)), (48 - 1), 23)
 #define setup_pll_216(base)	imx5_setup_pll((base), 216, ((8 << 4) + ((2 - 1)  << 0)), (1 - 1), 1)
 
-void imx53_init_lowlevel(void)
+void imx53_init_lowlevel(unsigned int cpufreq_mhz)
 {
 	void __iomem *ccm = (void __iomem *)MX53_CCM_BASE_ADDR;
 	u32 r;
@@ -82,7 +83,11 @@ void imx53_init_lowlevel(void)
 	/* Switch ARM to step clock */
 	writel(0x4, ccm + MX5_CCM_CCSR);
 
-	setup_pll_1000((void __iomem *)MX53_PLL1_BASE_ADDR);
+	if (cpufreq_mhz == 1000)
+		setup_pll_1000((void __iomem *)MX53_PLL1_BASE_ADDR);
+	else
+		setup_pll_800((void __iomem *)MX53_PLL1_BASE_ADDR);
+
 	setup_pll_400((void __iomem *)MX53_PLL3_BASE_ADDR);
 
         /* Switch peripheral to PLL3 */
diff --git a/arch/arm/mach-imx/include/mach/imx5.h b/arch/arm/mach-imx/include/mach/imx5.h
index 0491179..c33f75e 100644
--- a/arch/arm/mach-imx/include/mach/imx5.h
+++ b/arch/arm/mach-imx/include/mach/imx5.h
@@ -1,7 +1,7 @@
 #ifndef __MACH_MX5_H
 #define __MACH_MX5_H
 
-void imx53_init_lowlevel(void);
+void imx53_init_lowlevel(unsigned int cpufreq_mhz);
 void imx51_init_lowlevel(void);
 void imx5_setup_pll(void __iomem *base, int freq, u32 op, u32 mfd, u32 mfn);
 void imx5_init_lowlevel(void);
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
