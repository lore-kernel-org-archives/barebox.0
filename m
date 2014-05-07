Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Whwqk-0008KA-Sg
 for barebox@lists.infradead.org; Wed, 07 May 2014 08:05:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 May 2014 10:04:43 +0200
Message-Id: <1399449884-19089-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
References: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/14] ARM: i.MX5: Add IPU clocks
To: barebox@lists.infradead.org

Add the clocks for the IPU on i.MX5. Since these are many only
add them when the driver is enabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx5.c                | 121 ++++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx51-regs.h |   2 +
 arch/arm/mach-imx/include/mach/imx53-regs.h |   1 +
 3 files changed, 124 insertions(+)

diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index 8146359..1fc028c 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -113,6 +113,71 @@ static const char *usb_phy_sel_str[] = {
 	"usb_phy_podf",
 };
 
+static const char *mx51_ipu_di0_sel[] = {
+	"di_pred",
+	"osc",
+	"ckih1",
+	"tve_di",
+};
+
+static const char *mx53_ipu_di0_sel[] = {
+	"di_pred",
+	"osc",
+	"ckih1",
+	"di_pll4_podf",
+	"dummy",
+	"ldb_di0_div",
+};
+
+static const char *mx53_ldb_di0_sel[] = {
+	"pll3_sw",
+	"pll4_sw",
+};
+
+static const char *mx51_ipu_di1_sel[] = {
+	"di_pred",
+	"osc",
+	"ckih1",
+	"tve_di",
+	"ipp_di1",
+};
+
+static const char *mx53_ipu_di1_sel[] = {
+	"di_pred",
+	"osc",
+	"ckih1",
+	"tve_di",
+	"ipp_di1",
+	"ldb_di1_div",
+};
+
+static const char *mx53_ldb_di1_sel[] = {
+	"pll3_sw",
+	"pll4_sw",
+};
+
+static const char *mx51_tve_ext_sel[] = {
+	"osc",
+	"ckih1",
+};
+
+static const char *mx53_tve_ext_sel[] = {
+	"pll4_sw",
+	"ckih1",
+};
+
+static const char *mx51_tve_sel[] = {
+	"tve_pred",
+	"tve_ext_sel",
+};
+
+static const char *ipu_sel[] = {
+	"axi_a",
+	"axi_b",
+	"emi_slow_gate",
+	"ahb",
+};
+
 static void __init mx5_clocks_common_init(void __iomem *base, unsigned long rate_ckil,
 		unsigned long rate_osc, unsigned long rate_ckih1,
 		unsigned long rate_ckih2)
@@ -184,7 +249,31 @@ static void __init mx5_clocks_common_init(void __iomem *base, unsigned long rate
 	clks[IMX5_CLK_CPU_PODF] = imx_clk_divider("cpu_podf", "pll1_sw", base + CCM_CACRR, 0, 3);
 }
 
+static void mx5_clocks_ipu_init(void __iomem *regs)
+{
+	clks[IMX5_CLK_IPU_SEL]		= imx_clk_mux("ipu_sel", regs + CCM_CBCMR, 6, 2, ipu_sel, ARRAY_SIZE(ipu_sel));
+}
+
 #ifdef CONFIG_ARCH_IMX51
+static void mx51_clocks_ipu_init(void __iomem *regs)
+{
+	clks[IMX5_CLK_IPU_DI0_SEL]	= imx_clk_mux_p("ipu_di0_sel", regs + CCM_CSCMR2, 26, 3,
+						mx51_ipu_di0_sel, ARRAY_SIZE(mx51_ipu_di0_sel));
+	clks[IMX5_CLK_IPU_DI1_SEL]	= imx_clk_mux_p("ipu_di1_sel", regs + CCM_CSCMR2, 29, 3,
+						mx51_ipu_di1_sel, ARRAY_SIZE(mx51_ipu_di1_sel));
+	clks[IMX5_CLK_TVE_EXT_SEL]	= imx_clk_mux_p("tve_ext_sel", regs + CCM_CSCMR1, 6, 1,
+						mx51_tve_ext_sel, ARRAY_SIZE(mx51_tve_ext_sel));
+	clks[IMX5_CLK_TVE_SEL]		= imx_clk_mux("tve_sel", regs + CCM_CSCMR1, 7, 1,
+						mx51_tve_sel, ARRAY_SIZE(mx51_tve_sel));
+	clks[IMX5_CLK_TVE_PRED]		= imx_clk_divider("tve_pred", "pll3_sw", regs + CCM_CDCDR, 28, 3);
+
+	mx5_clocks_ipu_init(regs);
+
+	clkdev_add_physbase(clks[IMX5_CLK_IPU_SEL], MX51_IPU_BASE_ADDR, "bus");
+	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI0_SEL], MX51_IPU_BASE_ADDR, "di0");
+	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI1_SEL], MX51_IPU_BASE_ADDR, "di1");
+}
+
 int __init mx51_clocks_init(void __iomem *regs, unsigned long rate_ckil, unsigned long rate_osc,
 			unsigned long rate_ckih1, unsigned long rate_ckih2)
 {
@@ -212,6 +301,9 @@ int __init mx51_clocks_init(void __iomem *regs, unsigned long rate_ckil, unsigne
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM1_BASE_ADDR, "per");
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM2_BASE_ADDR, "per");
 
