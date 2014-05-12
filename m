Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjkJx-0004Hv-Je
 for barebox@lists.infradead.org; Mon, 12 May 2014 07:06:46 +0000
Received: from tellur.localdomain (p4FE65757.dip0.t-ipconnect.de
 [79.230.87.87]) by lynxeye.de (Postfix) with ESMTPA id DAC4A18B4274
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 09:04:56 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 12 May 2014 09:07:49 +0200
Message-Id: <1399878486-16086-9-git-send-email-dev@lynxeye.de>
In-Reply-To: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
References: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 08/25] clk: tegra30: register i2c clocks
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/tegra30-car.h |  2 ++
 drivers/clk/tegra/clk-tegra30.c                | 16 ++++++++++++++++
 2 files changed, 18 insertions(+)

diff --git a/arch/arm/mach-tegra/include/mach/tegra30-car.h b/arch/arm/mach-tegra/include/mach/tegra30-car.h
index ce11060..286a2a6 100644
--- a/arch/arm/mach-tegra/include/mach/tegra30-car.h
+++ b/arch/arm/mach-tegra/include/mach/tegra30-car.h
@@ -25,6 +25,8 @@
 #define CRC_CLK_SOURCE_MSEL_SRC_PLLM	2
 #define CRC_CLK_SOURCE_MSEL_SRC_CLKM	3
 
+#define CRC_CLK_SOURCE_I2C4		0x3c4
+
 #define CRC_RST_DEV_V_SET		0x430
 #define CRC_RST_DEV_V_MSELECT		(1 << 3)
 
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index 9536288..3b50830 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -296,6 +296,22 @@ static void tegra30_periph_init(void)
 	clks[TEGRA30_CLK_SDMMC4] = tegra_clk_register_periph("sdmmc4",
 			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
 			CRC_CLK_SOURCE_SDMMC4, TEGRA30_CLK_SDMMC4, 1);
+
+	clks[TEGRA30_CLK_I2C1] = tegra_clk_register_periph_div16("i2c1",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_I2C1, TEGRA30_CLK_I2C1, 1);
+	clks[TEGRA30_CLK_I2C2] = tegra_clk_register_periph_div16("i2c2",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_I2C2, TEGRA30_CLK_I2C2, 1);
+	clks[TEGRA30_CLK_I2C3] = tegra_clk_register_periph_div16("i2c3",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_I2C3, TEGRA30_CLK_I2C3, 1);
+	clks[TEGRA30_CLK_I2C4] = tegra_clk_register_periph_div16("i2c4",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_I2C4, TEGRA30_CLK_I2C4, 1);
+	clks[TEGRA30_CLK_I2C5] = tegra_clk_register_periph_div16("i2c5",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_DVC, TEGRA30_CLK_I2C5, 1);
 }
 
 static struct tegra_clk_init_table init_table[] = {
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
