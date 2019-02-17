Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvP7K-0008Na-Cb
 for barebox@lists.infradead.org; Sun, 17 Feb 2019 16:16:53 +0000
Received: by mail-lf1-x142.google.com with SMTP id m11so10501322lfc.6
 for <barebox@lists.infradead.org>; Sun, 17 Feb 2019 08:16:34 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sun, 17 Feb 2019 17:16:09 +0100
Message-Id: <20190217161609.11305-10-sam@ravnborg.org>
In-Reply-To: <20190217161609.11305-1-sam@ravnborg.org>
References: <20190217161609.11305-1-sam@ravnborg.org>
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
Subject: [PATCH v2 9/9] clk: at91: update to new bindings
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Based on kernel 5.0-rc6 update at91 clk support
to match the new PMC bindings.

Manually added all changes done in the kernel from 4.9-rc3
to 5.0-rc6.
New drivers required was added as seperate commits.

The kernel has a dt-compat file for all the backward
compatibility code.
As barebox has only a few DT enabled at91 targets this was not ported
over.

clk-programmable saw some extra changes - it had never been bulit.
It is used only by at91sama5d2 - and barebox has no baord support for
this cpu (yet).

For the SOC config symbols updated these to match the kernel,
to enable the same set of clk features in barebox as in the kernel.

In the kernel CLK_OF_DECLARE_DRIVER() can be used for a two step init.
In barebox this is a simple one step init.
It was added to have less differences between the kernel and the barebox
versions of the drivers.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/Kconfig          |  17 ++-
 drivers/clk/at91/Makefile           |   5 +
 drivers/clk/at91/clk-generated.c    | 185 +++++----------------------
 drivers/clk/at91/clk-h32mx.c        |  21 +--
 drivers/clk/at91/clk-main.c         | 112 +---------------
 drivers/clk/at91/clk-master.c       |  94 +-------------
 drivers/clk/at91/clk-peripheral.c   |  82 +-----------
 drivers/clk/at91/clk-pll.c          | 174 +------------------------
 drivers/clk/at91/clk-plldiv.c       |  27 +---
 drivers/clk/at91/clk-programmable.c |  83 +-----------
 drivers/clk/at91/clk-slow.c         |  33 +----
 drivers/clk/at91/clk-smd.c          |  33 +----
 drivers/clk/at91/clk-system.c       |  42 +-----
 drivers/clk/at91/clk-usb.c          |  94 +-------------
 drivers/clk/at91/clk-utmi.c         | 100 +++++++++------
 drivers/clk/at91/pmc.c              | 248 ++++++++++++++++++++++++++++++++++++
 drivers/clk/at91/pmc.h              | 169 ++++++++++++++++++++++++
 include/linux/clk.h                 |   7 +
 include/soc/at91/atmel-sfr.h        |  34 +++++
 19 files changed, 602 insertions(+), 958 deletions(-)
 create mode 100644 include/soc/at91/atmel-sfr.h

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index a2737a367..344344429 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -53,6 +53,9 @@ config SOC_AT91SAM9
 	select AT91SAM9_SMC
 	select CLOCKSOURCE_ATMEL_PIT
 	select PINCTRL
+	select HAVE_AT91_SMD
+	select HAVE_AT91_USB_CLK
+	select HAVE_AT91_UTMI
 
 config SOC_SAMA5
 	bool
@@ -63,12 +66,19 @@ config SOC_SAMA5D3
 	select SOC_SAMA5
 	select AT91SAM9_SMC
 	select CLOCKSOURCE_ATMEL_PIT
+	select HAVE_AT91_SMD
+	select HAVE_AT91_USB_CLK
+	select HAVE_AT91_UTMI
 
 config SOC_SAMA5D4
 	bool
 	select SOC_SAMA5
 	select AT91SAM9_SMC
 	select CLOCKSOURCE_ATMEL_PIT
+	select HAVE_AT91_H32MX
+	select HAVE_AT91_SMD
+	select HAVE_AT91_USB_CLK
+	select HAVE_AT91_UTMI
 
 config ARCH_TEXT_BASE
 	hex
@@ -92,8 +102,9 @@ comment "Atmel AT91 System-on-Chip"
 config SOC_AT91RM9200
 	bool
 	select CPU_ARM920T
-	select HAVE_AT91_DBGU0
 	select HAS_AT91_ETHER
+	select HAVE_AT91_DBGU0
+	select HAVE_AT91_USB_CLK
 
 config SOC_AT91SAM9260
 	bool
@@ -132,9 +143,6 @@ config SOC_AT91SAM9X5
 	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU0
 	select HAS_MACB
-	select HAVE_AT91_SMD
-	select HAVE_AT91_USB_CLK
-	select HAVE_AT91_UTMI
 	select COMMON_CLK_OF_PROVIDER
 	help
 	  Select this if you are using one of Atmel's AT91SAM9x5 family SoC.
@@ -532,7 +540,6 @@ config MACH_AT91SAM9263EK
 	depends on ARCH_AT91SAM9263
 	select OFDEVICE
 	select COMMON_CLK_OF_PROVIDER
-	select HAVE_AT91_USB_CLK
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	select HAVE_AT91_BOOTSTRAP
 	select AT91SAM926X_BOARD_INIT
diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
index 13e67bd35..ec41c15fa 100644
--- a/drivers/clk/at91/Makefile
+++ b/drivers/clk/at91/Makefile
@@ -11,3 +11,8 @@ obj-$(CONFIG_HAVE_AT91_USB_CLK)		+= clk-usb.o
 obj-$(CONFIG_HAVE_AT91_SMD)		+= clk-smd.o
 obj-$(CONFIG_HAVE_AT91_H32MX)		+= clk-h32mx.o
 obj-$(CONFIG_HAVE_AT91_GENERATED_CLK)	+= clk-generated.o
+obj-$(CONFIG_SOC_AT91SAM9) 		+= at91sam9260.o
+obj-$(CONFIG_SOC_AT91SAM9) 		+= at91sam9rl.o
+obj-$(CONFIG_SOC_AT91SAM9) 		+= at91sam9x5.o
+obj-$(CONFIG_SOC_SAMA5D2) 		+= sama5d2.o
+obj-$(CONFIG_SOC_SAMA5D4) 		+= sama5d4.o
diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
index 4e1cd5aa6..60516ca10 100644
--- a/drivers/clk/at91/clk-generated.c
+++ b/drivers/clk/at91/clk-generated.c
@@ -11,26 +11,23 @@
  *
  */
 
-#include <linux/clk-provider.h>
-#include <linux/clkdev.h>
+#include <common.h>
+#include <clock.h>
+#include <io.h>
+#include <linux/list.h>
+#include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
-#include <linux/of.h>
-#include <linux/mfd/syscon.h>
-#include <linux/regmap.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
 
 #include "pmc.h"
 
-#define PERIPHERAL_MAX		64
-#define PERIPHERAL_ID_MIN	2
-
-#define GENERATED_SOURCE_MAX	6
 #define GENERATED_MAX_DIV	255
 
 struct clk_generated {
-	struct clk_hw hw;
+	struct clk hw;
 	struct regmap *regmap;
 	struct clk_range range;
-	spinlock_t *lock;
 	u32 id;
 	u32 gckdiv;
 	u8 parent_id;
@@ -39,15 +36,13 @@ struct clk_generated {
 #define to_clk_generated(hw) \
 	container_of(hw, struct clk_generated, hw)
 
-static int clk_generated_enable(struct clk_hw *hw)
+static int clk_generated_enable(struct clk *hw)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
-	unsigned long flags;
 
 	pr_debug("GCLK: %s, gckdiv = %d, parent id = %d\n",
 		 __func__, gck->gckdiv, gck->parent_id);
 
-	spin_lock_irqsave(gck->lock, flags);
 	regmap_write(gck->regmap, AT91_PMC_PCR,
 		     (gck->id & AT91_PMC_PCR_PID_MASK));
 	regmap_update_bits(gck->regmap, AT91_PMC_PCR,
@@ -57,41 +52,34 @@ static int clk_generated_enable(struct clk_hw *hw)
 			   AT91_PMC_PCR_CMD |
 			   AT91_PMC_PCR_GCKDIV(gck->gckdiv) |
 			   AT91_PMC_PCR_GCKEN);
-	spin_unlock_irqrestore(gck->lock, flags);
 	return 0;
 }
 
-static void clk_generated_disable(struct clk_hw *hw)
+static void clk_generated_disable(struct clk *hw)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
-	unsigned long flags;
 
-	spin_lock_irqsave(gck->lock, flags);
 	regmap_write(gck->regmap, AT91_PMC_PCR,
 		     (gck->id & AT91_PMC_PCR_PID_MASK));
 	regmap_update_bits(gck->regmap, AT91_PMC_PCR,
 			   AT91_PMC_PCR_CMD | AT91_PMC_PCR_GCKEN,
 			   AT91_PMC_PCR_CMD);
-	spin_unlock_irqrestore(gck->lock, flags);
 }
 
-static int clk_generated_is_enabled(struct clk_hw *hw)
+static int clk_generated_is_enabled(struct clk *hw)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
-	unsigned long flags;
 	unsigned int status;
 
