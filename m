Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvotg-0000h3-8j
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 19:48:14 +0000
Received: by mail-lj1-x241.google.com with SMTP id z25so7561820ljk.8
 for <barebox@lists.infradead.org>; Mon, 18 Feb 2019 11:48:11 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon, 18 Feb 2019 20:47:55 +0100
Message-Id: <20190218194759.9557-6-sam@ravnborg.org>
In-Reply-To: <20190218194759.9557-1-sam@ravnborg.org>
References: <20190218194759.9557-1-sam@ravnborg.org>
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
Subject: [PATCH v3 5/9] clk: at91: add at91sam9rl
To: Barebox List <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>, Ladislav Michl <ladis@linux-mips.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Add at91sam9rl as part of supporting the PMC bindings for ARM at91.
The file will be wired into the build in a follow-up patch.

The file is a copy from kernel 5.0-rc6 modified to build
with barebox.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/clk/at91/at91sam9rl.c | 177 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 177 insertions(+)
 create mode 100644 drivers/clk/at91/at91sam9rl.c

diff --git a/drivers/clk/at91/at91sam9rl.c b/drivers/clk/at91/at91sam9rl.c
new file mode 100644
index 000000000..82acb3825
--- /dev/null
+++ b/drivers/clk/at91/at91sam9rl.c
@@ -0,0 +1,177 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <driver.h>
+#include <regmap.h>
+#include <stdio.h>
+#include <mfd/syscon.h>
+
+#include <linux/clk.h>
+#include <linux/slab.h>
+#include <linux/types.h>
+
+#include <dt-bindings/clock/at91.h>
+
+#include "pmc.h"
+
+static const struct clk_master_characteristics sam9rl_mck_characteristics = {
+	.output = { .min = 0, .max = 94000000 },
+	.divisors = { 1, 2, 4, 0 },
+};
+
+static u8 sam9rl_plla_out[] = { 0, 2 };
+
+static struct clk_range sam9rl_plla_outputs[] = {
+	{ .min = 80000000, .max = 200000000 },
+	{ .min = 190000000, .max = 240000000 },
+};
+
+static const struct clk_pll_characteristics sam9rl_plla_characteristics = {
+	.input = { .min = 1000000, .max = 32000000 },
+	.num_output = ARRAY_SIZE(sam9rl_plla_outputs),
+	.output = sam9rl_plla_outputs,
+	.out = sam9rl_plla_out,
+};
+
+static const struct {
+	char *n;
+	char *p;
+	u8 id;
+} at91sam9rl_systemck[] = {
+	{ .n = "pck0",  .p = "prog0",    .id = 8 },
+	{ .n = "pck1",  .p = "prog1",    .id = 9 },
+};
+
+static const struct {
+	char *n;
+	u8 id;
+} at91sam9rl_periphck[] = {
+	{ .n = "pioA_clk",   .id = 2, },
+	{ .n = "pioB_clk",   .id = 3, },
+	{ .n = "pioC_clk",   .id = 4, },
+	{ .n = "pioD_clk",   .id = 5, },
+	{ .n = "usart0_clk", .id = 6, },
+	{ .n = "usart1_clk", .id = 7, },
+	{ .n = "usart2_clk", .id = 8, },
+	{ .n = "usart3_clk", .id = 9, },
+	{ .n = "mci0_clk",   .id = 10, },
+	{ .n = "twi0_clk",   .id = 11, },
+	{ .n = "twi1_clk",   .id = 12, },
+	{ .n = "spi0_clk",   .id = 13, },
+	{ .n = "ssc0_clk",   .id = 14, },
+	{ .n = "ssc1_clk",   .id = 15, },
+	{ .n = "tc0_clk",    .id = 16, },
+	{ .n = "tc1_clk",    .id = 17, },
+	{ .n = "tc2_clk",    .id = 18, },
+	{ .n = "pwm_clk",    .id = 19, },
+	{ .n = "adc_clk",    .id = 20, },
+	{ .n = "dma0_clk",   .id = 21, },
+	{ .n = "udphs_clk",  .id = 22, },
+	{ .n = "lcd_clk",    .id = 23, },
+};
+
+static void __init at91sam9rl_pmc_setup(struct device_node *np)
+{
+	const char *slck_name, *mainxtal_name;
+	struct pmc_data *at91sam9rl_pmc;
+	const char *parent_names[6];
+	struct regmap *regmap;
+	struct clk *hw;
+	int i;
+
+	i = of_property_match_string(np, "clock-names", "slow_clk");
+	if (i < 0)
+		return;
+
+	slck_name = of_clk_get_parent_name(np, i);
+
+	i = of_property_match_string(np, "clock-names", "main_xtal");
+	if (i < 0)
+		return;
+	mainxtal_name = of_clk_get_parent_name(np, i);
+
+	regmap = syscon_node_to_regmap(np);
+	if (IS_ERR(regmap))
+		return;
+
+	at91sam9rl_pmc = pmc_data_allocate(PMC_MAIN + 1,
+					   nck(at91sam9rl_systemck),
+					   nck(at91sam9rl_periphck), 0);
+	if (!at91sam9rl_pmc)
+		return;
+
+	hw = at91_clk_register_rm9200_main(regmap, "mainck", mainxtal_name);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9rl_pmc->chws[PMC_MAIN] = hw;
+
+	hw = at91_clk_register_pll(regmap, "pllack", "mainck", 0,
+				   &at91rm9200_pll_layout,
+				   &sam9rl_plla_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_utmi(regmap, NULL, "utmick", "mainck");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9rl_pmc->chws[PMC_UTMI] = hw;
+
+	parent_names[0] = slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "pllack";
+	parent_names[3] = "utmick";
+	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
+				      &at91rm9200_master_layout,
+				      &sam9rl_mck_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9rl_pmc->chws[PMC_MCK] = hw;
+
+	parent_names[0] = slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "pllack";
+	parent_names[3] = "utmick";
+	parent_names[4] = "masterck";
+	for (i = 0; i < 2; i++) {
+		char *name;
+
+		name = xasprintf("prog%d", i);
+
+		hw = at91_clk_register_programmable(regmap, name,
+						    parent_names, 5, i,
+						    &at91rm9200_programmable_layout);
+		if (IS_ERR(hw))
+			goto err_free;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(at91sam9rl_systemck); i++) {
+		hw = at91_clk_register_system(regmap, at91sam9rl_systemck[i].n,
+					      at91sam9rl_systemck[i].p,
+					      at91sam9rl_systemck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91sam9rl_pmc->shws[at91sam9rl_systemck[i].id] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(at91sam9rl_periphck); i++) {
+		hw = at91_clk_register_peripheral(regmap,
+						  at91sam9rl_periphck[i].n,
+						  "masterck",
+						  at91sam9rl_periphck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91sam9rl_pmc->phws[at91sam9rl_periphck[i].id] = hw;
+	}
+
+	of_clk_add_provider(np, of_clk_hw_pmc_get, at91sam9rl_pmc);
+
+	return;
+
+err_free:
+	pmc_data_free(at91sam9rl_pmc);
+}
+CLK_OF_DECLARE_DRIVER(at91sam9rl_pmc, "atmel,at91sam9rl-pmc", at91sam9rl_pmc_setup);
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
