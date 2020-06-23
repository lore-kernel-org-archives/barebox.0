Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnivT-0003Zg-Rt
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:25:30 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Jun 2020 15:25:20 +0200
Message-Id: <20200623132521.4727-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200623132521.4727-1-a.fatoum@pengutronix.de>
References: <20200623132521.4727-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/4] clk: at91: remove no-longer needed dt-compat code
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

dt-compat.c implemented bindings for following compatibles:

	atmel,at91rm9200-clk-main-osc
	atmel,at91sam9x5-clk-main-rc-osc
	atmel,at91rm9200-clk-main
	atmel,at91sam9x5-clk-main
	atmel,at91rm9200-clk-master
	atmel,at91sam9x5-clk-master
	atmel,at91rm9200-clk-peripheral
	atmel,at91sam9x5-clk-peripheral
	atmel,at91rm9200-clk-pll
	atmel,sama5d3-clk-pll
	atmel,at91sam9x5-clk-plldiv
	atmel,at91rm9200-clk-programmable
	atmel,at91sam9g45-clk-programmable
	atmel,at91sam9x5-clk-programmable
	atmel,at91sam9x5-clk-smd
	atmel,at91rm9200-clk-system
	atmel,at91sam9x5-clk-usb
	atmel,at91sam9n12-clk-usb
	atmel,at91rm9200-clk-usb
	atmel,at91sam9x5-clk-utmi

With the recent v5.8-rc1 sync, we no longer have any device trees in
the barebox repository that use these. Unlike Linux, we don't need to
support probing from old device trees, so drop the now unused code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/Makefile    |  10 +-
 drivers/clk/at91/dt-compat.c | 727 -----------------------------------
 2 files changed, 5 insertions(+), 732 deletions(-)
 delete mode 100644 drivers/clk/at91/dt-compat.c

diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
index 08958699d522..083555b4d2d3 100644
--- a/drivers/clk/at91/Makefile
+++ b/drivers/clk/at91/Makefile
@@ -15,11 +15,11 @@ obj-$(CONFIG_HAVE_AT91_H32MX)		+= clk-h32mx.o
 obj-$(CONFIG_HAVE_AT91_GENERATED_CLK)	+= clk-generated.o
 obj-$(CONFIG_HAVE_AT91_I2S_MUX_CLK)	+= clk-i2s-mux.o
 obj-$(CONFIG_HAVE_AT91_SAM9X60_PLL)	+= clk-sam9x60-pll.o
-obj-$(CONFIG_SOC_AT91RM9200) += at91rm9200.o dt-compat.o
-obj-$(CONFIG_SOC_AT91SAM9) += at91sam9260.o at91sam9rl.o at91sam9x5.o dt-compat.o
-obj-$(CONFIG_SOC_AT91SAM9) += at91sam9g45.o dt-compat.o
-obj-$(CONFIG_SOC_AT91SAM9) += at91sam9n12.o at91sam9x5.o dt-compat.o
+obj-$(CONFIG_SOC_AT91RM9200) += at91rm9200.o
+obj-$(CONFIG_SOC_AT91SAM9) += at91sam9260.o at91sam9rl.o at91sam9x5.o
+obj-$(CONFIG_SOC_AT91SAM9) += at91sam9g45.o
+obj-$(CONFIG_SOC_AT91SAM9) += at91sam9n12.o at91sam9x5.o
 obj-$(CONFIG_SOC_SAM9X60) += sam9x60.o
+obj-$(CONFIG_SOC_SAMA5D3) += sama5d3.o
 obj-$(CONFIG_SOC_SAMA5D4) += sama5d4.o
-obj-$(CONFIG_SOC_SAMA5D3) += sama5d3.o dt-compat.o
 obj-$(CONFIG_SOC_SAMA5D2) += sama5d2.o
