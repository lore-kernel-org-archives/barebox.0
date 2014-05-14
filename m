Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg5e-0000PD-GD
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:47:51 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id 75D1C18B425A
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:46:02 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:36 +0200
Message-Id: <1400100352-13002-9-git-send-email-dev@lynxeye.de>
In-Reply-To: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
References: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 09/25] clk: tegra20: register i2c clocks
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/tegra/clk-tegra20.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index cb0a57181de4..5803414b9338 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -301,6 +301,19 @@ static void tegra20_periph_init(void)
 	clks[TEGRA20_CLK_SDMMC4] = tegra_clk_register_periph("sdmmc4",
 			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
 			CRC_CLK_SOURCE_SDMMC4, TEGRA20_CLK_SDMMC4, 1);
+
+	clks[TEGRA20_CLK_I2C1] = tegra_clk_register_periph_div16("i2c1",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_I2C1, TEGRA20_CLK_I2C1, 1);
+	clks[TEGRA20_CLK_I2C2] = tegra_clk_register_periph_div16("i2c2",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_I2C2, TEGRA20_CLK_I2C2, 1);
+	clks[TEGRA20_CLK_I2C3] = tegra_clk_register_periph_div16("i2c3",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_I2C3, TEGRA20_CLK_I2C3, 1);
+	clks[TEGRA20_CLK_DVC] = tegra_clk_register_periph_div16("dvc",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_DVC, TEGRA20_CLK_DVC, 1);
 }
 
 static struct tegra_clk_init_table init_table[] = {
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
