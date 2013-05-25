Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgEd9-0000m2-Js
 for barebox@lists.infradead.org; Sat, 25 May 2013 13:35:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 25 May 2013 15:35:07 +0200
Message-Id: <1369488907-7397-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX51: PLL errata workaround
To: barebox@lists.infradead.org

This is a port of the official PLL errata workaround from Freescale.
The PLL's in the i.MX51 processor can go out of lock due to a metastable
condition in an analog flip-flop when used at high frequencies.
This workaround implements an undocumented feature in the PLL (dither
mode), which causes the effect of this failure to be much lower (in terms
of frequency deviation), avoiding system failure, or at least decreasing
the likelihood of system failure.

This is based on U-Boot commit:

  commit 9db1bfa110ac411ab3468e817f7f74b2439eb8c8
  Author: David Jander <david@protonic.nl>
  Date:   Wed Jul 13 21:11:53 2011 +0000

    ARM: MX51: PLL errata workaround

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx51.c             | 55 +++++++++++++++++++++++++++++++++--
 arch/arm/mach-imx/include/mach/imx5.h |  1 +
 2 files changed, 54 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 0766a21..fdf2374 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -98,15 +98,63 @@ postcore_initcall(imx51_init);
  * power up.
  */
 
+#define DP_MFN_800_DIT 60 /* PL Dither mode */
+
+/*
+ * Workaround for i.MX51 PLL errata. This is needed by all boards using the
+ * i.MX51 silicon version up until (including) 3.0 running at 800MHz.
+ * The PLL's in the i.MX51 processor can go out of lock due to a metastable
+ * condition in an analog flip-flop when used at high frequencies.
+ * This workaround implements an undocumented feature in the PLL (dither
+ * mode), which causes the effect of this failure to be much lower (in terms
+ * of frequency deviation), avoiding system failure, or at least decreasing
+ * the likelihood of system failure.
+ */
+static void imx51_setup_pll800_bug(void)
+{
+	void __iomem *base = (void *)MX51_PLL1_BASE_ADDR;
+	u32 dp_config;
+	volatile int i;
+
+	imx5_setup_pll_864(base);
+
+	dp_config = readl(base + MX5_PLL_DP_CONFIG);
+	dp_config &= ~MX5_PLL_DP_CONFIG_AREN;
+	writel(dp_config, base + MX5_PLL_DP_CONFIG);
+
+	/* Restart PLL with PLM = 1 */
+	writel(0x00001236, base + MX5_PLL_DP_CTL);
+
+	/* Wait for lock */
+	while (!(readl(base + MX5_PLL_DP_CTL) & 1));
+
+	/* Modify MFN value */
+	writel(DP_MFN_800_DIT, base + MX5_PLL_DP_MFN);
+	writel(DP_MFN_800_DIT, base + MX5_PLL_DP_HFS_MFN);
+
+	/* Reload MFN value */
+	writel(0x1, base + MX5_PLL_DP_CONFIG);
+
+	while (readl(base + MX5_PLL_DP_CONFIG) & 1);
+
+	/* Wait at least 4 us */
+	for (i = 0; i < 100; i++);
+
+	/* Enable auto-restart AREN bit */
+	dp_config |= MX5_PLL_DP_CONFIG_AREN;
+	writel(dp_config, base + MX5_PLL_DP_CONFIG);
+}
+
 void imx51_init_lowlevel(unsigned int cpufreq_mhz)
 {
 	void __iomem *ccm = (void __iomem *)MX51_CCM_BASE_ADDR;
 	u32 r;
+	int rev = imx_silicon_revision();
 
 	imx5_init_lowlevel();
 
 	/* disable write combine for TO 2 and lower revs */
-	if (imx_silicon_revision() < IMX_CHIP_REV_3_0) {
+	if (rev < IMX_CHIP_REV_3_0) {
 		__asm__ __volatile__("mrc 15, 1, %0, c9, c0, 1":"=r"(r));
 		r |= (1 << 25);
 		__asm__ __volatile__("mcr 15, 1, %0, c9, c0, 1" : : "r"(r));
@@ -138,7 +186,10 @@ void imx51_init_lowlevel(unsigned int cpufreq_mhz)
 		break;
 	default:
 		/* Default maximum 800MHz */
-		imx5_setup_pll_800((void __iomem *)MX51_PLL1_BASE_ADDR);
+		if (rev <= IMX_CHIP_REV_3_0)
+			imx51_setup_pll800_bug();
+		else
+			imx5_setup_pll_800((void __iomem *)MX51_PLL1_BASE_ADDR);
 		break;
 	}
 
diff --git a/arch/arm/mach-imx/include/mach/imx5.h b/arch/arm/mach-imx/include/mach/imx5.h
index 7f5c2ef..5d1a7d7 100644
--- a/arch/arm/mach-imx/include/mach/imx5.h
+++ b/arch/arm/mach-imx/include/mach/imx5.h
@@ -9,6 +9,7 @@ void imx5_init_lowlevel(void);
 void imx5_setup_pll(void __iomem *base, int freq, u32 op, u32 mfd, u32 mfn);
 
 #define imx5_setup_pll_1000(base)	imx5_setup_pll((base), 1000, ((10 << 4) + ((1 - 1) << 0)), (12 - 1), 5)
+#define imx5_setup_pll_864(base)	imx5_setup_pll((base),  864, (( 8 << 4) + ((1 - 1) << 0)), (180 - 1), 180)
 #define imx5_setup_pll_800(base)	imx5_setup_pll((base),  800, (( 8 << 4) + ((1 - 1) << 0)), (3 - 1), 1)
 #define imx5_setup_pll_665(base)	imx5_setup_pll((base),  665, (( 6 << 4) + ((1 - 1) << 0)), (96 - 1), 89)
 #define imx5_setup_pll_600(base)	imx5_setup_pll((base),  600, (( 6 << 4) + ((1 - 1) << 0)), ( 4 - 1),  1)
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
