Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XXCPD-00031J-PR
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 17:00:37 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 25 Sep 2014 19:05:03 +0200
Message-Id: <1411664709-13699-10-git-send-email-dev@lynxeye.de>
In-Reply-To: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
References: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 09/15] clk: tegra30: add PCIe clocks
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-tegra/include/mach/tegra20-car.h |  2 ++
 drivers/clk/tegra/clk-tegra30.c                | 31 ++++++++++++++++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/arch/arm/mach-tegra/include/mach/tegra20-car.h b/arch/arm/mach-tegra/include/mach/tegra20-car.h
index 161e3d8..5a35f21 100644
--- a/arch/arm/mach-tegra/include/mach/tegra20-car.h
+++ b/arch/arm/mach-tegra/include/mach/tegra20-car.h
@@ -49,6 +49,8 @@
 #define CRC_CLK_OUT_ENB_H		0x014
 #define CRC_CLK_OUT_ENB_H_DVC		(1 << 15)
 
+#define CRC_CLK_OUT_ENB_U		0x018
+
 #define CRC_CCLK_BURST_POLICY		0x020
 #define CRC_CCLK_BURST_POLICY_SYS_STATE_SHIFT	28
 #define CRC_CCLK_BURST_POLICY_SYS_STATE_FIQ	8
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index 3b50830..a1e80c6 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -130,6 +130,13 @@ static struct tegra_clk_pll_freq_table pll_u_freq_table[] = {
 	{ 0, 0, 0, 0, 0, 0 },
 };
 
+static struct tegra_clk_pll_freq_table pll_e_freq_table[] = {
+	/* PLLE special case: use cpcon field to store cml divider value */
+	{ 12000000,  100000000, 150, 1,  18, 11},
+	{ 216000000, 100000000, 200, 18, 24, 13},
+	{ 0, 0, 0, 0, 0, 0 },
+};
+
 /* PLL parameters */
 static struct tegra_clk_pll_params pll_c_params = {
 	.input_min = 2000000,
@@ -201,6 +208,19 @@ static struct tegra_clk_pll_params pll_u_params = {
 	.lock_delay = 1000,
 };
 
+static struct tegra_clk_pll_params pll_e_params = {
+	.input_min = 12000000,
+	.input_max = 216000000,
+	.cf_min = 12000000,
+	.cf_max = 12000000,
+	.vco_min = 1200000000,
+	.vco_max = 2400000000U,
+	.base_reg = CRC_PLLE_BASE,
+	.misc_reg = CRC_PLLE_MISC,
+	.lock_enable_bit_idx = CRC_PLLE_MISC_LOCK_ENABLE,
+	.lock_delay = 300,
+};
+
 static void tegra30_pll_init(void)
 {
 	/* PLLC */
@@ -251,6 +271,11 @@ static void tegra30_pll_init(void)
 	clks[TEGRA30_CLK_PLL_U] = tegra_clk_register_pll("pll_u", "pll_ref",
 			car_base, 0, 0, &pll_u_params, TEGRA_PLLU |
 			TEGRA_PLL_HAS_CPCON, pll_u_freq_table);
+
+	/* PLLE */
+	clks[TEGRA30_CLK_PLL_E] = tegra_clk_register_plle("pll_e", "pll_ref",
+			car_base, 0, 100000000, &pll_e_params,
+			TEGRA_PLL_FIXED | TEGRA_PLL_USE_LOCK, pll_e_freq_table);
 }
 
 static const char *mux_pllpcm_clkm[] = {"pll_p", "pll_c", "pll_m", "clk_m"};
@@ -278,6 +303,12 @@ static void tegra30_periph_init(void)
 			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
 			CRC_CLK_SOURCE_UARTE, TEGRA30_CLK_UARTE,
 			TEGRA_PERIPH_ON_APB);
+	clks[TEGRA30_CLK_PCIE] = clk_gate("pcie", "clk_m",
+			car_base + CRC_CLK_OUT_ENB_U, 6, 0, 0);
+	clks[TEGRA30_CLK_AFI] = clk_gate("afi", "clk_m",
+			car_base + CRC_CLK_OUT_ENB_U, 8, 0, 0);
+	clks[TEGRA30_CLK_CML0] = clk_gate("cml0", "pll_e",
+			car_base + CRC_PLLE_AUX, 0, 0, 0);
 
 	/* peripheral clocks with a divider */
 	clks[TEGRA30_CLK_MSELECT] = tegra_clk_register_periph("mselect",
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
