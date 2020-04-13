Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttV-0005qu-Uc
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:53:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttU-0003bI-Jq
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:36 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttT-0005GE-Ne
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:52:03 +0200
Message-Id: <20200413075204.17544-21-a.fatoum@pengutronix.de>
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
Subject: [PATCH 20/21] clk: at91: port Linux v5.6 SAM9X60 (new ARM926EJ-S)
 clock support
To: barebox@lists.infradead.org

During a bug hunt that ultimately turned out unrelated to the state
of the barebox at91 clk driver, I synchronized its state with Linux v5.6.

Bug fixes and clean up to minimize the diff were split out in separate
prior commits.  This last commit imports the rest, which is basically
support for Microchip's new ARM926EJ-S SoC, the SAM9x60.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig          |  11 +
 drivers/clk/at91/Makefile           |   2 +
 drivers/clk/at91/at91sam9x5.c       |  12 +-
 drivers/clk/at91/clk-generated.c    |  56 +++--
 drivers/clk/at91/clk-main.c         |  10 +-
 drivers/clk/at91/clk-master.c       |   7 +-
 drivers/clk/at91/clk-peripheral.c   |  43 ++--
 drivers/clk/at91/clk-pll.c          |  12 +-
 drivers/clk/at91/clk-programmable.c |  44 +++-
 drivers/clk/at91/clk-sam9x60-pll.c  | 322 ++++++++++++++++++++++++
 drivers/clk/at91/clk-usb.c          |  33 ++-
 drivers/clk/at91/dt-compat.c        |   9 +
 drivers/clk/at91/pmc.c              |   8 +-
 drivers/clk/at91/pmc.h              |  28 ++-
 drivers/clk/at91/sam9x60.c          | 313 +++++++++++++++++++++++
 drivers/clk/at91/sama5d2.c          |  20 +-
 drivers/clk/at91/sama5d4.c          |   8 +
 drivers/clk/at91/sckc.c             | 372 ++++++++++++++++++----------
 include/linux/clk/at91_pmc.h        |  28 ++-
 19 files changed, 1115 insertions(+), 223 deletions(-)
 create mode 100644 drivers/clk/at91/clk-sam9x60-pll.c
 create mode 100644 drivers/clk/at91/sam9x60.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 022635381009..77b3e9db64c8 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -40,6 +40,9 @@ config HAVE_AT91_AUDIO_PLL
 config HAVE_AT91_I2S_MUX_CLK
 	bool
 
+config HAVE_AT91_SAM9X60_PLL
+	bool
+
 # Select if board uses the common at91sam926x_board_init
 config AT91SAM926X_BOARD_INIT
 	bool
@@ -108,6 +111,14 @@ config SOC_SAMA5D4
 	select HAS_MACB
 	select HAVE_MACH_ARM_HEAD
 
+config SOC_SAM9X60
+	bool
+	select CPU_ARM926T
+	select HAVE_AT91_USB_CLK
+	select HAVE_AT91_GENERATED_CLK
+	select HAVE_AT91_SAM9X60_PLL
+	select PINCTRL_AT91
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x73f00000 if SOC_AT91SAM9G45
diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
index 605f698439d0..423605f45203 100644
--- a/drivers/clk/at91/Makefile
+++ b/drivers/clk/at91/Makefile
@@ -14,7 +14,9 @@ obj-$(CONFIG_HAVE_AT91_SMD)		+= clk-smd.o
 obj-$(CONFIG_HAVE_AT91_H32MX)		+= clk-h32mx.o
 obj-$(CONFIG_HAVE_AT91_GENERATED_CLK)	+= clk-generated.o
 obj-$(CONFIG_HAVE_AT91_I2S_MUX_CLK)	+= clk-i2s-mux.o
+obj-$(CONFIG_HAVE_AT91_SAM9X60_PLL)	+= clk-sam9x60-pll.o
 obj-$(CONFIG_SOC_AT91SAM9) += at91sam9260.o at91sam9rl.o at91sam9x5.o dt-compat.o
+obj-$(CONFIG_SOC_SAM9X60) += sam9x60.o
 obj-$(CONFIG_SOC_SAMA5D4) += sama5d4.o
 obj-$(CONFIG_SOC_SAMA5D3) += dt-compat.o
 obj-$(CONFIG_SOC_SAMA5D2) += sama5d2.o
diff --git a/drivers/clk/at91/at91sam9x5.c b/drivers/clk/at91/at91sam9x5.c
index 87b0fd2e1cad..baa71aa10534 100644
--- a/drivers/clk/at91/at91sam9x5.c
+++ b/drivers/clk/at91/at91sam9x5.c
@@ -55,6 +55,13 @@ static const struct {
 	{ .n = "pck1",  .p = "prog1",    .id = 9 },
 };
 
+static const struct clk_pcr_layout at91sam9x5_pcr_layout = {
+	.offset = 0x10c,
+	.cmd = BIT(12),
+	.pid_mask = GENMASK(5, 0),
+	.div_mask = GENMASK(17, 16),
+};
+
 struct pck {
 	char *n;
 	u8 id;
@@ -150,8 +157,7 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 		return;
 
 	at91sam9x5_pmc = pmc_data_allocate(PMC_MAIN + 1,
-					   nck(at91sam9x5_systemck),
-					   nck(at91sam9x35_periphck), 0);
+					   nck(at91sam9x5_systemck), 31, 0);
 	if (!at91sam9x5_pmc)
 		return;
 