diff --git a/drivers/clk/at91/dt-compat.c b/drivers/clk/at91/dt-compat.c
deleted file mode 100644
index b888249199b5..000000000000
--- a/drivers/clk/at91/dt-compat.c
+++ /dev/null
@@ -1,727 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-#include <linux/kernel.h>
-#include <linux/clk.h>
-#include <of.h>
-#include <driver.h>
-#include <regmap.h>
-#include <mfd/syscon.h>
-
-
-#include "pmc.h"
-
-#define MASTER_SOURCE_MAX	4
-
-#define PERIPHERAL_AT91RM9200	0
-#define PERIPHERAL_AT91SAM9X5	1
-
-#define PERIPHERAL_MAX		64
-
-#define PERIPHERAL_ID_MIN	2
-
-#define PROG_SOURCE_MAX		5
-#define PROG_ID_MAX		7
-
-#define SYSTEM_MAX_ID		31
-
-static const struct clk_pcr_layout dt_pcr_layout = {
-	.offset = 0x10c,
-	.cmd = BIT(12),
-	.pid_mask = GENMASK(5, 0),
-	.div_mask = GENMASK(17, 16),
-	.gckcss_mask = GENMASK(10, 8),
-};
-
-static void __init of_at91rm9200_clk_main_osc_setup(struct device_node *np)
-{
-	struct clk *hw;
-	const char *name = np->name;
-	const char *parent_name;
-	struct regmap *regmap;
-	bool bypass;
-
-	of_property_read_string(np, "clock-output-names", &name);
-	bypass = of_property_read_bool(np, "atmel,osc-bypass");
-	parent_name = of_clk_get_parent_name(np, 0);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	hw = at91_clk_register_main_osc(regmap, name, parent_name, bypass);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(at91rm9200_clk_main_osc, "atmel,at91rm9200-clk-main-osc",
-	       of_at91rm9200_clk_main_osc_setup);
-
-static void __init of_at91sam9x5_clk_main_rc_osc_setup(struct device_node *np)
-{
-	struct clk *hw;
-	u32 frequency = 0;
-	u32 accuracy = 0;
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	of_property_read_string(np, "clock-output-names", &name);
-	of_property_read_u32(np, "clock-frequency", &frequency);
-	of_property_read_u32(np, "clock-accuracy", &accuracy);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	hw = at91_clk_register_main_rc_osc(regmap, name, frequency, accuracy);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_main_rc_osc, "atmel,at91sam9x5-clk-main-rc-osc",
-	       of_at91sam9x5_clk_main_rc_osc_setup);
-
-static void __init of_at91rm9200_clk_main_setup(struct device_node *np)
-{
-	struct clk *hw;
-	const char *parent_name;
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-	of_property_read_string(np, "clock-output-names", &name);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	hw = at91_clk_register_rm9200_main(regmap, name, parent_name);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(at91rm9200_clk_main, "atmel,at91rm9200-clk-main",
-	       of_at91rm9200_clk_main_setup);
-
-static void __init of_at91sam9x5_clk_main_setup(struct device_node *np)
-{
-	struct clk *hw;
-	const char *parent_names[2];
-	unsigned int num_parents;
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	num_parents = of_clk_get_parent_count(np);
-	if (num_parents == 0 || num_parents > 2)
-		return;
-
-	of_clk_parent_fill(np, parent_names, num_parents);
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	hw = at91_clk_register_sam9x5_main(regmap, name, parent_names,
-					   num_parents);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_main, "atmel,at91sam9x5-clk-main",
-	       of_at91sam9x5_clk_main_setup);
-
-static struct clk_master_characteristics * __init
-of_at91_clk_master_get_characteristics(struct device_node *np)
-{
-	struct clk_master_characteristics *characteristics;
-
-	characteristics = kzalloc(sizeof(*characteristics), GFP_KERNEL);
-	if (!characteristics)
-		return NULL;
-
-	if (of_at91_get_clk_range(np, "atmel,clk-output-range", &characteristics->output))
-		goto out_free_characteristics;
-
-	of_property_read_u32_array(np, "atmel,clk-divisors",
-				   characteristics->divisors, 4);
-
-	characteristics->have_div3_pres =
-		of_property_read_bool(np, "atmel,master-clk-have-div3-pres");
-
-	return characteristics;
-
-out_free_characteristics:
-	kfree(characteristics);
-	return NULL;
-}
-
-static void __init
-of_at91_clk_master_setup(struct device_node *np,
-			 const struct clk_master_layout *layout)
-{
-	struct clk *hw;
-	unsigned int num_parents;
-	const char *parent_names[MASTER_SOURCE_MAX];
-	const char *name = np->name;
-	struct clk_master_characteristics *characteristics;
-	struct regmap *regmap;
-
-	num_parents = of_clk_get_parent_count(np);
-	if (num_parents == 0 || num_parents > MASTER_SOURCE_MAX)
-		return;
-
-	of_clk_parent_fill(np, parent_names, num_parents);
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	characteristics = of_at91_clk_master_get_characteristics(np);
-	if (!characteristics)
-		return;
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	hw = at91_clk_register_master(regmap, name, num_parents,
-				      parent_names, layout,
-				      characteristics);
-	if (IS_ERR(hw))
-		goto out_free_characteristics;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-	return;
-
-out_free_characteristics:
-	kfree(characteristics);
-}
-
-static void __init of_at91rm9200_clk_master_setup(struct device_node *np)
-{
-	of_at91_clk_master_setup(np, &at91rm9200_master_layout);
-}
-CLK_OF_DECLARE(at91rm9200_clk_master, "atmel,at91rm9200-clk-master",
-	       of_at91rm9200_clk_master_setup);
-
-static void __init of_at91sam9x5_clk_master_setup(struct device_node *np)
-{
-	of_at91_clk_master_setup(np, &at91sam9x5_master_layout);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_master, "atmel,at91sam9x5-clk-master",
-	       of_at91sam9x5_clk_master_setup);
-
-static void __init
-of_at91_clk_periph_setup(struct device_node *np, u8 type)
-{
-	int num;
-	u32 id;
-	struct clk *hw;
-	const char *parent_name;
-	const char *name;
-	struct device_node *periphclknp;
-	struct regmap *regmap;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-	if (!parent_name)
-		return;
-
-	num = of_get_child_count(np);
-	if (!num || num > PERIPHERAL_MAX)
-		return;
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	for_each_child_of_node(np, periphclknp) {
-		if (of_property_read_u32(periphclknp, "reg", &id))
-			continue;
-
-		if (id >= PERIPHERAL_MAX)
-			continue;
-
-		if (of_property_read_string(np, "clock-output-names", &name))
-			name = periphclknp->name;
-
-		if (type == PERIPHERAL_AT91RM9200) {
-			hw = at91_clk_register_peripheral(regmap, name,
-							  parent_name, id);
-		} else {
-			struct clk_range range = CLK_RANGE(0, 0);
-
-			of_at91_get_clk_range(periphclknp,
-					      "atmel,clk-output-range",
-					      &range);
-
-			hw = at91_clk_register_sam9x5_peripheral(regmap,
-								 &dt_pcr_layout,
-								 name,
-								 parent_name,
-								 id, &range);
-		}
-
-		if (IS_ERR(hw))
-			continue;
-
-		of_clk_add_provider(periphclknp, of_clk_src_simple_get, hw);
-	}
-}
-
-static void __init of_at91rm9200_clk_periph_setup(struct device_node *np)
-{
-	of_at91_clk_periph_setup(np, PERIPHERAL_AT91RM9200);
-}
-CLK_OF_DECLARE(at91rm9200_clk_periph, "atmel,at91rm9200-clk-peripheral",
-	       of_at91rm9200_clk_periph_setup);
-
-static void __init of_at91sam9x5_clk_periph_setup(struct device_node *np)
-{
-	of_at91_clk_periph_setup(np, PERIPHERAL_AT91SAM9X5);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_periph, "atmel,at91sam9x5-clk-peripheral",
-	       of_at91sam9x5_clk_periph_setup);
-
-static struct clk_pll_characteristics * __init
-of_at91_clk_pll_get_characteristics(struct device_node *np)
-{
-	int i;
-	int offset;
-	u32 tmp;
-	int num_output;
-	u32 num_cells;
-	struct clk_range input;
-	struct clk_range *output;
-	u8 *out = NULL;
-	u16 *icpll = NULL;
-	struct clk_pll_characteristics *characteristics;
-
-	if (of_at91_get_clk_range(np, "atmel,clk-input-range", &input))
-		return NULL;
-
-	if (of_property_read_u32(np, "#atmel,pll-clk-output-range-cells",
-				 &num_cells))
-		return NULL;
-
-	if (num_cells < 2 || num_cells > 4)
-		return NULL;
-
-	if (!of_get_property(np, "atmel,pll-clk-output-ranges", &tmp))
-		return NULL;
-	num_output = tmp / (sizeof(u32) * num_cells);
-
-	characteristics = kzalloc(sizeof(*characteristics), GFP_KERNEL);
-	if (!characteristics)
-		return NULL;
-
-	output = kcalloc(num_output, sizeof(*output), GFP_KERNEL);
-	if (!output)
-		goto out_free_characteristics;
-
-	if (num_cells > 2) {
-		out = kcalloc(num_output, sizeof(*out), GFP_KERNEL);
-		if (!out)
-			goto out_free_output;
-	}
-
-	if (num_cells > 3) {
-		icpll = kcalloc(num_output, sizeof(*icpll), GFP_KERNEL);
-		if (!icpll)
-			goto out_free_output;
-	}
-
-	for (i = 0; i < num_output; i++) {
-		offset = i * num_cells;
-		if (of_property_read_u32_index(np,
-					       "atmel,pll-clk-output-ranges",
-					       offset, &tmp))
-			goto out_free_output;
-		output[i].min = tmp;
-		if (of_property_read_u32_index(np,
-					       "atmel,pll-clk-output-ranges",
-					       offset + 1, &tmp))
-			goto out_free_output;
-		output[i].max = tmp;
-
-		if (num_cells == 2)
-			continue;
-
-		if (of_property_read_u32_index(np,
-					       "atmel,pll-clk-output-ranges",
-					       offset + 2, &tmp))
-			goto out_free_output;
-		out[i] = tmp;
-
-		if (num_cells == 3)
-			continue;
-
-		if (of_property_read_u32_index(np,
-					       "atmel,pll-clk-output-ranges",
-					       offset + 3, &tmp))
-			goto out_free_output;
-		icpll[i] = tmp;
-	}
-
-	characteristics->input = input;
-	characteristics->num_output = num_output;
-	characteristics->output = output;
-	characteristics->out = out;
-	characteristics->icpll = icpll;
-	return characteristics;
-
-out_free_output:
-	kfree(icpll);
-	kfree(out);
-	kfree(output);
-out_free_characteristics:
-	kfree(characteristics);
-	return NULL;
-}
-
-static void __init
-of_at91_clk_pll_setup(struct device_node *np,
-		      const struct clk_pll_layout *layout)
-{
-	u32 id;
-	struct clk *hw;
-	struct regmap *regmap;
-	const char *parent_name;
-	const char *name = np->name;
-	struct clk_pll_characteristics *characteristics;
-
-	if (of_property_read_u32(np, "reg", &id))
-		return;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	characteristics = of_at91_clk_pll_get_characteristics(np);
-	if (!characteristics)
-		return;
-
-	hw = at91_clk_register_pll(regmap, name, parent_name, id, layout,
-				   characteristics);
-	if (IS_ERR(hw))
-		goto out_free_characteristics;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-	return;
-
-out_free_characteristics:
-	kfree(characteristics);
-}
-
-static void __init of_at91rm9200_clk_pll_setup(struct device_node *np)
-{
-	of_at91_clk_pll_setup(np, &at91rm9200_pll_layout);
-}
-CLK_OF_DECLARE(at91rm9200_clk_pll, "atmel,at91rm9200-clk-pll",
-	       of_at91rm9200_clk_pll_setup);
-
-static void __init of_sama5d3_clk_pll_setup(struct device_node *np)
-{
-	of_at91_clk_pll_setup(np, &sama5d3_pll_layout);
-}
-CLK_OF_DECLARE(sama5d3_clk_pll, "atmel,sama5d3-clk-pll",
-	       of_sama5d3_clk_pll_setup);
-
-static void __init
-of_at91sam9x5_clk_plldiv_setup(struct device_node *np)
-{
-	struct clk *hw;
-	const char *parent_name;
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	hw = at91_clk_register_plldiv(regmap, name, parent_name);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_plldiv, "atmel,at91sam9x5-clk-plldiv",
-	       of_at91sam9x5_clk_plldiv_setup);
-
-static void __init
-of_at91_clk_prog_setup(struct device_node *np,
-		       const struct clk_programmable_layout *layout)
-{
-	int num;
-	u32 id;
-	struct clk *hw;
-	unsigned int num_parents;
-	const char *parent_names[PROG_SOURCE_MAX];
-	const char *name;
-	struct device_node *progclknp;
-	struct regmap *regmap;
-
-	num_parents = of_clk_get_parent_count(np);
-	if (num_parents == 0 || num_parents > PROG_SOURCE_MAX)
-		return;
-
-	of_clk_parent_fill(np, parent_names, num_parents);
-
-	num = of_get_child_count(np);
-	if (!num || num > (PROG_ID_MAX + 1))
-		return;
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	for_each_child_of_node(np, progclknp) {
-		if (of_property_read_u32(progclknp, "reg", &id))
-			continue;
-
-		if (of_property_read_string(np, "clock-output-names", &name))
-			name = progclknp->name;
-
-		hw = at91_clk_register_programmable(regmap, name,
-						    parent_names, num_parents,
-						    id, layout);
-		if (IS_ERR(hw))
-			continue;
-
-		of_clk_add_provider(progclknp, of_clk_src_simple_get, hw);
-	}
-}
-
-static void __init of_at91rm9200_clk_prog_setup(struct device_node *np)
-{
-	of_at91_clk_prog_setup(np, &at91rm9200_programmable_layout);
-}
-CLK_OF_DECLARE(at91rm9200_clk_prog, "atmel,at91rm9200-clk-programmable",
-	       of_at91rm9200_clk_prog_setup);
-
-static void __init of_at91sam9g45_clk_prog_setup(struct device_node *np)
-{
-	of_at91_clk_prog_setup(np, &at91sam9g45_programmable_layout);
-}
-CLK_OF_DECLARE(at91sam9g45_clk_prog, "atmel,at91sam9g45-clk-programmable",
-	       of_at91sam9g45_clk_prog_setup);
-
-static void __init of_at91sam9x5_clk_prog_setup(struct device_node *np)
-{
-	of_at91_clk_prog_setup(np, &at91sam9x5_programmable_layout);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_prog, "atmel,at91sam9x5-clk-programmable",
-	       of_at91sam9x5_clk_prog_setup);
-
-#ifdef CONFIG_HAVE_AT91_SMD
-#define SMD_SOURCE_MAX		2
-
-static void __init of_at91sam9x5_clk_smd_setup(struct device_node *np)
-{
-	struct clk *hw;
-	unsigned int num_parents;
-	const char *parent_names[SMD_SOURCE_MAX];
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	num_parents = of_clk_get_parent_count(np);
-	if (num_parents == 0 || num_parents > SMD_SOURCE_MAX)
-		return;
-
-	of_clk_parent_fill(np, parent_names, num_parents);
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	hw = at91sam9x5_clk_register_smd(regmap, name, parent_names,
-					 num_parents);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_smd, "atmel,at91sam9x5-clk-smd",
-	       of_at91sam9x5_clk_smd_setup);
-#endif /* CONFIG_HAVE_AT91_SMD */
-
-static void __init of_at91rm9200_clk_sys_setup(struct device_node *np)
-{
-	int num;
-	u32 id;
-	struct clk *hw;
-	const char *name;
-	struct device_node *sysclknp;
-	const char *parent_name;
-	struct regmap *regmap;
-
-	num = of_get_child_count(np);
-	if (num > (SYSTEM_MAX_ID + 1))
-		return;
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	for_each_child_of_node(np, sysclknp) {
-		if (of_property_read_u32(sysclknp, "reg", &id))
-			continue;
-
-		if (of_property_read_string(np, "clock-output-names", &name))
-			name = sysclknp->name;
-
-		parent_name = of_clk_get_parent_name(sysclknp, 0);
-
-		hw = at91_clk_register_system(regmap, name, parent_name, id);
-		if (IS_ERR(hw))
-			continue;
-
-		of_clk_add_provider(sysclknp, of_clk_src_simple_get, hw);
-	}
-}
-CLK_OF_DECLARE(at91rm9200_clk_sys, "atmel,at91rm9200-clk-system",
-	       of_at91rm9200_clk_sys_setup);
-
-#ifdef CONFIG_HAVE_AT91_USB_CLK
-#define USB_SOURCE_MAX		2
-
-static void __init of_at91sam9x5_clk_usb_setup(struct device_node *np)
-{
-	struct clk *hw;
-	unsigned int num_parents;
-	const char *parent_names[USB_SOURCE_MAX];
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	num_parents = of_clk_get_parent_count(np);
-	if (num_parents == 0 || num_parents > USB_SOURCE_MAX)
-		return;
-
-	of_clk_parent_fill(np, parent_names, num_parents);
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	hw = at91sam9x5_clk_register_usb(regmap, name, parent_names,
-					 num_parents);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_usb, "atmel,at91sam9x5-clk-usb",
-	       of_at91sam9x5_clk_usb_setup);
-
-static void __init of_at91sam9n12_clk_usb_setup(struct device_node *np)
-{
-	struct clk *hw;
-	const char *parent_name;
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-	if (!parent_name)
-		return;
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	hw = at91sam9n12_clk_register_usb(regmap, name, parent_name);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(at91sam9n12_clk_usb, "atmel,at91sam9n12-clk-usb",
-	       of_at91sam9n12_clk_usb_setup);
-
-static void __init of_at91rm9200_clk_usb_setup(struct device_node *np)
-{
-	struct clk *hw;
-	const char *parent_name;
-	const char *name = np->name;
-	u32 divisors[4] = {0, 0, 0, 0};
-	struct regmap *regmap;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-	if (!parent_name)
-		return;
-
-	of_property_read_u32_array(np, "atmel,clk-divisors", divisors, 4);
-	if (!divisors[0])
-		return;
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-	hw = at91rm9200_clk_register_usb(regmap, name, parent_name, divisors);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(at91rm9200_clk_usb, "atmel,at91rm9200-clk-usb",
-	       of_at91rm9200_clk_usb_setup);
-#endif /* CONFIG_HAVE_AT91_USB_CLK */
-
-#ifdef CONFIG_HAVE_AT91_UTMI
-static void __init of_at91sam9x5_clk_utmi_setup(struct device_node *np)
-{
-	struct clk *hw;
-	const char *parent_name;
-	const char *name = np->name;
-	struct regmap *regmap_pmc, *regmap_sfr;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	regmap_pmc = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap_pmc))
-		return;
-
-	/*
-	 * If the device supports different mainck rates, this value has to be
-	 * set in the UTMI Clock Trimming register.
-	 * - 9x5: mainck supports several rates but it is indicated that a
-	 *   12 MHz is needed in case of USB.
-	 * - sama5d3 and sama5d2: mainck supports several rates. Configuring
-	 *   the FREQ field of the UTMI Clock Trimming register is mandatory.
-	 * - sama5d4: mainck is at 12 MHz.
-	 *
-	 * We only need to retrieve sama5d3 or sama5d2 sfr regmap.
-	 */
-	regmap_sfr = syscon_regmap_lookup_by_compatible("atmel,sama5d3-sfr");
-	if (IS_ERR(regmap_sfr)) {
-		regmap_sfr = syscon_regmap_lookup_by_compatible("atmel,sama5d2-sfr");
-		if (IS_ERR(regmap_sfr))
-			regmap_sfr = NULL;
-	}
-
-	hw = at91_clk_register_utmi(regmap_pmc, regmap_sfr, name, parent_name);
-	if (IS_ERR(hw))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, hw);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_utmi, "atmel,at91sam9x5-clk-utmi",
-	       of_at91sam9x5_clk_utmi_setup);
-#endif /* CONFIG_HAVE_AT91_UTMI */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
