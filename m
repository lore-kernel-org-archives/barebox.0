Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d8k6i-0005hN-Pd
 for barebox@lists.infradead.org; Thu, 11 May 2017 09:10:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id DADA0A0072C
 for <barebox@lists.infradead.org>; Thu, 11 May 2017 11:10:18 +0200 (CEST)
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Thu, 11 May 2017 11:09:27 +0200
Message-Id: <1494493768-42043-2-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1494493768-42043-1-git-send-email-s.riedmueller@phytec.de>
References: <1494493768-42043-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 2/3] ARM: i.MX6ul: Add Clock support for i.MX6ull
To: barebox@lists.infradead.org

From linux-4.10 clock support, only skipped some unnecessary clocks

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 drivers/clk/imx/clk-imx6ul.c | 73 +++++++++++++++++++++++++++++++++++++-------
 1 file changed, 62 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index f28660d..b0a6bb0 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -66,10 +66,24 @@ static const char *perclk_sels[] = { "ipg", "osc", };
 static const char *lcdif_sels[] = { "lcdif_podf", "ipp_di0", "ipp_di1", "ldb_di0", "ldb_di1", };
 static const char *csi_sels[] = { "osc", "pll2_pfd2_396m", "pll3_120m", "pll3_pfd1_540m", };
 static const char *sim_sels[] = { "sim_podf", "ipp_di0", "ipp_di1", "ldb_di0", "ldb_di1", };
+/* epdc_pre_sels, epdc_sels, esai_sels only exists on i.MX6ULL */
+static const char *epdc_pre_sels[] = { "pll2_bus", "pll3_usb_otg", "pll5_video_div", "pll2_pfd0_352m", "pll2_pfd2_396m", "pll3_pfd2_508m", };
+static const char *esai_sels[] = { "pll4_audio_div", "pll3_pfd2_508m", "pll5_video_div", "pll3_usb_otg", };
+static const char *epdc_sels[] = { "epdc_podf", "ipp_di0", "ipp_di1", "ldb_di0", "ldb_di1", };
 
 static struct clk *clks[IMX6UL_CLK_END];
 static struct clk_onecell_data clk_data;
 
