Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TdeQM-0002za-K2
 for barebox@lists.infradead.org; Wed, 28 Nov 2012 09:59:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Nov 2012 10:59:17 +0100
Message-Id: <1354096760-14409-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354096760-14409-1-git-send-email-s.hauer@pengutronix.de>
References: <1354096760-14409-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM i.MX5: move pll setup defines to header file
To: barebox@lists.infradead.org

The pll setup function is exported, so it makes sense to export
the convenience wrappers for specific frequencies aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx51.c             |    7 -------
 arch/arm/mach-imx/imx53.c             |   18 ++++++------------
 arch/arm/mach-imx/include/mach/imx5.h |   10 +++++++++-
 3 files changed, 15 insertions(+), 20 deletions(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 3d0520a..d235bd2 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -94,13 +94,6 @@ postcore_initcall(imx51_init);
  * power up.
  */
 
-#define setup_pll_800(base)	imx5_setup_pll((base), 800,  (( 8 << 4) + ((1 - 1) << 0)), ( 3 - 1),  1)
-#define setup_pll_665(base)	imx5_setup_pll((base), 665,  (( 6 << 4) + ((1 - 1) << 0)), (96 - 1), 89)
-#define setup_pll_600(base)	imx5_setup_pll((base), 600,  (( 6 << 4) + ((1 - 1) << 0)), ( 4 - 1),  1)
-#define setup_pll_400(base)	imx5_setup_pll((base), 400,  (( 8 << 4) + ((2 - 1) << 0)), ( 3 - 1),  1)
-#define setup_pll_455(base)	imx5_setup_pll((base), 455,  (( 9 << 4) + ((2 - 1) << 0)), (48 - 1), 23)
-#define setup_pll_216(base)	imx5_setup_pll((base), 216,  (( 6 << 4) + ((3 - 1) << 0)), ( 4 - 1),  3)
-
 void imx51_init_lowlevel(unsigned int cpufreq_mhz)
 {
 	void __iomem *ccm = (void __iomem *)MX51_CCM_BASE_ADDR;
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 2d6557f..52fb8f7 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -75,12 +75,6 @@ static int imx53_init(void)
 }
 postcore_initcall(imx53_init);
 
-#define setup_pll_1000(base)	imx5_setup_pll((base), 1000, ((10 << 4) + ((1 - 1) << 0)), (12 - 1), 5)
-#define setup_pll_800(base)	imx5_setup_pll((base), 800, ((8 << 4) + ((1 - 1) << 0)), (3 - 1), 1)
-#define setup_pll_400(base)	imx5_setup_pll((base), 400, ((8 << 4) + ((2 - 1)  << 0)), (3 - 1), 1)
-#define setup_pll_455(base)	imx5_setup_pll((base), 455, ((9 << 4) + ((2 - 1)  << 0)), (48 - 1), 23)
-#define setup_pll_216(base)	imx5_setup_pll((base), 216, ((8 << 4) + ((2 - 1)  << 0)), (1 - 1), 1)
-
 void imx53_init_lowlevel(unsigned int cpufreq_mhz)
 {
 	void __iomem *ccm = (void __iomem *)MX53_CCM_BASE_ADDR;
@@ -113,11 +107,11 @@ void imx53_init_lowlevel(unsigned int cpufreq_mhz)
 	writel(0x4, ccm + MX5_CCM_CCSR);
 
 	if (cpufreq_mhz == 1000)
-		setup_pll_1000((void __iomem *)MX53_PLL1_BASE_ADDR);
+		imx5_setup_pll_1000((void __iomem *)MX53_PLL1_BASE_ADDR);
 	else
-		setup_pll_800((void __iomem *)MX53_PLL1_BASE_ADDR);
+		imx5_setup_pll_800((void __iomem *)MX53_PLL1_BASE_ADDR);
 
-	setup_pll_400((void __iomem *)MX53_PLL3_BASE_ADDR);
+	imx5_setup_pll_400((void __iomem *)MX53_PLL3_BASE_ADDR);
 
         /* Switch peripheral to PLL3 */
 	writel(0x00015154, ccm + MX5_CCM_CBCMR);
@@ -126,7 +120,7 @@ void imx53_init_lowlevel(unsigned int cpufreq_mhz)
 	/* make sure change is effective */
 	while (readl(ccm + MX5_CCM_CDHIPR));
 
-	setup_pll_400((void __iomem *)MX53_PLL2_BASE_ADDR);
+	imx5_setup_pll_400((void __iomem *)MX53_PLL2_BASE_ADDR);
 
 	/* Switch peripheral to PLL2 */
 	r = 0x00808145 |
@@ -152,8 +146,8 @@ void imx53_init_lowlevel(unsigned int cpufreq_mhz)
 	/* make sure change is effective */
 	while (readl(ccm + MX5_CCM_CDHIPR));
 
-	setup_pll_216((void __iomem *)MX53_PLL3_BASE_ADDR);
-	setup_pll_455((void __iomem *)MX53_PLL4_BASE_ADDR);
+	imx53_setup_pll_216((void __iomem *)MX53_PLL3_BASE_ADDR);
+	imx5_setup_pll_455((void __iomem *)MX53_PLL4_BASE_ADDR);
 
 	/* Set the platform clock dividers */
 	writel(0x00000124, MX53_ARM_BASE_ADDR + 0x14);
diff --git a/arch/arm/mach-imx/include/mach/imx5.h b/arch/arm/mach-imx/include/mach/imx5.h
index 4c19d28..0b1bfc6 100644
--- a/arch/arm/mach-imx/include/mach/imx5.h
+++ b/arch/arm/mach-imx/include/mach/imx5.h
@@ -3,7 +3,15 @@
 
 void imx51_init_lowlevel(unsigned int cpufreq_mhz);
 void imx53_init_lowlevel(unsigned int cpufreq_mhz);
-void imx5_setup_pll(void __iomem *base, int freq, u32 op, u32 mfd, u32 mfn);
 void imx5_init_lowlevel(void);
 
+void imx5_setup_pll(void __iomem *base, int freq, u32 op, u32 mfd, u32 mfn);
+
+#define imx5_setup_pll_1000(base)	imx5_setup_pll((base), 1000, ((10 << 4) + ((1 - 1) << 0)), (12 - 1), 5)
+#define imx5_setup_pll_800(base)	imx5_setup_pll((base),  800, (( 8 << 4) + ((1 - 1) << 0)), (3 - 1), 1)
+#define imx5_setup_pll_400(base)	imx5_setup_pll((base),  400, (( 8 << 4) + ((2 - 1) << 0)), (3 - 1), 1)
+#define imx5_setup_pll_455(base)	imx5_setup_pll((base),  455, (( 9 << 4) + ((2 - 1) << 0)), (48 - 1), 23)
+#define imx53_setup_pll_216(base)	imx5_setup_pll((base),  216, (( 8 << 4) + ((2 - 1) << 0)), (1 - 1), 1)
+#define imx51_setup_pll_216(base)	imx5_setup_pll((base),  216, (( 6 << 4) + ((3 - 1) << 0)), (4 - 1), 3)
+
 #endif /* __MACH_MX53_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
