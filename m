Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jncI6-0007mu-9I
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 06:20:20 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Jun 2020 08:20:11 +0200
Message-Id: <20200623062011.19347-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200623062011.19347-1-a.fatoum@pengutronix.de>
References: <20200623062011.19347-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] clk: at91: sync with Linux v5.8-rc1
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This ports over a couple of changes that accrued upstream between v5.6,
when we last synchronized, and v5.8-rc1:

  5bf7f4a24938 clk: at91: sam9x60: Don't use audio PLL
  b0ecf1c6c6e8 clk: at91: usb: continue if clk_hw_round_rate() return zero
  43b203d32b77 clk: at91: sam9x60: fix usb clock parents
  d7a83d67a169 clk: at91: usb: use proper usbs_mask
  9962fb0d1995 clk: at91: usb: introduce num_parents in driver's structure
  12dc8d3be9d8 clk: at91: add at91sam9g45 pmc driver
  0969b242f7b8 clk: at91: add sama5d3 pmc driver
  143e04dab6b4 clk: at91: add at91sam9n12 pmc driver
  02ff48e4d7f7 clk: at91: add at91rm9200 pmc driver
  99e107439eea clk: at91: Add peripheral clock for PTC
  f6363c437dc6 clk: at91: pmc: do not continue if compatible not located
  7425f246f725 clk: at91: optimize pmc data allocation
  99767cd4406f clk: at91: allow setting PCKx parent via DT
  03a1ee1dad0e clk: at91: allow setting all PMC clock parents via DT

Besides fixes, mostly around sam9x60, this adds support for the new
a91 device tree clock bindings that were extended to the sama5d3 in v5.8-rc1.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/Makefile      |   5 +-
 drivers/clk/at91/at91rm9200.c  | 209 +++++++++++++++++++++++++++
 drivers/clk/at91/at91sam9260.c |  13 +-
 drivers/clk/at91/at91sam9g45.c | 221 +++++++++++++++++++++++++++++
 drivers/clk/at91/at91sam9n12.c | 249 +++++++++++++++++++++++++++++++++
 drivers/clk/at91/at91sam9rl.c  |  10 +-
 drivers/clk/at91/at91sam9x5.c  |  10 +-
 drivers/clk/at91/clk-usb.c     |   9 +-
 drivers/clk/at91/pmc.c         |  47 +++----
 drivers/clk/at91/pmc.h         |  14 +-
 drivers/clk/at91/sam9x60.c     |  28 ++--
 drivers/clk/at91/sama5d2.c     |  13 +-
 drivers/clk/at91/sama5d3.c     | 248 ++++++++++++++++++++++++++++++++
 drivers/clk/at91/sama5d4.c     |  10 +-
 14 files changed, 1024 insertions(+), 62 deletions(-)
 create mode 100644 drivers/clk/at91/at91rm9200.c
 create mode 100644 drivers/clk/at91/at91sam9g45.c
 create mode 100644 drivers/clk/at91/at91sam9n12.c
 create mode 100644 drivers/clk/at91/sama5d3.c

diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
index 423605f45203..08958699d522 100644
--- a/drivers/clk/at91/Makefile
+++ b/drivers/clk/at91/Makefile
@@ -15,8 +15,11 @@ obj-$(CONFIG_HAVE_AT91_H32MX)		+= clk-h32mx.o
 obj-$(CONFIG_HAVE_AT91_GENERATED_CLK)	+= clk-generated.o
 obj-$(CONFIG_HAVE_AT91_I2S_MUX_CLK)	+= clk-i2s-mux.o
 obj-$(CONFIG_HAVE_AT91_SAM9X60_PLL)	+= clk-sam9x60-pll.o
+obj-$(CONFIG_SOC_AT91RM9200) += at91rm9200.o dt-compat.o
 obj-$(CONFIG_SOC_AT91SAM9) += at91sam9260.o at91sam9rl.o at91sam9x5.o dt-compat.o
+obj-$(CONFIG_SOC_AT91SAM9) += at91sam9g45.o dt-compat.o
+obj-$(CONFIG_SOC_AT91SAM9) += at91sam9n12.o at91sam9x5.o dt-compat.o
 obj-$(CONFIG_SOC_SAM9X60) += sam9x60.o
 obj-$(CONFIG_SOC_SAMA5D4) += sama5d4.o
-obj-$(CONFIG_SOC_SAMA5D3) += dt-compat.o
+obj-$(CONFIG_SOC_SAMA5D3) += sama5d3.o dt-compat.o
 obj-$(CONFIG_SOC_SAMA5D2) += sama5d2.o
