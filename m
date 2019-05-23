Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hToj4-0003Gb-AK
 for barebox@lists.infradead.org; Thu, 23 May 2019 14:29:47 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 May 2019 16:29:33 +0200
Message-Id: <20190523142932.14673-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190523142932.14673-1-a.fatoum@pengutronix.de>
References: <20190523142932.14673-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/2] clk: at91: delete dead i2s/audio code
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

They aren't used anywhere, thus drop them.

Suggested-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/dt-compat.c | 110 -----------------------------------
 drivers/clk/at91/pmc.c       |   2 -
 2 files changed, 112 deletions(-)

diff --git a/drivers/clk/at91/dt-compat.c b/drivers/clk/at91/dt-compat.c
index bbd670641bba..beb86230f694 100644
--- a/drivers/clk/at91/dt-compat.c
+++ b/drivers/clk/at91/dt-compat.c
@@ -23,77 +23,6 @@
 
 #define SYSTEM_MAX_ID		31
 
-#ifdef CONFIG_HAVE_AT91_AUDIO_PLL
-static void __init of_sama5d2_clk_audio_pll_frac_setup(struct device_node *np)
-{
-	struct clk *hw;
-	const char *name = np->name;
-	const char *parent_name;
-	struct regmap *regmap;
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-
-	hw = at91_clk_register_audio_pll_frac(regmap, name, parent_name);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(of_sama5d2_clk_audio_pll_frac_setup,
-	       "atmel,sama5d2-clk-audio-pll-frac",
-	       of_sama5d2_clk_audio_pll_frac_setup);
-
-static void __init of_sama5d2_clk_audio_pll_pad_setup(struct device_node *np)
-{
-	struct clk *hw;
-	const char *name = np->name;
-	const char *parent_name;
-	struct regmap *regmap;
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-
-	hw = at91_clk_register_audio_pll_pad(regmap, name, parent_name);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(of_sama5d2_clk_audio_pll_pad_setup,
-	       "atmel,sama5d2-clk-audio-pll-pad",
-	       of_sama5d2_clk_audio_pll_pad_setup);
-
-static void __init of_sama5d2_clk_audio_pll_pmc_setup(struct device_node *np)
-{
-	struct clk *hw;
-	const char *name = np->name;
-	const char *parent_name;
-	struct regmap *regmap;
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-
-	hw = at91_clk_register_audio_pll_pmc(regmap, name, parent_name);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(of_sama5d2_clk_audio_pll_pmc_setup,
-	       "atmel,sama5d2-clk-audio-pll-pmc",
-	       of_sama5d2_clk_audio_pll_pmc_setup);
-#endif /* CONFIG_HAVE_AT91_AUDIO_PLL */
-
 #ifdef CONFIG_HAVE_AT91_GENERATED_CLK
 #define GENERATED_SOURCE_MAX	6
 
@@ -184,45 +113,6 @@ CLK_OF_DECLARE(of_sama5d4_clk_h32mx_setup, "atmel,sama5d4-clk-h32mx",
 	       of_sama5d4_clk_h32mx_setup);
 #endif /* CONFIG_HAVE_AT91_H32MX */
 
-#ifdef CONFIG_HAVE_AT91_I2S_MUX_CLK
-#define	I2S_BUS_NR	2
-
-static void __init of_sama5d2_clk_i2s_mux_setup(struct device_node *np)
-{
-	struct regmap *regmap_sfr;
-	u8 bus_id;
-	const char *parent_names[2];
-	struct device_node *i2s_mux_np;
-	struct clk *hw;
-	int ret;
-
-	regmap_sfr = syscon_regmap_lookup_by_compatible("atmel,sama5d2-sfr");
-	if (IS_ERR(regmap_sfr))
-		return;
-
-	for_each_child_of_node(np, i2s_mux_np) {
-		if (of_property_read_u8(i2s_mux_np, "reg", &bus_id))
-			continue;
-
-		if (bus_id > I2S_BUS_NR)
-			continue;
-
-		ret = of_clk_parent_fill(i2s_mux_np, parent_names, 2);
-		if (ret != 2)
-			continue;
-
-		hw = at91_clk_i2s_mux_register(regmap_sfr, i2s_mux_np->name,
-					       parent_names, 2, bus_id);
-		if (IS_ERR(hw))
-			continue;
-
-		of_clk_add_provider(i2s_mux_np, of_clk_src_simple_get, hw);
-	}
-}
-CLK_OF_DECLARE(sama5d2_clk_i2s_mux, "atmel,sama5d2-clk-i2s-mux",
-	       of_sama5d2_clk_i2s_mux_setup);
-#endif /* CONFIG_HAVE_AT91_I2S_MUX_CLK */
-
 static void __init of_at91rm9200_clk_main_osc_setup(struct device_node *np)
 {
 	struct clk *hw;
diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
index aa73d61c5e49..86a50b680b8d 100644
--- a/drivers/clk/at91/pmc.c
+++ b/drivers/clk/at91/pmc.c
@@ -140,8 +140,6 @@ static struct
 	u32 imr;
 	u32 pcsr1;
 	u32 pcr[PMC_MAX_IDS];
-	u32 audio_pll0;
-	u32 audio_pll1;
 	u32 pckr[PMC_MAX_PCKS];
 } pmc_cache;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
