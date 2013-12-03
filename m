Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vnw2p-00074r-Ux
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 19:54:10 +0000
Received: from tellur.localdomain (p54831992.dip0.t-ipconnect.de
 [84.131.25.146]) by lynxeye.de (Postfix) with ESMTPA id 5DE5A18B426A
 for <barebox@lists.infradead.org>; Tue,  3 Dec 2013 20:52:22 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Dec 2013 20:56:59 +0100
Message-Id: <1386100622-8498-7-git-send-email-dev@lynxeye.de>
In-Reply-To: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
References: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 5/8] clk: tegra: add SDMMC clocks
To: barebox@lists.infradead.org

Provide peripheral clocks for the SD controller.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/tegra/clk-tegra20.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index b94b7bc..f68c811 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -295,6 +295,20 @@ static void tegra20_periph_init(void)
 	clks[uarte] = tegra_clk_register_periph_nodiv("uarte", mux_pllpcm_clkm,
 			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
 			CRC_CLK_SOURCE_UARTE, uarte, TEGRA_PERIPH_ON_APB);
+
+	/* peripheral clocks with a divider */
+	clks[sdmmc1] = tegra_clk_register_periph("sdmmc1", mux_pllpcm_clkm,
+			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_SDMMC1, sdmmc1, 1);
+	clks[sdmmc2] = tegra_clk_register_periph("sdmmc2", mux_pllpcm_clkm,
+			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_SDMMC2, sdmmc2, 1);
+	clks[sdmmc3] = tegra_clk_register_periph("sdmmc3", mux_pllpcm_clkm,
+			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_SDMMC3, sdmmc3, 1);
+	clks[sdmmc4] = tegra_clk_register_periph("sdmmc4", mux_pllpcm_clkm,
+			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_SDMMC4, sdmmc4, 1);
 }
 
 static struct tegra_clk_init_table init_table[] = {
@@ -310,6 +324,10 @@ static struct tegra_clk_init_table init_table[] = {
 	{uartc,		pll_p,		0,		1},
 	{uartd,		pll_p,		0,		1},
 	{uarte,		pll_p,		0,		1},
+	{sdmmc1,	pll_p,		48000000,	0},
+	{sdmmc2,	pll_p,		48000000,	0},
+	{sdmmc3,	pll_p,		48000000,	0},
+	{sdmmc4,	pll_p,		48000000,	0},
 	{clk_max,	clk_max,	0,		0}, /* sentinel */
 };
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