@@ -249,6 +255,7 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 
 	for (i = 0; i < ARRAY_SIZE(at91sam9x5_periphck); i++) {
 		hw = at91_clk_register_sam9x5_peripheral(regmap,
+							 &at91sam9x5_pcr_layout,
 							 at91sam9x5_periphck[i].n,
 							 "masterck",
 							 at91sam9x5_periphck[i].id,
@@ -261,6 +268,7 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 
 	for (i = 0; extra_pcks[i].id; i++) {
 		hw = at91_clk_register_sam9x5_peripheral(regmap,
+							 &at91sam9x5_pcr_layout,
 							 extra_pcks[i].n,
 							 "masterck",
 							 extra_pcks[i].id,
diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
index 79b83b45ab62..56b800facbaf 100644
--- a/drivers/clk/at91/clk-generated.c
+++ b/drivers/clk/at91/clk-generated.c
@@ -14,6 +14,7 @@
 #include <linux/clk/at91_pmc.h>
 #include <mfd/syscon.h>
 #include <regmap.h>
+#include <linux/bitfield.h>
 
 #include "pmc.h"
 
@@ -27,6 +28,7 @@ struct clk_generated {
 	struct clk_range range;
 	u32 id;
 	u32 gckdiv;
+	const struct clk_pcr_layout *layout;
 	u8 parent_id;
 	bool audio_pll_allowed;
 };
@@ -41,14 +43,14 @@ static int clk_generated_enable(struct clk *hw)
 	pr_debug("GCLK: %s, gckdiv = %d, parent id = %d\n",
 		 __func__, gck->gckdiv, gck->parent_id);
 
-	regmap_write(gck->regmap, AT91_PMC_PCR,
-		     (gck->id & AT91_PMC_PCR_PID_MASK));
-	regmap_update_bits(gck->regmap, AT91_PMC_PCR,
-			   AT91_PMC_PCR_GCKDIV_MASK | AT91_PMC_PCR_GCKCSS_MASK |
-			   AT91_PMC_PCR_CMD | AT91_PMC_PCR_GCKEN,
-			   AT91_PMC_PCR_GCKCSS(gck->parent_id) |
-			   AT91_PMC_PCR_CMD |
-			   AT91_PMC_PCR_GCKDIV(gck->gckdiv) |
+	regmap_write(gck->regmap, gck->layout->offset,
+		     (gck->id & gck->layout->pid_mask));
+	regmap_update_bits(gck->regmap, gck->layout->offset,
+			   AT91_PMC_PCR_GCKDIV_MASK | gck->layout->gckcss_mask |
+			   gck->layout->cmd | AT91_PMC_PCR_GCKEN,
+			   field_prep(gck->layout->gckcss_mask, gck->parent_id) |
+			   gck->layout->cmd |
+			   FIELD_PREP(AT91_PMC_PCR_GCKDIV_MASK, gck->gckdiv) |
 			   AT91_PMC_PCR_GCKEN);
 	return 0;
 }
@@ -57,11 +59,11 @@ static void clk_generated_disable(struct clk *hw)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
 
-	regmap_write(gck->regmap, AT91_PMC_PCR,
-		     (gck->id & AT91_PMC_PCR_PID_MASK));
-	regmap_update_bits(gck->regmap, AT91_PMC_PCR,
-			   AT91_PMC_PCR_CMD | AT91_PMC_PCR_GCKEN,
-			   AT91_PMC_PCR_CMD);
+	regmap_write(gck->regmap, gck->layout->offset,
+		     (gck->id & gck->layout->pid_mask));
+	regmap_update_bits(gck->regmap, gck->layout->offset,
+			   gck->layout->cmd | AT91_PMC_PCR_GCKEN,
+			   gck->layout->cmd);
 }
 
 static int clk_generated_is_enabled(struct clk *hw)
@@ -69,9 +71,9 @@ static int clk_generated_is_enabled(struct clk *hw)
 	struct clk_generated *gck = to_clk_generated(hw);
 	unsigned int status;
 
-	regmap_write(gck->regmap, AT91_PMC_PCR,
-		     (gck->id & AT91_PMC_PCR_PID_MASK));
-	regmap_read(gck->regmap, AT91_PMC_PCR, &status);
+	regmap_write(gck->regmap, gck->layout->offset,
+		     (gck->id & gck->layout->pid_mask));
+	regmap_read(gck->regmap, gck->layout->offset, &status);
 
 	return status & AT91_PMC_PCR_GCKEN ? 1 : 0;
 }
@@ -149,18 +151,17 @@ static void clk_generated_startup(struct clk_generated *gck)
 {
 	u32 tmp;
 
-	regmap_write(gck->regmap, AT91_PMC_PCR,
-		     (gck->id & AT91_PMC_PCR_PID_MASK));
-	regmap_read(gck->regmap, AT91_PMC_PCR, &tmp);
+	regmap_write(gck->regmap, gck->layout->offset,
+		     (gck->id & gck->layout->pid_mask));
+	regmap_read(gck->regmap, gck->layout->offset, &tmp);
 
-	gck->parent_id = (tmp & AT91_PMC_PCR_GCKCSS_MASK)
-					>> AT91_PMC_PCR_GCKCSS_OFFSET;
-	gck->gckdiv = (tmp & AT91_PMC_PCR_GCKDIV_MASK)
-					>> AT91_PMC_PCR_GCKDIV_OFFSET;
+	gck->parent_id = field_get(gck->layout->gckcss_mask, tmp);
+	gck->gckdiv = FIELD_GET(AT91_PMC_PCR_GCKDIV_MASK, tmp);
 }
 
 struct clk * __init
 at91_clk_register_generated(struct regmap *regmap,
+			    const struct clk_pcr_layout *layout,
 			    const char *name, const char **parent_names,
 			    u8 num_parents, u8 id, bool pll_audio,
 			    const struct clk_range *range)
@@ -182,18 +183,21 @@ at91_clk_register_generated(struct regmap *regmap,
 	gck->hw.parent_names = xmemdup(parent_names, parents_array_size);
 	gck->hw.num_parents = num_parents;
 
-	/* gck->hw.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE; */
+	/* gck->hw.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE | CLK_SET_PARENT; */
 	gck->regmap = regmap;
 	gck->range = *range;
 	gck->audio_pll_allowed = pll_audio;
+	gck->layout = layout;
 
+	clk_generated_startup(gck);
 	hw = &gck->hw;
 	ret = clk_register(&gck->hw);
 	if (ret) {
 		kfree(gck);
 		hw = ERR_PTR(ret);
-	} else
-		clk_generated_startup(gck);
+	} else {
+		pmc_register_id(id);
+	}
 
 	return hw;
 }
diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
index 46bb47914960..08abb1673b31 100644
--- a/drivers/clk/at91/clk-main.c
+++ b/drivers/clk/at91/clk-main.c
@@ -21,6 +21,10 @@
 
 #define MOR_KEY_MASK		(0xff << 16)
 
+#define clk_main_parent_select(s)	(((s) & \
+					(AT91_PMC_MOSCEN | \
+					AT91_PMC_OSCBYPASS)) ? 1 : 0)
+
 struct clk_main_osc {
 	struct clk clk;
 	struct regmap *regmap;
@@ -114,7 +118,7 @@ static int clk_main_osc_is_enabled(struct clk *clk)
 
 	regmap_read(regmap, AT91_PMC_SR, &status);
 
-	return (status & AT91_PMC_MOSCS) && (tmp & AT91_PMC_MOSCEN);
+	return (status & AT91_PMC_MOSCS) && clk_main_parent_select(tmp);
 }
 
 static const struct clk_ops main_osc_ops = {
@@ -417,7 +421,7 @@ static int clk_sam9x5_main_get_parent(struct clk *clk)
 
 	regmap_read(clkmain->regmap, AT91_CKGR_MOR, &status);
 
-	return status & AT91_PMC_MOSCEN ? 1 : 0;
+	return clk_main_parent_select(status);
 }
 
 static const struct clk_ops sam9x5_main_ops = {
@@ -457,7 +461,7 @@ at91_clk_register_sam9x5_main(struct regmap *regmap,
 
 	clkmain->regmap = regmap;
 	regmap_read(clkmain->regmap, AT91_CKGR_MOR, &status);
-	clkmain->parent = status & AT91_PMC_MOSCEN ? 1 : 0;
+	clkmain->parent = clk_main_parent_select(status);
 
 	ret = clk_register(&clkmain->clk);
 	if (ret) {
diff --git a/drivers/clk/at91/clk-master.c b/drivers/clk/at91/clk-master.c
index 766502fd7a3d..4e3b512aaaaf 100644
--- a/drivers/clk/at91/clk-master.c
+++ b/drivers/clk/at91/clk-master.c
@@ -27,6 +27,7 @@ struct clk_master {
 	const struct clk_master_layout *layout;
 	const struct clk_master_characteristics *characteristics;
 	const char *parents[MASTER_SOURCE_MAX];
+	u32 mckr;
 };
 
 static inline bool clk_master_ready(struct regmap *regmap)
@@ -67,7 +68,7 @@ static unsigned long clk_master_recalc_rate(struct clk *clk,
 						master->characteristics;
 	unsigned int mckr;
 
-	regmap_read(master->regmap, AT91_PMC_MCKR, &mckr);
+	regmap_read(master->regmap, master->layout->offset, &mckr);
 	mckr &= layout->mask;
 
 	pres = (mckr >> layout->pres_shift) & MASTER_PRES_MASK;
@@ -93,7 +94,7 @@ static int clk_master_get_parent(struct clk *clk)
 	struct clk_master *master = to_clk_master(clk);
 	unsigned int mckr;
 
-	regmap_read(master->regmap, AT91_PMC_MCKR, &mckr);
+	regmap_read(master->regmap, master->layout->offset, &mckr);
 
 	return mckr & AT91_PMC_CSS;
 }
@@ -144,9 +145,11 @@ at91_clk_register_master(struct regmap *regmap,
 const struct clk_master_layout at91rm9200_master_layout = {
 	.mask = 0x31F,
 	.pres_shift = 2,
+	.offset = AT91_PMC_MCKR,
 };
 
 const struct clk_master_layout at91sam9x5_master_layout = {
 	.mask = 0x373,
 	.pres_shift = 4,
+	.offset = AT91_PMC_MCKR,
 };
diff --git a/drivers/clk/at91/clk-peripheral.c b/drivers/clk/at91/clk-peripheral.c
index 21d58b4a34fd..2b9008eb2ce1 100644
--- a/drivers/clk/at91/clk-peripheral.c
+++ b/drivers/clk/at91/clk-peripheral.c
@@ -37,6 +37,7 @@ struct clk_sam9x5_peripheral {
 	struct clk_range range;
 	u32 id;
 	u32 div;
+	const struct clk_pcr_layout *layout;
 	bool auto_div;
 	const char *parent;
 };
@@ -159,13 +160,13 @@ static int clk_sam9x5_peripheral_enable(struct clk *clk)
 	if (periph->id < PERIPHERAL_ID_MIN)
 		return 0;
 
-	regmap_write(periph->regmap, AT91_PMC_PCR,
-		     (periph->id & AT91_PMC_PCR_PID_MASK));
-	regmap_write_bits(periph->regmap, AT91_PMC_PCR,
-			  AT91_PMC_PCR_DIV_MASK | AT91_PMC_PCR_CMD |
+	regmap_write(periph->regmap, periph->layout->offset,
+		     (periph->id & periph->layout->pid_mask));
+	regmap_write_bits(periph->regmap, periph->layout->offset,
+			  periph->layout->div_mask | periph->layout->cmd |
 			  AT91_PMC_PCR_EN,
-			  AT91_PMC_PCR_DIV(periph->div) |
-			  AT91_PMC_PCR_CMD |
+			  field_prep(periph->layout->div_mask, periph->div) |
+			  periph->layout->cmd |
 			  AT91_PMC_PCR_EN);
 
 	return 0;
@@ -178,11 +179,11 @@ static void clk_sam9x5_peripheral_disable(struct clk *clk)
 	if (periph->id < PERIPHERAL_ID_MIN)
 		return;
 
-	regmap_write(periph->regmap, AT91_PMC_PCR,
-		     (periph->id & AT91_PMC_PCR_PID_MASK));
-	regmap_write_bits(periph->regmap, AT91_PMC_PCR,
-			  AT91_PMC_PCR_EN | AT91_PMC_PCR_CMD,
-			  AT91_PMC_PCR_CMD);
+	regmap_write(periph->regmap, periph->layout->offset,
+		     (periph->id & periph->layout->pid_mask));
+	regmap_write_bits(periph->regmap, periph->layout->offset,
+			  AT91_PMC_PCR_EN | periph->layout->cmd,
+			  periph->layout->cmd);
 }
 
 static int clk_sam9x5_peripheral_is_enabled(struct clk *clk)
@@ -193,9 +194,9 @@ static int clk_sam9x5_peripheral_is_enabled(struct clk *clk)
 	if (periph->id < PERIPHERAL_ID_MIN)
 		return 1;
 
-	regmap_write(periph->regmap, AT91_PMC_PCR,
-		     (periph->id & AT91_PMC_PCR_PID_MASK));
-	regmap_read(periph->regmap, AT91_PMC_PCR, &status);
+	regmap_write(periph->regmap, periph->layout->offset,
+		     (periph->id & periph->layout->pid_mask));
+	regmap_read(periph->regmap, periph->layout->offset, &status);
 
 	return status & AT91_PMC_PCR_EN ? 1 : 0;
 }
@@ -210,12 +211,12 @@ clk_sam9x5_peripheral_recalc_rate(struct clk *clk,
 	if (periph->id < PERIPHERAL_ID_MIN)
 		return parent_rate;
 
-	regmap_write(periph->regmap, AT91_PMC_PCR,
-		     (periph->id & AT91_PMC_PCR_PID_MASK));
-	regmap_read(periph->regmap, AT91_PMC_PCR, &status);
+	regmap_write(periph->regmap, periph->layout->offset,
+		     (periph->id & periph->layout->pid_mask));
+	regmap_read(periph->regmap, periph->layout->offset, &status);
 
 	if (status & AT91_PMC_PCR_EN) {
-		periph->div = PERIPHERAL_RSHIFT(status);
+		periph->div = field_get(periph->layout->div_mask, status);
 		periph->auto_div = false;
 	} else {
 		clk_sam9x5_peripheral_autodiv(periph);
@@ -308,6 +309,7 @@ static const struct clk_ops sam9x5_peripheral_ops = {
 
 struct clk * __init
 at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
+				    const struct clk_pcr_layout *layout,
 				    const char *name, const char *parent_name,
 				    u32 id, const struct clk_range *range)
 {
@@ -331,7 +333,9 @@ at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
 	periph->id = id;
 	periph->div = 0;
 	periph->regmap = regmap;
-	periph->auto_div = true;
+	if (layout->div_mask)
+		periph->auto_div = true;
+	periph->layout = layout;
 	periph->range = *range;
 
 	ret = clk_register(&periph->clk);
@@ -341,6 +345,7 @@ at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
 	}
 
 	clk_sam9x5_peripheral_autodiv(periph);
+	pmc_register_id(id);
 
 	return &periph->clk;
 }
diff --git a/drivers/clk/at91/clk-pll.c b/drivers/clk/at91/clk-pll.c
index d3c4ab6f7a26..5cb156e784e6 100644
--- a/drivers/clk/at91/clk-pll.c
+++ b/drivers/clk/at91/clk-pll.c
@@ -116,19 +116,11 @@ static unsigned long clk_pll_recalc_rate(struct clk *clk,
 					 unsigned long parent_rate)
 {
 	struct clk_pll *pll = to_clk_pll(clk);
-	unsigned int pllr;
-	u16 mul;
-	u8 div;
-
-	regmap_read(pll->regmap, PLL_REG(pll->id), &pllr);
-
-	div = PLL_DIV(pllr);
-	mul = PLL_MUL(pllr, pll->layout);
 
-	if (!div || !mul)
+	if (!pll->div || !pll->mul)
 		return 0;
 
-	return (parent_rate / div) * (mul + 1);
+	return (parent_rate / pll->div) * (pll->mul + 1);
 }
 
 static long clk_pll_get_best_div_mul(struct clk_pll *pll, unsigned long rate,
diff --git a/drivers/clk/at91/clk-programmable.c b/drivers/clk/at91/clk-programmable.c
index 09bd8bc5306e..26c36a882d8c 100644
--- a/drivers/clk/at91/clk-programmable.c
+++ b/drivers/clk/at91/clk-programmable.c
@@ -18,8 +18,7 @@
 #define PROG_ID_MAX		7
 
 #define PROG_STATUS_MASK(id)	(1 << ((id) + 8))
-#define PROG_PRES_MASK		0x7
-#define PROG_PRES(layout, pckr)	((pckr >> layout->pres_shift) & PROG_PRES_MASK)
+#define PROG_PRES(layout, pckr)	((pckr >> layout->pres_shift) & layout->pres_mask)
 #define PROG_MAX_RM9200_CSS	3
 
 struct clk_programmable {
@@ -36,11 +35,18 @@ static unsigned long clk_programmable_recalc_rate(struct clk *clk,
 						  unsigned long parent_rate)
 {
 	struct clk_programmable *prog = to_clk_programmable(clk);
+	const struct clk_programmable_layout *layout = prog->layout;
 	unsigned int pckr;
+	unsigned long rate;
 
 	regmap_read(prog->regmap, AT91_PMC_PCKR(prog->id), &pckr);
 
-	return parent_rate >> PROG_PRES(prog->layout, pckr);
+	if (layout->is_pres_direct)
+		rate = parent_rate / (PROG_PRES(layout, pckr) + 1);
+	else
+		rate = parent_rate >> PROG_PRES(layout, pckr);
+
+	return rate;
 }
 
 static int clk_programmable_set_parent(struct clk *clk, u8 index)
@@ -88,25 +94,29 @@ static int clk_programmable_set_rate(struct clk *clk, unsigned long rate,
 	struct clk_programmable *prog = to_clk_programmable(clk);
 	const struct clk_programmable_layout *layout = prog->layout;
 	unsigned long div = parent_rate / rate;
-	unsigned int pckr;
 	int shift = 0;
 
-	regmap_read(prog->regmap, AT91_PMC_PCKR(prog->id), &pckr);
-
 	if (!div)
 		return -EINVAL;
 
-	shift = fls(div) - 1;
+	if (layout->is_pres_direct) {
+		shift = div - 1;
 
-	if (div != (1 << shift))
-		return -EINVAL;
+		if (shift > layout->pres_mask)
+			return -EINVAL;
+	} else {
+		shift = fls(div) - 1;
 
-	if (shift >= PROG_PRES_MASK)
-		return -EINVAL;
+		if (div != (1 << shift))
+			return -EINVAL;
+
+		if (shift >= layout->pres_mask)
+			return -EINVAL;
+	}
 
 	regmap_write_bits(prog->regmap, AT91_PMC_PCKR(prog->id),
-			   PROG_PRES_MASK << layout->pres_shift,
-			   shift << layout->pres_shift);
+			  layout->pres_mask << layout->pres_shift,
+			  shift << layout->pres_shift);
 
 	return 0;
 }
@@ -152,23 +162,31 @@ at91_clk_register_programmable(struct regmap *regmap,
 		return ERR_PTR(ret);
 	}
 
+	pmc_register_pck(id);
+
 	return &prog->clk;
 }
 
 const struct clk_programmable_layout at91rm9200_programmable_layout = {
+	.pres_mask = 0x7,
 	.pres_shift = 2,
 	.css_mask = 0x3,
 	.have_slck_mck = 0,
+	.is_pres_direct = 0,
 };
 
 const struct clk_programmable_layout at91sam9g45_programmable_layout = {
+	.pres_mask = 0x7,
 	.pres_shift = 2,
 	.css_mask = 0x3,
 	.have_slck_mck = 1,
+	.is_pres_direct = 0,
 };
 
 const struct clk_programmable_layout at91sam9x5_programmable_layout = {
+	.pres_mask = 0x7,
 	.pres_shift = 4,
 	.css_mask = 0x7,
 	.have_slck_mck = 0,
+	.is_pres_direct = 0,
 };
diff --git a/drivers/clk/at91/clk-sam9x60-pll.c b/drivers/clk/at91/clk-sam9x60-pll.c
new file mode 100644
index 000000000000..9ca77f87226b
--- /dev/null
+++ b/drivers/clk/at91/clk-sam9x60-pll.c
@@ -0,0 +1,322 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ *  Copyright (C) 2019 Microchip Technology Inc.
+ *
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <of.h>
+#include <linux/list.h>
+#include <linux/clk.h>
+#include <linux/clk/at91_pmc.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+#include <linux/bitfield.h>
+
+#include "pmc.h"
+
+#define PMC_PLL_CTRL0	0xc
+#define		PMC_PLL_CTRL0_DIV_MSK		GENMASK(7, 0)
+#define		PMC_PLL_CTRL0_ENPLL		BIT(28)
+#define		PMC_PLL_CTRL0_ENPLLCK		BIT(29)
+#define		PMC_PLL_CTRL0_ENLOCK		BIT(31)
+
+#define PMC_PLL_CTRL1	0x10
+#define		PMC_PLL_CTRL1_FRACR_MSK		GENMASK(21, 0)
+#define		PMC_PLL_CTRL1_MUL_MSK		GENMASK(30, 24)
+
+#define PMC_PLL_ACR	0x18
+#define		PMC_PLL_ACR_DEFAULT_UPLL	0x12020010UL
+#define		PMC_PLL_ACR_DEFAULT_PLLA	0x00020010UL
+#define		PMC_PLL_ACR_UTMIVR		BIT(12)
+#define		PMC_PLL_ACR_UTMIBG		BIT(13)
+#define		PMC_PLL_ACR_LOOP_FILTER_MSK	GENMASK(31, 24)
+
+#define PMC_PLL_UPDT	0x1c
+#define		PMC_PLL_UPDT_UPDATE		BIT(8)
+
+#define PMC_PLL_ISR0	0xec
+
+#define PLL_DIV_MAX		(FIELD_GET(PMC_PLL_CTRL0_DIV_MSK, UINT_MAX) + 1)
+#define UPLL_DIV		2
+#define PLL_MUL_MAX		(FIELD_GET(PMC_PLL_CTRL1_MUL_MSK, UINT_MAX) + 1)
+
+#define PLL_MAX_ID		1
+
+struct sam9x60_pll {
+	struct clk clk;
+	struct regmap *regmap;
+	const struct clk_pll_characteristics *characteristics;
+	u32 frac;
+	u8 id;
+	u8 div;
+	u16 mul;
+	const char *parent_name;
+};
+
+#define to_sam9x60_pll(clk) container_of(clk, struct sam9x60_pll, clk)
+
+static inline bool sam9x60_pll_ready(struct regmap *regmap, int id)
+{
+	unsigned int status;
+
+	regmap_read(regmap, PMC_PLL_ISR0, &status);
+
+	return !!(status & BIT(id));
+}
+
+static int sam9x60_pll_enable(struct clk *clk)
+{
+	struct sam9x60_pll *pll = to_sam9x60_pll(clk);
+	struct regmap *regmap = pll->regmap;
+	u8 div;
+	u16 mul;
+	u32 val;
+
+	regmap_write(regmap, PMC_PLL_UPDT, pll->id);
+
+	regmap_read(regmap, PMC_PLL_CTRL0, &val);
+	div = FIELD_GET(PMC_PLL_CTRL0_DIV_MSK, val);
+
+	regmap_read(regmap, PMC_PLL_CTRL1, &val);
+	mul = FIELD_GET(PMC_PLL_CTRL1_MUL_MSK, val);
+
+	if (sam9x60_pll_ready(regmap, pll->id) &&
+	    (div == pll->div && mul == pll->mul)) {
+		return 0;
+	}
+
+	/* Recommended value for PMC_PLL_ACR */
+	if (pll->characteristics->upll)
+		val = PMC_PLL_ACR_DEFAULT_UPLL;
+	else
+		val = PMC_PLL_ACR_DEFAULT_PLLA;
+	regmap_write(regmap, PMC_PLL_ACR, val);
+
+	regmap_write(regmap, PMC_PLL_CTRL1,
+		     FIELD_PREP(PMC_PLL_CTRL1_MUL_MSK, pll->mul));
+
+	if (pll->characteristics->upll) {
+		/* Enable the UTMI internal bandgap */
+		val |= PMC_PLL_ACR_UTMIBG;
+		regmap_write(regmap, PMC_PLL_ACR, val);
+
+		udelay(10);
+
+		/* Enable the UTMI internal regulator */
+		val |= PMC_PLL_ACR_UTMIVR;
+		regmap_write(regmap, PMC_PLL_ACR, val);
+
+		udelay(10);
+	}
+
+	regmap_update_bits(regmap, PMC_PLL_UPDT,
+			   PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);
+
+	regmap_write(regmap, PMC_PLL_CTRL0,
+		     PMC_PLL_CTRL0_ENLOCK | PMC_PLL_CTRL0_ENPLL |
+		     PMC_PLL_CTRL0_ENPLLCK | pll->div);
+
+	regmap_update_bits(regmap, PMC_PLL_UPDT,
+			   PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);
+
+	while (!sam9x60_pll_ready(regmap, pll->id))
+		cpu_relax();
+
+	return 0;
+}
+
+static int sam9x60_pll_is_enabled(struct clk *clk)
+{
+	struct sam9x60_pll *pll = to_sam9x60_pll(clk);
+
+	return sam9x60_pll_ready(pll->regmap, pll->id);
+}
+
+static void sam9x60_pll_disable(struct clk *clk)
+{
+	struct sam9x60_pll *pll = to_sam9x60_pll(clk);
+
+	regmap_write(pll->regmap, PMC_PLL_UPDT, pll->id);
+
+	regmap_update_bits(pll->regmap, PMC_PLL_CTRL0,
+			   PMC_PLL_CTRL0_ENPLLCK, 0);
+
+	regmap_update_bits(pll->regmap, PMC_PLL_UPDT,
+			   PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);
+
+	regmap_update_bits(pll->regmap, PMC_PLL_CTRL0, PMC_PLL_CTRL0_ENPLL, 0);
+
+	if (pll->characteristics->upll)
+		regmap_update_bits(pll->regmap, PMC_PLL_ACR,
+				   PMC_PLL_ACR_UTMIBG | PMC_PLL_ACR_UTMIVR, 0);
+
+	regmap_update_bits(pll->regmap, PMC_PLL_UPDT,
+			   PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);
+}
+
+static unsigned long sam9x60_pll_recalc_rate(struct clk *clk,
+					     unsigned long parent_rate)
+{
+	struct sam9x60_pll *pll = to_sam9x60_pll(clk);
+
+	return (parent_rate * (pll->mul + 1)) / (pll->div + 1);
+}
+
+static long sam9x60_pll_get_best_div_mul(struct sam9x60_pll *pll,
+					 unsigned long rate,
+					 unsigned long parent_rate,
+					 bool update)
+{
+	const struct clk_pll_characteristics *characteristics =
+							pll->characteristics;
+	unsigned long bestremainder = ULONG_MAX;
+	unsigned long maxdiv, mindiv, tmpdiv;
+	long bestrate = -ERANGE;
+	unsigned long bestdiv = 0;
+	unsigned long bestmul = 0;
+	unsigned long bestfrac = 0;
+
+	if (rate < characteristics->output[0].min ||
+	    rate > characteristics->output[0].max)
+		return -ERANGE;
+
+	if (!pll->characteristics->upll) {
+		mindiv = parent_rate / rate;
+		if (mindiv < 2)
+			mindiv = 2;
+
+		maxdiv = DIV_ROUND_UP(parent_rate * PLL_MUL_MAX, rate);
+		if (maxdiv > PLL_DIV_MAX)
+			maxdiv = PLL_DIV_MAX;
+	} else {
+		mindiv = maxdiv = UPLL_DIV;
+	}
+
+	for (tmpdiv = mindiv; tmpdiv <= maxdiv; tmpdiv++) {
+		unsigned long remainder;
+		unsigned long tmprate;
+		unsigned long tmpmul;
+		unsigned long tmpfrac = 0;
+
+		/*
+		 * Calculate the multiplier associated with the current
+		 * divider that provide the closest rate to the requested one.
+		 */
+		tmpmul = mult_frac(rate, tmpdiv, parent_rate);
+		tmprate = mult_frac(parent_rate, tmpmul, tmpdiv);
+		remainder = rate - tmprate;
+
+		if (remainder) {
+			tmpfrac = DIV_ROUND_CLOSEST_ULL((u64)remainder * tmpdiv * (1 << 22),
+							parent_rate);
+
+			tmprate += DIV_ROUND_CLOSEST_ULL((u64)tmpfrac * parent_rate,
+							 tmpdiv * (1 << 22));
+
+			if (tmprate > rate)
+				remainder = tmprate - rate;
+			else
+				remainder = rate - tmprate;
+		}
+
+		/*
+		 * Compare the remainder with the best remainder found until
+		 * now and elect a new best multiplier/divider pair if the
+		 * current remainder is smaller than the best one.
+		 */
+		if (remainder < bestremainder) {
+			bestremainder = remainder;
+			bestdiv = tmpdiv;
+			bestmul = tmpmul;
+			bestrate = tmprate;
+			bestfrac = tmpfrac;
+		}
+
+		/* We've found a perfect match!  */
+		if (!remainder)
+			break;
+	}
+
+	/* Check if bestrate is a valid output rate  */
+	if (bestrate < characteristics->output[0].min &&
+	    bestrate > characteristics->output[0].max)
+		return -ERANGE;
+
+	if (update) {
+		pll->div = bestdiv - 1;
+		pll->mul = bestmul - 1;
+		pll->frac = bestfrac;
+	}
+
+	return bestrate;
+}
+
+static long sam9x60_pll_round_rate(struct clk *clk, unsigned long rate,
+				   unsigned long *parent_rate)
+{
+	struct sam9x60_pll *pll = to_sam9x60_pll(clk);
+
+	return sam9x60_pll_get_best_div_mul(pll, rate, *parent_rate, false);
+}
+
+static int sam9x60_pll_set_rate(struct clk *clk, unsigned long rate,
+				unsigned long parent_rate)
+{
+	struct sam9x60_pll *pll = to_sam9x60_pll(clk);
+
+	return sam9x60_pll_get_best_div_mul(pll, rate, parent_rate, true);
+}
+
+static const struct clk_ops pll_ops = {
+	.enable = sam9x60_pll_enable,
+	.disable = sam9x60_pll_disable,
+	.is_enabled = sam9x60_pll_is_enabled,
+	.recalc_rate = sam9x60_pll_recalc_rate,
+	.round_rate = sam9x60_pll_round_rate,
+	.set_rate = sam9x60_pll_set_rate,
+};
+
+struct clk * __init
+sam9x60_clk_register_pll(struct regmap *regmap,
+			 const char *name, const char *parent_name, u8 id,
+			 const struct clk_pll_characteristics *characteristics)
+{
+	struct sam9x60_pll *pll;
+	unsigned int pllr;
+	int ret;
+
+	if (id > PLL_MAX_ID)
+		return ERR_PTR(-EINVAL);
+
+	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
+	if (!pll)
+		return ERR_PTR(-ENOMEM);
+
+	pll->clk.name = name;
+	pll->clk.ops = &pll_ops;
+	pll->parent_name = parent_name;
+	pll->clk.parent_names = &pll->parent_name;
+	pll->clk.num_parents = 1;
+	/* pll->clk.flags = CLK_SET_RATE_GATE; */
+
+	pll->id = id;
+	pll->characteristics = characteristics;
+	pll->regmap = regmap;
+
+	regmap_write(regmap, PMC_PLL_UPDT, id);
+	regmap_read(regmap, PMC_PLL_CTRL0, &pllr);
+	pll->div = FIELD_GET(PMC_PLL_CTRL0_DIV_MSK, pllr);
+	regmap_read(regmap, PMC_PLL_CTRL1, &pllr);
+	pll->mul = FIELD_GET(PMC_PLL_CTRL1_MUL_MSK, pllr);
+
+	ret = clk_register(&pll->clk);
+	if (ret) {
+		kfree(pll);
+		return ERR_PTR(ret);
+	}
+
+	return &pll->clk;
+}
+
diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
index da37f8ea3783..2cf68593c0ec 100644
--- a/drivers/clk/at91/clk-usb.c
+++ b/drivers/clk/at91/clk-usb.c
@@ -22,10 +22,14 @@
 #define RM9200_USB_DIV_SHIFT	28
 #define RM9200_USB_DIV_TAB_SIZE	4
 
+#define SAM9X5_USBS_MASK	GENMASK(0, 0)
+#define SAM9X60_USBS_MASK	GENMASK(1, 0)
+
 struct at91sam9x5_clk_usb {
 	struct clk clk;
 	struct regmap *regmap;
 	const char *parent_names[USB_SOURCE_MAX];
+	u32 usbs_mask;
 };
 
 #define to_at91sam9x5_clk_usb(clk) \
@@ -61,8 +65,7 @@ static int at91sam9x5_clk_usb_set_parent(struct clk *clk, u8 index)
 	if (index > 1)
 		return -EINVAL;
 
-	regmap_write_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_USBS,
-			  index ? AT91_PMC_USBS : 0);
+	regmap_write_bits(usb->regmap, AT91_PMC_USB, usb->usbs_mask, index);
 
 	return 0;
 }
@@ -74,7 +77,7 @@ static int at91sam9x5_clk_usb_get_parent(struct clk *clk)
 
 	regmap_read(usb->regmap, AT91_PMC_USB, &usbr);
 
-	return usbr & AT91_PMC_USBS;
+	return usbr & usb->usbs_mask;
 }
 
 static int at91sam9x5_clk_usb_set_rate(struct clk *clk, unsigned long rate,
@@ -138,9 +141,10 @@ static const struct clk_ops at91sam9n12_usb_ops = {
 	.set_rate = at91sam9x5_clk_usb_set_rate,
 };
 
-struct clk * __init
-at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
-			    const char **parent_names, u8 num_parents)
+static struct clk * __init
+_at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
+			     const char **parent_names, u8 num_parents,
+			     u32 usbs_mask)
 {
 	struct at91sam9x5_clk_usb *usb;
 	int ret;
@@ -156,6 +160,7 @@ at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE | */
 	/* 	     CLK_SET_RATE_PARENT; */
 	usb->regmap = regmap;
+	usb->usbs_mask = SAM9X5_USBS_MASK;
 
 	ret = clk_register(&usb->clk);
 	if (ret) {
@@ -166,6 +171,22 @@ at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 	return &usb->clk;
 }
 
+struct clk * __init
+at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
+			    const char **parent_names, u8 num_parents)
+{
+	return _at91sam9x5_clk_register_usb(regmap, name, parent_names,
+					    num_parents, SAM9X5_USBS_MASK);
+}
+
+struct clk * __init
+sam9x60_clk_register_usb(struct regmap *regmap, const char *name,
+			 const char **parent_names, u8 num_parents)
+{
+	return _at91sam9x5_clk_register_usb(regmap, name, parent_names,
+					    num_parents, SAM9X60_USBS_MASK);
+}
+
 struct clk * __init
 at91sam9n12_clk_register_usb(struct regmap *regmap, const char *name,
 			     const char *parent_name)
