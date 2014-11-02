Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xl1S0-0006pB-U3
 for barebox@lists.infradead.org; Sun, 02 Nov 2014 20:08:38 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id F008A26C200B
 for <barebox@lists.infradead.org>; Sun,  2 Nov 2014 21:06:50 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  2 Nov 2014 21:13:52 +0100
Message-Id: <1414959235-18095-11-git-send-email-dev@lynxeye.de>
In-Reply-To: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
References: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 10/13] clk: tegra124: add PCIe clocks
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/tegra/clk-tegra124.c | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index 3530127..d597a23 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -62,6 +62,15 @@ static struct tegra_clk_pll_freq_table pll_c_freq_table[] = {
 	{ 0, 0, 0, 0, 0, 0 },
 };
 
+static struct tegra_clk_pll_freq_table pll_e_freq_table[] = {
+	/* PLLE special case: use cpcon field to store cml divider value */
+	{336000000, 100000000, 100, 21, 16, 11},
+	{312000000, 100000000, 200, 26, 24, 13},
+	{13000000,  100000000, 200, 1,  26, 13},
+	{12000000,  100000000, 200, 1,  24, 13},
+	{0, 0, 0, 0, 0, 0},
+};
+
 static struct tegra_clk_pll_freq_table pll_p_freq_table[] = {
 	{12000000, 408000000, 408, 12, 0, 8},
 	{13000000, 408000000, 408, 13, 0, 8},
@@ -114,6 +123,21 @@ static struct tegra_clk_pll_params pll_c_params = {
 	.lock_delay = 300,
 };
 
+static struct tegra_clk_pll_params pll_e_params = {
+	.input_min = 12000000,
+	.input_max = 1000000000,
+	.cf_min = 12000000,
+	.cf_max = 75000000,
+	.vco_min = 1600000000,
+	.vco_max = 2400000000U,
+	.base_reg = CRC_PLLE_BASE,
+	.misc_reg = CRC_PLLE_MISC,
+	.aux_reg = CRC_PLLE_AUX,
+	.lock_bit_idx = CRC_PLLE_MISC_LOCK,
+	.lock_enable_bit_idx = CRC_PLLE_MISC_LOCK_ENABLE,
+	.lock_delay = 300,
+};
+
 static struct tegra_clk_pll_params pll_p_params = {
 	.input_min = 2000000,
 	.input_max = 31000000,
@@ -220,6 +244,11 @@ static void tegra124_pll_init(void)
 	clks[TEGRA124_CLK_PLL_U] = tegra_clk_register_pll("pll_u", "pll_ref",
 			car_base, 0, 0, &pll_u_params, TEGRA_PLLU |
 			TEGRA_PLL_HAS_CPCON, pll_u_freq_table);
+
+	/* PLLE */
+	clks[TEGRA124_CLK_PLL_E] = tegra_clk_register_plle_tegra114("pll_e",
+			"pll_ref", car_base, 0, 100000000, &pll_e_params,
+			TEGRA_PLL_FIXED | TEGRA_PLL_USE_LOCK, pll_e_freq_table);
 }
 
 static const char *mux_pllpcm_clkm[] = {"pll_p", "pll_c2", "pll_c", "pll_c3",
@@ -244,6 +273,12 @@ static void tegra124_periph_init(void)
 			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
 			CRC_CLK_SOURCE_UARTD, TEGRA124_CLK_UARTD,
 			TEGRA_PERIPH_ON_APB);
+	clks[TEGRA124_CLK_PCIE] = clk_gate("pcie", "clk_m",
+			car_base + CRC_CLK_OUT_ENB_U, 6, 0, 0);
+	clks[TEGRA124_CLK_AFI] = clk_gate("afi", "clk_m",
+			car_base + CRC_CLK_OUT_ENB_U, 8, 0, 0);
+	clks[TEGRA124_CLK_CML0] = clk_gate("cml0", "pll_e",
+			car_base + CRC_PLLE_AUX, 0, 0, 0);
 
 	/* peripheral clocks with a divider */
 	clks[TEGRA124_CLK_MSELECT] = tegra_clk_register_periph("mselect",
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