-	spin_lock_irqsave(gck->lock, flags);
 	regmap_write(gck->regmap, AT91_PMC_PCR,
 		     (gck->id & AT91_PMC_PCR_PID_MASK));
 	regmap_read(gck->regmap, AT91_PMC_PCR, &status);
-	spin_unlock_irqrestore(gck->lock, flags);
 
 	return status & AT91_PMC_PCR_GCKEN ? 1 : 0;
 }
 
 static unsigned long
-clk_generated_recalc_rate(struct clk_hw *hw,
+clk_generated_recalc_rate(struct clk *hw,
 			  unsigned long parent_rate)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
@@ -99,75 +87,19 @@ clk_generated_recalc_rate(struct clk_hw *hw,
 	return DIV_ROUND_CLOSEST(parent_rate, gck->gckdiv + 1);
 }
 
-static int clk_generated_determine_rate(struct clk_hw *hw,
-					struct clk_rate_request *req)
-{
-	struct clk_generated *gck = to_clk_generated(hw);
-	struct clk_hw *parent = NULL;
-	long best_rate = -EINVAL;
-	unsigned long tmp_rate, min_rate;
-	int best_diff = -1;
-	int tmp_diff;
-	int i;
-
-	for (i = 0; i < clk_hw_get_num_parents(hw); i++) {
-		u32 div;
-		unsigned long parent_rate;
-
-		parent = clk_hw_get_parent_by_index(hw, i);
-		if (!parent)
-			continue;
-
-		parent_rate = clk_hw_get_rate(parent);
-		min_rate = DIV_ROUND_CLOSEST(parent_rate, GENERATED_MAX_DIV + 1);
-		if (!parent_rate ||
-		    (gck->range.max && min_rate > gck->range.max))
-			continue;
-
-		for (div = 1; div < GENERATED_MAX_DIV + 2; div++) {
-			tmp_rate = DIV_ROUND_CLOSEST(parent_rate, div);
-			tmp_diff = abs(req->rate - tmp_rate);
-
-			if (best_diff < 0 || best_diff > tmp_diff) {
-				best_rate = tmp_rate;
-				best_diff = tmp_diff;
-				req->best_parent_rate = parent_rate;
-				req->best_parent_hw = parent;
-			}
-
-			if (!best_diff || tmp_rate < req->rate)
-				break;
-		}
-
-		if (!best_diff)
-			break;
-	}
-
-	pr_debug("GCLK: %s, best_rate = %ld, parent clk: %s @ %ld\n",
-		 __func__, best_rate,
-		 __clk_get_name((req->best_parent_hw)->clk),
-		 req->best_parent_rate);
-
-	if (best_rate < 0)
-		return best_rate;
-
-	req->rate = best_rate;
-	return 0;
-}
-
 /* No modification of hardware as we have the flag CLK_SET_PARENT_GATE set */
-static int clk_generated_set_parent(struct clk_hw *hw, u8 index)
+static int clk_generated_set_parent(struct clk *hw, u8 index)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
 
-	if (index >= clk_hw_get_num_parents(hw))
+	if (index >= clk_get_num_parents(hw))
 		return -EINVAL;
 
 	gck->parent_id = index;
 	return 0;
 }
 
-static u8 clk_generated_get_parent(struct clk_hw *hw)
+static int clk_generated_get_parent(struct clk *hw)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
 
@@ -175,7 +107,7 @@ static u8 clk_generated_get_parent(struct clk_hw *hw)
 }
 
 /* No modification of hardware as we have the flag CLK_SET_RATE_GATE set */