diff --git a/drivers/clk/at91/dt-compat.c b/drivers/clk/at91/dt-compat.c
index d82137638c4b..b888249199b5 100644
--- a/drivers/clk/at91/dt-compat.c
+++ b/drivers/clk/at91/dt-compat.c
@@ -23,6 +23,14 @@
 
 #define SYSTEM_MAX_ID		31
 
+static const struct clk_pcr_layout dt_pcr_layout = {
+	.offset = 0x10c,
+	.cmd = BIT(12),
+	.pid_mask = GENMASK(5, 0),
+	.div_mask = GENMASK(17, 16),
+	.gckcss_mask = GENMASK(10, 8),
+};
+
 static void __init of_at91rm9200_clk_main_osc_setup(struct device_node *np)
 {
 	struct clk *hw;
@@ -248,6 +256,7 @@ of_at91_clk_periph_setup(struct device_node *np, u8 type)
 					      &range);
 
 			hw = at91_clk_register_sam9x5_peripheral(regmap,
+								 &dt_pcr_layout,
 								 name,
 								 parent_name,
 								 id, &range);
diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
index 3f7aabbb551a..171b62cbfd08 100644
--- a/drivers/clk/at91/pmc.c
+++ b/drivers/clk/at91/pmc.c
@@ -89,22 +89,22 @@ struct pmc_data *pmc_data_allocate(unsigned int ncore, unsigned int nsystem,
 		return NULL;
 
 	pmc_data->ncore = ncore;
-	pmc_data->chws = kcalloc(ncore, sizeof(struct clk_hw *), GFP_KERNEL);
+	pmc_data->chws = kcalloc(ncore, sizeof(struct clk *), GFP_KERNEL);
 	if (!pmc_data->chws)
 		goto err;
 
 	pmc_data->nsystem = nsystem;
-	pmc_data->shws = kcalloc(nsystem, sizeof(struct clk_hw *), GFP_KERNEL);
+	pmc_data->shws = kcalloc(nsystem, sizeof(struct clk *), GFP_KERNEL);
 	if (!pmc_data->shws)
 		goto err;
 
 	pmc_data->nperiph = nperiph;
-	pmc_data->phws = kcalloc(nperiph, sizeof(struct clk_hw *), GFP_KERNEL);
+	pmc_data->phws = kcalloc(nperiph, sizeof(struct clk *), GFP_KERNEL);
 	if (!pmc_data->phws)
 		goto err;
 
 	pmc_data->ngck = ngck;
-	pmc_data->ghws = kcalloc(ngck, sizeof(struct clk_hw *), GFP_KERNEL);
+	pmc_data->ghws = kcalloc(ngck, sizeof(struct clk *), GFP_KERNEL);
 	if (!pmc_data->ghws)
 		goto err;
 
diff --git a/drivers/clk/at91/pmc.h b/drivers/clk/at91/pmc.h
index 0efd70b7fcb3..d96a94e6e5fd 100644
--- a/drivers/clk/at91/pmc.h
+++ b/drivers/clk/at91/pmc.h
@@ -9,7 +9,7 @@
 #define __PMC_H_
 
 #include <io.h>
-#include <linux/spinlock.h>
+#include <linux/bitops.h>
 #include <printk.h>
 
 struct pmc_data {
@@ -31,6 +31,7 @@ struct clk_range {
 #define CLK_RANGE(MIN, MAX) {.min = MIN, .max = MAX,}
 
 struct clk_master_layout {
+	u32 offset;
 	u32 mask;
 	u8 pres_shift;
 };
@@ -61,18 +62,32 @@ struct clk_pll_characteristics {
 	const struct clk_range *output;
 	u16 *icpll;
 	u8 *out;
+	u8 upll : 1;
 };
 
 struct clk_programmable_layout {
+	u8 pres_mask;
 	u8 pres_shift;
 	u8 css_mask;
 	u8 have_slck_mck;
+	u8 is_pres_direct;
 };
 
 extern const struct clk_programmable_layout at91rm9200_programmable_layout;
 extern const struct clk_programmable_layout at91sam9g45_programmable_layout;
 extern const struct clk_programmable_layout at91sam9x5_programmable_layout;
 
+struct clk_pcr_layout {
+	u32 offset;
+	u32 cmd;
+	u32 div_mask;
+	u32 gckcss_mask;
+	u32 pid_mask;
+};
+
+#define field_get(_mask, _reg) (((_reg) & (_mask)) >> (ffs(_mask) - 1))
+#define field_prep(_mask, _val) (((_val) << (ffs(_mask) - 1)) & (_mask))
+
 #define ndck(a, s) (a[s - 1].id + 1)
 #define nck(a) (a[ARRAY_SIZE(a) - 1].id + 1)
 struct pmc_data *pmc_data_allocate(unsigned int ncore, unsigned int nsystem,
@@ -98,6 +113,7 @@ at91_clk_register_audio_pll_pmc(struct regmap *regmap, const char *name,
 
 struct clk * __init
 at91_clk_register_generated(struct regmap *regmap,
+			    const struct clk_pcr_layout *layout,
 			    const char *name, const char **parent_names,
 			    u8 num_parents, u8 id, bool pll_audio,
 			    const struct clk_range *range);
@@ -136,6 +152,7 @@ at91_clk_register_peripheral(struct regmap *regmap, const char *name,
 			     const char *parent_name, u32 id);
 struct clk * __init
 at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
+				    const struct clk_pcr_layout *layout,
 				    const char *name, const char *parent_name,
 				    u32 id, const struct clk_range *range);
 
@@ -148,6 +165,11 @@ struct clk * __init
 at91_clk_register_plldiv(struct regmap *regmap, const char *name,
 			 const char *parent_name);
 
+struct clk * __init
+sam9x60_clk_register_pll(struct regmap *regmap,
+			 const char *name, const char *parent_name, u8 id,
+			 const struct clk_pll_characteristics *characteristics);
+
 struct clk * __init
 at91_clk_register_programmable(struct regmap *regmap, const char *name,
 			       const char **parent_names, u8 num_parents, u8 id,
@@ -174,6 +196,10 @@ struct clk * __init
 at91sam9n12_clk_register_usb(struct regmap *regmap, const char *name,
 			     const char *parent_name);
 struct clk * __init
+sam9x60_clk_register_usb(struct regmap *regmap, const char *name,
+			 const char **parent_names, u8 num_parents);
+
+struct clk * __init
 at91rm9200_clk_register_usb(struct regmap *regmap, const char *name,
 			    const char *parent_name, const u32 *divisors);
 
diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
new file mode 100644
index 000000000000..36a7a846ef06
--- /dev/null
+++ b/drivers/clk/at91/sam9x60.c
@@ -0,0 +1,313 @@
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
+	.output = { .min = 140000000, .max = 200000000 },
+	.divisors = { 1, 2, 4, 3 },
+	.have_div3_pres = 1,
+};
+
+static const struct clk_master_layout sam9x60_master_layout = {
+	.mask = 0x373,
+	.pres_shift = 4,
+	.offset = 0x28,
+};
+
+static const struct clk_range plla_outputs[] = {
+	{ .min = 300000000, .max = 600000000 },
+};
+
+static const struct clk_pll_characteristics plla_characteristics = {
+	.input = { .min = 12000000, .max = 48000000 },
+	.num_output = ARRAY_SIZE(plla_outputs),
+	.output = plla_outputs,
+};
+
+static const struct clk_range upll_outputs[] = {
+	{ .min = 300000000, .max = 500000000 },
+};
+
+static const struct clk_pll_characteristics upll_characteristics = {
+	.input = { .min = 12000000, .max = 48000000 },
+	.num_output = ARRAY_SIZE(upll_outputs),
+	.output = upll_outputs,
+	.upll = true,
+};
+
+static const struct clk_programmable_layout sam9x60_programmable_layout = {
+	.pres_mask = 0xff,
+	.pres_shift = 8,
+	.css_mask = 0x1f,
+	.have_slck_mck = 0,
+	.is_pres_direct = 1,
+};
+
+static const struct clk_pcr_layout sam9x60_pcr_layout = {
+	.offset = 0x88,
+	.cmd = BIT(31),
+	.gckcss_mask = GENMASK(12, 8),
+	.pid_mask = GENMASK(6, 0),
+};
+
+static const struct {
+	char *n;
+	char *p;
+	u8 id;
+} sam9x60_systemck[] = {
+	{ .n = "ddrck",  .p = "masterck", .id = 2 },
+	{ .n = "uhpck",  .p = "usbck",    .id = 6 },
+	{ .n = "pck0",   .p = "prog0",    .id = 8 },
+	{ .n = "pck1",   .p = "prog1",    .id = 9 },
+	{ .n = "qspick", .p = "masterck", .id = 19 },
+};
+
+static const struct {
+	char *n;
+	u8 id;
+} sam9x60_periphck[] = {
+	{ .n = "pioA_clk",   .id = 2, },
+	{ .n = "pioB_clk",   .id = 3, },
+	{ .n = "pioC_clk",   .id = 4, },
+	{ .n = "flex0_clk",  .id = 5, },
+	{ .n = "flex1_clk",  .id = 6, },
+	{ .n = "flex2_clk",  .id = 7, },
+	{ .n = "flex3_clk",  .id = 8, },
+	{ .n = "flex6_clk",  .id = 9, },
+	{ .n = "flex7_clk",  .id = 10, },
+	{ .n = "flex8_clk",  .id = 11, },
+	{ .n = "sdmmc0_clk", .id = 12, },
+	{ .n = "flex4_clk",  .id = 13, },
+	{ .n = "flex5_clk",  .id = 14, },
+	{ .n = "flex9_clk",  .id = 15, },
+	{ .n = "flex10_clk", .id = 16, },
+	{ .n = "tcb0_clk",   .id = 17, },
+	{ .n = "pwm_clk",    .id = 18, },
+	{ .n = "adc_clk",    .id = 19, },
+	{ .n = "dma0_clk",   .id = 20, },
+	{ .n = "matrix_clk", .id = 21, },
+	{ .n = "uhphs_clk",  .id = 22, },
+	{ .n = "udphs_clk",  .id = 23, },
+	{ .n = "macb0_clk",  .id = 24, },
+	{ .n = "lcd_clk",    .id = 25, },
+	{ .n = "sdmmc1_clk", .id = 26, },
+	{ .n = "macb1_clk",  .id = 27, },
+	{ .n = "ssc_clk",    .id = 28, },
+	{ .n = "can0_clk",   .id = 29, },
+	{ .n = "can1_clk",   .id = 30, },
+	{ .n = "flex11_clk", .id = 32, },
+	{ .n = "flex12_clk", .id = 33, },
+	{ .n = "i2s_clk",    .id = 34, },
+	{ .n = "qspi_clk",   .id = 35, },
+	{ .n = "gfx2d_clk",  .id = 36, },
+	{ .n = "pit64b_clk", .id = 37, },
+	{ .n = "trng_clk",   .id = 38, },
+	{ .n = "aes_clk",    .id = 39, },
+	{ .n = "tdes_clk",   .id = 40, },
+	{ .n = "sha_clk",    .id = 41, },
+	{ .n = "classd_clk", .id = 42, },
+	{ .n = "isi_clk",    .id = 43, },
+	{ .n = "pioD_clk",   .id = 44, },
+	{ .n = "tcb1_clk",   .id = 45, },
+	{ .n = "dbgu_clk",   .id = 47, },
+	{ .n = "mpddr_clk",  .id = 49, },
+};
+
+static const struct {
+	char *n;
+	u8 id;
+	struct clk_range r;
+	bool pll;
+} sam9x60_gck[] = {
+	{ .n = "flex0_gclk",  .id = 5, },
+	{ .n = "flex1_gclk",  .id = 6, },
+	{ .n = "flex2_gclk",  .id = 7, },
+	{ .n = "flex3_gclk",  .id = 8, },
+	{ .n = "flex6_gclk",  .id = 9, },
+	{ .n = "flex7_gclk",  .id = 10, },
+	{ .n = "flex8_gclk",  .id = 11, },
+	{ .n = "sdmmc0_gclk", .id = 12, .r = { .min = 0, .max = 105000000 }, },
+	{ .n = "flex4_gclk",  .id = 13, },
+	{ .n = "flex5_gclk",  .id = 14, },
+	{ .n = "flex9_gclk",  .id = 15, },
+	{ .n = "flex10_gclk", .id = 16, },
+	{ .n = "tcb0_gclk",   .id = 17, },
+	{ .n = "adc_gclk",    .id = 19, },
+	{ .n = "lcd_gclk",    .id = 25, .r = { .min = 0, .max = 140000000 }, },
+	{ .n = "sdmmc1_gclk", .id = 26, .r = { .min = 0, .max = 105000000 }, },
+	{ .n = "flex11_gclk", .id = 32, },
+	{ .n = "flex12_gclk", .id = 33, },
+	{ .n = "i2s_gclk",    .id = 34, .r = { .min = 0, .max = 105000000 },
+		.pll = true, },
+	{ .n = "pit64b_gclk", .id = 37, },
+	{ .n = "classd_gclk", .id = 42, .r = { .min = 0, .max = 100000000 },
+		.pll = true, },
+	{ .n = "tcb1_gclk",   .id = 45, },
+	{ .n = "dbgu_gclk",   .id = 47, },
+};
+
+static void __init sam9x60_pmc_setup(struct device_node *np)
+{
+	struct clk_range range = CLK_RANGE(0, 0);
+	const char *td_slck_name, *md_slck_name, *mainxtal_name;
+	struct pmc_data *sam9x60_pmc;
+	const char *parent_names[6];
+	struct regmap *regmap;
+	struct clk *hw;
+	int i;
+	bool bypass;
+
+	i = of_property_match_string(np, "clock-names", "td_slck");
+	if (i < 0)
+		return;
+
+	td_slck_name = of_clk_get_parent_name(np, i);
+
+	i = of_property_match_string(np, "clock-names", "md_slck");
+	if (i < 0)
+		return;
+
+	md_slck_name = of_clk_get_parent_name(np, i);
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
+	sam9x60_pmc = pmc_data_allocate(PMC_MAIN + 1,
+					nck(sam9x60_systemck),
+					nck(sam9x60_periphck),
+					nck(sam9x60_gck));
+	if (!sam9x60_pmc)
+		return;
+
+	hw = at91_clk_register_main_rc_osc(regmap, "main_rc_osc", 24000000,
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
+	sam9x60_pmc->chws[PMC_MAIN] = hw;
+
+	hw = sam9x60_clk_register_pll(regmap, "pllack",
+				      "mainck", 0, &plla_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = sam9x60_clk_register_pll(regmap, "upllck",
+				      "main_osc", 1, &upll_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	sam9x60_pmc->chws[PMC_UTMI] = hw;
+
+	parent_names[0] = md_slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "pllack";
+	hw = at91_clk_register_master(regmap, "masterck", 3, parent_names,
+				      &sam9x60_master_layout,
+				      &mck_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	sam9x60_pmc->chws[PMC_MCK] = hw;
+
+	parent_names[0] = "pllack";
+	parent_names[1] = "upllck";
+	parent_names[2] = "mainck";
+	parent_names[3] = "mainck";
+	hw = sam9x60_clk_register_usb(regmap, "usbck", parent_names, 4);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = md_slck_name;
+	parent_names[1] = td_slck_name;
+	parent_names[2] = "mainck";
+	parent_names[3] = "masterck";
+	parent_names[4] = "pllack";
+	parent_names[5] = "upllck";
+	for (i = 0; i < 8; i++) {
+		char name[6];
+
+		snprintf(name, sizeof(name), "prog%d", i);
+
+		hw = at91_clk_register_programmable(regmap, name,
+						    parent_names, 6, i,
+						    &sam9x60_programmable_layout);
+		if (IS_ERR(hw))
+			goto err_free;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(sam9x60_systemck); i++) {
+		hw = at91_clk_register_system(regmap, sam9x60_systemck[i].n,
+					      sam9x60_systemck[i].p,
+					      sam9x60_systemck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		sam9x60_pmc->shws[sam9x60_systemck[i].id] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(sam9x60_periphck); i++) {
+		hw = at91_clk_register_sam9x5_peripheral(regmap,
+							 &sam9x60_pcr_layout,
+							 sam9x60_periphck[i].n,
+							 "masterck",
+							 sam9x60_periphck[i].id,
+							 &range);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		sam9x60_pmc->phws[sam9x60_periphck[i].id] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(sam9x60_gck); i++) {
+		hw = at91_clk_register_generated(regmap,
+						 &sam9x60_pcr_layout,
+						 sam9x60_gck[i].n,
+						 parent_names, 6,
+						 sam9x60_gck[i].id,
+						 sam9x60_gck[i].pll,
+						 &sam9x60_gck[i].r);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		sam9x60_pmc->ghws[sam9x60_gck[i].id] = hw;
+	}
+
+	of_clk_add_provider(np, of_clk_hw_pmc_get, sam9x60_pmc);
+
+	return;
+
+err_free:
+	pmc_data_free(sam9x60_pmc);
+}
+/* Some clks are used for a clocksource */
+CLK_OF_DECLARE(sam9x60_pmc, "microchip,sam9x60-pmc", sam9x60_pmc_setup);
diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
index f17a88cd8845..731637e4abb1 100644
--- a/drivers/clk/at91/sama5d2.c
+++ b/drivers/clk/at91/sama5d2.c
@@ -34,6 +34,13 @@ static const struct clk_pll_characteristics plla_characteristics = {
 	.out = plla_out,
 };
 
+static const struct clk_pcr_layout sama5d2_pcr_layout = {
+	.offset = 0x10c,
+	.cmd = BIT(12),
+	.gckcss_mask = GENMASK(10, 8),
+	.pid_mask = GENMASK(6, 0),
+};
+
 static const struct {
 	char *n;
 	char *p;
@@ -131,6 +138,14 @@ static const struct {
 	  .pll = true },
 };
 
+static const struct clk_programmable_layout sama5d2_programmable_layout = {
+	.pres_mask = 0xff,
+	.pres_shift = 4,
+	.css_mask = 0x7,
+	.have_slck_mck = 0,
+	.is_pres_direct = 1,
+};
+
 static void __init sama5d2_pmc_setup(struct device_node *np)
 {
 	struct clk_range range = CLK_RANGE(0, 0);
@@ -255,7 +270,7 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 
 		hw = at91_clk_register_programmable(regmap, name,
 						    parent_names, 6, i,
-						    &at91sam9x5_programmable_layout);
+						    &sama5d2_programmable_layout);
 		if (IS_ERR(hw))
 			goto err_free;
 	}
@@ -272,6 +287,7 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 
 	for (i = 0; i < ARRAY_SIZE(sama5d2_periphck); i++) {
 		hw = at91_clk_register_sam9x5_peripheral(regmap,
+							 &sama5d2_pcr_layout,
 							 sama5d2_periphck[i].n,
 							 "masterck",
 							 sama5d2_periphck[i].id,
@@ -284,6 +300,7 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 
 	for (i = 0; i < ARRAY_SIZE(sama5d2_periph32ck); i++) {
 		hw = at91_clk_register_sam9x5_peripheral(regmap,
+							 &sama5d2_pcr_layout,
 							 sama5d2_periph32ck[i].n,
 							 "h32mxck",
 							 sama5d2_periph32ck[i].id,
@@ -302,6 +319,7 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	parent_names[5] = "audiopll_pmcck";
 	for (i = 0; i < ARRAY_SIZE(sama5d2_gck); i++) {
 		hw = at91_clk_register_generated(regmap,
+						 &sama5d2_pcr_layout,
 						 sama5d2_gck[i].n,
 						 parent_names, 6,
 						 sama5d2_gck[i].id,
diff --git a/drivers/clk/at91/sama5d4.c b/drivers/clk/at91/sama5d4.c
index de14640f91d2..77ccd77404cf 100644
--- a/drivers/clk/at91/sama5d4.c
+++ b/drivers/clk/at91/sama5d4.c
@@ -34,6 +34,12 @@ static const struct clk_pll_characteristics plla_characteristics = {
 	.out = plla_out,
 };
 
+static const struct clk_pcr_layout sama5d4_pcr_layout = {
+	.offset = 0x10c,
+	.cmd = BIT(12),
+	.pid_mask = GENMASK(6, 0),
+};
+
 static const struct {
 	char *n;
 	char *p;
@@ -238,6 +244,7 @@ static void __init sama5d4_pmc_setup(struct device_node *np)
 
 	for (i = 0; i < ARRAY_SIZE(sama5d4_periphck); i++) {
 		hw = at91_clk_register_sam9x5_peripheral(regmap,
+							 &sama5d4_pcr_layout,
 							 sama5d4_periphck[i].n,
 							 "masterck",
 							 sama5d4_periphck[i].id,
@@ -250,6 +257,7 @@ static void __init sama5d4_pmc_setup(struct device_node *np)
 
 	for (i = 0; i < ARRAY_SIZE(sama5d4_periph32ck); i++) {
 		hw = at91_clk_register_sam9x5_peripheral(regmap,
+							 &sama5d4_pcr_layout,
 							 sama5d4_periph32ck[i].n,
 							 "h32mxck",
 							 sama5d4_periph32ck[i].id,
diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index 7998d6a50986..3dc7843fcc11 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -24,14 +24,18 @@
 				 SLOW_CLOCK_FREQ)
 
 #define	AT91_SCKC_CR			0x00
-#define		AT91_SCKC_RCEN		(1 << 0)
-#define		AT91_SCKC_OSC32EN	(1 << 1)
-#define		AT91_SCKC_OSC32BYP	(1 << 2)
-#define		AT91_SCKC_OSCSEL	(1 << 3)
+
+struct clk_slow_bits {
+	u32 cr_rcen;
+	u32 cr_osc32en;
+	u32 cr_osc32byp;
+	u32 cr_oscsel;
+};
 
 struct clk_slow_osc {
 	struct clk clk;
 	void __iomem *sckcr;
+	const struct clk_slow_bits *bits;
 	unsigned long startup_usec;
 	const char *parent_name;
 };
@@ -41,6 +45,7 @@ struct clk_slow_osc {
 struct clk_sama5d4_slow_osc {
 	struct clk clk;
 	void __iomem *sckcr;
+	const struct clk_slow_bits *bits;
 	unsigned long startup_usec;
 	bool prepared;
 	const char *parent_name;
@@ -51,6 +56,7 @@ struct clk_sama5d4_slow_osc {
 struct clk_slow_rc_osc {
 	struct clk clk;
 	void __iomem *sckcr;
+	const struct clk_slow_bits *bits;
 	unsigned long frequency;
 	unsigned long startup_usec;
 	const char *parent_name;
@@ -61,6 +67,7 @@ struct clk_slow_rc_osc {
 struct clk_sam9x5_slow {
 	struct clk clk;
 	void __iomem *sckcr;
+	const struct clk_slow_bits *bits;
 	u8 parent;
 	const char *parent_names[2];
 };
@@ -73,10 +80,10 @@ static int clk_slow_osc_enable(struct clk *clk)
 	void __iomem *sckcr = osc->sckcr;
 	u32 tmp = readl(sckcr);
 
-	if (tmp & (AT91_SCKC_OSC32BYP | AT91_SCKC_OSC32EN))
+	if (tmp & (osc->bits->cr_osc32byp | osc->bits->cr_osc32en))
 		return 0;
 
-	writel(tmp | AT91_SCKC_OSC32EN, sckcr);
+	writel(tmp | osc->bits->cr_osc32en, sckcr);
 
 	udelay(osc->startup_usec);
 
@@ -89,10 +96,10 @@ static void clk_slow_osc_disable(struct clk *clk)
 	void __iomem *sckcr = osc->sckcr;
 	u32 tmp = readl(sckcr);
 
-	if (tmp & AT91_SCKC_OSC32BYP)
+	if (tmp & osc->bits->cr_osc32byp)
 		return;
 
-	writel(tmp & ~AT91_SCKC_OSC32EN, sckcr);
+	writel(tmp & ~osc->bits->cr_osc32en, sckcr);
 }
 
 static int clk_slow_osc_is_enabled(struct clk *clk)
@@ -101,10 +108,10 @@ static int clk_slow_osc_is_enabled(struct clk *clk)
 	void __iomem *sckcr = osc->sckcr;
 	u32 tmp = readl(sckcr);
 
-	if (tmp & AT91_SCKC_OSC32BYP)
+	if (tmp & osc->bits->cr_osc32byp)
 		return 1;
 
-	return !!(tmp & AT91_SCKC_OSC32EN);
+	return !!(tmp & osc->bits->cr_osc32en);
 }
 
 static const struct clk_ops slow_osc_ops = {
@@ -118,7 +125,8 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
 			   const char *name,
 			   const char *parent_name,
 			   unsigned long startup,
-			   bool bypass)
+			   bool bypass,
+			   const struct clk_slow_bits *bits)
 {
 	int ret;
 	struct clk_slow_osc *osc;
@@ -133,13 +141,15 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
 	osc->parent_name = parent_name;
 	osc->clk.parent_names = &osc->parent_name;
 	osc->clk.num_parents = 1;
+	/* osc->clk.flags = CLK_IGNORE_UNUSED; */
 
 	osc->sckcr = sckcr;
 	osc->startup_usec = startup;
+	osc->bits = bits;
 
 	if (bypass)
-		writel((readl(sckcr) & ~AT91_SCKC_OSC32EN) | AT91_SCKC_OSC32BYP,
-		       sckcr);
+		writel((readl(sckcr) & ~osc->bits->cr_osc32en) |
+					osc->bits->cr_osc32byp, sckcr);
 
 	ret = clk_register(&osc->clk);
 	if (ret) {
@@ -150,26 +160,12 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
 	return &osc->clk;
 }
 
-static void
-of_at91sam9x5_clk_slow_osc_setup(struct device_node *np, void __iomem *sckcr)
+static void at91_clk_unregister_slow_osc(struct clk *clk)
 {
-	struct clk *clk;
-	const char *parent_name;
-	const char *name = np->name;
-	u32 startup;
-	bool bypass;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-	of_property_read_string(np, "clock-output-names", &name);
-	of_property_read_u32(np, "atmel,startup-time-usec", &startup);
-	bypass = of_property_read_bool(np, "atmel,osc-bypass");
-
-	clk = at91_clk_register_slow_osc(sckcr, name, parent_name, startup,
-					 bypass);
-	if (IS_ERR(clk))
-		return;
+	struct clk_slow_osc *osc = to_clk_slow_osc(clk);
 
-	of_clk_add_provider(np, of_clk_src_simple_get, clk);
+	clk_unregister(clk);
+	kfree(osc);
 }
 
 static unsigned long clk_slow_rc_osc_recalc_rate(struct clk *clk,
@@ -185,7 +181,7 @@ static int clk_slow_rc_osc_enable(struct clk *clk)
 	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk);
 	void __iomem *sckcr = osc->sckcr;
 
-	writel(readl(sckcr) | AT91_SCKC_RCEN, sckcr);
+	writel(readl(sckcr) | osc->bits->cr_rcen, sckcr);
 
 	udelay(osc->startup_usec);
 
@@ -197,14 +193,14 @@ static void clk_slow_rc_osc_disable(struct clk *clk)
 	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk);
 	void __iomem *sckcr = osc->sckcr;
 
-	writel(readl(sckcr) & ~AT91_SCKC_RCEN, sckcr);
+	writel(readl(sckcr) & ~osc->bits->cr_rcen, sckcr);
 }
 
 static int clk_slow_rc_osc_is_enabled(struct clk *clk)
 {
 	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk);
 
-	return !!(readl(osc->sckcr) & AT91_SCKC_RCEN);
+	return !!(readl(osc->sckcr) & osc->bits->cr_rcen);
 }
 
 static const struct clk_ops slow_rc_osc_ops = {
@@ -218,7 +214,9 @@ static struct clk * __init
 at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 			      const char *name,
 			      unsigned long frequency,
-			      unsigned long startup)
+			      unsigned long accuracy,
+			      unsigned long startup,
+			      const struct clk_slow_bits *bits)
 {
 	struct clk_slow_rc_osc *osc;
 	int ret;
@@ -234,6 +232,7 @@ at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 	/* init.flags = CLK_IGNORE_UNUSED; */
 
 	osc->sckcr = sckcr;
+	osc->bits = bits;
 	osc->frequency = frequency;
 	osc->startup_usec = startup;
 
@@ -246,23 +245,12 @@ at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 	return &osc->clk;
 }
 
-static void
-of_at91sam9x5_clk_slow_rc_osc_setup(struct device_node *np, void __iomem *sckcr)
+static void at91_clk_unregister_slow_rc_osc(struct clk *clk)
 {
-	struct clk *clk;
-	u32 frequency = 0;
-	u32 startup = 0;
-	const char *name = np->name;
-
-	of_property_read_string(np, "clock-output-names", &name);
-	of_property_read_u32(np, "clock-frequency", &frequency);
-	of_property_read_u32(np, "atmel,startup-time-usec", &startup);
-
-	clk = at91_clk_register_slow_rc_osc(sckcr, name, frequency, startup);
-	if (IS_ERR(clk))
-		return;
+	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk);
 
-	of_clk_add_provider(np, of_clk_src_simple_get, clk);
+	clk_unregister(clk);
+	kfree(osc);
 }
 
 static int clk_sam9x5_slow_set_parent(struct clk *clk, u8 index)
@@ -276,14 +264,14 @@ static int clk_sam9x5_slow_set_parent(struct clk *clk, u8 index)
 
 	tmp = readl(sckcr);
 
-	if ((!index && !(tmp & AT91_SCKC_OSCSEL)) ||
-	    (index && (tmp & AT91_SCKC_OSCSEL)))
+	if ((!index && !(tmp & slowck->bits->cr_oscsel)) ||
+	    (index && (tmp & slowck->bits->cr_oscsel)))
 		return 0;
 
 	if (index)
-		tmp |= AT91_SCKC_OSCSEL;
+		tmp |= slowck->bits->cr_oscsel;
 	else
-		tmp &= ~AT91_SCKC_OSCSEL;
+		tmp &= ~slowck->bits->cr_oscsel;
 
 	writel(tmp, sckcr);
 
@@ -296,7 +284,7 @@ static int clk_sam9x5_slow_get_parent(struct clk *clk)
 {
 	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(clk);
 
-	return !!(readl(slowck->sckcr) & AT91_SCKC_OSCSEL);
+	return !!(readl(slowck->sckcr) & slowck->bits->cr_oscsel);
 }
 
 static const struct clk_ops sam9x5_slow_ops = {
@@ -308,7 +296,8 @@ static struct clk * __init
 at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 			      const char *name,
 			      const char **parent_names,
-			      int num_parents)
+			      int num_parents,
+			      const struct clk_slow_bits *bits)
 {
 	struct clk_sam9x5_slow *slowck;
 	int ret;
@@ -325,7 +314,8 @@ at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 	slowck->clk.parent_names = slowck->parent_names;
 	slowck->clk.num_parents = num_parents;
 	slowck->sckcr = sckcr;
-	slowck->parent = !!(readl(sckcr) & AT91_SCKC_OSCSEL);
+	slowck->bits = bits;
+	slowck->parent = !!(readl(sckcr) & slowck->bits->cr_oscsel);
 
 	ret = clk_register(&slowck->clk);
 	if (ret) {
@@ -336,69 +326,183 @@ at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 	return &slowck->clk;
 }
 
-static int
-of_at91sam9x5_clk_slow_setup(struct device_node *np, void __iomem *sckcr)
+static void at91_clk_unregister_sam9x5_slow(struct clk *clk)
 {
-	struct clk *clk;
-	const char *parent_names[2];
-	unsigned int num_parents;
-	const char *name = np->name;
+	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(clk);
 
-	num_parents = of_clk_get_parent_count(np);
-	if (num_parents == 0 || num_parents > 2)
-		return -EINVAL;
+	clk_unregister(clk);
+	kfree(slowck);
+}
+
+static void __init at91sam9x5_sckc_register(struct device_node *np,
+					    unsigned int rc_osc_startup_us,
+					    const struct clk_slow_bits *bits)
+{
+	const char *parent_names[2] = { "slow_rc_osc", "slow_osc" };
+	void __iomem *regbase = of_iomap(np, 0);
+	struct device_node *child = NULL;
+	const char *xtal_name;
+	struct clk *slow_rc, *slow_osc, *slowck;
+	bool bypass;
+	int ret;
+
+	if (!regbase)
+		return;
+
+	slow_rc = at91_clk_register_slow_rc_osc(regbase, parent_names[0],
+						32768, 50000000,
+						rc_osc_startup_us, bits);
+	if (IS_ERR(slow_rc))
+		return;
+
+	xtal_name = of_clk_get_parent_name(np, 0);
+	if (!xtal_name) {
+		/* DT backward compatibility */
+		child = of_get_compatible_child(np, "atmel,at91sam9x5-clk-slow-osc");
+		if (!child)
+			goto unregister_slow_rc;
+
+		xtal_name = of_clk_get_parent_name(child, 0);
+		bypass = of_property_read_bool(child, "atmel,osc-bypass");
+
+		child =  of_get_compatible_child(np, "atmel,at91sam9x5-clk-slow");
+	} else {
+		bypass = of_property_read_bool(np, "atmel,osc-bypass");
+	}
+
+	if (!xtal_name)
+		goto unregister_slow_rc;
+
+	slow_osc = at91_clk_register_slow_osc(regbase, parent_names[1],
+					      xtal_name, 1200000, bypass, bits);
+	if (IS_ERR(slow_osc))
+		goto unregister_slow_rc;
+
+	slowck = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names,
+					       2, bits);
+	if (IS_ERR(slowck))
+		goto unregister_slow_osc;
+
+	/* DT backward compatibility */
+	if (child)
+		ret = of_clk_add_provider(child, of_clk_src_simple_get,
+					     slowck);
+	else
+		ret = of_clk_add_provider(np, of_clk_src_simple_get, slowck);
 
-	of_clk_parent_fill(np, parent_names, num_parents);
+	if (WARN_ON(ret))
+		goto unregister_slowck;
 
-	of_property_read_string(np, "clock-output-names", &name);
+	return;
 
-	clk = at91_clk_register_sam9x5_slow(sckcr, name, parent_names,
-					    num_parents);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
+unregister_slowck:
+	at91_clk_unregister_sam9x5_slow(slowck);
+unregister_slow_osc:
+	at91_clk_unregister_slow_osc(slow_osc);
+unregister_slow_rc:
+	at91_clk_unregister_slow_rc_osc(slow_rc);
+}
+
+static const struct clk_slow_bits at91sam9x5_bits = {
+	.cr_rcen = BIT(0),
+	.cr_osc32en = BIT(1),
+	.cr_osc32byp = BIT(2),
+	.cr_oscsel = BIT(3),
+};
+
+static void __init of_at91sam9x5_sckc_setup(struct device_node *np)
+{
+	at91sam9x5_sckc_register(np, 75, &at91sam9x5_bits);
+}
+CLK_OF_DECLARE(at91sam9x5_clk_sckc, "atmel,at91sam9x5-sckc",
+	       of_at91sam9x5_sckc_setup);
 
-	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+static void __init of_sama5d3_sckc_setup(struct device_node *np)
+{
+	at91sam9x5_sckc_register(np, 500, &at91sam9x5_bits);
 }
+CLK_OF_DECLARE(sama5d3_clk_sckc, "atmel,sama5d3-sckc",
+	       of_sama5d3_sckc_setup);
 
-static const struct of_device_id sckc_clk_ids[] = {
-	/* Slow clock */
-	{
-		.compatible = "atmel,at91sam9x5-clk-slow-osc",
-		.data = of_at91sam9x5_clk_slow_osc_setup,
-	},
-	{
-		.compatible = "atmel,at91sam9x5-clk-slow-rc-osc",
-		.data = of_at91sam9x5_clk_slow_rc_osc_setup,
-	},
-	{
-		.compatible = "atmel,at91sam9x5-clk-slow",
-		.data = of_at91sam9x5_clk_slow_setup,
-	},
-	{ /*sentinel*/ }
+static const struct clk_slow_bits at91sam9x60_bits = {
+	.cr_osc32en = BIT(1),
+	.cr_osc32byp = BIT(2),
+	.cr_oscsel = BIT(24),
 };
 
-static int of_at91sam9x5_sckc_setup(struct device_node *np)
+static void __init of_sam9x60_sckc_setup(struct device_node *np)
 {
-	struct device_node *childnp;
-	void (*clk_setup)(struct device_node *, void __iomem *);
-	const struct of_device_id *clk_id;
 	void __iomem *regbase = of_iomap(np, 0);
+	struct clk_onecell_data *clk_data;
+	struct clk *slow_rc, *slow_osc;
+	const char *xtal_name;
+	const char *parent_names[2] = { "slow_rc_osc", "slow_osc" };
+	bool bypass;
+	int ret;
 
 	if (!regbase)
-		return -ENOMEM;
-
-	for_each_child_of_node(np, childnp) {
-		clk_id = of_match_node(sckc_clk_ids, childnp);
-		if (!clk_id)
-			continue;
-		clk_setup = clk_id->data;
-		clk_setup(childnp, regbase);
-	}
+		return;
 
-	return 0;
+	slow_rc = clk_register_fixed_rate(parent_names[0], NULL, 0,
+					  32768);
+	if (IS_ERR(slow_rc))
+		return;
+
+	xtal_name = of_clk_get_parent_name(np, 0);
+	if (!xtal_name)
+		goto unregister_slow_rc;
+
+	bypass = of_property_read_bool(np, "atmel,osc-bypass");
+	slow_osc = at91_clk_register_slow_osc(regbase, parent_names[1],
+					      xtal_name, 5000000, bypass,
+					      &at91sam9x60_bits);
+	if (IS_ERR(slow_osc))
+		goto unregister_slow_rc;
+
+	clk_data = kzalloc(sizeof(*clk_data), GFP_KERNEL);
+	if (!clk_data)
+		goto unregister_slow_osc;
+
+	/* MD_SLCK and TD_SLCK. */
+	clk_data->clk_num = 2;
+	clk_data->clks = kcalloc(clk_data->clk_num,
+				 sizeof(*clk_data->clks), GFP_KERNEL);
+	if (!clk_data->clks)
+		goto clk_data_free;
+
+	clk_data->clks[0] = clk_register_fixed_rate("md_slck",
+						   parent_names[0],
+						   0, 32768);
+	if (IS_ERR(clk_data->clks[0]))
+		goto clks_free;
+
+	clk_data->clks[1] = at91_clk_register_sam9x5_slow(regbase, "td_slck",
+							 parent_names, 2,
+							 &at91sam9x60_bits);
+	if (IS_ERR(clk_data->clks[1]))
+		goto unregister_md_slck;
+
+	ret = of_clk_add_provider(np, of_clk_src_onecell_get, clk_data);
+	if (WARN_ON(ret))
+		goto unregister_td_slck;
+
+	return;
+
+unregister_td_slck:
+	at91_clk_unregister_sam9x5_slow(clk_data->clks[1]);
+unregister_md_slck:
+	clk_unregister(clk_data->clks[0]);
+clks_free:
+	kfree(clk_data->clks);
+clk_data_free:
+	kfree(clk_data);
+unregister_slow_osc:
+	at91_clk_unregister_slow_osc(slow_osc);
+unregister_slow_rc:
+	clk_unregister(slow_rc);
 }
-CLK_OF_DECLARE(at91sam9x5_clk_sckc, "atmel,at91sam9x5-sckc",
-	       of_at91sam9x5_sckc_setup);
+CLK_OF_DECLARE(sam9x60_clk_sckc, "microchip,sam9x60-sckc",
+	       of_sam9x60_sckc_setup);
 
 static int clk_sama5d4_slow_osc_enable(struct clk *clk)
 {
@@ -411,7 +515,7 @@ static int clk_sama5d4_slow_osc_enable(struct clk *clk)
 	 * Assume that if it has already been selected (for example by the
 	 * bootloader), enough time has aready passed.
 	 */
-	if ((readl(osc->sckcr) & AT91_SCKC_OSCSEL)) {
+	if ((readl(osc->sckcr) & osc->bits->cr_oscsel)) {
 		osc->prepared = true;
 		return 0;
 	}
@@ -434,23 +538,24 @@ static const struct clk_ops sama5d4_slow_osc_ops = {
 	.is_enabled = clk_sama5d4_slow_osc_is_enabled,
 };
 
-static int of_sama5d4_sckc_setup(struct device_node *np)
+static const struct clk_slow_bits at91sama5d4_bits = {
+	.cr_oscsel = BIT(3),
+};
+
+static void __init of_sama5d4_sckc_setup(struct device_node *np)
 {
 	void __iomem *regbase = of_iomap(np, 0);
-	struct clk *clk;
+	struct clk *slow_rc, *slowck;
 	struct clk_sama5d4_slow_osc *osc;
 	const char *parent_names[2] = { "slow_rc_osc", "slow_osc" };
-	bool bypass;
 	int ret;
 
 	if (!regbase)
-		return -ENOMEM;
-
-	clk = clk_fixed(parent_names[0], 32768);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
+		return;
 
-	bypass = of_property_read_bool(np, "atmel,osc-bypass");
+	slow_rc = clk_fixed(parent_names[0], 32768);
+	if (IS_ERR(slow_rc))
+		return;
 
 	osc = xzalloc(sizeof(*osc));
 	osc->parent_name = of_clk_get_parent_name(np, 0);
@@ -458,23 +563,36 @@ static int of_sama5d4_sckc_setup(struct device_node *np)
 	osc->clk.ops = &sama5d4_slow_osc_ops;
 	osc->clk.parent_names = &osc->parent_name;
 	osc->clk.num_parents = 1;
+
+	/* osc->clk.flags = CLK_IGNORE_UNUSED; */
+
 	osc->sckcr = regbase;
 	osc->startup_usec = 1200000;
-
-	if (bypass)
-		writel((readl(regbase) | AT91_SCKC_OSC32BYP), regbase);
+	osc->bits = &at91sama5d4_bits;
 
 	ret = clk_register(&osc->clk);
-	if (ret) {
-		kfree(osc);
-		return ret;
-	}
-
-	clk = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names, 2);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+	if (ret)
+		goto free_slow_osc_data;
+
+	slowck = at91_clk_register_sam9x5_slow(regbase, "slowck",
+					       parent_names, 2,
+					       &at91sama5d4_bits);
+	if (IS_ERR(slowck))
+		goto unregister_slow_osc;
+
+	ret = of_clk_add_provider(np, of_clk_src_simple_get, slowck);
+	if (WARN_ON(ret))
+		goto unregister_slowck;
+
+	return;
+
+unregister_slowck:
+	at91_clk_unregister_sam9x5_slow(slowck);
+unregister_slow_osc:
+	clk_unregister(&osc->clk);
+free_slow_osc_data:
+	kfree(osc);
+	clk_unregister(slow_rc);
 }
 CLK_OF_DECLARE(sama5d4_clk_sckc, "atmel,sama5d4-sckc",
 	       of_sama5d4_sckc_setup);
diff --git a/include/linux/clk/at91_pmc.h b/include/linux/clk/at91_pmc.h
index 08a07556568a..390437887b46 100644
--- a/include/linux/clk/at91_pmc.h
+++ b/include/linux/clk/at91_pmc.h
@@ -43,8 +43,10 @@
 #define	AT91_CKGR_MOR		0x20			/* Main Oscillator Register [not on SAM9RL] */
 #define		AT91_PMC_MOSCEN		(1    <<  0)		/* Main Oscillator Enable */
 #define		AT91_PMC_OSCBYPASS	(1    <<  1)		/* Oscillator Bypass */
+#define		AT91_PMC_WAITMODE	(1    <<  2)		/* Wait Mode Command */
 #define		AT91_PMC_MOSCRCEN	(1    <<  3)		/* Main On-Chip RC Oscillator Enable [some SAM9] */
 #define		AT91_PMC_OSCOUNT	(0xff <<  8)		/* Main Oscillator Start-up Time */
+#define		AT91_PMC_KEY_MASK	(0xff << 16)
 #define		AT91_PMC_KEY		(0x37 << 16)		/* MOR Writing Key */
 #define		AT91_PMC_MOSCSEL	(1    << 24)		/* Main Oscillator Selection [some SAM9] */
 #define		AT91_PMC_CFDEN		(1    << 25)		/* Clock Failure Detector Enable [some SAM9] */
@@ -68,6 +70,8 @@
 #define			AT91_PMC_USBDIV_4		(2 << 28)
 #define		AT91_PMC_USB96M		(1     << 28)		/* Divider by 2 Enable (PLLB only) */
 
+#define AT91_PMC_CPU_CKR	0x28			/* CPU Clock Register */
+
 #define	AT91_PMC_MCKR		0x30			/* Master Clock Register */
 #define		AT91_PMC_CSS		(3 <<  0)		/* Master Clock Selection */
 #define			AT91_PMC_CSS_SLOW		(0 << 0)
@@ -151,6 +155,20 @@
 #define		AT91_PMC_GCKRDY		(1 << 24)		/* Generated Clocks */
 #define	AT91_PMC_IMR		0x6c			/* Interrupt Mask Register */
 
+#define AT91_PMC_FSMR		0x70		/* Fast Startup Mode Register */
+#define AT91_PMC_FSTT(n)	BIT(n)
+#define AT91_PMC_RTTAL		BIT(16)
+#define AT91_PMC_RTCAL		BIT(17)		/* RTC Alarm Enable */
+#define AT91_PMC_USBAL		BIT(18)		/* USB Resume Enable */
+#define AT91_PMC_SDMMC_CD	BIT(19)		/* SDMMC Card Detect Enable */
+#define AT91_PMC_LPM		BIT(20)		/* Low-power Mode */
+#define AT91_PMC_RXLP_MCE	BIT(24)		/* Backup UART Receive Enable */
+#define AT91_PMC_ACC_CE		BIT(25)		/* ACC Enable */
+
+#define AT91_PMC_FSPR		0x74		/* Fast Startup Polarity Reg */
+
+#define AT91_PMC_FS_INPUT_MASK  0x7ff
+
 #define AT91_PMC_PLLICPR	0x80			/* PLL Charge Pump Current Register */
 
 #define AT91_PMC_PROT		0xe4			/* Write Protect Mode Register [some SAM9] */
@@ -168,16 +186,8 @@
 
 #define AT91_PMC_PCR		0x10c			/* Peripheral Control Register [some SAM9 and SAMA5] */
 #define		AT91_PMC_PCR_PID_MASK		0x3f
-#define		AT91_PMC_PCR_GCKCSS_OFFSET	8
-#define		AT91_PMC_PCR_GCKCSS_MASK	(0x7  << AT91_PMC_PCR_GCKCSS_OFFSET)
-#define		AT91_PMC_PCR_GCKCSS(n)		((n)  << AT91_PMC_PCR_GCKCSS_OFFSET)	/* GCK Clock Source Selection */
 #define		AT91_PMC_PCR_CMD		(0x1  <<  12)				/* Command (read=0, write=1) */
-#define		AT91_PMC_PCR_DIV_OFFSET		16
-#define		AT91_PMC_PCR_DIV_MASK		(0x3  << AT91_PMC_PCR_DIV_OFFSET)
-#define		AT91_PMC_PCR_DIV(n)		((n)  << AT91_PMC_PCR_DIV_OFFSET)	/* Divisor Value */
-#define		AT91_PMC_PCR_GCKDIV_OFFSET	20
-#define		AT91_PMC_PCR_GCKDIV_MASK	(0xff  << AT91_PMC_PCR_GCKDIV_OFFSET)
-#define		AT91_PMC_PCR_GCKDIV(n)		((n)  << AT91_PMC_PCR_GCKDIV_OFFSET)	/* Generated Clock Divisor Value */
+#define		AT91_PMC_PCR_GCKDIV_MASK	GENMASK(27, 20)
 #define		AT91_PMC_PCR_EN			(0x1  <<  28)				/* Enable */
 #define		AT91_PMC_PCR_GCKEN		(0x1  <<  29)				/* GCK Enable */
 
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