+	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
+		mx51_clocks_ipu_init(regs);
+
 	return 0;
 }
 
@@ -248,6 +340,32 @@ core_initcall(imx51_ccm_init);
 #endif
 
 #ifdef CONFIG_ARCH_IMX53
+static void mx53_clocks_ipu_init(void __iomem *regs)
+{
+	clks[IMX5_CLK_LDB_DI1_DIV_3_5]	= imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
+	clks[IMX5_CLK_LDB_DI1_DIV]	= imx_clk_divider("ldb_di1_div", "ldb_di1_div_3_5", regs + CCM_CSCMR2, 11, 1);
+	clks[IMX5_CLK_LDB_DI1_SEL]	= imx_clk_mux_p("ldb_di1_sel", regs + CCM_CSCMR2, 9, 1,
+						mx53_ldb_di1_sel, ARRAY_SIZE(mx53_ldb_di1_sel));
+	clks[IMX5_CLK_DI_PLL4_PODF]	= imx_clk_divider("di_pll4_podf", "pll4_sw", regs + CCM_CDCDR, 16, 3);
+	clks[IMX5_CLK_LDB_DI0_DIV_3_5]	= imx_clk_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
+	clks[IMX5_CLK_LDB_DI0_DIV]	= imx_clk_divider("ldb_di0_div", "ldb_di0_div_3_5", regs + CCM_CSCMR2, 10, 1);
+	clks[IMX5_CLK_LDB_DI0_SEL]	= imx_clk_mux_p("ldb_di0_sel", regs + CCM_CSCMR2, 8, 1,
+						mx53_ldb_di0_sel, ARRAY_SIZE(mx53_ldb_di0_sel));
+	clks[IMX5_CLK_IPU_DI0_SEL]	= imx_clk_mux_p("ipu_di0_sel", regs + CCM_CSCMR2, 26, 3,
+						mx53_ipu_di0_sel, ARRAY_SIZE(mx53_ipu_di0_sel));
+	clks[IMX5_CLK_IPU_DI1_SEL]	= imx_clk_mux_p("ipu_di1_sel", regs + CCM_CSCMR2, 29, 3,
+						mx53_ipu_di1_sel, ARRAY_SIZE(mx53_ipu_di1_sel));
+	clks[IMX5_CLK_TVE_EXT_SEL]	= imx_clk_mux_p("tve_ext_sel", regs + CCM_CSCMR1, 6, 1,
+						mx53_tve_ext_sel, ARRAY_SIZE(mx53_tve_ext_sel));
+	clks[IMX5_CLK_TVE_PRED]		= imx_clk_divider("tve_pred", "tve_ext_sel", regs + CCM_CDCDR, 28, 3);
+
+	mx5_clocks_ipu_init(regs);
+
+	clkdev_add_physbase(clks[IMX5_CLK_IPU_SEL], MX53_IPU_BASE_ADDR, "bus");
+	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI0_SEL], MX53_IPU_BASE_ADDR, "di0");
+	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI1_SEL], MX53_IPU_BASE_ADDR, "di1");
+}
+
 int __init mx53_clocks_init(void __iomem *regs, unsigned long rate_ckil, unsigned long rate_osc,
 			unsigned long rate_ckih1, unsigned long rate_ckih2)
 {
@@ -277,6 +395,9 @@ int __init mx53_clocks_init(void __iomem *regs, unsigned long rate_ckil, unsigne
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_PWM1_BASE_ADDR, "per");
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_PWM2_BASE_ADDR, "per");
 
+	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
+		mx53_clocks_ipu_init(regs);
+
 	return 0;
 }
 
diff --git a/arch/arm/mach-imx/include/mach/imx51-regs.h b/arch/arm/mach-imx/include/mach/imx51-regs.h
index 8eb74cd..b6685ce 100644
--- a/arch/arm/mach-imx/include/mach/imx51-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx51-regs.h
@@ -13,6 +13,8 @@
 
 #define MX51_IROM_BASE_ADDR	0x0
 
+#define MX51_IPU_BASE_ADDR	0x40000000
+
 /*
  * AIPS 1
  */
diff --git a/arch/arm/mach-imx/include/mach/imx53-regs.h b/arch/arm/mach-imx/include/mach/imx53-regs.h
index 473b942..9cd7723 100644
--- a/arch/arm/mach-imx/include/mach/imx53-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx53-regs.h
@@ -5,6 +5,7 @@
 
 #define MX53_SATA_BASE_ADDR	0x10000000
 
+#define MX53_IPU_BASE_ADDR	0x18000000
 /*
  * SPBA global module enabled #0
  */
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