diff --git a/drivers/clk/at91/at91rm9200.c b/drivers/clk/at91/at91rm9200.c
new file mode 100644
index 000000000000..7f1f0ed2ce10
--- /dev/null
+++ b/drivers/clk/at91/at91rm9200.c
@@ -0,0 +1,209 @@
+// SPDX-License-Identifier: GPL-2.0
+//
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
+struct sck {
+	char *n;
+	char *p;
+	u8 id;
+};
+
+struct pck {
+	char *n;
+	u8 id;
+};
+
+static const struct clk_master_characteristics rm9200_mck_characteristics = {
+	.output = { .min = 0, .max = 80000000 },
+	.divisors = { 1, 2, 3, 4 },
+};
+
+static u8 rm9200_pll_out[] = { 0, 2 };
+
+static const struct clk_range rm9200_pll_outputs[] = {
+	{ .min = 80000000, .max = 160000000 },
+	{ .min = 150000000, .max = 180000000 },
+};
+
+static const struct clk_pll_characteristics rm9200_pll_characteristics = {
+	.input = { .min = 1000000, .max = 32000000 },
+	.num_output = ARRAY_SIZE(rm9200_pll_outputs),
+	.output = rm9200_pll_outputs,
+	.out = rm9200_pll_out,
+};
+
+static const struct sck at91rm9200_systemck[] = {
+	{ .n = "udpck", .p = "usbck",    .id = 2 },
+	{ .n = "uhpck", .p = "usbck",    .id = 4 },
+	{ .n = "pck0",  .p = "prog0",    .id = 8 },
+	{ .n = "pck1",  .p = "prog1",    .id = 9 },
+	{ .n = "pck2",  .p = "prog2",    .id = 10 },
+	{ .n = "pck3",  .p = "prog3",    .id = 11 },
+};
+
+static const struct pck at91rm9200_periphck[] = {
+	{ .n = "pioA_clk",   .id = 2 },
+	{ .n = "pioB_clk",   .id = 3 },
+	{ .n = "pioC_clk",   .id = 4 },
+	{ .n = "pioD_clk",   .id = 5 },
+	{ .n = "usart0_clk", .id = 6 },
+	{ .n = "usart1_clk", .id = 7 },
+	{ .n = "usart2_clk", .id = 8 },
+	{ .n = "usart3_clk", .id = 9 },
+	{ .n = "mci0_clk",   .id = 10 },
+	{ .n = "udc_clk",    .id = 11 },
+	{ .n = "twi0_clk",   .id = 12 },
+	{ .n = "spi0_clk",   .id = 13 },
+	{ .n = "ssc0_clk",   .id = 14 },
+	{ .n = "ssc1_clk",   .id = 15 },
+	{ .n = "ssc2_clk",   .id = 16 },
+	{ .n = "tc0_clk",    .id = 17 },
+	{ .n = "tc1_clk",    .id = 18 },
+	{ .n = "tc2_clk",    .id = 19 },
+	{ .n = "tc3_clk",    .id = 20 },
+	{ .n = "tc4_clk",    .id = 21 },
+	{ .n = "tc5_clk",    .id = 22 },
+	{ .n = "ohci_clk",   .id = 23 },
+	{ .n = "macb0_clk",  .id = 24 },
+};
+
+static void __init at91rm9200_pmc_setup(struct device_node *np)
+{
+	const char *slowxtal_name, *mainxtal_name;
+	struct pmc_data *at91rm9200_pmc;
+	u32 usb_div[] = { 1, 2, 0, 0 };
+	const char *parent_names[6];
+	struct regmap *regmap;
+	struct clk *hw;
+	int i;
+	bool bypass;
+
+	i = of_property_match_string(np, "clock-names", "slow_xtal");
+	if (i < 0)
+		return;
+
+	slowxtal_name = of_clk_get_parent_name(np, i);
+
+	i = of_property_match_string(np, "clock-names", "main_xtal");
+	if (i < 0)
+		return;
+	mainxtal_name = of_clk_get_parent_name(np, i);
+
+	regmap = device_node_to_regmap(np);
+	if (IS_ERR(regmap))
+		return;
+
+	at91rm9200_pmc = pmc_data_allocate(PMC_PLLBCK + 1,
+					    nck(at91rm9200_systemck),
+					    nck(at91rm9200_periphck), 0, 4);
+	if (!at91rm9200_pmc)
+		return;
+
+	bypass = of_property_read_bool(np, "atmel,osc-bypass");
+
+	hw = at91_clk_register_main_osc(regmap, "main_osc", mainxtal_name,
+					bypass);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_rm9200_main(regmap, "mainck", "main_osc");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91rm9200_pmc->chws[PMC_MAIN] = hw;
+
+	hw = at91_clk_register_pll(regmap, "pllack", "mainck", 0,
+				   &at91rm9200_pll_layout,
+				   &rm9200_pll_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91rm9200_pmc->chws[PMC_PLLACK] = hw;
+
+	hw = at91_clk_register_pll(regmap, "pllbck", "mainck", 1,
+				   &at91rm9200_pll_layout,
+				   &rm9200_pll_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91rm9200_pmc->chws[PMC_PLLBCK] = hw;
+
+	parent_names[0] = slowxtal_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "pllack";
+	parent_names[3] = "pllbck";
+	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
+				      &at91rm9200_master_layout,
+				      &rm9200_mck_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91rm9200_pmc->chws[PMC_MCK] = hw;
+
+	hw = at91rm9200_clk_register_usb(regmap, "usbck", "pllbck", usb_div);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = slowxtal_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "pllack";
+	parent_names[3] = "pllbck";
+	for (i = 0; i < 4; i++) {
+		char *name = xasprintf("prog%d", i);
+
+		hw = at91_clk_register_programmable(regmap, name,
+						    parent_names, 4, i,
+						    &at91rm9200_programmable_layout);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91rm9200_pmc->pchws[i] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(at91rm9200_systemck); i++) {
+		hw = at91_clk_register_system(regmap, at91rm9200_systemck[i].n,
+					      at91rm9200_systemck[i].p,
+					      at91rm9200_systemck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91rm9200_pmc->shws[at91rm9200_systemck[i].id] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(at91rm9200_periphck); i++) {
+		hw = at91_clk_register_peripheral(regmap,
+						  at91rm9200_periphck[i].n,
+						  "masterck",
+						  at91rm9200_periphck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91rm9200_pmc->phws[at91rm9200_periphck[i].id] = hw;
+	}
+
+	of_clk_add_provider(np, of_clk_hw_pmc_get, at91rm9200_pmc);
+
+	return;
+
+err_free:
+	kfree(at91rm9200_pmc);
+}
+/*
+ * While the TCB can be used as the clocksource, the system timer is most likely
+ * to be used instead. However, the pinctrl driver doesn't support probe
+ * deferring properly. Once this is fixed, this can be switched to a platform
+ * driver.
+ */
+CLK_OF_DECLARE_DRIVER(at91rm9200_pmc, "atmel,at91rm9200-pmc",
+		      at91rm9200_pmc_setup);
diff --git a/drivers/clk/at91/at91sam9260.c b/drivers/clk/at91/at91sam9260.c
index 066dedf2a146..50215b7a01fa 100644
--- a/drivers/clk/at91/at91sam9260.c
+++ b/drivers/clk/at91/at91sam9260.c
@@ -358,9 +358,10 @@ static void __init at91sam926x_pmc_setup(struct device_node *np,
 	if (IS_ERR(regmap))
 		return;
 
-	at91sam9260_pmc = pmc_data_allocate(PMC_MAIN + 1,
+	at91sam9260_pmc = pmc_data_allocate(PMC_PLLBCK + 1,
 					    ndck(data->sck, data->num_sck),
-					    ndck(data->pck, data->num_pck), 0);
+					    ndck(data->pck, data->num_pck),
+					    0, data->num_progck);
 	if (!at91sam9260_pmc)
 		return;
 
@@ -401,12 +402,16 @@ static void __init at91sam926x_pmc_setup(struct device_node *np,
 	if (IS_ERR(hw))
 		goto err_free;
 
+	at91sam9260_pmc->chws[PMC_PLLACK] = hw;
+
 	hw = at91_clk_register_pll(regmap, "pllbck", "mainck", 1,
 				   data->pllb_layout,
 				   data->pllb_characteristics);
 	if (IS_ERR(hw))
 		goto err_free;
 
+	at91sam9260_pmc->chws[PMC_PLLBCK] = hw;
+
 	parent_names[0] = slck_name;
 	parent_names[1] = "mainck";
 	parent_names[2] = "pllack";
@@ -437,6 +442,8 @@ static void __init at91sam926x_pmc_setup(struct device_node *np,
 						    &at91rm9200_programmable_layout);
 		if (IS_ERR(hw))
 			goto err_free;
+
+		at91sam9260_pmc->pchws[i] = hw;
 	}
 
 	for (i = 0; i < data->num_sck; i++) {
@@ -465,7 +472,7 @@ static void __init at91sam926x_pmc_setup(struct device_node *np,
 	return;
 
 err_free:
-	pmc_data_free(at91sam9260_pmc);
+	kfree(at91sam9260_pmc);
 }
 
 static void __init at91sam9260_pmc_setup(struct device_node *np)
diff --git a/drivers/clk/at91/at91sam9g45.c b/drivers/clk/at91/at91sam9g45.c
new file mode 100644
index 000000000000..af623cc7f0b6
--- /dev/null
+++ b/drivers/clk/at91/at91sam9g45.c
@@ -0,0 +1,221 @@
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
+static const struct clk_master_characteristics mck_characteristics = {
+	.output = { .min = 0, .max = 133333333 },
+	.divisors = { 1, 2, 4, 3 },
+};
+
+static u8 plla_out[] = { 0, 1, 2, 3, 0, 1, 2, 3 };
+
+static u16 plla_icpll[] = { 0, 0, 0, 0, 1, 1, 1, 1 };
+
+static const struct clk_range plla_outputs[] = {
+	{ .min = 745000000, .max = 800000000 },
+	{ .min = 695000000, .max = 750000000 },
+	{ .min = 645000000, .max = 700000000 },
+	{ .min = 595000000, .max = 650000000 },
+	{ .min = 545000000, .max = 600000000 },
+	{ .min = 495000000, .max = 555000000 },
+	{ .min = 445000000, .max = 500000000 },
+	{ .min = 400000000, .max = 450000000 },
+};
+
+static const struct clk_pll_characteristics plla_characteristics = {
+	.input = { .min = 2000000, .max = 32000000 },
+	.num_output = ARRAY_SIZE(plla_outputs),
+	.output = plla_outputs,
+	.icpll = plla_icpll,
+	.out = plla_out,
+};
+
+static const struct {
+	char *n;
+	char *p;
+	u8 id;
+} at91sam9g45_systemck[] = {
+	{ .n = "ddrck", .p = "masterck", .id = 2 },
+	{ .n = "uhpck", .p = "usbck",    .id = 6 },
+	{ .n = "pck0",  .p = "prog0",    .id = 8 },
+	{ .n = "pck1",  .p = "prog1",    .id = 9 },
+};
+
+struct pck {
+	char *n;
+	u8 id;
+};
+
+static const struct pck at91sam9g45_periphck[] = {
+	{ .n = "pioA_clk",       .id = 2, },
+	{ .n = "pioB_clk",       .id = 3, },
+	{ .n = "pioC_clk",       .id = 4, },
+	{ .n = "pioDE_clk",      .id = 5, },
+	{ .n = "trng_clk",       .id = 6, },
+	{ .n = "usart0_clk",     .id = 7, },
+	{ .n = "usart1_clk",     .id = 8, },
+	{ .n = "usart2_clk",     .id = 9, },
+	{ .n = "usart3_clk",     .id = 10, },
+	{ .n = "mci0_clk",       .id = 11, },
+	{ .n = "twi0_clk",       .id = 12, },
+	{ .n = "twi1_clk",       .id = 13, },
+	{ .n = "spi0_clk",       .id = 14, },
+	{ .n = "spi1_clk",       .id = 15, },
+	{ .n = "ssc0_clk",       .id = 16, },
+	{ .n = "ssc1_clk",       .id = 17, },
+	{ .n = "tcb0_clk",       .id = 18, },
+	{ .n = "pwm_clk",        .id = 19, },
+	{ .n = "adc_clk",        .id = 20, },
+	{ .n = "dma0_clk",       .id = 21, },
+	{ .n = "uhphs_clk",      .id = 22, },
+	{ .n = "lcd_clk",        .id = 23, },
+	{ .n = "ac97_clk",       .id = 24, },
+	{ .n = "macb0_clk",      .id = 25, },
+	{ .n = "isi_clk",        .id = 26, },
+	{ .n = "udphs_clk",      .id = 27, },
+	{ .n = "aestdessha_clk", .id = 28, },
+	{ .n = "mci1_clk",       .id = 29, },
+	{ .n = "vdec_clk",       .id = 30, },
+};
+
+static void __init at91sam9g45_pmc_setup(struct device_node *np)
+{
+	const char *slck_name, *mainxtal_name;
+	struct pmc_data *at91sam9g45_pmc;
+	const char *parent_names[6];
+	struct regmap *regmap;
+	struct clk *hw;
+	int i;
+	bool bypass;
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
+	at91sam9g45_pmc = pmc_data_allocate(PMC_PLLACK + 1,
+					    nck(at91sam9g45_systemck),
+					    nck(at91sam9g45_periphck), 0, 2);
+	if (!at91sam9g45_pmc)
+		return;
+
+	bypass = of_property_read_bool(np, "atmel,osc-bypass");
+
+	hw = at91_clk_register_main_osc(regmap, "main_osc", mainxtal_name,
+					bypass);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_rm9200_main(regmap, "mainck", "main_osc");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9g45_pmc->chws[PMC_MAIN] = hw;
+
+	hw = at91_clk_register_pll(regmap, "pllack", "mainck", 0,
+				   &at91rm9200_pll_layout, &plla_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_plldiv(regmap, "plladivck", "pllack");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9g45_pmc->chws[PMC_PLLACK] = hw;
+
+	hw = at91_clk_register_utmi(regmap, NULL, "utmick", "mainck");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9g45_pmc->chws[PMC_UTMI] = hw;
+
+	parent_names[0] = slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "plladivck";
+	parent_names[3] = "utmick";
+	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
+				      &at91rm9200_master_layout,
+				      &mck_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9g45_pmc->chws[PMC_MCK] = hw;
+
+	parent_names[0] = "plladivck";
+	parent_names[1] = "utmick";
+	hw = at91sam9x5_clk_register_usb(regmap, "usbck", parent_names, 2);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "plladivck";
+	parent_names[3] = "utmick";
+	parent_names[4] = "masterck";
+	for (i = 0; i < 2; i++) {
+		char *name = xasprintf("prog%d", i);
+
+		hw = at91_clk_register_programmable(regmap, name,
+						    parent_names, 5, i,
+						    &at91sam9g45_programmable_layout);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91sam9g45_pmc->pchws[i] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(at91sam9g45_systemck); i++) {
+		hw = at91_clk_register_system(regmap, at91sam9g45_systemck[i].n,
+					      at91sam9g45_systemck[i].p,
+					      at91sam9g45_systemck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91sam9g45_pmc->shws[at91sam9g45_systemck[i].id] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(at91sam9g45_periphck); i++) {
+		hw = at91_clk_register_peripheral(regmap,
+						  at91sam9g45_periphck[i].n,
+						  "masterck",
+						  at91sam9g45_periphck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91sam9g45_pmc->phws[at91sam9g45_periphck[i].id] = hw;
+	}
+
+	of_clk_add_provider(np, of_clk_hw_pmc_get, at91sam9g45_pmc);
+
+	return;
+
+err_free:
+	kfree(at91sam9g45_pmc);
+}
+/*
+ * The TCB is used as the clocksource so its clock is needed early. This means
+ * this can't be a platform driver.
+ */
+CLK_OF_DECLARE_DRIVER(at91sam9g45_pmc, "atmel,at91sam9g45-pmc",
+		      at91sam9g45_pmc_setup);
diff --git a/drivers/clk/at91/at91sam9n12.c b/drivers/clk/at91/at91sam9n12.c
new file mode 100644
index 000000000000..5ed4aeed4a97
--- /dev/null
+++ b/drivers/clk/at91/at91sam9n12.c
@@ -0,0 +1,249 @@
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
+
+#include "pmc.h"
+
+static const struct clk_master_characteristics mck_characteristics = {
+	.output = { .min = 0, .max = 133333333 },
+	.divisors = { 1, 2, 4, 3 },
+	.have_div3_pres = 1,
+};
+
+static u8 plla_out[] = { 0, 1, 2, 3, 0, 1, 2, 3 };
+
+static u16 plla_icpll[] = { 0, 0, 0, 0, 1, 1, 1, 1 };
+
+static const struct clk_range plla_outputs[] = {
+	{ .min = 745000000, .max = 800000000 },
+	{ .min = 695000000, .max = 750000000 },
+	{ .min = 645000000, .max = 700000000 },
+	{ .min = 595000000, .max = 650000000 },
+	{ .min = 545000000, .max = 600000000 },
+	{ .min = 495000000, .max = 555000000 },
+	{ .min = 445000000, .max = 500000000 },
+	{ .min = 400000000, .max = 450000000 },
+};
+
+static const struct clk_pll_characteristics plla_characteristics = {
+	.input = { .min = 2000000, .max = 32000000 },
+	.num_output = ARRAY_SIZE(plla_outputs),
+	.output = plla_outputs,
+	.icpll = plla_icpll,
+	.out = plla_out,
+};
+
+static u8 pllb_out[] = { 0 };
+
+static const struct clk_range pllb_outputs[] = {
+	{ .min = 30000000, .max = 100000000 },
+};
+
+static const struct clk_pll_characteristics pllb_characteristics = {
+	.input = { .min = 2000000, .max = 32000000 },
+	.num_output = ARRAY_SIZE(pllb_outputs),
+	.output = pllb_outputs,
+	.out = pllb_out,
+};
+
+static const struct {
+	char *n;
+	char *p;
+	u8 id;
+} at91sam9n12_systemck[] = {
+	{ .n = "ddrck", .p = "masterck", .id = 2 },
+	{ .n = "lcdck", .p = "masterck", .id = 3 },
+	{ .n = "uhpck", .p = "usbck",    .id = 6 },
+	{ .n = "udpck", .p = "usbck",    .id = 7 },
+	{ .n = "pck0",  .p = "prog0",    .id = 8 },
+	{ .n = "pck1",  .p = "prog1",    .id = 9 },
+};
+
+static const struct clk_pcr_layout at91sam9n12_pcr_layout = {
+	.offset = 0x10c,
+	.cmd = BIT(12),
+	.pid_mask = GENMASK(5, 0),
+	.div_mask = GENMASK(17, 16),
+};
+
+struct pck {
+	char *n;
+	u8 id;
+};
+
+static const struct pck at91sam9n12_periphck[] = {
+	{ .n = "pioAB_clk",  .id = 2, },
+	{ .n = "pioCD_clk",  .id = 3, },
+	{ .n = "fuse_clk",   .id = 4, },
+	{ .n = "usart0_clk", .id = 5, },
+	{ .n = "usart1_clk", .id = 6, },
+	{ .n = "usart2_clk", .id = 7, },
+	{ .n = "usart3_clk", .id = 8, },
+	{ .n = "twi0_clk",   .id = 9, },
+	{ .n = "twi1_clk",   .id = 10, },
+	{ .n = "mci0_clk",   .id = 12, },
+	{ .n = "spi0_clk",   .id = 13, },
+	{ .n = "spi1_clk",   .id = 14, },
+	{ .n = "uart0_clk",  .id = 15, },
+	{ .n = "uart1_clk",  .id = 16, },
+	{ .n = "tcb_clk",    .id = 17, },
+	{ .n = "pwm_clk",    .id = 18, },
+	{ .n = "adc_clk",    .id = 19, },
+	{ .n = "dma0_clk",   .id = 20, },
+	{ .n = "uhphs_clk",  .id = 22, },
+	{ .n = "udphs_clk",  .id = 23, },
+	{ .n = "lcdc_clk",   .id = 25, },
+	{ .n = "sha_clk",    .id = 27, },
+	{ .n = "ssc0_clk",   .id = 28, },
+	{ .n = "aes_clk",    .id = 29, },
+	{ .n = "trng_clk",   .id = 30, },
+};
+
+static void __init at91sam9n12_pmc_setup(struct device_node *np)
+{
+	struct clk_range range = CLK_RANGE(0, 0);
+	const char *slck_name, *mainxtal_name;
+	struct pmc_data *at91sam9n12_pmc;
+	const char *parent_names[6];
+	struct regmap *regmap;
+	struct clk *hw;
+	int i;
+	bool bypass;
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
+	at91sam9n12_pmc = pmc_data_allocate(PMC_PLLBCK + 1,
+					   nck(at91sam9n12_systemck), 31, 0, 2);
+	if (!at91sam9n12_pmc)
+		return;
+
+	hw = at91_clk_register_main_rc_osc(regmap, "main_rc_osc", 12000000,
+					   50000000);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	bypass = of_property_read_bool(np, "atmel,osc-bypass");
+
+	hw = at91_clk_register_main_osc(regmap, "main_osc", mainxtal_name,
+					bypass);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = "main_rc_osc";
+	parent_names[1] = "main_osc";
+	hw = at91_clk_register_sam9x5_main(regmap, "mainck", parent_names, 2);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9n12_pmc->chws[PMC_MAIN] = hw;
+
+	hw = at91_clk_register_pll(regmap, "pllack", "mainck", 0,
+				   &at91rm9200_pll_layout, &plla_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_plldiv(regmap, "plladivck", "pllack");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9n12_pmc->chws[PMC_PLLACK] = hw;
+
+	hw = at91_clk_register_pll(regmap, "pllbck", "mainck", 1,
+				   &at91rm9200_pll_layout, &pllb_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9n12_pmc->chws[PMC_PLLBCK] = hw;
+
+	parent_names[0] = slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "plladivck";
+	parent_names[3] = "pllbck";
+	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
+				      &at91sam9x5_master_layout,
+				      &mck_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9n12_pmc->chws[PMC_MCK] = hw;
+
+	hw = at91sam9n12_clk_register_usb(regmap, "usbck", "pllbck");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "plladivck";
+	parent_names[3] = "pllbck";
+	parent_names[4] = "masterck";
+	for (i = 0; i < 2; i++) {
+		char *name = xasprintf("prog%d", i);
+
+		hw = at91_clk_register_programmable(regmap, name,
+						    parent_names, 5, i,
+						    &at91sam9x5_programmable_layout);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91sam9n12_pmc->pchws[i] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(at91sam9n12_systemck); i++) {
+		hw = at91_clk_register_system(regmap, at91sam9n12_systemck[i].n,
+					      at91sam9n12_systemck[i].p,
+					      at91sam9n12_systemck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91sam9n12_pmc->shws[at91sam9n12_systemck[i].id] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(at91sam9n12_periphck); i++) {
+		hw = at91_clk_register_sam9x5_peripheral(regmap,
+							 &at91sam9n12_pcr_layout,
+							 at91sam9n12_periphck[i].n,
+							 "masterck",
+							 at91sam9n12_periphck[i].id,
+							 &range);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91sam9n12_pmc->phws[at91sam9n12_periphck[i].id] = hw;
+	}
+
+	of_clk_add_provider(np, of_clk_hw_pmc_get, at91sam9n12_pmc);
+
+	return;
+
+err_free:
+	kfree(at91sam9n12_pmc);
+}
+/*
+ * The TCB is used as the clocksource so its clock is needed early. This means
+ * this can't be a platform driver.
+ */
+CLK_OF_DECLARE_DRIVER(at91sam9n12_pmc, "atmel,at91sam9n12-pmc",
+		      at91sam9n12_pmc_setup);
diff --git a/drivers/clk/at91/at91sam9rl.c b/drivers/clk/at91/at91sam9rl.c
index ff47f94a8df0..51d71dcfca5d 100644
--- a/drivers/clk/at91/at91sam9rl.c
+++ b/drivers/clk/at91/at91sam9rl.c
@@ -93,9 +93,9 @@ static void __init at91sam9rl_pmc_setup(struct device_node *np)
 	if (IS_ERR(regmap))
 		return;
 
-	at91sam9rl_pmc = pmc_data_allocate(PMC_MAIN + 1,
+	at91sam9rl_pmc = pmc_data_allocate(PMC_PLLACK + 1,
 					   nck(at91sam9rl_systemck),
-					   nck(at91sam9rl_periphck), 0);
+					   nck(at91sam9rl_periphck), 0, 2);
 	if (!at91sam9rl_pmc)
 		return;
 
@@ -111,6 +111,8 @@ static void __init at91sam9rl_pmc_setup(struct device_node *np)
 	if (IS_ERR(hw))
 		goto err_free;
 
+	at91sam9rl_pmc->chws[PMC_PLLACK] = hw;
+
 	hw = at91_clk_register_utmi(regmap, NULL, "utmick", "mainck");
 	if (IS_ERR(hw))
 		goto err_free;
@@ -144,6 +146,8 @@ static void __init at91sam9rl_pmc_setup(struct device_node *np)
 						    &at91rm9200_programmable_layout);
 		if (IS_ERR(hw))
 			goto err_free;
+
+		at91sam9rl_pmc->pchws[i] = hw;
 	}
 
 	for (i = 0; i < ARRAY_SIZE(at91sam9rl_systemck); i++) {
@@ -172,6 +176,6 @@ static void __init at91sam9rl_pmc_setup(struct device_node *np)
 	return;
 
 err_free:
-	pmc_data_free(at91sam9rl_pmc);
+	kfree(at91sam9rl_pmc);
 }
 CLK_OF_DECLARE_DRIVER(at91sam9rl_pmc, "atmel,at91sam9rl-pmc", at91sam9rl_pmc_setup);
diff --git a/drivers/clk/at91/at91sam9x5.c b/drivers/clk/at91/at91sam9x5.c
index baa71aa10534..e59853e35d95 100644
--- a/drivers/clk/at91/at91sam9x5.c
+++ b/drivers/clk/at91/at91sam9x5.c
@@ -156,8 +156,8 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 	if (IS_ERR(regmap))
 		return;
 
-	at91sam9x5_pmc = pmc_data_allocate(PMC_MAIN + 1,
-					   nck(at91sam9x5_systemck), 31, 0);
+	at91sam9x5_pmc = pmc_data_allocate(PMC_PLLACK + 1,
+					   nck(at91sam9x5_systemck), 31, 0, 2);
 	if (!at91sam9x5_pmc)
 		return;
 
@@ -190,6 +190,8 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 	if (IS_ERR(hw))
 		goto err_free;
 
+	at91sam9x5_pmc->chws[PMC_PLLACK] = hw;
+
 	hw = at91_clk_register_utmi(regmap, NULL, "utmick", "mainck");
 	if (IS_ERR(hw))
 		goto err_free;
@@ -233,6 +235,8 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 						    &at91sam9x5_programmable_layout);
 		if (IS_ERR(hw))
 			goto err_free;
+
+		at91sam9x5_pmc->pchws[i] = hw;
 	}
 
 	for (i = 0; i < ARRAY_SIZE(at91sam9x5_systemck); i++) {
@@ -284,7 +288,7 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 	return;
 
 err_free:
-	pmc_data_free(at91sam9x5_pmc);
+	kfree(at91sam9x5_pmc);
 }
 
 static void __init at91sam9g15_pmc_setup(struct device_node *np)
diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
index 2cf68593c0ec..4862f881fc9d 100644
--- a/drivers/clk/at91/clk-usb.c
+++ b/drivers/clk/at91/clk-usb.c
@@ -30,6 +30,7 @@ struct at91sam9x5_clk_usb {
 	struct regmap *regmap;
 	const char *parent_names[USB_SOURCE_MAX];
 	u32 usbs_mask;
+	u8 num_parents;
 };
 
 #define to_at91sam9x5_clk_usb(clk) \
@@ -62,7 +63,7 @@ static int at91sam9x5_clk_usb_set_parent(struct clk *clk, u8 index)
 {
 	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
 
-	if (index > 1)
+	if (index >= usb->num_parents)
 		return -EINVAL;
 
 	regmap_write_bits(usb->regmap, AT91_PMC_USB, usb->usbs_mask, index);
@@ -160,7 +161,8 @@ _at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE | */
 	/* 	     CLK_SET_RATE_PARENT; */
 	usb->regmap = regmap;
-	usb->usbs_mask = SAM9X5_USBS_MASK;
+	usb->usbs_mask = usbs_mask;
+	usb->num_parents = num_parents;
 
 	ret = clk_register(&usb->clk);
 	if (ret) {
@@ -247,6 +249,9 @@ static long at91rm9200_clk_usb_round_rate(struct clk *clk, unsigned long rate,
 
 		tmp_parent_rate = rate * usb->divisors[i];
 		tmp_parent_rate = clk_round_rate(parent, tmp_parent_rate);
+		if (!tmp_parent_rate)
+			continue;
+
 		tmprate = DIV_ROUND_CLOSEST(tmp_parent_rate, usb->divisors[i]);
 		if (tmprate < rate)
 			tmpdiff = rate - tmprate;
diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
index 171b62cbfd08..f260d08c5d54 100644
--- a/drivers/clk/at91/pmc.c
+++ b/drivers/clk/at91/pmc.c
@@ -6,6 +6,7 @@
 #include <module.h>
 #include <linux/list.h>
 #include <linux/clkdev.h>
+#include <linux/overflow.h>
 #include <of.h>
 #include <mfd/syscon.h>
 #include <regmap.h>
@@ -63,6 +64,10 @@ struct clk *of_clk_hw_pmc_get(struct of_phandle_args *clkspec, void *data)
 		if (idx < pmc_data->ngck)
 			return pmc_data->ghws[idx];
 		break;
+	case PMC_TYPE_PROGRAMMABLE:
+		if (idx < pmc_data->npck)
+			return pmc_data->pchws[idx];
+		break;
 	default:
 		break;
 	}
@@ -72,48 +77,34 @@ struct clk *of_clk_hw_pmc_get(struct of_phandle_args *clkspec, void *data)
 	return ERR_PTR(-EINVAL);
 }
 
-void pmc_data_free(struct pmc_data *pmc_data)
-{
-	kfree(pmc_data->chws);
-	kfree(pmc_data->shws);
-	kfree(pmc_data->phws);
-	kfree(pmc_data->ghws);
-}
-
 struct pmc_data *pmc_data_allocate(unsigned int ncore, unsigned int nsystem,
-				   unsigned int nperiph, unsigned int ngck)
+				   unsigned int nperiph, unsigned int ngck,
+				   unsigned int npck)
 {
-	struct pmc_data *pmc_data = kzalloc(sizeof(*pmc_data), GFP_KERNEL);
+	unsigned int num_clks = ncore + nsystem + nperiph + ngck + npck;
+	struct pmc_data *pmc_data;
 
+	pmc_data = kzalloc(struct_size(pmc_data, hwtable, num_clks),
+			   GFP_KERNEL);
 	if (!pmc_data)
 		return NULL;
 
 	pmc_data->ncore = ncore;
-	pmc_data->chws = kcalloc(ncore, sizeof(struct clk *), GFP_KERNEL);
-	if (!pmc_data->chws)
-		goto err;
+	pmc_data->chws = pmc_data->hwtable;
 
 	pmc_data->nsystem = nsystem;
-	pmc_data->shws = kcalloc(nsystem, sizeof(struct clk *), GFP_KERNEL);
-	if (!pmc_data->shws)
-		goto err;
+	pmc_data->shws = pmc_data->chws + ncore;
 
 	pmc_data->nperiph = nperiph;
-	pmc_data->phws = kcalloc(nperiph, sizeof(struct clk *), GFP_KERNEL);
-	if (!pmc_data->phws)
-		goto err;
+	pmc_data->phws = pmc_data->shws + nsystem;
 
 	pmc_data->ngck = ngck;
-	pmc_data->ghws = kcalloc(ngck, sizeof(struct clk *), GFP_KERNEL);
-	if (!pmc_data->ghws)
-		goto err;
+	pmc_data->ghws = pmc_data->phws + nperiph;
 
-	return pmc_data;
-
-err:
-	pmc_data_free(pmc_data);
+	pmc_data->npck = npck;
+	pmc_data->pchws = pmc_data->ghws + ngck;
 
-	return NULL;
+	return pmc_data;
 }
 
 #ifdef CONFIG_PM
@@ -270,6 +261,8 @@ static int __init pmc_register_ops(void)
 	struct device_node *np;
 
 	np = of_find_matching_node(NULL, sama5d2_pmc_dt_ids);
+	if (!np)
+		return -ENODEV;
 
 	pmcreg = device_node_to_regmap(np);
 	if (IS_ERR(pmcreg))
diff --git a/drivers/clk/at91/pmc.h b/drivers/clk/at91/pmc.h
index d96a94e6e5fd..9503202c5d03 100644
--- a/drivers/clk/at91/pmc.h
+++ b/drivers/clk/at91/pmc.h
@@ -21,6 +21,10 @@ struct pmc_data {
 	struct clk **phws;
 	unsigned int ngck;
 	struct clk **ghws;
+	unsigned int npck;
+	struct clk **pchws;
+
+	struct clk *hwtable[];
 };
 
 struct clk_range {
@@ -91,8 +95,8 @@ struct clk_pcr_layout {
 #define ndck(a, s) (a[s - 1].id + 1)
 #define nck(a) (a[ARRAY_SIZE(a) - 1].id + 1)
 struct pmc_data *pmc_data_allocate(unsigned int ncore, unsigned int nsystem,
-				   unsigned int nperiph, unsigned int ngck);
-void pmc_data_free(struct pmc_data *pmc_data);
+				   unsigned int nperiph, unsigned int ngck,
+				   unsigned int npck);
 
 int of_at91_get_clk_range(struct device_node *np, const char *propname,
 			  struct clk_range *range);
@@ -215,4 +219,10 @@ static inline void pmc_register_id(u8 id) {}
 static inline void pmc_register_pck(u8 pck) {}
 #endif
 
+/* FIXME: can be dropped after v5.8-rc1 dts/include/dt-bindings sync */
+#define PMC_TYPE_PROGRAMMABLE	4
+#define PMC_PLLACK		7
+#define PMC_PLLBCK		8
+#define PMC_AUDIOPLLCK		9
+
 #endif /* __PMC_H_ */
diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
index 36a7a846ef06..09f3e6e06977 100644
--- a/drivers/clk/at91/sam9x60.c
+++ b/drivers/clk/at91/sam9x60.c
@@ -128,7 +128,6 @@ static const struct {
 	char *n;
 	u8 id;
 	struct clk_range r;
-	bool pll;
 } sam9x60_gck[] = {
 	{ .n = "flex0_gclk",  .id = 5, },
 	{ .n = "flex1_gclk",  .id = 6, },
@@ -148,11 +147,9 @@ static const struct {
 	{ .n = "sdmmc1_gclk", .id = 26, .r = { .min = 0, .max = 105000000 }, },
 	{ .n = "flex11_gclk", .id = 32, },
 	{ .n = "flex12_gclk", .id = 33, },
-	{ .n = "i2s_gclk",    .id = 34, .r = { .min = 0, .max = 105000000 },
-		.pll = true, },
+	{ .n = "i2s_gclk",    .id = 34, .r = { .min = 0, .max = 105000000 }, },
 	{ .n = "pit64b_gclk", .id = 37, },
-	{ .n = "classd_gclk", .id = 42, .r = { .min = 0, .max = 100000000 },
-		.pll = true, },
+	{ .n = "classd_gclk", .id = 42, .r = { .min = 0, .max = 100000000 }, },
 	{ .n = "tcb1_gclk",   .id = 45, },
 	{ .n = "dbgu_gclk",   .id = 47, },
 };
@@ -189,10 +186,10 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 	if (IS_ERR(regmap))
 		return;
 
-	sam9x60_pmc = pmc_data_allocate(PMC_MAIN + 1,
+	sam9x60_pmc = pmc_data_allocate(PMC_PLLACK + 1,
 					nck(sam9x60_systemck),
 					nck(sam9x60_periphck),
-					nck(sam9x60_gck));
+					nck(sam9x60_gck), 8);
 	if (!sam9x60_pmc)
 		return;
 
@@ -221,6 +218,8 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 	if (IS_ERR(hw))
 		goto err_free;
 
+	sam9x60_pmc->chws[PMC_PLLACK] = hw;
+
 	hw = sam9x60_clk_register_pll(regmap, "upllck",
 				      "main_osc", 1, &upll_characteristics);
 	if (IS_ERR(hw))
@@ -241,9 +240,8 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 
 	parent_names[0] = "pllack";
 	parent_names[1] = "upllck";
-	parent_names[2] = "mainck";
-	parent_names[3] = "mainck";
-	hw = sam9x60_clk_register_usb(regmap, "usbck", parent_names, 4);
+	parent_names[2] = "main_osc";
+	hw = sam9x60_clk_register_usb(regmap, "usbck", parent_names, 3);
 	if (IS_ERR(hw))
 		goto err_free;
 
@@ -254,15 +252,15 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 	parent_names[4] = "pllack";
 	parent_names[5] = "upllck";
 	for (i = 0; i < 8; i++) {
-		char name[6];
-
-		snprintf(name, sizeof(name), "prog%d", i);
+		char *name = xasprintf("prog%d", i);
 
 		hw = at91_clk_register_programmable(regmap, name,
 						    parent_names, 6, i,
 						    &sam9x60_programmable_layout);
 		if (IS_ERR(hw))
 			goto err_free;
+
+		sam9x60_pmc->pchws[i] = hw;
 	}
 
 	for (i = 0; i < ARRAY_SIZE(sam9x60_systemck); i++) {
@@ -294,7 +292,7 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 						 sam9x60_gck[i].n,
 						 parent_names, 6,
 						 sam9x60_gck[i].id,
-						 sam9x60_gck[i].pll,
+						 false,
 						 &sam9x60_gck[i].r);
 		if (IS_ERR(hw))
 			goto err_free;
@@ -307,7 +305,7 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 	return;
 
 err_free:
-	pmc_data_free(sam9x60_pmc);
+	kfree(sam9x60_pmc);
 }
 /* Some clks are used for a clocksource */
 CLK_OF_DECLARE(sam9x60_pmc, "microchip,sam9x60-pmc", sam9x60_pmc_setup);
diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
index 731637e4abb1..1efa95d36981 100644
--- a/drivers/clk/at91/sama5d2.c
+++ b/drivers/clk/at91/sama5d2.c
@@ -95,6 +95,7 @@ static const struct {
 	{ .n = "i2s1_clk",    .id = 55, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "can0_clk",    .id = 56, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "can1_clk",    .id = 57, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "ptc_clk",     .id = 58, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "classd_clk",  .id = 59, .r = { .min = 0, .max = 83000000 }, },
 };
 
@@ -172,10 +173,10 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	if (IS_ERR(regmap))
 		return;
 
-	sama5d2_pmc = pmc_data_allocate(PMC_I2S1_MUX + 1,
+	sama5d2_pmc = pmc_data_allocate(PMC_AUDIOPLLCK + 1,
 					nck(sama5d2_systemck),
 					nck(sama5d2_periph32ck),
-					nck(sama5d2_gck));
+					nck(sama5d2_gck), 3);
 	if (!sama5d2_pmc)
 		return;
 
@@ -208,6 +209,8 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	if (IS_ERR(hw))
 		goto err_free;
 
+	sama5d2_pmc->chws[PMC_PLLACK] = hw;
+
 	hw = at91_clk_register_audio_pll_frac(regmap, "audiopll_fracck",
 					      "mainck");
 	if (IS_ERR(hw))
@@ -223,6 +226,8 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	if (IS_ERR(hw))
 		goto err_free;
 
+	sama5d2_pmc->chws[PMC_AUDIOPLLCK] = hw;
+
 	regmap_sfr = syscon_regmap_lookup_by_compatible("atmel,sama5d2-sfr");
 	if (IS_ERR(regmap_sfr))
 		regmap_sfr = NULL;
@@ -273,6 +278,8 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 						    &sama5d2_programmable_layout);
 		if (IS_ERR(hw))
 			goto err_free;
+
+		sama5d2_pmc->pchws[i] = hw;
 	}
 
 	for (i = 0; i < ARRAY_SIZE(sama5d2_systemck); i++) {
@@ -356,6 +363,6 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	return;
 
 err_free:
-	pmc_data_free(sama5d2_pmc);
+	kfree(sama5d2_pmc);
 }
 CLK_OF_DECLARE_DRIVER(sama5d2_pmc, "atmel,sama5d2-pmc", sama5d2_pmc_setup);
diff --git a/drivers/clk/at91/sama5d3.c b/drivers/clk/at91/sama5d3.c
new file mode 100644
index 000000000000..24aec6a71a3f
--- /dev/null
+++ b/drivers/clk/at91/sama5d3.c
@@ -0,0 +1,248 @@
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
+static const struct clk_master_characteristics mck_characteristics = {
+	.output = { .min = 0, .max = 166000000 },
+	.divisors = { 1, 2, 4, 3 },
+};
+
+static u8 plla_out[] = { 0 };
+
+static u16 plla_icpll[] = { 0 };
+
+static const struct clk_range plla_outputs[] = {
+	{ .min = 400000000, .max = 1000000000 },
+};
+
+static const struct clk_pll_characteristics plla_characteristics = {
+	.input = { .min = 8000000, .max = 50000000 },
+	.num_output = ARRAY_SIZE(plla_outputs),
+	.output = plla_outputs,
+	.icpll = plla_icpll,
+	.out = plla_out,
+};
+
+static const struct clk_pcr_layout sama5d3_pcr_layout = {
+	.offset = 0x10c,
+	.cmd = BIT(12),
+	.pid_mask = GENMASK(6, 0),
+	.div_mask = GENMASK(17, 16),
+};
+
+static const struct {
+	char *n;
+	char *p;
+	u8 id;
+} sama5d3_systemck[] = {
+	{ .n = "ddrck", .p = "masterck", .id = 2 },
+	{ .n = "lcdck", .p = "masterck", .id = 3 },
+	{ .n = "smdck", .p = "smdclk",   .id = 4 },
+	{ .n = "uhpck", .p = "usbck",    .id = 6 },
+	{ .n = "udpck", .p = "usbck",    .id = 7 },
+	{ .n = "pck0",  .p = "prog0",    .id = 8 },
+	{ .n = "pck1",  .p = "prog1",    .id = 9 },
+	{ .n = "pck2",  .p = "prog2",    .id = 10 },
+};
+
+static const struct {
+	char *n;
+	u8 id;
+	struct clk_range r;
+} sama5d3_periphck[] = {
+	{ .n = "dbgu_clk", .id = 2, },
+	{ .n = "hsmc_clk", .id = 5, },
+	{ .n = "pioA_clk", .id = 6, },
+	{ .n = "pioB_clk", .id = 7, },
+	{ .n = "pioC_clk", .id = 8, },
+	{ .n = "pioD_clk", .id = 9, },
+	{ .n = "pioE_clk", .id = 10, },
+	{ .n = "usart0_clk", .id = 12, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "usart1_clk", .id = 13, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "usart2_clk", .id = 14, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "usart3_clk", .id = 15, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "uart0_clk", .id = 16, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "uart1_clk", .id = 17, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "twi0_clk", .id = 18, .r = { .min = 0, .max = 41500000 }, },
+	{ .n = "twi1_clk", .id = 19, .r = { .min = 0, .max = 41500000 }, },
+	{ .n = "twi2_clk", .id = 20, .r = { .min = 0, .max = 41500000 }, },
+	{ .n = "mci0_clk", .id = 21, },
+	{ .n = "mci1_clk", .id = 22, },
+	{ .n = "mci2_clk", .id = 23, },
+	{ .n = "spi0_clk", .id = 24, .r = { .min = 0, .max = 166000000 }, },
+	{ .n = "spi1_clk", .id = 25, .r = { .min = 0, .max = 166000000 }, },
+	{ .n = "tcb0_clk", .id = 26, .r = { .min = 0, .max = 166000000 }, },
+	{ .n = "tcb1_clk", .id = 27, .r = { .min = 0, .max = 166000000 }, },
+	{ .n = "pwm_clk", .id = 28, },
+	{ .n = "adc_clk", .id = 29, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "dma0_clk", .id = 30, },
+	{ .n = "dma1_clk", .id = 31, },
+	{ .n = "uhphs_clk", .id = 32, },
+	{ .n = "udphs_clk", .id = 33, },
+	{ .n = "macb0_clk", .id = 34, },
+	{ .n = "macb1_clk", .id = 35, },
+	{ .n = "lcdc_clk", .id = 36, },
+	{ .n = "isi_clk", .id = 37, },
+	{ .n = "ssc0_clk", .id = 38, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "ssc1_clk", .id = 39, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "can0_clk", .id = 40, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "can1_clk", .id = 41, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "sha_clk", .id = 42, },
+	{ .n = "aes_clk", .id = 43, },
+	{ .n = "tdes_clk", .id = 44, },
+	{ .n = "trng_clk", .id = 45, },
+	{ .n = "fuse_clk", .id = 48, },
+	{ .n = "mpddr_clk", .id = 49, },
+};
+
+static void __init sama5d3_pmc_setup(struct device_node *np)
+{
+	const char *slck_name, *mainxtal_name;
+	struct pmc_data *sama5d3_pmc;
+	const char *parent_names[5];
+	struct regmap *regmap;
+	struct clk *hw;
+	int i;
+	bool bypass;
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
+	sama5d3_pmc = pmc_data_allocate(PMC_PLLACK + 1,
+					nck(sama5d3_systemck),
+					nck(sama5d3_periphck), 0, 3);
+	if (!sama5d3_pmc)
+		return;
+
+	hw = at91_clk_register_main_rc_osc(regmap, "main_rc_osc", 12000000,
+					   50000000);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	bypass = of_property_read_bool(np, "atmel,osc-bypass");
+
+	hw = at91_clk_register_main_osc(regmap, "main_osc", mainxtal_name,
+					bypass);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = "main_rc_osc";
+	parent_names[1] = "main_osc";
+	hw = at91_clk_register_sam9x5_main(regmap, "mainck", parent_names, 2);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_pll(regmap, "pllack", "mainck", 0,
+				   &sama5d3_pll_layout, &plla_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_plldiv(regmap, "plladivck", "pllack");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	sama5d3_pmc->chws[PMC_PLLACK] = hw;
+
+	hw = at91_clk_register_utmi(regmap, NULL, "utmick", "mainck");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	sama5d3_pmc->chws[PMC_UTMI] = hw;
+
+	parent_names[0] = slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "plladivck";
+	parent_names[3] = "utmick";
+	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
+				      &at91sam9x5_master_layout,
+				      &mck_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	sama5d3_pmc->chws[PMC_MCK] = hw;
+
+	parent_names[0] = "plladivck";
+	parent_names[1] = "utmick";
+	hw = at91sam9x5_clk_register_usb(regmap, "usbck", parent_names, 2);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91sam9x5_clk_register_smd(regmap, "smdclk", parent_names, 2);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "plladivck";
+	parent_names[3] = "utmick";
+	parent_names[4] = "masterck";
+	for (i = 0; i < 3; i++) {
+		char *name = xasprintf("prog%d", i);
+
+		hw = at91_clk_register_programmable(regmap, name,
+						    parent_names, 5, i,
+						    &at91sam9x5_programmable_layout);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		sama5d3_pmc->pchws[i] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(sama5d3_systemck); i++) {
+		hw = at91_clk_register_system(regmap, sama5d3_systemck[i].n,
+					      sama5d3_systemck[i].p,
+					      sama5d3_systemck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		sama5d3_pmc->shws[sama5d3_systemck[i].id] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(sama5d3_periphck); i++) {
+		hw = at91_clk_register_sam9x5_peripheral(regmap,
+							 &sama5d3_pcr_layout,
+							 sama5d3_periphck[i].n,
+							 "masterck",
+							 sama5d3_periphck[i].id,
+							 &sama5d3_periphck[i].r);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		sama5d3_pmc->phws[sama5d3_periphck[i].id] = hw;
+	}
+
+	of_clk_add_provider(np, of_clk_hw_pmc_get, sama5d3_pmc);
+
+	return;
+
+err_free:
+	kfree(sama5d3_pmc);
+}
+/*
+ * The TCB is used as the clocksource so its clock is needed early. This means
+ * this can't be a platform driver.
+ */
+CLK_OF_DECLARE_DRIVER(sama5d3_pmc, "atmel,sama5d3-pmc", sama5d3_pmc_setup);
diff --git a/drivers/clk/at91/sama5d4.c b/drivers/clk/at91/sama5d4.c
index 77ccd77404cf..9a19dac5e32f 100644
--- a/drivers/clk/at91/sama5d4.c
+++ b/drivers/clk/at91/sama5d4.c
@@ -146,9 +146,9 @@ static void __init sama5d4_pmc_setup(struct device_node *np)
 	if (IS_ERR(regmap))
 		return;
 
-	sama5d4_pmc = pmc_data_allocate(PMC_MCK2 + 1,
+	sama5d4_pmc = pmc_data_allocate(PMC_PLLACK + 1,
 					nck(sama5d4_systemck),
-					nck(sama5d4_periph32ck), 0);
+					nck(sama5d4_periph32ck), 0, 3);
 	if (!sama5d4_pmc)
 		return;
 
@@ -179,6 +179,8 @@ static void __init sama5d4_pmc_setup(struct device_node *np)
 	if (IS_ERR(hw))
 		goto err_free;
 
+	sama5d4_pmc->chws[PMC_PLLACK] = hw;
+
 	hw = at91_clk_register_utmi(regmap, NULL, "utmick", "mainck");
 	if (IS_ERR(hw))
 		goto err_free;
@@ -230,6 +232,8 @@ static void __init sama5d4_pmc_setup(struct device_node *np)
 						    &at91sam9x5_programmable_layout);
 		if (IS_ERR(hw))
 			goto err_free;
+
+		sama5d4_pmc->pchws[i] = hw;
 	}
 
 	for (i = 0; i < ARRAY_SIZE(sama5d4_systemck); i++) {
@@ -273,6 +277,6 @@ static void __init sama5d4_pmc_setup(struct device_node *np)
 	return;
 
 err_free:
-	pmc_data_free(sama5d4_pmc);
+	kfree(sama5d4_pmc);
 }
 CLK_OF_DECLARE_DRIVER(sama5d4_pmc, "atmel,sama5d4-pmc", sama5d4_pmc_setup);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
