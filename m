Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttS-0005lX-3s
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttP-0003XA-Tv
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:31 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttP-0005FU-3U
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:57 +0200
Message-Id: <20200413075204.17544-15-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 14/21] clk: at91: delete no-longer required DT compat code
To: barebox@lists.infradead.org

Unlike Linux, we don't require barebox drivers to support old device
tree bindings. Following device tree compatibles are no longer present
in barebox latest import of dts/:

 * atmel,sama5d2-clk-generated
 * atmel,sama5d4-clk-h32mx
 * atmel,at91sam9g45-clk-pll
 * atmel,at91sam9g20-clk-pllb
 * atmel,at91sam9260-clk-slow

Drop their compat code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/dt-compat.c | 133 -----------------------------------
 1 file changed, 133 deletions(-)

diff --git a/drivers/clk/at91/dt-compat.c b/drivers/clk/at91/dt-compat.c
index beb86230f694..d82137638c4b 100644
--- a/drivers/clk/at91/dt-compat.c
+++ b/drivers/clk/at91/dt-compat.c
@@ -23,96 +23,6 @@
 
 #define SYSTEM_MAX_ID		31
 
-#ifdef CONFIG_HAVE_AT91_GENERATED_CLK
-#define GENERATED_SOURCE_MAX	6
-
-#define GCK_ID_I2S0		54
-#define GCK_ID_I2S1		55
-#define GCK_ID_CLASSD		59
-
-static void __init of_sama5d2_clk_generated_setup(struct device_node *np)
-{
-	int num;
-	u32 id;
-	const char *name;
-	struct clk *hw;
-	unsigned int num_parents;
-	const char *parent_names[GENERATED_SOURCE_MAX];
-	struct device_node *gcknp;
-	struct clk_range range = CLK_RANGE(0, 0);
-	struct regmap *regmap;
-
-	num_parents = of_clk_get_parent_count(np);
-	if (num_parents == 0 || num_parents > GENERATED_SOURCE_MAX)
-		return;
-
-	of_clk_parent_fill(np, parent_names, num_parents);
-
-	num = of_get_child_count(np);
-	if (!num || num > PERIPHERAL_MAX)
-		return;
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	for_each_child_of_node(np, gcknp) {
-		bool pll_audio = false;
-
-		if (of_property_read_u32(gcknp, "reg", &id))
-			continue;
-
-		if (id < PERIPHERAL_ID_MIN || id >= PERIPHERAL_MAX)
-			continue;
-
-		if (of_property_read_string(np, "clock-output-names", &name))
-			name = gcknp->name;
-
-		of_at91_get_clk_range(gcknp, "atmel,clk-output-range",
-				      &range);
-
-		if (of_device_is_compatible(np, "atmel,sama5d2-clk-generated") &&
-		    (id == GCK_ID_I2S0 || id == GCK_ID_I2S1 ||
-		     id == GCK_ID_CLASSD))
-			pll_audio = true;
-
-		hw = at91_clk_register_generated(regmap, name,
-						 parent_names, num_parents,
-						 id, pll_audio, &range);
-		if (IS_ERR(hw))
-			continue;
-
-		of_clk_add_provider(gcknp, of_clk_src_simple_get, hw);
-	}
-}
-CLK_OF_DECLARE(of_sama5d2_clk_generated_setup, "atmel,sama5d2-clk-generated",
-	       of_sama5d2_clk_generated_setup);
-#endif /* CONFIG_HAVE_AT91_GENERATED_CLK */
-
-#ifdef CONFIG_HAVE_AT91_H32MX
-static void __init of_sama5d4_clk_h32mx_setup(struct device_node *np)
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
-	hw = at91_clk_register_h32mx(regmap, name, parent_name);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(of_sama5d4_clk_h32mx_setup, "atmel,sama5d4-clk-h32mx",
-	       of_sama5d4_clk_h32mx_setup);
-#endif /* CONFIG_HAVE_AT91_H32MX */
-
 static void __init of_at91rm9200_clk_main_osc_setup(struct device_node *np)
 {
 	struct clk *hw;
@@ -505,20 +415,6 @@ static void __init of_at91rm9200_clk_pll_setup(struct device_node *np)
 CLK_OF_DECLARE(at91rm9200_clk_pll, "atmel,at91rm9200-clk-pll",
 	       of_at91rm9200_clk_pll_setup);
 
-static void __init of_at91sam9g45_clk_pll_setup(struct device_node *np)
-{
-	of_at91_clk_pll_setup(np, &at91sam9g45_pll_layout);
-}
-CLK_OF_DECLARE(at91sam9g45_clk_pll, "atmel,at91sam9g45-clk-pll",
-	       of_at91sam9g45_clk_pll_setup);
-
-static void __init of_at91sam9g20_clk_pllb_setup(struct device_node *np)
-{
-	of_at91_clk_pll_setup(np, &at91sam9g20_pllb_layout);
-}
-CLK_OF_DECLARE(at91sam9g20_clk_pllb, "atmel,at91sam9g20-clk-pllb",
-	       of_at91sam9g20_clk_pllb_setup);
-
 static void __init of_sama5d3_clk_pll_setup(struct device_node *np)
 {
 	of_at91_clk_pll_setup(np, &sama5d3_pll_layout);
@@ -616,35 +512,6 @@ static void __init of_at91sam9x5_clk_prog_setup(struct device_node *np)
 CLK_OF_DECLARE(at91sam9x5_clk_prog, "atmel,at91sam9x5-clk-programmable",
 	       of_at91sam9x5_clk_prog_setup);
 
-static void __init of_at91sam9260_clk_slow_setup(struct device_node *np)
-{
-	struct clk *hw;
-	const char *parent_names[2];
-	unsigned int num_parents;
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	num_parents = of_clk_get_parent_count(np);
-	if (num_parents != 2)
-		return;
-
-	of_clk_parent_fill(np, parent_names, num_parents);
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	hw = at91_clk_register_sam9260_slow(regmap, name, parent_names,
-					    num_parents);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(at91sam9260_clk_slow, "atmel,at91sam9260-clk-slow",
-	       of_at91sam9260_clk_slow_setup);
-
 #ifdef CONFIG_HAVE_AT91_SMD
 #define SMD_SOURCE_MAX		2
 
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