+static inline int clk_on_imx6ul(void)
+{
+	return of_machine_is_compatible("fsl,imx6ul");
+}
+
+static inline int clk_on_imx6ull(void)
+{
+	return of_machine_is_compatible("fsl,imx6ull");
+}
+
 static int const clks_init_on[] __initconst = {
 	IMX6UL_CLK_AIPSTZ1, IMX6UL_CLK_AIPSTZ2, IMX6UL_CLK_AIPSTZ3,
 	IMX6UL_CLK_AXI, IMX6UL_CLK_ARM, IMX6UL_CLK_ROM,
@@ -206,12 +220,19 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[IMX6UL_CLK_QSPI1_SEL]	  = imx_clk_mux("qspi1_sel",    base + 0x1c, 7,  3, qspi1_sels, ARRAY_SIZE(qspi1_sels));
 	clks[IMX6UL_CLK_PERCLK_SEL]	  = imx_clk_mux("perclk_sel",	base + 0x1c, 6,  1, perclk_sels, ARRAY_SIZE(perclk_sels));
 	clks[IMX6UL_CLK_CAN_SEL]	  = imx_clk_mux("can_sel",	base + 0x20, 8,  2, can_sels, ARRAY_SIZE(can_sels));
+	if (clk_on_imx6ull())
+		clks[IMX6ULL_CLK_ESAI_SEL]        = imx_clk_mux("esai_sel",     base + 0x20, 19, 2, esai_sels, ARRAY_SIZE(esai_sels));
 	clks[IMX6UL_CLK_UART_SEL]	  = imx_clk_mux("uart_sel",	base + 0x24, 6,  1, uart_sels, ARRAY_SIZE(uart_sels));
 	clks[IMX6UL_CLK_ENFC_SEL]	  = imx_clk_mux("enfc_sel",	base + 0x2c, 15, 3, enfc_sels, ARRAY_SIZE(enfc_sels));
 	clks[IMX6UL_CLK_LDB_DI0_SEL]	  = imx_clk_mux("ldb_di0_sel",	base + 0x2c, 9,  3, ldb_di0_sels, ARRAY_SIZE(ldb_di0_sels));
 	clks[IMX6UL_CLK_SPDIF_SEL]	  = imx_clk_mux("spdif_sel",	base + 0x30, 20, 2, spdif_sels, ARRAY_SIZE(spdif_sels));
-	clks[IMX6UL_CLK_SIM_PRE_SEL]	  = imx_clk_mux("sim_pre_sel",	base + 0x34, 15, 3, sim_pre_sels, ARRAY_SIZE(sim_pre_sels));
-	clks[IMX6UL_CLK_SIM_SEL]	  = imx_clk_mux("sim_sel",	base + 0x34, 9, 3, sim_sels, ARRAY_SIZE(sim_sels));
+	if (clk_on_imx6ul()) {
+		clks[IMX6UL_CLK_SIM_PRE_SEL]      = imx_clk_mux("sim_pre_sel",  base + 0x34, 15, 3, sim_pre_sels, ARRAY_SIZE(sim_pre_sels));
+		clks[IMX6UL_CLK_SIM_SEL]          = imx_clk_mux("sim_sel",      base + 0x34, 9, 3, sim_sels, ARRAY_SIZE(sim_sels));
+	} else if (clk_on_imx6ull()) {
+		clks[IMX6ULL_CLK_EPDC_PRE_SEL]    = imx_clk_mux("epdc_pre_sel", base + 0x34, 15, 3, epdc_pre_sels, ARRAY_SIZE(epdc_pre_sels));
+		clks[IMX6ULL_CLK_EPDC_SEL]        = imx_clk_mux("epdc_sel",     base + 0x34, 9, 3, epdc_sels, ARRAY_SIZE(epdc_sels));
+	}
 	clks[IMX6UL_CLK_ECSPI_SEL]	  = imx_clk_mux("ecspi_sel",	base + 0x38, 18, 1, ecspi_sels, ARRAY_SIZE(ecspi_sels));
 	clks[IMX6UL_CLK_LCDIF_PRE_SEL]	  = imx_clk_mux("lcdif_pre_sel", base + 0x38, 15, 3, lcdif_pre_sels, ARRAY_SIZE(lcdif_pre_sels));
 	clks[IMX6UL_CLK_LCDIF_SEL]	  = imx_clk_mux("lcdif_sel",	base + 0x38, 9, 3, lcdif_sels, ARRAY_SIZE(lcdif_sels));
@@ -244,6 +265,10 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[IMX6UL_CLK_SAI3_PODF]	= imx_clk_divider("sai3_podf",	   "sai3_pred",		base + 0x28, 16, 6);
 	clks[IMX6UL_CLK_SAI1_PRED]	= imx_clk_divider("sai1_pred",	   "sai1_sel",		base + 0x28, 6,	 3);
 	clks[IMX6UL_CLK_SAI1_PODF]	= imx_clk_divider("sai1_podf",	   "sai1_pred",		base + 0x28, 0,	 6);
+	if (clk_on_imx6ull()) {
+		clks[IMX6ULL_CLK_ESAI_PRED]     = imx_clk_divider("esai_pred",     "esai_sel",          base + 0x28, 9,  3);
+		clks[IMX6ULL_CLK_ESAI_PODF]     = imx_clk_divider("esai_podf",     "esai_pred",         base + 0x28, 25, 3);
+	}
 	clks[IMX6UL_CLK_ENFC_PRED]	= imx_clk_divider("enfc_pred",	   "enfc_sel",		base + 0x2c, 18, 3);
 	clks[IMX6UL_CLK_ENFC_PODF]	= imx_clk_divider("enfc_podf",	   "enfc_pred",		base + 0x2c, 21, 6);
 	clks[IMX6UL_CLK_SAI2_PRED]	= imx_clk_divider("sai2_pred",	   "sai2_sel",		base + 0x2c, 6,	 3);
@@ -264,9 +289,15 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[IMX6UL_CLK_AIPSTZ1]	= imx_clk_gate2("aips_tz1",	"ahb",		base + 0x68,	0);
 	clks[IMX6UL_CLK_AIPSTZ2]	= imx_clk_gate2("aips_tz2",	"ahb",		base + 0x68,	2);
 	clks[IMX6UL_CLK_APBHDMA]	= imx_clk_gate2("apbh_dma",	"bch_podf",	base + 0x68,	4);
-	clks[IMX6UL_CLK_CAAM_MEM]	= imx_clk_gate2("caam_mem",	"ahb",		base + 0x68,	8);
-	clks[IMX6UL_CLK_CAAM_ACLK]	= imx_clk_gate2("caam_aclk",	"ahb",		base + 0x68,	10);
-	clks[IMX6UL_CLK_CAAM_IPG]	= imx_clk_gate2("caam_ipg",	"ipg",		base + 0x68,	12);
+	if (clk_on_imx6ul()) {
+		clks[IMX6UL_CLK_CAAM_MEM]       = imx_clk_gate2("caam_mem",     "ahb",          base + 0x68,    8);
+		clks[IMX6UL_CLK_CAAM_ACLK]      = imx_clk_gate2("caam_aclk",    "ahb",          base + 0x68,    10);
+		clks[IMX6UL_CLK_CAAM_IPG]       = imx_clk_gate2("caam_ipg",     "ipg",          base + 0x68,    12);
+	} else if (clk_on_imx6ull()) {
+		clks[IMX6ULL_CLK_DCP_CLK]       = imx_clk_gate2("dcp",          "ahb",          base + 0x68,    10);
+		clks[IMX6UL_CLK_ENET]           = imx_clk_gate2("enet",         "ipg",          base + 0x68,    12);
+		clks[IMX6UL_CLK_ENET_AHB]       = imx_clk_gate2("enet_ahb",     "ahb",          base + 0x68,    12);
+	}
 	clks[IMX6UL_CLK_CAN1_IPG]	= imx_clk_gate2("can1_ipg",	"ipg",		base + 0x68,	14);
 	clks[IMX6UL_CLK_CAN1_SERIAL]	= imx_clk_gate2("can1_serial",	"can_podf",	base + 0x68,	16);
 	clks[IMX6UL_CLK_CAN2_IPG]	= imx_clk_gate2("can2_ipg",	"ipg",		base + 0x68,	18);
@@ -275,7 +306,10 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[IMX6UL_CLK_GPT2_SERIAL]	= imx_clk_gate2("gpt2_serial",	"perclk",	base + 0x68,	26);
 	clks[IMX6UL_CLK_UART2_IPG]	= imx_clk_gate2("uart2_ipg",	"ipg",		base + 0x68,	28);
 	clks[IMX6UL_CLK_UART2_SERIAL]	= imx_clk_gate2("uart2_serial",	"uart_podf",	base + 0x68,	28);
-	clks[IMX6UL_CLK_AIPSTZ3]	= imx_clk_gate2("aips_tz3",	"ahb",		base + 0x68,	30);
+	if (clk_on_imx6ul())
+		clks[IMX6UL_CLK_AIPSTZ3]        = imx_clk_gate2("aips_tz3",     "ahb",          base + 0x68,    30);
+	else if (clk_on_imx6ull())
+		clks[IMX6UL_CLK_AIPSTZ3]        = imx_clk_gate2("aips_tz3",     "ahb",           base + 0x80,   18);
 
 	/* CCGR1 */
 	clks[IMX6UL_CLK_ECSPI1]		= imx_clk_gate2("ecspi1",	"ecspi_podf",	base + 0x6c,	0);
@@ -294,6 +328,11 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[IMX6UL_CLK_UART4_SERIAL]	= imx_clk_gate2("uart4_serail",	"uart_podf",	base + 0x6c,	24);
 
 	/* CCGR2 */
+	if (clk_on_imx6ull()) {
+		clks[IMX6ULL_CLK_ESAI_EXTAL]	= imx_clk_gate2("esai_extal",	"esai_podf",	base + 0x70,	0);
+		clks[IMX6ULL_CLK_ESAI_IPG]	= imx_clk_gate2("esai_ipg",	"ahb",		base + 0x70,	0);
+		clks[IMX6ULL_CLK_ESAI_MEM]	= imx_clk_gate2("esai_mem",	"ahb",		base + 0x70,	0);
+	}
 	clks[IMX6UL_CLK_CSI]		= imx_clk_gate2("csi",		"csi_podf",		base + 0x70,	2);
 	clks[IMX6UL_CLK_I2C1]		= imx_clk_gate2("i2c1",		"perclk",	base + 0x70,	6);
 	clks[IMX6UL_CLK_I2C2]		= imx_clk_gate2("i2c2",		"perclk",	base + 0x70,	8);
@@ -306,8 +345,13 @@ static int imx6_ccm_probe(struct device_d *dev)
 	/* CCGR3 */
 	clks[IMX6UL_CLK_UART5_IPG]	= imx_clk_gate2("uart5_ipg",	"ipg",		base + 0x74,	2);
 	clks[IMX6UL_CLK_UART5_SERIAL]	= imx_clk_gate2("uart5_serial",	"uart_podf",	base + 0x74,	2);
-	clks[IMX6UL_CLK_ENET]		= imx_clk_gate2("enet",		"ipg",		base + 0x74,	4);
-	clks[IMX6UL_CLK_ENET_AHB]	= imx_clk_gate2("enet_ahb",	"ahb",		base + 0x74,	4);
+	if (clk_on_imx6ul()) {
+		clks[IMX6UL_CLK_ENET]           = imx_clk_gate2("enet",         "ipg",          base + 0x74,    4);
+		clks[IMX6UL_CLK_ENET_AHB]       = imx_clk_gate2("enet_ahb",     "ahb",          base + 0x74,    4);
+	} else if (clk_on_imx6ull()) {
+		clks[IMX6ULL_CLK_EPDC_ACLK]     = imx_clk_gate2("epdc_aclk",    "axi",          base + 0x74,    4);
+		clks[IMX6ULL_CLK_EPDC_PIX]      = imx_clk_gate2("epdc_pix",     "epdc_podf",    base + 0x74,    4);
+	}
 	clks[IMX6UL_CLK_UART6_IPG]	= imx_clk_gate2("uart6_ipg",	"ipg",		base + 0x74,	6);
 	clks[IMX6UL_CLK_UART6_SERIAL]	= imx_clk_gate2("uart6_serial",	"uart_podf",	base + 0x74,	6);
 	clks[IMX6UL_CLK_LCDIF_PIX]	= imx_clk_gate2("lcdif_pix",	"lcdif_podf",	base + 0x74,	10);
@@ -343,8 +387,10 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[IMX6UL_CLK_USBOH3]		= imx_clk_gate2("usboh3",	"ipg",		 base + 0x80,	0);
 	clks[IMX6UL_CLK_USDHC1]		= imx_clk_gate2("usdhc1",	"usdhc1_podf",	 base + 0x80,	2);
 	clks[IMX6UL_CLK_USDHC2]		= imx_clk_gate2("usdhc2",	"usdhc2_podf",	 base + 0x80,	4);
-	clks[IMX6UL_CLK_SIM1]		= imx_clk_gate2("sim1",		"sim_sel",	 base + 0x80,	6);
-	clks[IMX6UL_CLK_SIM2]		= imx_clk_gate2("sim2",		"sim_sel",	 base + 0x80,	8);
+	if (clk_on_imx6ul()) {
+		clks[IMX6UL_CLK_SIM1]           = imx_clk_gate2("sim1",         "sim_sel",       base + 0x80,   6);
+		clks[IMX6UL_CLK_SIM2]           = imx_clk_gate2("sim2",         "sim_sel",       base + 0x80,   8);
+	}
 	clks[IMX6UL_CLK_EIM]		= imx_clk_gate2("eim",		"eim_slow_podf", base + 0x80,	10);
 	clks[IMX6UL_CLK_PWM8]		= imx_clk_gate2("pwm8",		"perclk",	 base + 0x80,	16);
 	clks[IMX6UL_CLK_UART8_IPG]	= imx_clk_gate2("uart8_ipg",	"ipg",		 base + 0x80,	14);
@@ -397,7 +443,12 @@ static int imx6_ccm_probe(struct device_d *dev)
 	}
 
 	clk_set_parent(clks[IMX6UL_CLK_CAN_SEL], clks[IMX6UL_CLK_PLL3_60M]);
-	clk_set_parent(clks[IMX6UL_CLK_SIM_PRE_SEL], clks[IMX6UL_CLK_PLL3_USB_OTG]);
+	if (clk_on_imx6ul())
+		clk_set_parent(clks[IMX6UL_CLK_SIM_PRE_SEL],
+				clks[IMX6UL_CLK_PLL3_USB_OTG]);
+	else if (clk_on_imx6ull())
+		clk_set_parent(clks[IMX6ULL_CLK_EPDC_PRE_SEL],
+				clks[IMX6UL_CLK_PLL3_PFD2]);
 
 	clk_set_parent(clks[IMX6UL_CLK_ENFC_SEL], clks[IMX6UL_CLK_PLL2_PFD2]);
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