-static int clk_generated_set_rate(struct clk_hw *hw,
+static int clk_generated_set_rate(struct clk *hw,
 				  unsigned long rate,
 				  unsigned long parent_rate)
 {
@@ -201,7 +133,6 @@ static const struct clk_ops generated_ops = {
 	.disable = clk_generated_disable,
 	.is_enabled = clk_generated_is_enabled,
 	.recalc_rate = clk_generated_recalc_rate,
-	.determine_rate = clk_generated_determine_rate,
 	.get_parent = clk_generated_get_parent,
 	.set_parent = clk_generated_set_parent,
 	.set_rate = clk_generated_set_rate,
@@ -219,13 +150,10 @@ static const struct clk_ops generated_ops = {
 static void clk_generated_startup(struct clk_generated *gck)
 {
 	u32 tmp;
-	unsigned long flags;
 
-	spin_lock_irqsave(gck->lock, flags);
 	regmap_write(gck->regmap, AT91_PMC_PCR,
 		     (gck->id & AT91_PMC_PCR_PID_MASK));
 	regmap_read(gck->regmap, AT91_PMC_PCR, &tmp);
-	spin_unlock_irqrestore(gck->lock, flags);
 
 	gck->parent_id = (tmp & AT91_PMC_PCR_GCKCSS_MASK)
 					>> AT91_PMC_PCR_GCKCSS_OFFSET;
@@ -233,35 +161,37 @@ static void clk_generated_startup(struct clk_generated *gck)
 					>> AT91_PMC_PCR_GCKDIV_OFFSET;
 }
 
-static struct clk_hw * __init
-at91_clk_register_generated(struct regmap *regmap, spinlock_t *lock,
+struct clk * __init
+at91_clk_register_generated(struct regmap *regmap,
 			    const char *name, const char **parent_names,
-			    u8 num_parents, u8 id,
+			    u8 num_parents, u8 id, bool pll_audio,
 			    const struct clk_range *range)
 {
+	size_t parents_array_size;
 	struct clk_generated *gck;
-	struct clk_init_data init;
-	struct clk_hw *hw;
+	struct clk *hw;
 	int ret;
 
 	gck = kzalloc(sizeof(*gck), GFP_KERNEL);
 	if (!gck)
 		return ERR_PTR(-ENOMEM);
 
-	init.name = name;
-	init.ops = &generated_ops;
-	init.parent_names = parent_names;
-	init.num_parents = num_parents;
-	init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE;
-
 	gck->id = id;
-	gck->hw.init = &init;
+	gck->hw.name = name;
+	gck->hw.ops = &generated_ops;
+
+	parents_array_size = num_parents * sizeof(gck->hw.parent_names[0]);
+	gck->hw.parent_names = xzalloc(parents_array_size);
+	memcpy(gck->hw.parent_names, parent_names, parents_array_size);
+	gck->hw.num_parents = num_parents;
+
+	/* gck->hw.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE; */
 	gck->regmap = regmap;
-	gck->lock = lock;
 	gck->range = *range;
+	/* gck->audio_pll_allowed = pll_audio; */
 
 	hw = &gck->hw;
-	ret = clk_hw_register(NULL, &gck->hw);
+	ret = clk_register(&gck->hw);
 	if (ret) {
 		kfree(gck);
 		hw = ERR_PTR(ret);
@@ -270,54 +200,3 @@ at91_clk_register_generated(struct regmap *regmap, spinlock_t *lock,
 
 	return hw;
 }
-
-static void __init of_sama5d2_clk_generated_setup(struct device_node *np)
-{
-	int num;
-	u32 id;
-	const char *name;
-	struct clk_hw *hw;
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
-		hw = at91_clk_register_generated(regmap, &pmc_pcr_lock, name,
-						  parent_names, num_parents,
-						  id, &range);
-		if (IS_ERR(hw))
-			continue;
-
-		of_clk_add_hw_provider(gcknp, of_clk_hw_simple_get, hw);
-	}
-}
-CLK_OF_DECLARE(of_sama5d2_clk_generated_setup, "atmel,sama5d2-clk-generated",
-	       of_sama5d2_clk_generated_setup);
diff --git a/drivers/clk/at91/clk-h32mx.c b/drivers/clk/at91/clk-h32mx.c
index e0daa4a31..14d1dd849 100644
--- a/drivers/clk/at91/clk-h32mx.c
+++ b/drivers/clk/at91/clk-h32mx.c
@@ -15,7 +15,6 @@
 #include <linux/clk-provider.h>
 #include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
-#include <linux/of.h>
 #include <linux/regmap.h>
 #include <linux/mfd/syscon.h>
 
@@ -86,25 +85,21 @@ static const struct clk_ops h32mx_ops = {
 	.set_rate = clk_sama5d4_h32mx_set_rate,
 };
 
-static void __init of_sama5d4_clk_h32mx_setup(struct device_node *np)
+struct clk *
+at91_clk_register_h32mx(struct regmap *regmap, const char *name,
+			const char *parent_name)
 {
 	struct clk_sama5d4_h32mx *h32mxclk;
 	struct clk_init_data init;
-	const char *parent_name;
-	struct regmap *regmap;
 	int ret;
 
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
 	h32mxclk = kzalloc(sizeof(*h32mxclk), GFP_KERNEL);
 	if (!h32mxclk)
-		return;
+		return ERR_PTR(-ENOMEM);
 
 	parent_name = of_clk_get_parent_name(np, 0);
 
-	init.name = np->name;
+	init.name = name;
 	init.ops = &h32mx_ops;
 	init.parent_names = parent_name ? &parent_name : NULL;
 	init.num_parents = parent_name ? 1 : 0;
@@ -116,10 +111,8 @@ static void __init of_sama5d4_clk_h32mx_setup(struct device_node *np)
 	ret = clk_hw_register(NULL, &h32mxclk->hw);
 	if (ret) {
 		kfree(h32mxclk);
-		return;
+		return ERR_PTR(ret);
 	}
 
-	of_clk_add_hw_provider(np, of_clk_hw_simple_get, &h32mxclk->hw);
+	return &h32mxclk->hw;
 }
-CLK_OF_DECLARE(of_sama5d4_clk_h32mx_setup, "atmel,sama5d4-clk-h32mx",
-	       of_sama5d4_clk_h32mx_setup);
diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
index 77dfdef51..4d4127dd0 100644
--- a/drivers/clk/at91/clk-main.c
+++ b/drivers/clk/at91/clk-main.c
@@ -9,7 +9,6 @@
  */
 #include <common.h>
 #include <clock.h>
-#include <of.h>
 #include <linux/list.h>
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
@@ -129,7 +128,7 @@ static const struct clk_ops main_osc_ops = {
 	.is_enabled = clk_main_osc_is_enabled,
 };
 
-static struct clk *
+struct clk *
 at91_clk_register_main_osc(struct regmap *regmap,
 			   const char *name,
 			   const char *parent_name,
@@ -165,31 +164,6 @@ at91_clk_register_main_osc(struct regmap *regmap,
 	return &osc->clk;
 }
 
-static int of_at91rm9200_clk_main_osc_setup(struct device_node *np)
-{
-	struct clk *clk;
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
-		return PTR_ERR(regmap);
-
-	clk = at91_clk_register_main_osc(regmap, name, parent_name, bypass);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
-}
-CLK_OF_DECLARE(at91rm9200_clk_main_osc, "atmel,at91rm9200-clk-main-osc",
-	       of_at91rm9200_clk_main_osc_setup);
-
 static bool clk_main_rc_osc_ready(struct regmap *regmap)
 {
 	unsigned int status;
@@ -260,10 +234,10 @@ static const struct clk_ops main_rc_osc_ops = {
 	.recalc_rate = clk_main_rc_osc_recalc_rate,
 };
 
-static struct clk *
+struct clk *
 at91_clk_register_main_rc_osc(struct regmap *regmap,
 			      const char *name,
-			      u32 frequency)
+			      u32 frequency, u32 accuracy)
 {
 	int ret;
 	struct clk_main_rc_osc *osc;
@@ -290,30 +264,6 @@ at91_clk_register_main_rc_osc(struct regmap *regmap,
 	return &osc->clk;
 }
 
-static int of_at91sam9x5_clk_main_rc_osc_setup(struct device_node *np)
-{
-	struct clk *clk;
-	u32 frequency = 0;
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	of_property_read_string(np, "clock-output-names", &name);
-	of_property_read_u32(np, "clock-frequency", &frequency);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
-
-	clk = at91_clk_register_main_rc_osc(regmap, name, frequency);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_main_rc_osc, "atmel,at91sam9x5-clk-main-rc-osc",
-	       of_at91sam9x5_clk_main_rc_osc_setup);
-
-
 static int clk_main_probe_frequency(struct regmap *regmap)
 {
 	unsigned int mcfr;
@@ -375,7 +325,7 @@ static const struct clk_ops rm9200_main_ops = {
 	.recalc_rate = clk_rm9200_main_recalc_rate,
 };
 
-static struct clk *
+struct clk *
 at91_clk_register_rm9200_main(struct regmap *regmap,
 			      const char *name,
 			      const char *parent_name)
@@ -407,29 +357,6 @@ at91_clk_register_rm9200_main(struct regmap *regmap,
 	return &clkmain->clk;
 }
 
-static int of_at91rm9200_clk_main_setup(struct device_node *np)
-{
-	struct clk *clk;
-	const char *parent_name;
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-	of_property_read_string(np, "clock-output-names", &name);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
-
-	clk = at91_clk_register_rm9200_main(regmap, name, parent_name);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
-}
-CLK_OF_DECLARE(at91rm9200_clk_main, "atmel,at91rm9200-clk-main",
-	       of_at91rm9200_clk_main_setup);
-
 static inline bool clk_sam9x5_main_ready(struct regmap *regmap)
 {
 	unsigned int status;
@@ -506,7 +433,7 @@ static const struct clk_ops sam9x5_main_ops = {
 	.get_parent = clk_sam9x5_main_get_parent,
 };
 
-static struct clk *
+struct clk *
 at91_clk_register_sam9x5_main(struct regmap *regmap,
 			      const char *name,
 			      const char **parent_names,
@@ -546,32 +473,3 @@ at91_clk_register_sam9x5_main(struct regmap *regmap,
 
 	return &clkmain->clk;
 }
-
-static int of_at91sam9x5_clk_main_setup(struct device_node *np)
-{
-	struct clk *clk;
-	const char *parent_names[2];
-	unsigned int num_parents;
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	num_parents = of_clk_get_parent_count(np);
-	if (num_parents == 0 || num_parents > 2)
-		return -EINVAL;
-
-	of_clk_parent_fill(np, parent_names, num_parents);
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	clk = at91_clk_register_sam9x5_main(regmap, name, parent_names,
-					    num_parents);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_main, "atmel,at91sam9x5-clk-main",
-	       of_at91sam9x5_clk_main_setup);
diff --git a/drivers/clk/at91/clk-master.c b/drivers/clk/at91/clk-master.c
index b3a50ce54..f7a0fb1d1 100644
--- a/drivers/clk/at91/clk-master.c
+++ b/drivers/clk/at91/clk-master.c
@@ -9,7 +9,6 @@
  */
 #include <common.h>
 #include <clock.h>
-#include <of.h>
 #include <linux/list.h>
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
@@ -25,17 +24,6 @@
 #define MASTER_DIV_SHIFT	8
 #define MASTER_DIV_MASK		0x3
 
-struct clk_master_characteristics {
-	struct clk_range output;
-	u32 divisors[4];
-	u8 have_div3_pres;
-};
-
-struct clk_master_layout {
-	u32 mask;
-	u8 pres_shift;
-};
-
 #define to_clk_master(clk) container_of(clk, struct clk_master, clk)
 
 struct clk_master {
@@ -122,7 +110,7 @@ static const struct clk_ops master_ops = {
 	.get_parent = clk_master_get_parent,
 };
 
-static struct clk *
+struct clk *
 at91_clk_register_master(struct regmap *regmap,
 			 const char *name, int num_parents,
 			 const char **parent_names,
@@ -158,88 +146,12 @@ at91_clk_register_master(struct regmap *regmap,
 }
 
 
-static const struct clk_master_layout at91rm9200_master_layout = {
+const struct clk_master_layout at91rm9200_master_layout = {
 	.mask = 0x31F,
 	.pres_shift = 2,
 };
 
-static const struct clk_master_layout at91sam9x5_master_layout = {
+const struct clk_master_layout at91sam9x5_master_layout = {
 	.mask = 0x373,
 	.pres_shift = 4,
 };
-
-
-static struct clk_master_characteristics *
-of_at91_clk_master_get_characteristics(struct device_node *np)
-{
-	struct clk_master_characteristics *characteristics;
-
-	characteristics = xzalloc(sizeof(*characteristics));
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
-static int
-of_at91_clk_master_setup(struct device_node *np,
-			 const struct clk_master_layout *layout)
-{
-	struct clk *clk;
-	unsigned int num_parents;
-	const char *parent_names[MASTER_SOURCE_MAX];
-	const char *name = np->name;
-	struct clk_master_characteristics *characteristics;
-	struct regmap *regmap;
-
-	num_parents = of_clk_get_parent_count(np);
-	if (num_parents == 0 || num_parents > MASTER_SOURCE_MAX)
-		return -EINVAL;
-
-	of_clk_parent_fill(np, parent_names, num_parents);
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	characteristics = of_at91_clk_master_get_characteristics(np);
-	if (!characteristics)
-		return -EINVAL;
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
-
-	clk = at91_clk_register_master(regmap, name, num_parents,
-				       parent_names, layout,
-				       characteristics);
-	if (IS_ERR(clk)) {
-		kfree(characteristics);
-		return PTR_ERR(clk);
-	}
-
-	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
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
diff --git a/drivers/clk/at91/clk-peripheral.c b/drivers/clk/at91/clk-peripheral.c
index bbe6ffac6..00852672d 100644
--- a/drivers/clk/at91/clk-peripheral.c
+++ b/drivers/clk/at91/clk-peripheral.c
@@ -10,7 +10,6 @@
 
 #include <common.h>
 #include <clock.h>
-#include <of.h>
 #include <linux/list.h>
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
@@ -19,11 +18,6 @@
 
 #include "pmc.h"
 
-#define PERIPHERAL_MAX		64
-
-#define PERIPHERAL_AT91RM9200	0
-#define PERIPHERAL_AT91SAM9X5	1
-
 #define PERIPHERAL_ID_MIN	2
 #define PERIPHERAL_ID_MAX	31
 #define PERIPHERAL_MASK(id)	(1 << ((id) & PERIPHERAL_ID_MAX))
@@ -105,7 +99,7 @@ static const struct clk_ops peripheral_ops = {
 	.is_enabled = clk_peripheral_is_enabled,
 };
 
-static struct clk *
+struct clk *
 at91_clk_register_peripheral(struct regmap *regmap, const char *name,
 			     const char *parent_name, u32 id)
 {
@@ -317,7 +311,7 @@ static const struct clk_ops sam9x5_peripheral_ops = {
 	.set_rate = clk_sam9x5_peripheral_set_rate,
 };
 
-static struct clk *
+struct clk *
 at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
 				    const char *name, const char *parent_name,
 				    u32 id, const struct clk_range *range)
@@ -355,75 +349,3 @@ at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
 
 	return &periph->clk;
 }
-
-static int
-of_at91_clk_periph_setup(struct device_node *np, u8 type)
-{
-	int num;
-	u32 id;
-	struct clk *clk;
-	const char *parent_name;
-	const char *name;
-	struct device_node *periphclknp;
-	struct regmap *regmap;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-	if (!parent_name)
-		return -ENOENT;
-
-	num = of_get_child_count(np);
-	if (!num || num > PERIPHERAL_MAX)
-		return -EINVAL;
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
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
-			clk = at91_clk_register_peripheral(regmap, name,
-							   parent_name, id);
-		} else {
-			struct clk_range range = CLK_RANGE(0, 0);
-
-			of_at91_get_clk_range(periphclknp,
-					      "atmel,clk-output-range",
-					      &range);
-
-			clk = at91_clk_register_sam9x5_peripheral(regmap,
-								  name,
-								  parent_name,
-								  id, &range);
-		}
-
-		if (IS_ERR(clk))
-			continue;
-
-		of_clk_add_provider(periphclknp, of_clk_src_simple_get, clk);
-	}
-
-	return 0;
-}
-
-static int of_at91rm9200_clk_periph_setup(struct device_node *np)
-{
-	return of_at91_clk_periph_setup(np, PERIPHERAL_AT91RM9200);
-}
-CLK_OF_DECLARE(at91rm9200_clk_periph, "atmel,at91rm9200-clk-peripheral",
-	       of_at91rm9200_clk_periph_setup);
-
-static int of_at91sam9x5_clk_periph_setup(struct device_node *np)
-{
-	return of_at91_clk_periph_setup(np, PERIPHERAL_AT91SAM9X5);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_periph, "atmel,at91sam9x5-clk-peripheral",
-	       of_at91sam9x5_clk_periph_setup);
diff --git a/drivers/clk/at91/clk-pll.c b/drivers/clk/at91/clk-pll.c
index e0af4fe5a..bc504e8a9 100644
--- a/drivers/clk/at91/clk-pll.c
+++ b/drivers/clk/at91/clk-pll.c
@@ -36,20 +36,6 @@
 #define PLL_OUT_SHIFT		14
 #define PLL_MAX_ID		1
 
-struct clk_pll_characteristics {
-	struct clk_range input;
-	int num_output;
-	struct clk_range *output;
-	u16 *icpll;
-	u8 *out;
-};
-
-struct clk_pll_layout {
-	u32 pllr_mask;
-	u16 mul_mask;
-	u8 mul_shift;
-};
-
 #define to_clk_pll(clk) container_of(clk, struct clk_pll, clk)
 
 struct clk_pll {
@@ -299,7 +285,7 @@ static const struct clk_ops pll_ops = {
 	.set_rate = clk_pll_set_rate,
 };
 
-static struct clk *
+struct clk *
 at91_clk_register_pll(struct regmap *regmap, const char *name,
 		      const char *parent_name, u8 id,
 		      const struct clk_pll_layout *layout,
@@ -341,176 +327,26 @@ at91_clk_register_pll(struct regmap *regmap, const char *name,
 }
 
 
-static const struct clk_pll_layout at91rm9200_pll_layout = {
+const struct clk_pll_layout at91rm9200_pll_layout = {
 	.pllr_mask = 0x7FFFFFF,
 	.mul_shift = 16,
 	.mul_mask = 0x7FF,
 };
 
-static const struct clk_pll_layout at91sam9g45_pll_layout = {
+const struct clk_pll_layout at91sam9g45_pll_layout = {
 	.pllr_mask = 0xFFFFFF,
 	.mul_shift = 16,
 	.mul_mask = 0xFF,
 };
 
-static const struct clk_pll_layout at91sam9g20_pllb_layout = {
+const struct clk_pll_layout at91sam9g20_pllb_layout = {
 	.pllr_mask = 0x3FFFFF,
 	.mul_shift = 16,
 	.mul_mask = 0x3F,
 };
 
-static const struct clk_pll_layout sama5d3_pll_layout = {
+const struct clk_pll_layout sama5d3_pll_layout = {
 	.pllr_mask = 0x1FFFFFF,
 	.mul_shift = 18,
 	.mul_mask = 0x7F,
 };
-
-
-static struct clk_pll_characteristics *
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
-	characteristics = xzalloc(sizeof(*characteristics));
-	output = xzalloc(sizeof(*output) * num_output);
-
-	if (num_cells > 2)
-		out = xzalloc(sizeof(*out) * num_output);
-
-	if (num_cells > 3)
-		icpll = xzalloc(sizeof(*icpll) * num_output);
-
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
-	kfree(characteristics);
-	return NULL;
-}
-
-static int
-of_at91_clk_pll_setup(struct device_node *np,
-		      const struct clk_pll_layout *layout)
-{
-	u32 id;
-	struct clk *clk;
-	struct regmap *regmap;
-	const char *parent_name;
-	const char *name = np->name;
-	struct clk_pll_characteristics *characteristics;
-
-	if (of_property_read_u32(np, "reg", &id))
-		return -EINVAL;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
-
-	characteristics = of_at91_clk_pll_get_characteristics(np);
-	if (!characteristics)
-		return -EINVAL;
-
-	clk = at91_clk_register_pll(regmap, name, parent_name, id, layout,
-				    characteristics);
-	if (IS_ERR(clk)) {
-		kfree(characteristics);
-		return PTR_ERR(clk);
-	}
-
-	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
-}
-
-static int of_at91rm9200_clk_pll_setup(struct device_node *np)
-{
-	return of_at91_clk_pll_setup(np, &at91rm9200_pll_layout);
-}
-CLK_OF_DECLARE(at91rm9200_clk_pll, "atmel,at91rm9200-clk-pll",
-	       of_at91rm9200_clk_pll_setup);
-
-static int of_at91sam9g45_clk_pll_setup(struct device_node *np)
-{
-	return of_at91_clk_pll_setup(np, &at91sam9g45_pll_layout);
-}
-CLK_OF_DECLARE(at91sam9g45_clk_pll, "atmel,at91sam9g45-clk-pll",
-	       of_at91sam9g45_clk_pll_setup);
-
-static int of_at91sam9g20_clk_pllb_setup(struct device_node *np)
-{
-	return of_at91_clk_pll_setup(np, &at91sam9g20_pllb_layout);
-}
-CLK_OF_DECLARE(at91sam9g20_clk_pllb, "atmel,at91sam9g20-clk-pllb",
-	       of_at91sam9g20_clk_pllb_setup);
-
-static int of_sama5d3_clk_pll_setup(struct device_node *np)
-{
-	return of_at91_clk_pll_setup(np, &sama5d3_pll_layout);
-}
-CLK_OF_DECLARE(sama5d3_clk_pll, "atmel,sama5d3-clk-pll",
-	       of_sama5d3_clk_pll_setup);
diff --git a/drivers/clk/at91/clk-plldiv.c b/drivers/clk/at91/clk-plldiv.c
index 917108e84..98d79ef59 100644
--- a/drivers/clk/at91/clk-plldiv.c
+++ b/drivers/clk/at91/clk-plldiv.c
@@ -78,7 +78,7 @@ static const struct clk_ops plldiv_ops = {
 	.set_rate = clk_plldiv_set_rate,
 };
 
-static struct clk *
+struct clk *
 at91_clk_register_plldiv(struct regmap *regmap, const char *name,
 			 const char *parent_name)
 {
@@ -108,28 +108,3 @@ at91_clk_register_plldiv(struct regmap *regmap, const char *name,
 
 	return &plldiv->clk;
 }
-
-static int
-of_at91sam9x5_clk_plldiv_setup(struct device_node *np)
-{
-	struct clk *clk;
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
-		return PTR_ERR(regmap);
-
-	clk = at91_clk_register_plldiv(regmap, name, parent_name);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_plldiv, "atmel,at91sam9x5-clk-plldiv",
-	       of_at91sam9x5_clk_plldiv_setup);
diff --git a/drivers/clk/at91/clk-programmable.c b/drivers/clk/at91/clk-programmable.c
index ddb18c0f7..857ede1ca 100644
--- a/drivers/clk/at91/clk-programmable.c
+++ b/drivers/clk/at91/clk-programmable.c
@@ -10,7 +10,6 @@
 
 #include <common.h>
 #include <clock.h>
-#include <of.h>
 #include <io.h>
 #include <linux/list.h>
 #include <linux/clk.h>
@@ -28,12 +27,6 @@
 #define PROG_PRES(layout, pckr)	((pckr >> layout->pres_shift) & PROG_PRES_MASK)
 #define PROG_MAX_RM9200_CSS	3
 
-struct clk_programmable_layout {
-	u8 pres_shift;
-	u8 css_mask;
-	u8 have_slck_mck;
-};
-
 struct clk_programmable {
 	struct clk clk;
 	struct regmap *regmap;
@@ -130,7 +123,7 @@ static const struct clk_ops programmable_ops = {
 	.set_rate = clk_programmable_set_rate,
 };
 
-static struct clk *
+struct clk *
 at91_clk_register_programmable(struct regmap *regmap,
 			       const char *name, const char **parent_names,
 			       u8 num_parents, u8 id,
@@ -167,88 +160,20 @@ at91_clk_register_programmable(struct regmap *regmap,
 	return &prog->clk;
 }
 
-static const struct clk_programmable_layout at91rm9200_programmable_layout = {
+const struct clk_programmable_layout at91rm9200_programmable_layout = {
 	.pres_shift = 2,
 	.css_mask = 0x3,
 	.have_slck_mck = 0,
 };
 
-static const struct clk_programmable_layout at91sam9g45_programmable_layout = {
+const struct clk_programmable_layout at91sam9g45_programmable_layout = {
 	.pres_shift = 2,
 	.css_mask = 0x3,
 	.have_slck_mck = 1,
 };
 
-static const struct clk_programmable_layout at91sam9x5_programmable_layout = {
+const struct clk_programmable_layout at91sam9x5_programmable_layout = {
 	.pres_shift = 4,
 	.css_mask = 0x7,
 	.have_slck_mck = 0,
 };
-
-static int
-of_at91_clk_prog_setup(struct device_node *np,
-		       const struct clk_programmable_layout *layout)
-{
-	int num;
-	u32 id;
-	struct clk *clk;
-	unsigned int num_parents;
-	const char *parent_names[PROG_SOURCE_MAX];
-	const char *name;
-	struct device_node *progclknp;
-	struct regmap *regmap;
-
-	num_parents = of_clk_get_parent_count(np);
-	if (num_parents == 0 || num_parents > PROG_SOURCE_MAX)
-		return -EINVAL;
-
-	of_clk_parent_fill(np, parent_names, num_parents);
-
-	num = of_get_child_count(np);
-	if (!num || num > (PROG_ID_MAX + 1))
-		return -EINVAL;
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
-
-	for_each_child_of_node(np, progclknp) {
-		if (of_property_read_u32(progclknp, "reg", &id))
-			continue;
-
-		if (of_property_read_string(np, "clock-output-names", &name))
-			name = progclknp->name;
-
-		clk = at91_clk_register_programmable(regmap, name,
-						     parent_names, num_parents,
-						     id, layout);
-		if (IS_ERR(clk))
-			continue;
-
-		of_clk_add_provider(progclknp, of_clk_src_simple_get, clk);
-	}
-
-	return 0;
-}
-
-
-static void __init of_at91rm9200_clk_prog_setup(struct device_node *np)
-{
-	of_at91_clk_prog_setup(np, &at91rm9200_programmable_layout);
-}
-CLK_OF_DECLARE(at91rm9200_clk_prog, "atmel,at91rm9200-clk-programmable",
-	       of_at91rm9200_clk_prog_setup);
-
-static int of_at91sam9g45_clk_prog_setup(struct device_node *np)
-{
-	return of_at91_clk_prog_setup(np, &at91sam9g45_programmable_layout);
-}
-CLK_OF_DECLARE(at91sam9g45_clk_prog, "atmel,at91sam9g45-clk-programmable",
-	       of_at91sam9g45_clk_prog_setup);
-
-static int of_at91sam9x5_clk_prog_setup(struct device_node *np)
-{
-	return of_at91_clk_prog_setup(np, &at91sam9x5_programmable_layout);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_prog, "atmel,at91sam9x5-clk-programmable",
-	       of_at91sam9x5_clk_prog_setup);
diff --git a/drivers/clk/at91/clk-slow.c b/drivers/clk/at91/clk-slow.c
index d4981e7b4..d19f7e15a 100644
--- a/drivers/clk/at91/clk-slow.c
+++ b/drivers/clk/at91/clk-slow.c
@@ -12,7 +12,6 @@
 
 #include <common.h>
 #include <clock.h>
-#include <of.h>
 #include <io.h>
 #include <linux/list.h>
 #include <linux/clk.h>
@@ -44,7 +43,7 @@ static const struct clk_ops sam9260_slow_ops = {
 	.get_parent = clk_sam9260_slow_get_parent,
 };
 
-static struct clk * __init
+struct clk * __init
 at91_clk_register_sam9260_slow(struct regmap *regmap,
 			       const char *name,
 			       const char **parent_names,
@@ -76,33 +75,3 @@ at91_clk_register_sam9260_slow(struct regmap *regmap,
 
 	return &slowck->clk;
 }
-
-static int of_at91sam9260_clk_slow_setup(struct device_node *np)
-{
-	struct clk *clk;
-	const char *parent_names[2];
-	unsigned int num_parents;
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	num_parents = of_clk_get_parent_count(np);
-	if (num_parents != 2)
-		return -EINVAL;
-
-	of_clk_parent_fill(np, parent_names, num_parents);
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	clk = at91_clk_register_sam9260_slow(regmap, name, parent_names,
-					     num_parents);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
-}
-
-CLK_OF_DECLARE(at91sam9260_clk_slow, "atmel,at91sam9260-clk-slow",
-	       of_at91sam9260_clk_slow_setup);
diff --git a/drivers/clk/at91/clk-smd.c b/drivers/clk/at91/clk-smd.c
index 65c53efbb..e81f0d4d4 100644
--- a/drivers/clk/at91/clk-smd.c
+++ b/drivers/clk/at91/clk-smd.c
@@ -10,7 +10,6 @@
 
 #include <common.h>
 #include <clock.h>
-#include <of.h>
 #include <io.h>
 #include <linux/list.h>
 #include <linux/clk.h>
@@ -115,7 +114,7 @@ static const struct clk_ops at91sam9x5_smd_ops = {
 	.set_rate = at91sam9x5_clk_smd_set_rate,
 };
 
-static struct clk *
+struct clk *
 at91sam9x5_clk_register_smd(struct regmap *regmap, const char *name,
 			    const char **parent_names, u8 num_parents)
 {
@@ -140,33 +139,3 @@ at91sam9x5_clk_register_smd(struct regmap *regmap, const char *name,
 
 	return &smd->clk;
 }
-
-static int of_at91sam9x5_clk_smd_setup(struct device_node *np)
-{
-	struct clk *clk;
-	unsigned int num_parents;
-	const char *parent_names[SMD_SOURCE_MAX];
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	num_parents = of_clk_get_parent_count(np);
-	if (num_parents == 0 || num_parents > SMD_SOURCE_MAX)
-		return -EINVAL;
-
-	of_clk_parent_fill(np, parent_names, num_parents);
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
-
-	clk = at91sam9x5_clk_register_smd(regmap, name, parent_names,
-					  num_parents);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_smd, "atmel,at91sam9x5-clk-smd",
-	       of_at91sam9x5_clk_smd_setup);
diff --git a/drivers/clk/at91/clk-system.c b/drivers/clk/at91/clk-system.c
index 021930e54..8be5c7f2b 100644
--- a/drivers/clk/at91/clk-system.c
+++ b/drivers/clk/at91/clk-system.c
@@ -9,7 +9,6 @@
  */
 #include <common.h>
 #include <clock.h>
-#include <of.h>
 #include <io.h>
 #include <linux/list.h>
 #include <linux/clk.h>
@@ -91,7 +90,7 @@ static const struct clk_ops system_ops = {
 	.is_enabled = clk_system_is_enabled,
 };
 
-static struct clk *
+struct clk *
 at91_clk_register_system(struct regmap *regmap, const char *name,
 			 const char *parent_name, u8 id)
 {
@@ -119,42 +118,3 @@ at91_clk_register_system(struct regmap *regmap, const char *name,
 
 	return &sys->clk;
 }
-
-static int of_at91rm9200_clk_sys_setup(struct device_node *np)
-{
-	int num;
-	u32 id;
-	struct clk *clk;
-	const char *name;
-	struct device_node *sysclknp;
-	const char *parent_name;
-	struct regmap *regmap;
-
-	num = of_get_child_count(np);
-	if (num > (SYSTEM_MAX_ID + 1))
-		return -EINVAL;
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
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
-		clk = at91_clk_register_system(regmap, name, parent_name, id);
-		if (IS_ERR(clk))
-			continue;
-
-		of_clk_add_provider(sysclknp, of_clk_src_simple_get, clk);
-	}
-
-	return 0;
-}
-CLK_OF_DECLARE(at91rm9200_clk_sys, "atmel,at91rm9200-clk-system",
-	       of_at91rm9200_clk_sys_setup);
diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
index 99ba671c9..0eb0b1f5b 100644
--- a/drivers/clk/at91/clk-usb.c
+++ b/drivers/clk/at91/clk-usb.c
@@ -10,7 +10,6 @@
 
 #include <common.h>
 #include <clock.h>
-#include <of.h>
 #include <io.h>
 #include <linux/list.h>
 #include <linux/clk.h>
@@ -144,7 +143,7 @@ static const struct clk_ops at91sam9n12_usb_ops = {
 	.set_rate = at91sam9x5_clk_usb_set_rate,
 };
 
-static struct clk *
+struct clk *
 at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 			    const char **parent_names, u8 num_parents)
 {
@@ -172,7 +171,7 @@ at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 	return &usb->clk;
 }
 
-static struct clk *
+struct clk *
 at91sam9n12_clk_register_usb(struct regmap *regmap, const char *name,
 			     const char *parent_name)
 {
@@ -282,7 +281,7 @@ static const struct clk_ops at91rm9200_usb_ops = {
 	.set_rate = at91rm9200_clk_usb_set_rate,
 };
 
-static struct clk *
+struct clk *
 at91rm9200_clk_register_usb(struct regmap *regmap, const char *name,
 			    const char *parent_name, const u32 *divisors)
 {
@@ -308,90 +307,3 @@ at91rm9200_clk_register_usb(struct regmap *regmap, const char *name,
 
 	return &usb->clk;
 }
-
-static int of_at91sam9x5_clk_usb_setup(struct device_node *np)
-{
-	struct clk *clk;
-	unsigned int num_parents;
-	const char *parent_names[USB_SOURCE_MAX];
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	num_parents = of_clk_get_parent_count(np);
-	if (num_parents == 0 || num_parents > USB_SOURCE_MAX)
-		return -EINVAL;
-
-	of_clk_parent_fill(np, parent_names, num_parents);
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
-
-	clk = at91sam9x5_clk_register_usb(regmap, name, parent_names,
-					 num_parents);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
-}
-CLK_OF_DECLARE(at91sam9x5_clk_usb, "atmel,at91sam9x5-clk-usb",
-	       of_at91sam9x5_clk_usb_setup);
-
-static int of_at91sam9n12_clk_usb_setup(struct device_node *np)
-{
-	struct clk *clk;
-	const char *parent_name;
-	const char *name = np->name;
-	struct regmap *regmap;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-	if (!parent_name)
-		return -EINVAL;
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
-
-	clk = at91sam9n12_clk_register_usb(regmap, name, parent_name);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
-}
-CLK_OF_DECLARE(at91sam9n12_clk_usb, "atmel,at91sam9n12-clk-usb",
-	       of_at91sam9n12_clk_usb_setup);
-
-static int of_at91rm9200_clk_usb_setup(struct device_node *np)
-{
-	struct clk *clk;
-	const char *parent_name;
-	const char *name = np->name;
-	u32 divisors[4] = {0, 0, 0, 0};
-	struct regmap *regmap;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-	if (!parent_name)
-		return -EINVAL;
-
-	of_property_read_u32_array(np, "atmel,clk-divisors", divisors, 4);
-	if (!divisors[0])
-		return -EINVAL;
-
-	of_property_read_string(np, "clock-output-names", &name);
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
-
-	clk = at91rm9200_clk_register_usb(regmap, name, parent_name, divisors);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
-}
-CLK_OF_DECLARE(at91rm9200_clk_usb, "atmel,at91rm9200-clk-usb",
-	       of_at91rm9200_clk_usb_setup);
diff --git a/drivers/clk/at91/clk-utmi.c b/drivers/clk/at91/clk-utmi.c
index 6a1c5e6df..c40af34d0 100644
--- a/drivers/clk/at91/clk-utmi.c
+++ b/drivers/clk/at91/clk-utmi.c
@@ -10,21 +10,27 @@
 
 #include <common.h>
 #include <clock.h>
-#include <of.h>
 #include <linux/list.h>
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
 #include <mfd/syscon.h>
 #include <regmap.h>
 
+#include <soc/at91/atmel-sfr.h>
+
 #include "pmc.h"
 
-#define UTMI_FIXED_MUL		40
+/*
+ * The purpose of this clock is to generate a 480 MHz signal. A different
+ * rate can't be configured.
+ */
+#define UTMI_RATE      480000000
 
 struct clk_utmi {
 	struct clk clk;
-	struct regmap *regmap;
 	const char *parent;
+	struct regmap *regmap_pmc;
+	struct regmap *regmap_sfr;
 };
 
 #define to_clk_utmi(clk) container_of(clk, struct clk_utmi, clk)
@@ -40,13 +46,55 @@ static inline bool clk_utmi_ready(struct regmap *regmap)
 
 static int clk_utmi_enable(struct clk *clk)
 {
+	struct clk *hw_parent;
 	struct clk_utmi *utmi = to_clk_utmi(clk);
 	unsigned int uckr = AT91_PMC_UPLLEN | AT91_PMC_UPLLCOUNT |
 			    AT91_PMC_BIASEN;
+	unsigned int utmi_ref_clk_freq;
+	unsigned long parent_rate;
+
+	/*
+	 * If mainck rate is different from 12 MHz, we have to configure the
+	 * FREQ field of the SFR_UTMICKTRIM register to generate properly
+	 * the utmi clock.
+	 */
+	hw_parent = clk_get_parent(clk);
+	parent_rate = clk_get_rate(hw_parent);
+
+	switch (parent_rate) {
+	case 12000000:
+		utmi_ref_clk_freq = 0;
+		break;
+	case 16000000:
+		utmi_ref_clk_freq = 1;
+		break;
+	case 24000000:
+		utmi_ref_clk_freq = 2;
+		break;
+	/*
+	 * Not supported on SAMA5D2 but it's not an issue since MAINCK
+	 * maximum value is 24 MHz.
+	 */
+	case 48000000:
+		utmi_ref_clk_freq = 3;
+		break;
+	default:
+		pr_err("UTMICK: unsupported mainck rate\n");
+		return -EINVAL;
+	}
+
+
+	if (utmi->regmap_sfr) {
+		regmap_write_bits(utmi->regmap_sfr, AT91_SFR_UTMICKTRIM,
+				  AT91_UTMICKTRIM_FREQ, utmi_ref_clk_freq);
+	} else if (utmi_ref_clk_freq) {
+		pr_err("UTMICK: sfr node required\n");
+		return -EINVAL;
+	}
+	regmap_write_bits(utmi->regmap_pmc, AT91_CKGR_UCKR, uckr, uckr);
 
-	regmap_write_bits(utmi->regmap, AT91_CKGR_UCKR, uckr, uckr);
 
-	while (!clk_utmi_ready(utmi->regmap))
+	while (!clk_utmi_ready(utmi->regmap_pmc))
 		barrier();
 
 	return 0;
@@ -56,21 +104,22 @@ static int clk_utmi_is_enabled(struct clk *clk)
 {
 	struct clk_utmi *utmi = to_clk_utmi(clk);
 
-	return clk_utmi_ready(utmi->regmap);
+	return clk_utmi_ready(utmi->regmap_pmc);
 }
 
 static void clk_utmi_disable(struct clk *clk)
 {
 	struct clk_utmi *utmi = to_clk_utmi(clk);
 
-	regmap_write_bits(utmi->regmap, AT91_CKGR_UCKR, AT91_PMC_UPLLEN, 0);
+	regmap_write_bits(utmi->regmap_pmc, AT91_CKGR_UCKR,
+			  AT91_PMC_UPLLEN, 0);
 }
 
 static unsigned long clk_utmi_recalc_rate(struct clk *clk,
 					  unsigned long parent_rate)
 {
-	/* UTMI clk is a fixed clk multiplier */
-	return parent_rate * UTMI_FIXED_MUL;
+	/* UTMI clk rate is fixed */
+	return UTMI_RATE;
 }
 
 static const struct clk_ops utmi_ops = {
@@ -80,8 +129,8 @@ static const struct clk_ops utmi_ops = {
 	.recalc_rate = clk_utmi_recalc_rate,
 };
 
-static struct clk * __init
-at91_clk_register_utmi(struct regmap *regmap,
+struct clk * __init
+at91_clk_register_utmi(struct regmap *regmap_pmc, struct regmap *regmap_sfr,
 		       const char *name, const char *parent_name)
 {
 	int ret;
@@ -100,7 +149,8 @@ at91_clk_register_utmi(struct regmap *regmap,
 
 	/* utmi->clk.flags = CLK_SET_RATE_GATE; */
 
-	utmi->regmap = regmap;
+	utmi->regmap_pmc = regmap_pmc;
+	utmi->regmap_sfr = regmap_sfr;
 
 	ret = clk_register(&utmi->clk);
 	if (ret) {
@@ -110,29 +160,3 @@ at91_clk_register_utmi(struct regmap *regmap,
 
 	return &utmi->clk;
 }
-#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
-static void __init of_at91sam9x5_clk_utmi_setup(struct device_node *np)
-{
-	struct clk *clk;
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
-	clk = at91_clk_register_utmi(regmap, name, parent_name);
-	if (IS_ERR(clk))
-		return;
-
-	of_clk_add_provider(np, of_clk_src_simple_get, clk);
-	return;
-}
-CLK_OF_DECLARE(at91sam9x5_clk_utmi, "atmel,at91sam9x5-clk-utmi",
-	       of_at91sam9x5_clk_utmi_setup);
-#endif
diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
index d156d50ca..aa73d61c5 100644
--- a/drivers/clk/at91/pmc.c
+++ b/drivers/clk/at91/pmc.c
@@ -15,8 +15,13 @@
 #include <mfd/syscon.h>
 #include <regmap.h>
 
+#include <dt-bindings/clock/at91.h>
+
 #include "pmc.h"
 
+#define PMC_MAX_IDS 128
+#define PMC_MAX_PCKS 8
+
 int of_at91_get_clk_range(struct device_node *np, const char *propname,
 			  struct clk_range *range)
 {
@@ -39,3 +44,246 @@ int of_at91_get_clk_range(struct device_node *np, const char *propname,
 	return 0;
 }
 EXPORT_SYMBOL_GPL(of_at91_get_clk_range);
+
+struct clk *of_clk_hw_pmc_get(struct of_phandle_args *clkspec, void *data)
+{
+	unsigned int type = clkspec->args[0];
+	unsigned int idx = clkspec->args[1];
+	struct pmc_data *pmc_data = data;
+
+	switch (type) {
+	case PMC_TYPE_CORE:
+		if (idx < pmc_data->ncore)
+			return pmc_data->chws[idx];
+		break;
+	case PMC_TYPE_SYSTEM:
+		if (idx < pmc_data->nsystem)
+			return pmc_data->shws[idx];
+		break;
+	case PMC_TYPE_PERIPHERAL:
+		if (idx < pmc_data->nperiph)
+			return pmc_data->phws[idx];
+		break;
+	case PMC_TYPE_GCK:
+		if (idx < pmc_data->ngck)
+			return pmc_data->ghws[idx];
+		break;
+	default:
+		break;
+	}
+
+	pr_err("%s: invalid type (%u) or index (%u)\n", __func__, type, idx);
+
+	return ERR_PTR(-EINVAL);
+}
+
+void pmc_data_free(struct pmc_data *pmc_data)
+{
+	kfree(pmc_data->chws);
+	kfree(pmc_data->shws);
+	kfree(pmc_data->phws);
+	kfree(pmc_data->ghws);
+}
+
+struct pmc_data *pmc_data_allocate(unsigned int ncore, unsigned int nsystem,
+				   unsigned int nperiph, unsigned int ngck)
+{
+	struct pmc_data *pmc_data = kzalloc(sizeof(*pmc_data), GFP_KERNEL);
+
+	if (!pmc_data)
+		return NULL;
+
+	pmc_data->ncore = ncore;
+	pmc_data->chws = kcalloc(ncore, sizeof(struct clk_hw *), GFP_KERNEL);
+	if (!pmc_data->chws)
+		goto err;
+
+	pmc_data->nsystem = nsystem;
+	pmc_data->shws = kcalloc(nsystem, sizeof(struct clk_hw *), GFP_KERNEL);
+	if (!pmc_data->shws)
+		goto err;
+
+	pmc_data->nperiph = nperiph;
+	pmc_data->phws = kcalloc(nperiph, sizeof(struct clk_hw *), GFP_KERNEL);
+	if (!pmc_data->phws)
+		goto err;
+
+	pmc_data->ngck = ngck;
+	pmc_data->ghws = kcalloc(ngck, sizeof(struct clk_hw *), GFP_KERNEL);
+	if (!pmc_data->ghws)
+		goto err;
+
+	return pmc_data;
+
+err:
+	pmc_data_free(pmc_data);
+
+	return NULL;
+}
+
+#ifdef CONFIG_PM
+static struct regmap *pmcreg;
+
+static u8 registered_ids[PMC_MAX_IDS];
+static u8 registered_pcks[PMC_MAX_PCKS];
+
+static struct
+{
+	u32 scsr;
+	u32 pcsr0;
+	u32 uckr;
+	u32 mor;
+	u32 mcfr;
+	u32 pllar;
+	u32 mckr;
+	u32 usb;
+	u32 imr;
+	u32 pcsr1;
+	u32 pcr[PMC_MAX_IDS];
+	u32 audio_pll0;
+	u32 audio_pll1;
+	u32 pckr[PMC_MAX_PCKS];
+} pmc_cache;
+
+/*
+ * As Peripheral ID 0 is invalid on AT91 chips, the identifier is stored
+ * without alteration in the table, and 0 is for unused clocks.
+ */
+void pmc_register_id(u8 id)
+{
+	int i;
+
+	for (i = 0; i < PMC_MAX_IDS; i++) {
+		if (registered_ids[i] == 0) {
+			registered_ids[i] = id;
+			break;
+		}
+		if (registered_ids[i] == id)
+			break;
+	}
+}
+
+/*
+ * As Programmable Clock 0 is valid on AT91 chips, there is an offset
+ * of 1 between the stored value and the real clock ID.
+ */
+void pmc_register_pck(u8 pck)
+{
+	int i;
+
+	for (i = 0; i < PMC_MAX_PCKS; i++) {
+		if (registered_pcks[i] == 0) {
+			registered_pcks[i] = pck + 1;
+			break;
+		}
+		if (registered_pcks[i] == (pck + 1))
+			break;
+	}
+}
+
+static int pmc_suspend(void)
+{
+	int i;
+	u8 num;
+
+	regmap_read(pmcreg, AT91_PMC_SCSR, &pmc_cache.scsr);
+	regmap_read(pmcreg, AT91_PMC_PCSR, &pmc_cache.pcsr0);
+	regmap_read(pmcreg, AT91_CKGR_UCKR, &pmc_cache.uckr);
+	regmap_read(pmcreg, AT91_CKGR_MOR, &pmc_cache.mor);
+	regmap_read(pmcreg, AT91_CKGR_MCFR, &pmc_cache.mcfr);
+	regmap_read(pmcreg, AT91_CKGR_PLLAR, &pmc_cache.pllar);
+	regmap_read(pmcreg, AT91_PMC_MCKR, &pmc_cache.mckr);
+	regmap_read(pmcreg, AT91_PMC_USB, &pmc_cache.usb);
+	regmap_read(pmcreg, AT91_PMC_IMR, &pmc_cache.imr);
+	regmap_read(pmcreg, AT91_PMC_PCSR1, &pmc_cache.pcsr1);
+
+	for (i = 0; registered_ids[i]; i++) {
+		regmap_write(pmcreg, AT91_PMC_PCR,
+			     (registered_ids[i] & AT91_PMC_PCR_PID_MASK));
+		regmap_read(pmcreg, AT91_PMC_PCR,
+			    &pmc_cache.pcr[registered_ids[i]]);
+	}
+	for (i = 0; registered_pcks[i]; i++) {
+		num = registered_pcks[i] - 1;
+		regmap_read(pmcreg, AT91_PMC_PCKR(num), &pmc_cache.pckr[num]);
+	}
+
+	return 0;
+}
+
+static bool pmc_ready(unsigned int mask)
+{
+	unsigned int status;
+
+	regmap_read(pmcreg, AT91_PMC_SR, &status);
+
+	return ((status & mask) == mask) ? 1 : 0;
+}
+
+static void pmc_resume(void)
+{
+	int i;
+	u8 num;
+	u32 tmp;
+	u32 mask = AT91_PMC_MCKRDY | AT91_PMC_LOCKA;
+
+	regmap_read(pmcreg, AT91_PMC_MCKR, &tmp);
+	if (pmc_cache.mckr != tmp)
+		pr_warn("MCKR was not configured properly by the firmware\n");
+	regmap_read(pmcreg, AT91_CKGR_PLLAR, &tmp);
+	if (pmc_cache.pllar != tmp)
+		pr_warn("PLLAR was not configured properly by the firmware\n");
+
+	regmap_write(pmcreg, AT91_PMC_SCER, pmc_cache.scsr);
+	regmap_write(pmcreg, AT91_PMC_PCER, pmc_cache.pcsr0);
+	regmap_write(pmcreg, AT91_CKGR_UCKR, pmc_cache.uckr);
+	regmap_write(pmcreg, AT91_CKGR_MOR, pmc_cache.mor);
+	regmap_write(pmcreg, AT91_CKGR_MCFR, pmc_cache.mcfr);
+	regmap_write(pmcreg, AT91_PMC_USB, pmc_cache.usb);
+	regmap_write(pmcreg, AT91_PMC_IMR, pmc_cache.imr);
+	regmap_write(pmcreg, AT91_PMC_PCER1, pmc_cache.pcsr1);
+
+	for (i = 0; registered_ids[i]; i++) {
+		regmap_write(pmcreg, AT91_PMC_PCR,
+			     pmc_cache.pcr[registered_ids[i]] |
+			     AT91_PMC_PCR_CMD);
+	}
+	for (i = 0; registered_pcks[i]; i++) {
+		num = registered_pcks[i] - 1;
+		regmap_write(pmcreg, AT91_PMC_PCKR(num), pmc_cache.pckr[num]);
+	}
+
+	if (pmc_cache.uckr & AT91_PMC_UPLLEN)
+		mask |= AT91_PMC_LOCKU;
+
+	while (!pmc_ready(mask))
+		cpu_relax();
+}
+
+static struct syscore_ops pmc_syscore_ops = {
+	.suspend = pmc_suspend,
+	.resume = pmc_resume,
+};
+
+static const struct of_device_id sama5d2_pmc_dt_ids[] = {
+	{ .compatible = "atmel,sama5d2-pmc" },
+	{ /* sentinel */ }
+};
+
+static int __init pmc_register_ops(void)
+{
+	struct device_node *np;
+
+	np = of_find_matching_node(NULL, sama5d2_pmc_dt_ids);
+
+	pmcreg = syscon_node_to_regmap(np);
+	if (IS_ERR(pmcreg))
+		return PTR_ERR(pmcreg);
+
+	register_syscore_ops(&pmc_syscore_ops);
+
+	return 0;
+}
+/* This has to happen before arch_initcall because of the tcb_clksrc driver */
+postcore_initcall(pmc_register_ops);
+#endif
diff --git a/drivers/clk/at91/pmc.h b/drivers/clk/at91/pmc.h
index c6c14a79a..529498308 100644
--- a/drivers/clk/at91/pmc.h
+++ b/drivers/clk/at91/pmc.h
@@ -13,6 +13,19 @@
 #define __PMC_H_
 
 #include <io.h>
+#include <linux/spinlock.h>
+#include <printk.h>
+
+struct pmc_data {
+	unsigned int ncore;
+	struct clk **chws;
+	unsigned int nsystem;
+	struct clk **shws;
+	unsigned int nperiph;
+	struct clk **phws;
+	unsigned int ngck;
+	struct clk **ghws;
+};
 
 struct clk_range {
 	unsigned long min;
@@ -21,7 +34,163 @@ struct clk_range {
 
 #define CLK_RANGE(MIN, MAX) {.min = MIN, .max = MAX,}
 
+struct clk_master_layout {
+	u32 mask;
+	u8 pres_shift;
+};
+
+extern const struct clk_master_layout at91rm9200_master_layout;
+extern const struct clk_master_layout at91sam9x5_master_layout;
+
+struct clk_master_characteristics {
+	struct clk_range output;
+	u32 divisors[4];
+	u8 have_div3_pres;
+};
+
+struct clk_pll_layout {
+	u32 pllr_mask;
+	u16 mul_mask;
+	u8 mul_shift;
+};
+
+extern const struct clk_pll_layout at91rm9200_pll_layout;
+extern const struct clk_pll_layout at91sam9g45_pll_layout;
+extern const struct clk_pll_layout at91sam9g20_pllb_layout;
+extern const struct clk_pll_layout sama5d3_pll_layout;
+
+struct clk_pll_characteristics {
+	struct clk_range input;
+	int num_output;
+	struct clk_range *output;
+	u16 *icpll;
+	u8 *out;
+};
+
+struct clk_programmable_layout {
+	u8 pres_shift;
+	u8 css_mask;
+	u8 have_slck_mck;
+};
+
+extern const struct clk_programmable_layout at91rm9200_programmable_layout;
+extern const struct clk_programmable_layout at91sam9g45_programmable_layout;
+extern const struct clk_programmable_layout at91sam9x5_programmable_layout;
+
+#define ndck(a, s) (a[s - 1].id + 1)
+#define nck(a) (a[ARRAY_SIZE(a) - 1].id + 1)
+struct pmc_data *pmc_data_allocate(unsigned int ncore, unsigned int nsystem,
+				   unsigned int nperiph, unsigned int ngck);
+void pmc_data_free(struct pmc_data *pmc_data);
+
 int of_at91_get_clk_range(struct device_node *np, const char *propname,
 			  struct clk_range *range);
 
+struct clk *of_clk_hw_pmc_get(struct of_phandle_args *clkspec, void *data);
+
+struct clk *
+at91_clk_register_audio_pll_frac(struct regmap *regmap, const char *name,
+				 const char *parent_name);
+
+struct clk *
+at91_clk_register_audio_pll_pad(struct regmap *regmap, const char *name,
+				const char *parent_name);
+
+struct clk *
+at91_clk_register_audio_pll_pmc(struct regmap *regmap, const char *name,
+				const char *parent_name);
+
+struct clk *
+at91_clk_register_generated(struct regmap *regmap,
+			    const char *name, const char **parent_names,
+			    u8 num_parents, u8 id, bool pll_audio,
+			    const struct clk_range *range);
+
+struct clk *
+at91_clk_register_h32mx(struct regmap *regmap, const char *name,
+			const char *parent_name);
+
+struct clk *
+at91_clk_i2s_mux_register(struct regmap *regmap, const char *name,
+			  const char * const *parent_names,
+			  unsigned int num_parents, u8 bus_id);
+
+struct clk *
+at91_clk_register_main_rc_osc(struct regmap *regmap, const char *name,
+			      u32 frequency, u32 accuracy);
+struct clk *
+at91_clk_register_main_osc(struct regmap *regmap, const char *name,
+			   const char *parent_name, bool bypass);
+struct clk *
+at91_clk_register_rm9200_main(struct regmap *regmap,
+			      const char *name,
+			      const char *parent_name);
+struct clk *
+at91_clk_register_sam9x5_main(struct regmap *regmap, const char *name,
+			      const char **parent_names, int num_parents);
+
+struct clk *
+at91_clk_register_master(struct regmap *regmap, const char *name,
+			 int num_parents, const char **parent_names,
+			 const struct clk_master_layout *layout,
+			 const struct clk_master_characteristics *characteristics);
+
+struct clk *
+at91_clk_register_peripheral(struct regmap *regmap, const char *name,
+			     const char *parent_name, u32 id);
+struct clk *
+at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
+				    const char *name, const char *parent_name,
+				    u32 id, const struct clk_range *range);
+
+struct clk *
+at91_clk_register_pll(struct regmap *regmap, const char *name,
+		      const char *parent_name, u8 id,
+		      const struct clk_pll_layout *layout,
+		      const struct clk_pll_characteristics *characteristics);
+struct clk *
+at91_clk_register_plldiv(struct regmap *regmap, const char *name,
+			 const char *parent_name);
+
+struct clk *
+at91_clk_register_programmable(struct regmap *regmap, const char *name,
+			       const char **parent_names, u8 num_parents, u8 id,
+			       const struct clk_programmable_layout *layout);
+
+struct clk *
+at91_clk_register_sam9260_slow(struct regmap *regmap,
+			       const char *name,
+			       const char **parent_names,
+			       int num_parents);
+
+struct clk *
+at91sam9x5_clk_register_smd(struct regmap *regmap, const char *name,
+			    const char **parent_names, u8 num_parents);
+
+struct clk *
+at91_clk_register_system(struct regmap *regmap, const char *name,
+			 const char *parent_name, u8 id);
+
+struct clk *
+at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
+			    const char **parent_names, u8 num_parents);
+struct clk *
+at91sam9n12_clk_register_usb(struct regmap *regmap, const char *name,
+			     const char *parent_name);
+struct clk *
+at91rm9200_clk_register_usb(struct regmap *regmap, const char *name,
+			    const char *parent_name, const u32 *divisors);
+
+struct clk *
+at91_clk_register_utmi(struct regmap *regmap_pmc, struct regmap *regmap_sfr,
+		       const char *name, const char *parent_name);
+
+#ifdef CONFIG_PM
+void pmc_register_id(u8 id);
+void pmc_register_pck(u8 pck);
+#else
+static inline void pmc_register_id(u8 id) {}
+static inline void pmc_register_pck(u8 pck) {}
+#endif
+
 #endif /* __PMC_H_ */
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 978a0a8a9..20498574f 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -385,6 +385,11 @@ int of_clk_add_provider(struct device_node *np,
 			struct clk *(*clk_src_get)(struct of_phandle_args *args,
 						   void *data),
 			void *data);
+
+static inline unsigned int clk_get_num_parents(const struct clk *hw)
+{
+	return hw->num_parents;
+}
 #else
 
 
@@ -430,6 +435,8 @@ static inline int of_clk_add_provider(struct device_node *np,
 }
 #endif
 
+#define CLK_OF_DECLARE_DRIVER(name, compat, fn) CLK_OF_DECLARE(name, compat, fn)
+
 struct string_list;
 
 int clk_name_complete(struct string_list *sl, char *instr);
diff --git a/include/soc/at91/atmel-sfr.h b/include/soc/at91/atmel-sfr.h
new file mode 100644
index 000000000..482337af0
--- /dev/null
+++ b/include/soc/at91/atmel-sfr.h
@@ -0,0 +1,34 @@
+/*
+ * Atmel SFR (Special Function Registers) register offsets and bit definitions.
+ *
+ * Copyright (C) 2016 Atmel
+ *
+ * Author: Ludovic Desroches <ludovic.desroches@atmel.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#ifndef _LINUX_MFD_SYSCON_ATMEL_SFR_H
+#define _LINUX_MFD_SYSCON_ATMEL_SFR_H
+
+#define AT91_SFR_DDRCFG		0x04	/* DDR Configuration Register */
+/* 0x08 ~ 0x0c: Reserved */
+#define AT91_SFR_OHCIICR	0x10	/* OHCI INT Configuration Register */
+#define AT91_SFR_OHCIISR	0x14	/* OHCI INT Status Register */
+#define AT91_SFR_UTMICKTRIM	0x30	/* UTMI Clock Trimming Register */
+#define AT91_SFR_I2SCLKSEL	0x90	/* I2SC Register */
+
+/* Field definitions */
+#define AT91_OHCIICR_SUSPEND_A	BIT(8)
+#define AT91_OHCIICR_SUSPEND_B	BIT(9)
+#define AT91_OHCIICR_SUSPEND_C	BIT(10)
+
+#define AT91_OHCIICR_USB_SUSPEND	(AT91_OHCIICR_SUSPEND_A | \
+					 AT91_OHCIICR_SUSPEND_B | \
+					 AT91_OHCIICR_SUSPEND_C)
+
+#define AT91_UTMICKTRIM_FREQ	GENMASK(1, 0)
+
+#endif /* _LINUX_MFD_SYSCON_ATMEL_SFR_H */
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
