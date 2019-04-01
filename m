Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAuFu-00057W-Ow
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 10:33:32 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 12:32:57 +0200
Message-Id: <20190401103256.17914-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] clk: at91: fix compilation errors in sama5d2.c
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

sama5d2 was added along with the update to the upstream
device tree bindings, but wasn't wired in anywhere.

To prepare for usage in future sama5d2 support, fix
compilation errors related to absence of locks and
unavailability of audio/i2s clock/pll handling.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/sama5d2.c | 52 +++++---------------------------------
 1 file changed, 6 insertions(+), 46 deletions(-)

diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
index dc15f7d9cbf3..7627c584ac08 100644
--- a/drivers/clk/at91/sama5d2.c
+++ b/drivers/clk/at91/sama5d2.c
@@ -84,8 +84,6 @@ static const struct {
 	{ .n = "trng_clk",    .id = 47, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "pdmic_clk",   .id = 48, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "securam_clk", .id = 51, },
-	{ .n = "i2s0_clk",    .id = 54, .r = { .min = 0, .max = 83000000 }, },
-	{ .n = "i2s1_clk",    .id = 55, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "can0_clk",    .id = 56, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "can1_clk",    .id = 57, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "classd_clk",  .id = 59, .r = { .min = 0, .max = 83000000 }, },
@@ -123,8 +121,6 @@ static const struct {
 	{ .n = "pwm_gclk",    .id = 38, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "isc_gclk",    .id = 46, },
 	{ .n = "pdmic_gclk",  .id = 48, },
-	{ .n = "i2s0_gclk",   .id = 54, .pll = true },
-	{ .n = "i2s1_gclk",   .id = 55, .pll = true },
 	{ .n = "can0_gclk",   .id = 56, .r = { .min = 0, .max = 80000000 }, },
 	{ .n = "can1_gclk",   .id = 57, .r = { .min = 0, .max = 80000000 }, },
 	{ .n = "classd_gclk", .id = 59, .r = { .min = 0, .max = 100000000 },
@@ -136,7 +132,7 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	struct clk_range range = CLK_RANGE(0, 0);
 	const char *slck_name, *mainxtal_name;
 	struct pmc_data *sama5d2_pmc;
-	const char *parent_names[6];
+	const char *parent_names[5];
 	struct regmap *regmap, *regmap_sfr;
 	struct clk *hw;
 	int i;
@@ -157,7 +153,7 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	if (IS_ERR(regmap))
 		return;
 
-	sama5d2_pmc = pmc_data_allocate(PMC_I2S1_MUX + 1,
+	sama5d2_pmc = pmc_data_allocate(PMC_MCK2 + 1,
 					nck(sama5d2_systemck),
 					nck(sama5d2_periph32ck),
 					nck(sama5d2_gck));
@@ -193,21 +189,6 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	if (IS_ERR(hw))
 		goto err_free;
 
-	hw = at91_clk_register_audio_pll_frac(regmap, "audiopll_fracck",
-					      "mainck");
-	if (IS_ERR(hw))
-		goto err_free;
-
-	hw = at91_clk_register_audio_pll_pad(regmap, "audiopll_padck",
-					     "audiopll_fracck");
-	if (IS_ERR(hw))
-		goto err_free;
-
-	hw = at91_clk_register_audio_pll_pmc(regmap, "audiopll_pmcck",
-					     "audiopll_fracck");
-	if (IS_ERR(hw))
-		goto err_free;
-
 	regmap_sfr = syscon_regmap_lookup_by_compatible("atmel,sama5d2-sfr");
 	if (IS_ERR(regmap_sfr))
 		regmap_sfr = NULL;
@@ -270,7 +251,7 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	}
 
 	for (i = 0; i < ARRAY_SIZE(sama5d2_periphck); i++) {
-		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
+		hw = at91_clk_register_sam9x5_peripheral(regmap,
 							 sama5d2_periphck[i].n,
 							 "masterck",
 							 sama5d2_periphck[i].id,
@@ -282,7 +263,7 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	}
 
 	for (i = 0; i < ARRAY_SIZE(sama5d2_periph32ck); i++) {
-		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
+		hw = at91_clk_register_sam9x5_peripheral(regmap,
 							 sama5d2_periph32ck[i].n,
 							 "h32mxck",
 							 sama5d2_periph32ck[i].id,
@@ -298,11 +279,10 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
 	parent_names[4] = "mck";
-	parent_names[5] = "audiopll_pmcck";
 	for (i = 0; i < ARRAY_SIZE(sama5d2_gck); i++) {
-		hw = at91_clk_register_generated(regmap, &pmc_pcr_lock,
+		hw = at91_clk_register_generated(regmap,
 						 sama5d2_gck[i].n,
-						 parent_names, 6,
+						 parent_names, 5,
 						 sama5d2_gck[i].id,
 						 sama5d2_gck[i].pll,
 						 &sama5d2_gck[i].r);
@@ -312,26 +292,6 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 		sama5d2_pmc->ghws[sama5d2_gck[i].id] = hw;
 	}
 
-	if (regmap_sfr) {
-		parent_names[0] = "i2s0_clk";
-		parent_names[1] = "i2s0_gclk";
-		hw = at91_clk_i2s_mux_register(regmap_sfr, "i2s0_muxclk",
-					       parent_names, 2, 0);
-		if (IS_ERR(hw))
-			goto err_free;
-
-		sama5d2_pmc->chws[PMC_I2S0_MUX] = hw;
-
-		parent_names[0] = "i2s1_clk";
-		parent_names[1] = "i2s1_gclk";
-		hw = at91_clk_i2s_mux_register(regmap_sfr, "i2s1_muxclk",
-					       parent_names, 2, 1);
-		if (IS_ERR(hw))
-			goto err_free;
-
-		sama5d2_pmc->chws[PMC_I2S1_MUX] = hw;
-	}
-
 	of_clk_add_provider(np, of_clk_hw_pmc_get, sama5d2_pmc);
 
 	return;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
