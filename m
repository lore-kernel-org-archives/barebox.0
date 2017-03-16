Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1coWxr-0005di-Ka
 for barebox@lists.infradead.org; Thu, 16 Mar 2017 15:06:08 +0000
Received: by mail-pg0-x243.google.com with SMTP id b5so6409953pgg.1
 for <barebox@lists.infradead.org>; Thu, 16 Mar 2017 08:04:58 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 16 Mar 2017 08:04:40 -0700
Message-Id: <20170316150448.11773-4-andrew.smirnov@gmail.com>
In-Reply-To: <20170316150448.11773-1-andrew.smirnov@gmail.com>
References: <20170316150448.11773-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 03/11] clk: at91: Port at91 DT clock code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port at91 DT clock code from Linux 4.9-rc3.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/Kconfig                    |   1 +
 arch/arm/mach-at91/Kconfig          |  20 ++
 drivers/clk/Makefile                |   1 +
 drivers/clk/at91/Makefile           |  15 +
 drivers/clk/at91/clk-generated.c    | 323 ++++++++++++++++++++
 drivers/clk/at91/clk-h32mx.c        | 125 ++++++++
 drivers/clk/at91/clk-main.c         | 576 ++++++++++++++++++++++++++++++++++++
 drivers/clk/at91/clk-master.c       | 245 +++++++++++++++
 drivers/clk/at91/clk-peripheral.c   | 430 +++++++++++++++++++++++++++
 drivers/clk/at91/clk-pll.c          | 516 ++++++++++++++++++++++++++++++++
 drivers/clk/at91/clk-plldiv.c       | 135 +++++++++
 drivers/clk/at91/clk-programmable.c | 254 ++++++++++++++++
 drivers/clk/at91/clk-slow.c         | 108 +++++++
 drivers/clk/at91/clk-smd.c          | 172 +++++++++++
 drivers/clk/at91/clk-system.c       | 160 ++++++++++
 drivers/clk/at91/clk-usb.c          | 397 +++++++++++++++++++++++++
 drivers/clk/at91/clk-utmi.c         | 138 +++++++++
 drivers/clk/at91/pmc.c              |  41 +++
 drivers/clk/at91/pmc.h              |  27 ++
 drivers/clk/at91/sckc.c             | 485 ++++++++++++++++++++++++++++++
 include/linux/clk/at91_pmc.h        | 188 ++++++++++++
 21 files changed, 4357 insertions(+)
 create mode 100644 drivers/clk/at91/Makefile
 create mode 100644 drivers/clk/at91/clk-generated.c
 create mode 100644 drivers/clk/at91/clk-h32mx.c
 create mode 100644 drivers/clk/at91/clk-main.c
 create mode 100644 drivers/clk/at91/clk-master.c
 create mode 100644 drivers/clk/at91/clk-peripheral.c
 create mode 100644 drivers/clk/at91/clk-pll.c
 create mode 100644 drivers/clk/at91/clk-plldiv.c
 create mode 100644 drivers/clk/at91/clk-programmable.c
 create mode 100644 drivers/clk/at91/clk-slow.c
 create mode 100644 drivers/clk/at91/clk-smd.c
 create mode 100644 drivers/clk/at91/clk-system.c
 create mode 100644 drivers/clk/at91/clk-usb.c
 create mode 100644 drivers/clk/at91/clk-utmi.c
 create mode 100644 drivers/clk/at91/pmc.c
 create mode 100644 drivers/clk/at91/pmc.h
 create mode 100644 drivers/clk/at91/sckc.c
 create mode 100644 include/linux/clk/at91_pmc.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index e4663ea..e69ed9c 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -55,6 +55,7 @@ config ARCH_AT91
 	select HAVE_MACH_ARM_HEAD
 	select HAVE_CLK
 	select PINCTRL_AT91
+	select COMMON_CLK_AT91
 
 config ARCH_BCM2835
 	bool "Broadcom BCM2835 boards"
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 2d4721a..4ac69fc 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -9,6 +9,26 @@ config HAVE_AT91_DBGU1
 config HAVE_AT91_DBGU2
 	bool
 
+config HAVE_AT91_UTMI
+	bool
+
+config HAVE_AT91_USB_CLK
+	bool
+
+config COMMON_CLK_AT91
+	bool
+	select COMMON_CLK
+	select MFD_SYSCON
+
+config HAVE_AT91_SMD
+	bool
+
+config HAVE_AT91_H32MX
+	bool
+
+config HAVE_AT91_GENERATED_CLK
+	bool
+
 config HAVE_AT91_LOWLEVEL_INIT
 	bool
 
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 5811d28..d75b954 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -11,3 +11,4 @@ obj-$(CONFIG_ARCH_TEGRA)	+= tegra/
 obj-$(CONFIG_CLK_SOCFPGA)	+= socfpga.o
 obj-$(CONFIG_MACH_MIPS_ATH79)	+= clk-ar933x.o
 obj-$(CONFIG_ARCH_IMX)		+= imx/
+obj-$(CONFIG_COMMON_CLK_AT91)	+= at91/
diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
new file mode 100644
index 0000000..bfd06a4
--- /dev/null
+++ b/drivers/clk/at91/Makefile
@@ -0,0 +1,15 @@
+#
+# Makefile for at91 specific clk
+#
+
+obj-y += pmc.o sckc.o
+obj-y += clk-slow.o clk-main.o clk-pll.o clk-plldiv.o clk-master.o
+obj-y += clk-system.o clk-peripheral.o clk-programmable.o
+
+obj-$(CONFIG_HAVE_AT91_UTMI)		+= clk-utmi.o
+obj-$(CONFIG_HAVE_AT91_USB_CLK)		+= clk-usb.o
+obj-$(CONFIG_HAVE_AT91_SMD)		+= clk-smd.o
+obj-$(CONFIG_HAVE_AT91_H32MX)		+= clk-h32mx.o
+obj-$(CONFIG_HAVE_AT91_GENERATED_CLK)	+= clk-generated.o
+
+
diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
new file mode 100644
index 0000000..4e1cd5a
--- /dev/null
+++ b/drivers/clk/at91/clk-generated.c
@@ -0,0 +1,323 @@
+/*
+ *  Copyright (C) 2015 Atmel Corporation,
+ *                     Nicolas Ferre <nicolas.ferre@atmel.com>
+ *
+ * Based on clk-programmable & clk-peripheral drivers by Boris BREZILLON.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
+#include <linux/clk/at91_pmc.h>
+#include <linux/of.h>
+#include <linux/mfd/syscon.h>
+#include <linux/regmap.h>
+
+#include "pmc.h"
+
+#define PERIPHERAL_MAX		64
+#define PERIPHERAL_ID_MIN	2
+
+#define GENERATED_SOURCE_MAX	6
+#define GENERATED_MAX_DIV	255
+
+struct clk_generated {
+	struct clk_hw hw;
+	struct regmap *regmap;
+	struct clk_range range;
+	spinlock_t *lock;
+	u32 id;
+	u32 gckdiv;
+	u8 parent_id;
+};
+
+#define to_clk_generated(hw) \
+	container_of(hw, struct clk_generated, hw)
+
+static int clk_generated_enable(struct clk_hw *hw)
+{
+	struct clk_generated *gck = to_clk_generated(hw);
+	unsigned long flags;
+
+	pr_debug("GCLK: %s, gckdiv = %d, parent id = %d\n",
+		 __func__, gck->gckdiv, gck->parent_id);
+
+	spin_lock_irqsave(gck->lock, flags);
+	regmap_write(gck->regmap, AT91_PMC_PCR,
+		     (gck->id & AT91_PMC_PCR_PID_MASK));
+	regmap_update_bits(gck->regmap, AT91_PMC_PCR,
+			   AT91_PMC_PCR_GCKDIV_MASK | AT91_PMC_PCR_GCKCSS_MASK |
+			   AT91_PMC_PCR_CMD | AT91_PMC_PCR_GCKEN,
+			   AT91_PMC_PCR_GCKCSS(gck->parent_id) |
+			   AT91_PMC_PCR_CMD |
+			   AT91_PMC_PCR_GCKDIV(gck->gckdiv) |
+			   AT91_PMC_PCR_GCKEN);
+	spin_unlock_irqrestore(gck->lock, flags);
+	return 0;
+}
+
+static void clk_generated_disable(struct clk_hw *hw)
+{
+	struct clk_generated *gck = to_clk_generated(hw);
+	unsigned long flags;
+
+	spin_lock_irqsave(gck->lock, flags);
+	regmap_write(gck->regmap, AT91_PMC_PCR,
+		     (gck->id & AT91_PMC_PCR_PID_MASK));
+	regmap_update_bits(gck->regmap, AT91_PMC_PCR,
+			   AT91_PMC_PCR_CMD | AT91_PMC_PCR_GCKEN,
+			   AT91_PMC_PCR_CMD);
+	spin_unlock_irqrestore(gck->lock, flags);
+}
+
+static int clk_generated_is_enabled(struct clk_hw *hw)
+{
+	struct clk_generated *gck = to_clk_generated(hw);
+	unsigned long flags;
+	unsigned int status;
+
+	spin_lock_irqsave(gck->lock, flags);
+	regmap_write(gck->regmap, AT91_PMC_PCR,
+		     (gck->id & AT91_PMC_PCR_PID_MASK));
+	regmap_read(gck->regmap, AT91_PMC_PCR, &status);
+	spin_unlock_irqrestore(gck->lock, flags);
+
+	return status & AT91_PMC_PCR_GCKEN ? 1 : 0;
+}
+
+static unsigned long
+clk_generated_recalc_rate(struct clk_hw *hw,
+			  unsigned long parent_rate)
+{
+	struct clk_generated *gck = to_clk_generated(hw);
+
+	return DIV_ROUND_CLOSEST(parent_rate, gck->gckdiv + 1);
+}
+
+static int clk_generated_determine_rate(struct clk_hw *hw,
+					struct clk_rate_request *req)
+{
+	struct clk_generated *gck = to_clk_generated(hw);
+	struct clk_hw *parent = NULL;
+	long best_rate = -EINVAL;
+	unsigned long tmp_rate, min_rate;
+	int best_diff = -1;
+	int tmp_diff;
+	int i;
+
+	for (i = 0; i < clk_hw_get_num_parents(hw); i++) {
+		u32 div;
+		unsigned long parent_rate;
+
+		parent = clk_hw_get_parent_by_index(hw, i);
+		if (!parent)
+			continue;
+
+		parent_rate = clk_hw_get_rate(parent);
+		min_rate = DIV_ROUND_CLOSEST(parent_rate, GENERATED_MAX_DIV + 1);
+		if (!parent_rate ||
+		    (gck->range.max && min_rate > gck->range.max))
+			continue;
+
+		for (div = 1; div < GENERATED_MAX_DIV + 2; div++) {
+			tmp_rate = DIV_ROUND_CLOSEST(parent_rate, div);
+			tmp_diff = abs(req->rate - tmp_rate);
+
+			if (best_diff < 0 || best_diff > tmp_diff) {
+				best_rate = tmp_rate;
+				best_diff = tmp_diff;
+				req->best_parent_rate = parent_rate;
+				req->best_parent_hw = parent;
+			}
+
+			if (!best_diff || tmp_rate < req->rate)
+				break;
+		}
+
+		if (!best_diff)
+			break;
+	}
+
+	pr_debug("GCLK: %s, best_rate = %ld, parent clk: %s @ %ld\n",
+		 __func__, best_rate,
+		 __clk_get_name((req->best_parent_hw)->clk),
+		 req->best_parent_rate);
+
+	if (best_rate < 0)
+		return best_rate;
+
+	req->rate = best_rate;
+	return 0;
+}
+
+/* No modification of hardware as we have the flag CLK_SET_PARENT_GATE set */
+static int clk_generated_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct clk_generated *gck = to_clk_generated(hw);
+
+	if (index >= clk_hw_get_num_parents(hw))
+		return -EINVAL;
+
+	gck->parent_id = index;
+	return 0;
+}
+
+static u8 clk_generated_get_parent(struct clk_hw *hw)
+{
+	struct clk_generated *gck = to_clk_generated(hw);
+
+	return gck->parent_id;
+}
+
+/* No modification of hardware as we have the flag CLK_SET_RATE_GATE set */
+static int clk_generated_set_rate(struct clk_hw *hw,
+				  unsigned long rate,
+				  unsigned long parent_rate)
+{
+	struct clk_generated *gck = to_clk_generated(hw);
+	u32 div;
+
+	if (!rate)
+		return -EINVAL;
+
+	if (gck->range.max && rate > gck->range.max)
+		return -EINVAL;
+
+	div = DIV_ROUND_CLOSEST(parent_rate, rate);
+	if (div > GENERATED_MAX_DIV + 1 || !div)
+		return -EINVAL;
+
+	gck->gckdiv = div - 1;
+	return 0;
+}
+
+static const struct clk_ops generated_ops = {
+	.enable = clk_generated_enable,
+	.disable = clk_generated_disable,
+	.is_enabled = clk_generated_is_enabled,
+	.recalc_rate = clk_generated_recalc_rate,
+	.determine_rate = clk_generated_determine_rate,
+	.get_parent = clk_generated_get_parent,
+	.set_parent = clk_generated_set_parent,
+	.set_rate = clk_generated_set_rate,
+};
+
+/**
+ * clk_generated_startup - Initialize a given clock to its default parent and
+ * divisor parameter.
+ *
+ * @gck:	Generated clock to set the startup parameters for.
+ *
+ * Take parameters from the hardware and update local clock configuration
+ * accordingly.
+ */
+static void clk_generated_startup(struct clk_generated *gck)
+{
+	u32 tmp;
+	unsigned long flags;
+
+	spin_lock_irqsave(gck->lock, flags);
+	regmap_write(gck->regmap, AT91_PMC_PCR,
+		     (gck->id & AT91_PMC_PCR_PID_MASK));
+	regmap_read(gck->regmap, AT91_PMC_PCR, &tmp);
+	spin_unlock_irqrestore(gck->lock, flags);
+
+	gck->parent_id = (tmp & AT91_PMC_PCR_GCKCSS_MASK)
+					>> AT91_PMC_PCR_GCKCSS_OFFSET;
+	gck->gckdiv = (tmp & AT91_PMC_PCR_GCKDIV_MASK)
+					>> AT91_PMC_PCR_GCKDIV_OFFSET;
+}
+
+static struct clk_hw * __init
+at91_clk_register_generated(struct regmap *regmap, spinlock_t *lock,
+			    const char *name, const char **parent_names,
+			    u8 num_parents, u8 id,
+			    const struct clk_range *range)
+{
+	struct clk_generated *gck;
+	struct clk_init_data init;
+	struct clk_hw *hw;
+	int ret;
+
+	gck = kzalloc(sizeof(*gck), GFP_KERNEL);
+	if (!gck)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.ops = &generated_ops;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
+	init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE;
+
+	gck->id = id;
+	gck->hw.init = &init;
+	gck->regmap = regmap;
+	gck->lock = lock;
+	gck->range = *range;
+
+	hw = &gck->hw;
+	ret = clk_hw_register(NULL, &gck->hw);
+	if (ret) {
+		kfree(gck);
+		hw = ERR_PTR(ret);
+	} else
+		clk_generated_startup(gck);
+
+	return hw;
+}
+
+static void __init of_sama5d2_clk_generated_setup(struct device_node *np)
+{
+	int num;
+	u32 id;
+	const char *name;
+	struct clk_hw *hw;
+	unsigned int num_parents;
+	const char *parent_names[GENERATED_SOURCE_MAX];
+	struct device_node *gcknp;
+	struct clk_range range = CLK_RANGE(0, 0);
+	struct regmap *regmap;
+
+	num_parents = of_clk_get_parent_count(np);
+	if (num_parents == 0 || num_parents > GENERATED_SOURCE_MAX)
+		return;
+
+	of_clk_parent_fill(np, parent_names, num_parents);
+
+	num = of_get_child_count(np);
+	if (!num || num > PERIPHERAL_MAX)
+		return;
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return;
+
+	for_each_child_of_node(np, gcknp) {
+		if (of_property_read_u32(gcknp, "reg", &id))
+			continue;
+
+		if (id < PERIPHERAL_ID_MIN || id >= PERIPHERAL_MAX)
+			continue;
+
+		if (of_property_read_string(np, "clock-output-names", &name))
+			name = gcknp->name;
+
+		of_at91_get_clk_range(gcknp, "atmel,clk-output-range",
+				      &range);
+
+		hw = at91_clk_register_generated(regmap, &pmc_pcr_lock, name,
+						  parent_names, num_parents,
+						  id, &range);
+		if (IS_ERR(hw))
+			continue;
+
+		of_clk_add_hw_provider(gcknp, of_clk_hw_simple_get, hw);
+	}
+}
+CLK_OF_DECLARE(of_sama5d2_clk_generated_setup, "atmel,sama5d2-clk-generated",
+	       of_sama5d2_clk_generated_setup);
diff --git a/drivers/clk/at91/clk-h32mx.c b/drivers/clk/at91/clk-h32mx.c
new file mode 100644
index 0000000..e0daa4a
--- /dev/null
+++ b/drivers/clk/at91/clk-h32mx.c
@@ -0,0 +1,125 @@
+/*
+ * clk-h32mx.c
+ *
+ *  Copyright (C) 2014 Atmel
+ *
+ * Alexandre Belloni <alexandre.belloni@free-electrons.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
+#include <linux/clk/at91_pmc.h>
+#include <linux/of.h>
+#include <linux/regmap.h>
+#include <linux/mfd/syscon.h>
+
+#include "pmc.h"
+
+#define H32MX_MAX_FREQ	90000000
+
+struct clk_sama5d4_h32mx {
+	struct clk_hw hw;
+	struct regmap *regmap;
+};
+
+#define to_clk_sama5d4_h32mx(hw) container_of(hw, struct clk_sama5d4_h32mx, hw)
+
+static unsigned long clk_sama5d4_h32mx_recalc_rate(struct clk_hw *hw,
+						 unsigned long parent_rate)
+{
+	struct clk_sama5d4_h32mx *h32mxclk = to_clk_sama5d4_h32mx(hw);
+	unsigned int mckr;
+
+	regmap_read(h32mxclk->regmap, AT91_PMC_MCKR, &mckr);
+	if (mckr & AT91_PMC_H32MXDIV)
+		return parent_rate / 2;
+
+	if (parent_rate > H32MX_MAX_FREQ)
+		pr_warn("H32MX clock is too fast\n");
+	return parent_rate;
+}
+
+static long clk_sama5d4_h32mx_round_rate(struct clk_hw *hw, unsigned long rate,
+				       unsigned long *parent_rate)
+{
+	unsigned long div;
+
+	if (rate > *parent_rate)
+		return *parent_rate;
+	div = *parent_rate / 2;
+	if (rate < div)
+		return div;
+
+	if (rate - div < *parent_rate - rate)
+		return div;
+
+	return *parent_rate;
+}
+
+static int clk_sama5d4_h32mx_set_rate(struct clk_hw *hw, unsigned long rate,
+				    unsigned long parent_rate)
+{
+	struct clk_sama5d4_h32mx *h32mxclk = to_clk_sama5d4_h32mx(hw);
+	u32 mckr = 0;
+
+	if (parent_rate != rate && (parent_rate / 2) != rate)
+		return -EINVAL;
+
+	if ((parent_rate / 2) == rate)
+		mckr = AT91_PMC_H32MXDIV;
+
+	regmap_update_bits(h32mxclk->regmap, AT91_PMC_MCKR,
+			   AT91_PMC_H32MXDIV, mckr);
+
+	return 0;
+}
+
+static const struct clk_ops h32mx_ops = {
+	.recalc_rate = clk_sama5d4_h32mx_recalc_rate,
+	.round_rate = clk_sama5d4_h32mx_round_rate,
+	.set_rate = clk_sama5d4_h32mx_set_rate,
+};
+
+static void __init of_sama5d4_clk_h32mx_setup(struct device_node *np)
+{
+	struct clk_sama5d4_h32mx *h32mxclk;
+	struct clk_init_data init;
+	const char *parent_name;
+	struct regmap *regmap;
+	int ret;
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return;
+
+	h32mxclk = kzalloc(sizeof(*h32mxclk), GFP_KERNEL);
+	if (!h32mxclk)
+		return;
+
+	parent_name = of_clk_get_parent_name(np, 0);
+
+	init.name = np->name;
+	init.ops = &h32mx_ops;
+	init.parent_names = parent_name ? &parent_name : NULL;
+	init.num_parents = parent_name ? 1 : 0;
+	init.flags = CLK_SET_RATE_GATE;
+
+	h32mxclk->hw.init = &init;
+	h32mxclk->regmap = regmap;
+
+	ret = clk_hw_register(NULL, &h32mxclk->hw);
+	if (ret) {
+		kfree(h32mxclk);
+		return;
+	}
+
+	of_clk_add_hw_provider(np, of_clk_hw_simple_get, &h32mxclk->hw);
+}
+CLK_OF_DECLARE(of_sama5d4_clk_h32mx_setup, "atmel,sama5d4-clk-h32mx",
+	       of_sama5d4_clk_h32mx_setup);
diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
new file mode 100644
index 0000000..c1f47c1
--- /dev/null
+++ b/drivers/clk/at91/clk-main.c
@@ -0,0 +1,576 @@
+/*
+ *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+#include <common.h>
+#include <clock.h>
+#include <of.h>
+#include <linux/list.h>
+#include <linux/clk.h>
+#include <linux/clk/at91_pmc.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+
+#include "pmc.h"
+
+#define SLOW_CLOCK_FREQ		32768
+#define MAINF_DIV		16
+#define MAINFRDY_TIMEOUT	(((MAINF_DIV + 1) * SECOND) / \
+				 SLOW_CLOCK_FREQ)
+#define MAINF_LOOP_MIN_WAIT	(SECOND / SLOW_CLOCK_FREQ)
+#define MAINF_LOOP_MAX_WAIT	MAINFRDY_TIMEOUT
+
+#define MOR_KEY_MASK		(0xff << 16)
+
+struct clk_main_osc {
+	struct clk clk;
+	struct regmap *regmap;
+	const char *parent;
+};
+
+#define to_clk_main_osc(clk) container_of(clk, struct clk_main_osc, clk)
+
+struct clk_main_rc_osc {
+	struct clk clk;
+	struct regmap *regmap;
+	unsigned long frequency;
+};
+
+#define to_clk_main_rc_osc(clk) container_of(clk, struct clk_main_rc_osc, clk)
+
+struct clk_rm9200_main {
+	struct clk clk;
+	struct regmap *regmap;
+	const char *parent;
+};
+
+#define to_clk_rm9200_main(clk) container_of(clk, struct clk_rm9200_main, clk)
+
+struct clk_sam9x5_main {
+	struct clk clk;
+	struct regmap *regmap;
+	u8 parent;
+};
+
+#define to_clk_sam9x5_main(clk) container_of(clk, struct clk_sam9x5_main, clk)
+
+static inline bool clk_main_osc_ready(struct regmap *regmap)
+{
+	unsigned int status;
+
+	regmap_read(regmap, AT91_PMC_SR, &status);
+
+	return status & AT91_PMC_MOSCS;
+}
+
+static int clk_main_osc_enable(struct clk *clk)
+{
+	struct clk_main_osc *osc = to_clk_main_osc(clk);
+	struct regmap *regmap = osc->regmap;
+	u32 tmp;
+
+	regmap_read(regmap, AT91_CKGR_MOR, &tmp);
+	tmp &= ~MOR_KEY_MASK;
+
+	if (tmp & AT91_PMC_OSCBYPASS)
+		return 0;
+
+	if (!(tmp & AT91_PMC_MOSCEN)) {
+		tmp |= AT91_PMC_MOSCEN | AT91_PMC_KEY;
+		regmap_write(regmap, AT91_CKGR_MOR, tmp);
+	}
+
+	while (!clk_main_osc_ready(regmap))
+		barrier();
+
+	return 0;
+}
+
+static void clk_main_osc_disable(struct clk *clk)
+{
+	struct clk_main_osc *osc = to_clk_main_osc(clk);
+	struct regmap *regmap = osc->regmap;
+	u32 tmp;
+
+	regmap_read(regmap, AT91_CKGR_MOR, &tmp);
+	if (tmp & AT91_PMC_OSCBYPASS)
+		return;
+
+	if (!(tmp & AT91_PMC_MOSCEN))
+		return;
+
+	tmp &= ~(AT91_PMC_KEY | AT91_PMC_MOSCEN);
+	regmap_write(regmap, AT91_CKGR_MOR, tmp | AT91_PMC_KEY);
+}
+
+static int clk_main_osc_is_enabled(struct clk *clk)
+{
+	struct clk_main_osc *osc = to_clk_main_osc(clk);
+	struct regmap *regmap = osc->regmap;
+	u32 tmp, status;
+
+	regmap_read(regmap, AT91_CKGR_MOR, &tmp);
+	if (tmp & AT91_PMC_OSCBYPASS)
+		return 1;
+
+	regmap_read(regmap, AT91_PMC_SR, &status);
+
+	return (status & AT91_PMC_MOSCS) && (tmp & AT91_PMC_MOSCEN);
+}
+
+static const struct clk_ops main_osc_ops = {
+	.enable = clk_main_osc_enable,
+	.disable = clk_main_osc_disable,
+	.is_enabled = clk_main_osc_is_enabled,
+};
+
+static struct clk *
+at91_clk_register_main_osc(struct regmap *regmap,
+			   const char *name,
+			   const char *parent_name,
+			   bool bypass)
+{
+	struct clk_main_osc *osc;
+	int ret;
+
+	if (!name || !parent_name)
+		return ERR_PTR(-EINVAL);
+
+	osc = xzalloc(sizeof(*osc));
+
+	osc->parent = parent_name;
+	osc->clk.name = name;
+	osc->clk.ops = &main_osc_ops;
+	osc->clk.parent_names = &osc->parent;
+	osc->clk.num_parents = 1;
+	osc->regmap = regmap;
+
+	if (bypass)
+		regmap_write_bits(regmap,
+				  AT91_CKGR_MOR, MOR_KEY_MASK |
+				  AT91_PMC_MOSCEN,
+				  AT91_PMC_OSCBYPASS | AT91_PMC_KEY);
+
+	ret = clk_register(&osc->clk);
+	if (ret) {
+		free(osc);
+		return ERR_PTR(ret);
+	}
+
+	return &osc->clk;
+}
+
+static int of_at91rm9200_clk_main_osc_setup(struct device_node *np)
+{
+	struct clk *clk;
+	const char *name = np->name;
+	const char *parent_name;
+	struct regmap *regmap;
+	bool bypass;
+
+	of_property_read_string(np, "clock-output-names", &name);
+	bypass = of_property_read_bool(np, "atmel,osc-bypass");
+	parent_name = of_clk_get_parent_name(np, 0);
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	clk = at91_clk_register_main_osc(regmap, name, parent_name, bypass);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+CLK_OF_DECLARE(at91rm9200_clk_main_osc, "atmel,at91rm9200-clk-main-osc",
+	       of_at91rm9200_clk_main_osc_setup);
+
+static bool clk_main_rc_osc_ready(struct regmap *regmap)
+{
+	unsigned int status;
+
+	regmap_read(regmap, AT91_PMC_SR, &status);
+
+	return status & AT91_PMC_MOSCRCS;
+}
+
+static int clk_main_rc_osc_enable(struct clk *clk)
+{
+	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(clk);
+	struct regmap *regmap = osc->regmap;
+	unsigned int mor;
+
+	regmap_read(regmap, AT91_CKGR_MOR, &mor);
+
+	if (!(mor & AT91_PMC_MOSCRCEN))
+		regmap_write_bits(regmap, AT91_CKGR_MOR,
+				  MOR_KEY_MASK | AT91_PMC_MOSCRCEN,
+				  AT91_PMC_MOSCRCEN | AT91_PMC_KEY);
+
+	while (!clk_main_rc_osc_ready(regmap))
+		barrier();
+
+	return 0;
+}
+
+static void clk_main_rc_osc_disable(struct clk *clk)
+{
+	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(clk);
+	struct regmap *regmap = osc->regmap;
+	unsigned int mor;
+
+	regmap_read(regmap, AT91_CKGR_MOR, &mor);
+
+	if (!(mor & AT91_PMC_MOSCRCEN))
+		return;
+
+	regmap_write_bits(regmap, AT91_CKGR_MOR,
+			  MOR_KEY_MASK | AT91_PMC_MOSCRCEN, AT91_PMC_KEY);
+}
+
+static int clk_main_rc_osc_is_enabled(struct clk *clk)
+{
+	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(clk);
+	struct regmap *regmap = osc->regmap;
+	unsigned int mor, status;
+
+	regmap_read(regmap, AT91_CKGR_MOR, &mor);
+	regmap_read(regmap, AT91_PMC_SR, &status);
+
+	return (mor & AT91_PMC_MOSCRCEN) && (status & AT91_PMC_MOSCRCS);
+}
+
+static unsigned long clk_main_rc_osc_recalc_rate(struct clk *clk,
+						 unsigned long parent_rate)
+{
+	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(clk);
+
+	return osc->frequency;
+}
+
+static const struct clk_ops main_rc_osc_ops = {
+	.enable = clk_main_rc_osc_enable,
+	.disable = clk_main_rc_osc_disable,
+	.is_enabled = clk_main_rc_osc_is_enabled,
+	.recalc_rate = clk_main_rc_osc_recalc_rate,
+};
+
+static struct clk *
+at91_clk_register_main_rc_osc(struct regmap *regmap,
+			      const char *name,
+			      u32 frequency)
+{
+	int ret;
+	struct clk_main_rc_osc *osc;
+
+	if (!name || !frequency)
+		return ERR_PTR(-EINVAL);
+
+	osc = xzalloc(sizeof(*osc));
+
+	osc->clk.name = name;
+	osc->clk.ops = &main_rc_osc_ops;
+	osc->clk.parent_names = NULL;
+	osc->clk.num_parents = 0;
+
+	osc->regmap = regmap;
+	osc->frequency = frequency;
+
+	ret = clk_register(&osc->clk);
+	if (ret) {
+		kfree(osc);
+		return ERR_PTR(ret);
+	}
+
+	return &osc->clk;
+}
+
+static int of_at91sam9x5_clk_main_rc_osc_setup(struct device_node *np)
+{
+	struct clk *clk;
+	u32 frequency = 0;
+	const char *name = np->name;
+	struct regmap *regmap;
+
+	of_property_read_string(np, "clock-output-names", &name);
+	of_property_read_u32(np, "clock-frequency", &frequency);
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	clk = at91_clk_register_main_rc_osc(regmap, name, frequency);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+CLK_OF_DECLARE(at91sam9x5_clk_main_rc_osc, "atmel,at91sam9x5-clk-main-rc-osc",
+	       of_at91sam9x5_clk_main_rc_osc_setup);
+
+
+static int clk_main_probe_frequency(struct regmap *regmap)
+{
+	unsigned int mcfr;
+	uint64_t start = get_time_ns();
+
+	do {
+		regmap_read(regmap, AT91_CKGR_MCFR, &mcfr);
+		if (mcfr & AT91_PMC_MAINRDY)
+			return 0;
+	} while (!is_timeout(start, MAINFRDY_TIMEOUT *  USECOND));
+
+	return -ETIMEDOUT;
+}
+
+static unsigned long clk_main_recalc_rate(struct regmap *regmap,
+					  unsigned long parent_rate)
+{
+	unsigned int mcfr;
+
+	if (parent_rate)
+		return parent_rate;
+
+	pr_warn("Main crystal frequency not set, using approximate value\n");
+	regmap_read(regmap, AT91_CKGR_MCFR, &mcfr);
+	if (!(mcfr & AT91_PMC_MAINRDY))
+		return 0;
+
+	return ((mcfr & AT91_PMC_MAINF) * SLOW_CLOCK_FREQ) / MAINF_DIV;
+}
+
+static int clk_rm9200_main_enable(struct clk *clk)
+{
+	struct clk_rm9200_main *clkmain = to_clk_rm9200_main(clk);
+
+	return clk_main_probe_frequency(clkmain->regmap);
+}
+
+static int clk_rm9200_main_is_enabled(struct clk *clk)
+{
+	struct clk_rm9200_main *clkmain = to_clk_rm9200_main(clk);
+	unsigned int status;
+
+	regmap_read(clkmain->regmap, AT91_CKGR_MCFR, &status);
+
+	return status & AT91_PMC_MAINRDY ? 1 : 0;
+}
+
+static unsigned long clk_rm9200_main_recalc_rate(struct clk *clk,
+						 unsigned long parent_rate)
+{
+	struct clk_rm9200_main *clkmain = to_clk_rm9200_main(clk);
+
+	return clk_main_recalc_rate(clkmain->regmap, parent_rate);
+}
+
+static const struct clk_ops rm9200_main_ops = {
+	.enable = clk_rm9200_main_enable,
+	.is_enabled = clk_rm9200_main_is_enabled,
+	.recalc_rate = clk_rm9200_main_recalc_rate,
+};
+
+static struct clk *
+at91_clk_register_rm9200_main(struct regmap *regmap,
+			      const char *name,
+			      const char *parent_name)
+{
+	int ret;
+	struct clk_rm9200_main *clkmain;
+
+	if (!name)
+		return ERR_PTR(-EINVAL);
+
+	if (!parent_name)
+		return ERR_PTR(-EINVAL);
+
+	clkmain = xzalloc(sizeof(*clkmain));
+
+	clkmain->clk.name = name;
+	clkmain->clk.ops = &rm9200_main_ops;
+	clkmain->clk.parent_names = &clkmain->parent;
+	clkmain->clk.num_parents = 1;
+	clkmain->regmap = regmap;
+
+	ret = clk_register(&clkmain->clk);
+	if (ret) {
+		kfree(clkmain);
+		return ERR_PTR(ret);
+	}
+
+	return &clkmain->clk;
+}
+
+static int of_at91rm9200_clk_main_setup(struct device_node *np)
+{
+	struct clk *clk;
+	const char *parent_name;
+	const char *name = np->name;
+	struct regmap *regmap;
+
+	parent_name = of_clk_get_parent_name(np, 0);
+	of_property_read_string(np, "clock-output-names", &name);
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	clk = at91_clk_register_rm9200_main(regmap, name, parent_name);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+CLK_OF_DECLARE(at91rm9200_clk_main, "atmel,at91rm9200-clk-main",
+	       of_at91rm9200_clk_main_setup);
+
+static inline bool clk_sam9x5_main_ready(struct regmap *regmap)
+{
+	unsigned int status;
+
+	regmap_read(regmap, AT91_PMC_SR, &status);
+
+	return status & AT91_PMC_MOSCSELS ? 1 : 0;
+}
+
+static int clk_sam9x5_main_enable(struct clk *clk)
+{
+	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(clk);
+	struct regmap *regmap = clkmain->regmap;
+
+	while (!clk_sam9x5_main_ready(regmap))
+		barrier();
+
+	return clk_main_probe_frequency(regmap);
+}
+
+static int clk_sam9x5_main_is_enabled(struct clk *clk)
+{
+	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(clk);
+
+	return clk_sam9x5_main_ready(clkmain->regmap);
+}
+
+static unsigned long clk_sam9x5_main_recalc_rate(struct clk *clk,
+						 unsigned long parent_rate)
+{
+	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(clk);
+
+	return clk_main_recalc_rate(clkmain->regmap, parent_rate);
+}
+
+static int clk_sam9x5_main_set_parent(struct clk *clk, u8 index)
+{
+	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(clk);
+	struct regmap *regmap = clkmain->regmap;
+	unsigned int tmp;
+
+	if (index > 1)
+		return -EINVAL;
+
+	regmap_read(regmap, AT91_CKGR_MOR, &tmp);
+	tmp &= ~MOR_KEY_MASK;
+
+	if (index && !(tmp & AT91_PMC_MOSCSEL))
+		regmap_write(regmap, AT91_CKGR_MOR, tmp | AT91_PMC_MOSCSEL);
+	else if (!index && (tmp & AT91_PMC_MOSCSEL))
+		regmap_write(regmap, AT91_CKGR_MOR, tmp & ~AT91_PMC_MOSCSEL);
+
+	while (!clk_sam9x5_main_ready(regmap))
+		barrier();
+
+	return 0;
+}
+
+static int clk_sam9x5_main_get_parent(struct clk *clk)
+{
+	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(clk);
+	unsigned int status;
+
+	regmap_read(clkmain->regmap, AT91_CKGR_MOR, &status);
+
+	return status & AT91_PMC_MOSCEN ? 1 : 0;
+}
+
+static const struct clk_ops sam9x5_main_ops = {
+	.enable = clk_sam9x5_main_enable,
+	.is_enabled = clk_sam9x5_main_is_enabled,
+	.recalc_rate = clk_sam9x5_main_recalc_rate,
+	.set_parent = clk_sam9x5_main_set_parent,
+	.get_parent = clk_sam9x5_main_get_parent,
+};
+
+static struct clk *
+at91_clk_register_sam9x5_main(struct regmap *regmap,
+			      const char *name,
+			      const char **parent_names,
+			      int num_parents)
+{
+	int ret;
+	unsigned int status;
+	size_t parents_array_size;
+	struct clk_sam9x5_main *clkmain;
+
+	if (!name)
+		return ERR_PTR(-EINVAL);
+
+	if (!parent_names || !num_parents)
+		return ERR_PTR(-EINVAL);
+
+	clkmain = xzalloc(sizeof(*clkmain));
+
+	clkmain->clk.name = name;
+	clkmain->clk.ops = &sam9x5_main_ops;
+	parents_array_size = num_parents * sizeof (clkmain->clk.parent_names[0]);
+	clkmain->clk.parent_names = xzalloc(parents_array_size);
+	memcpy(clkmain->clk.parent_names, parent_names, parents_array_size);
+	clkmain->clk.num_parents = num_parents;
+	
+	/* init.flags = CLK_SET_PARENT_GATE; */
+
+	clkmain->regmap = regmap;
+	regmap_read(clkmain->regmap, AT91_CKGR_MOR, &status);
+	clkmain->parent = status & AT91_PMC_MOSCEN ? 1 : 0;
+
+	ret = clk_register(&clkmain->clk);
+	if (ret) {
+		kfree(clkmain);
+		return ERR_PTR(ret);
+	}
+
+	return &clkmain->clk;
+}
+
+static int of_at91sam9x5_clk_main_setup(struct device_node *np)
+{
+	struct clk *clk;
+	const char *parent_names[2];
+	unsigned int num_parents;
+	const char *name = np->name;
+	struct regmap *regmap;
+
+	num_parents = of_clk_get_parent_count(np);
+	if (num_parents == 0 || num_parents > 2)
+		return -EINVAL;
+
+	of_clk_parent_fill(np, parent_names, num_parents);
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	of_property_read_string(np, "clock-output-names", &name);
+
+	clk = at91_clk_register_sam9x5_main(regmap, name, parent_names,
+					    num_parents);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+CLK_OF_DECLARE(at91sam9x5_clk_main, "atmel,at91sam9x5-clk-main",
+	       of_at91sam9x5_clk_main_setup);
diff --git a/drivers/clk/at91/clk-master.c b/drivers/clk/at91/clk-master.c
new file mode 100644
index 0000000..b3a50ce
--- /dev/null
+++ b/drivers/clk/at91/clk-master.c
@@ -0,0 +1,245 @@
+/*
+ *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+#include <common.h>
+#include <clock.h>
+#include <of.h>
+#include <linux/list.h>
+#include <linux/clk.h>
+#include <linux/clk/at91_pmc.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+
+#include "pmc.h"
+
+#define MASTER_SOURCE_MAX	4
+
+#define MASTER_PRES_MASK	0x7
+#define MASTER_PRES_MAX		MASTER_PRES_MASK
+#define MASTER_DIV_SHIFT	8
+#define MASTER_DIV_MASK		0x3
+
+struct clk_master_characteristics {
+	struct clk_range output;
+	u32 divisors[4];
+	u8 have_div3_pres;
+};
+
+struct clk_master_layout {
+	u32 mask;
+	u8 pres_shift;
+};
+
+#define to_clk_master(clk) container_of(clk, struct clk_master, clk)
+
+struct clk_master {
+	struct clk clk;
+	struct regmap *regmap;
+	const struct clk_master_layout *layout;
+	const struct clk_master_characteristics *characteristics;
+	const char *parents[MASTER_SOURCE_MAX];
+};
+
+static inline bool clk_master_ready(struct regmap *regmap)
+{
+	unsigned int status;
+
+	regmap_read(regmap, AT91_PMC_SR, &status);
+
+	return status & AT91_PMC_MCKRDY ? 1 : 0;
+}
+
+static int clk_master_enable(struct clk *clk)
+{
+	struct clk_master *master = to_clk_master(clk);
+
+	while (!clk_master_ready(master->regmap))
+		barrier();
+
+	return 0;
+}
+
+static int clk_master_is_enabled(struct clk *clk)
+{
+	struct clk_master *master = to_clk_master(clk);
+
+	return clk_master_ready(master->regmap);
+}
+
+static unsigned long clk_master_recalc_rate(struct clk *clk,
+					    unsigned long parent_rate)
+{
+	u8 pres;
+	u8 div;
+	unsigned long rate = parent_rate;
+	struct clk_master *master = to_clk_master(clk);
+	const struct clk_master_layout *layout = master->layout;
+	const struct clk_master_characteristics *characteristics =
+						master->characteristics;
+	unsigned int mckr;
+
+	regmap_read(master->regmap, AT91_PMC_MCKR, &mckr);
+	mckr &= layout->mask;
+
+	pres = (mckr >> layout->pres_shift) & MASTER_PRES_MASK;
+	div = (mckr >> MASTER_DIV_SHIFT) & MASTER_DIV_MASK;
+
+	if (characteristics->have_div3_pres && pres == MASTER_PRES_MAX)
+		rate /= 3;
+	else
+		rate >>= pres;
+
+	rate /= characteristics->divisors[div];
+
+	if (rate < characteristics->output.min)
+		pr_warn("master clk is underclocked");
+	else if (rate > characteristics->output.max)
+		pr_warn("master clk is overclocked");
+
+	return rate;
+}
+
+static int clk_master_get_parent(struct clk *clk)
+{
+	struct clk_master *master = to_clk_master(clk);
+	unsigned int mckr;
+
+	regmap_read(master->regmap, AT91_PMC_MCKR, &mckr);
+
+	return mckr & AT91_PMC_CSS;
+}
+
+static const struct clk_ops master_ops = {
+	.enable = clk_master_enable,
+	.is_enabled = clk_master_is_enabled,
+	.recalc_rate = clk_master_recalc_rate,
+	.get_parent = clk_master_get_parent,
+};
+
+static struct clk *
+at91_clk_register_master(struct regmap *regmap,
+			 const char *name, int num_parents,
+			 const char **parent_names,
+			 const struct clk_master_layout *layout,
+			 const struct clk_master_characteristics *characteristics)
+{
+	int ret;
+	const size_t parent_names_size = num_parents * sizeof(parent_names[0]);
+	struct clk_master *master;
+
+	if (!name || !num_parents || !parent_names)
+		return ERR_PTR(-EINVAL);
+
+	master = xzalloc(sizeof(*master));
+
+	master->clk.name = name;
+	master->clk.ops = &master_ops;
+	memcpy(master->parents, parent_names, parent_names_size);
+	master->clk.parent_names = master->parents;
+	master->clk.num_parents = num_parents;
+
+	master->layout = layout;
+	master->characteristics = characteristics;
+	master->regmap = regmap;
+
+	ret = clk_register(&master->clk);
+	if (ret) {
+		kfree(master);
+		return ERR_PTR(ret);
+	}
+
+	return &master->clk;
+}
+
+
+static const struct clk_master_layout at91rm9200_master_layout = {
+	.mask = 0x31F,
+	.pres_shift = 2,
+};
+
+static const struct clk_master_layout at91sam9x5_master_layout = {
+	.mask = 0x373,
+	.pres_shift = 4,
+};
+
+
+static struct clk_master_characteristics *
+of_at91_clk_master_get_characteristics(struct device_node *np)
+{
+	struct clk_master_characteristics *characteristics;
+
+	characteristics = xzalloc(sizeof(*characteristics));
+
+	if (of_at91_get_clk_range(np, "atmel,clk-output-range", &characteristics->output))
+		goto out_free_characteristics;
+
+	of_property_read_u32_array(np, "atmel,clk-divisors",
+				   characteristics->divisors, 4);
+
+	characteristics->have_div3_pres =
+		of_property_read_bool(np, "atmel,master-clk-have-div3-pres");
+
+	return characteristics;
+
+out_free_characteristics:
+	kfree(characteristics);
+	return NULL;
+}
+
+static int
+of_at91_clk_master_setup(struct device_node *np,
+			 const struct clk_master_layout *layout)
+{
+	struct clk *clk;
+	unsigned int num_parents;
+	const char *parent_names[MASTER_SOURCE_MAX];
+	const char *name = np->name;
+	struct clk_master_characteristics *characteristics;
+	struct regmap *regmap;
+
+	num_parents = of_clk_get_parent_count(np);
+	if (num_parents == 0 || num_parents > MASTER_SOURCE_MAX)
+		return -EINVAL;
+
+	of_clk_parent_fill(np, parent_names, num_parents);
+
+	of_property_read_string(np, "clock-output-names", &name);
+
+	characteristics = of_at91_clk_master_get_characteristics(np);
+	if (!characteristics)
+		return -EINVAL;
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	clk = at91_clk_register_master(regmap, name, num_parents,
+				       parent_names, layout,
+				       characteristics);
+	if (IS_ERR(clk)) {
+		kfree(characteristics);
+		return PTR_ERR(clk);
+	}
+
+	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+
+static void __init of_at91rm9200_clk_master_setup(struct device_node *np)
+{
+	of_at91_clk_master_setup(np, &at91rm9200_master_layout);
+}
+CLK_OF_DECLARE(at91rm9200_clk_master, "atmel,at91rm9200-clk-master",
+	       of_at91rm9200_clk_master_setup);
+
+static void __init of_at91sam9x5_clk_master_setup(struct device_node *np)
+{
+	of_at91_clk_master_setup(np, &at91sam9x5_master_layout);
+}
+CLK_OF_DECLARE(at91sam9x5_clk_master, "atmel,at91sam9x5-clk-master",
+	       of_at91sam9x5_clk_master_setup);
diff --git a/drivers/clk/at91/clk-peripheral.c b/drivers/clk/at91/clk-peripheral.c
new file mode 100644
index 0000000..4a76c46
--- /dev/null
+++ b/drivers/clk/at91/clk-peripheral.c
@@ -0,0 +1,430 @@
+/*
+ *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
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
+
+#include "pmc.h"
+
+#define PERIPHERAL_MAX		64
+
+#define PERIPHERAL_AT91RM9200	0
+#define PERIPHERAL_AT91SAM9X5	1
+
+#define PERIPHERAL_ID_MIN	2
+#define PERIPHERAL_ID_MAX	31
+#define PERIPHERAL_MASK(id)	(1 << ((id) & PERIPHERAL_ID_MAX))
+
+#define PERIPHERAL_RSHIFT_MASK	0x3
+#define PERIPHERAL_RSHIFT(val)	(((val) >> 16) & PERIPHERAL_RSHIFT_MASK)
+
+#define PERIPHERAL_MAX_SHIFT	3
+
+struct clk_peripheral {
+	struct clk clk;
+	struct regmap *regmap;
+	u32 id;
+	const char *parent;
+};
+
+#define to_clk_peripheral(clk) container_of(clk, struct clk_peripheral, clk)
+
+struct clk_sam9x5_peripheral {
+	struct clk clk;
+	struct regmap *regmap;
+	struct clk_range range;
+	u32 id;
+	u32 div;
+	bool auto_div;
+	const char *parent;
+};
+
+#define to_clk_sam9x5_peripheral(clk) \
+	container_of(clk, struct clk_sam9x5_peripheral, clk)
+
+static int clk_peripheral_enable(struct clk *clk)
+{
+	struct clk_peripheral *periph = to_clk_peripheral(clk);
+	int offset = AT91_PMC_PCER;
+	u32 id = periph->id;
+
+	if (id < PERIPHERAL_ID_MIN)
+		return 0;
+	if (id > PERIPHERAL_ID_MAX)
+		offset = AT91_PMC_PCER1;
+	regmap_write(periph->regmap, offset, PERIPHERAL_MASK(id));
+
+	return 0;
+}
+
+static void clk_peripheral_disable(struct clk *clk)
+{
+	struct clk_peripheral *periph = to_clk_peripheral(clk);
+	int offset = AT91_PMC_PCDR;
+	u32 id = periph->id;
+
+	if (id < PERIPHERAL_ID_MIN)
+		return;
+	if (id > PERIPHERAL_ID_MAX)
+		offset = AT91_PMC_PCDR1;
+	regmap_write(periph->regmap, offset, PERIPHERAL_MASK(id));
+}
+
+static int clk_peripheral_is_enabled(struct clk *clk)
+{
+	struct clk_peripheral *periph = to_clk_peripheral(clk);
+	int offset = AT91_PMC_PCSR;
+	unsigned int status;
+	u32 id = periph->id;
+
+	if (id < PERIPHERAL_ID_MIN)
+		return 1;
+	if (id > PERIPHERAL_ID_MAX)
+		offset = AT91_PMC_PCSR1;
+	regmap_read(periph->regmap, offset, &status);
+
+	return status & PERIPHERAL_MASK(id) ? 1 : 0;
+}
+
+static const struct clk_ops peripheral_ops = {
+	.enable = clk_peripheral_enable,
+	.disable = clk_peripheral_disable,
+	.is_enabled = clk_peripheral_is_enabled,
+};
+
+static struct clk *
+at91_clk_register_peripheral(struct regmap *regmap, const char *name,
+			     const char *parent_name, u32 id)
+{
+	int ret;
+	struct clk_peripheral *periph;
+
+	if (!name || !parent_name || id > PERIPHERAL_ID_MAX)
+		return ERR_PTR(-EINVAL);
+
+	periph = xzalloc(sizeof(*periph));
+
+	periph->clk.name = name;
+	periph->clk.ops = &peripheral_ops;
+
+	if (parent_name) {
+		periph->parent = parent_name;
+		periph->clk.parent_names = &periph->parent;
+		periph->clk.num_parents = 1;
+	}
+
+	periph->id = id;
+	periph->regmap = regmap;
+
+	ret = clk_register(&periph->clk);
+	if (ret) {
+		kfree(periph);
+		return ERR_PTR(ret);
+	}
+
+	return &periph->clk;
+}
+
+static void clk_sam9x5_peripheral_autodiv(struct clk_sam9x5_peripheral *periph)
+{
+	struct clk *parent;
+	unsigned long parent_rate;
+	int shift = 0;
+
+	if (!periph->auto_div)
+		return;
+
+	if (periph->range.max) {
+		parent = clk_get_parent(&periph->clk);
+		parent_rate = clk_get_rate(parent);
+		if (!parent_rate)
+			return;
+
+		for (; shift < PERIPHERAL_MAX_SHIFT; shift++) {
+			if (parent_rate >> shift <= periph->range.max)
+				break;
+		}
+	}
+
+	periph->auto_div = false;
+	periph->div = shift;
+}
+
+static int clk_sam9x5_peripheral_enable(struct clk *clk)
+{
+	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(clk);
+
+	if (periph->id < PERIPHERAL_ID_MIN)
+		return 0;
+
+	regmap_write(periph->regmap, AT91_PMC_PCR,
+		     (periph->id & AT91_PMC_PCR_PID_MASK));
+	regmap_write_bits(periph->regmap, AT91_PMC_PCR,
+			  AT91_PMC_PCR_DIV_MASK | AT91_PMC_PCR_CMD |
+			  AT91_PMC_PCR_EN,
+			  AT91_PMC_PCR_DIV(periph->div) |
+			  AT91_PMC_PCR_CMD |
+			  AT91_PMC_PCR_EN);
+
+	return 0;
+}
+
+static void clk_sam9x5_peripheral_disable(struct clk *clk)
+{
+	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(clk);
+
+	if (periph->id < PERIPHERAL_ID_MIN)
+		return;
+
+	regmap_write(periph->regmap, AT91_PMC_PCR,
+		     (periph->id & AT91_PMC_PCR_PID_MASK));
+	regmap_write_bits(periph->regmap, AT91_PMC_PCR,
+			  AT91_PMC_PCR_EN | AT91_PMC_PCR_CMD,
+			  AT91_PMC_PCR_CMD);
+}
+
+static int clk_sam9x5_peripheral_is_enabled(struct clk *clk)
+{
+	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(clk);
+	unsigned int status;
+
+	if (periph->id < PERIPHERAL_ID_MIN)
+		return 1;
+
+	regmap_write(periph->regmap, AT91_PMC_PCR,
+		     (periph->id & AT91_PMC_PCR_PID_MASK));
+	regmap_read(periph->regmap, AT91_PMC_PCR, &status);
+
+	return status & AT91_PMC_PCR_EN ? 1 : 0;
+}
+
+static unsigned long
+clk_sam9x5_peripheral_recalc_rate(struct clk *clk,
+				  unsigned long parent_rate)
+{
+	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(clk);
+	unsigned int status;
+
+	if (periph->id < PERIPHERAL_ID_MIN)
+		return parent_rate;
+
+	regmap_write(periph->regmap, AT91_PMC_PCR,
+		     (periph->id & AT91_PMC_PCR_PID_MASK));
+	regmap_read(periph->regmap, AT91_PMC_PCR, &status);
+
+	if (status & AT91_PMC_PCR_EN) {
+		periph->div = PERIPHERAL_RSHIFT(status);
+		periph->auto_div = false;
+	} else {
+		clk_sam9x5_peripheral_autodiv(periph);
+	}
+
+	return parent_rate >> periph->div;
+}
+
+static long clk_sam9x5_peripheral_round_rate(struct clk *clk,
+					     unsigned long rate,
+					     unsigned long *parent_rate)
+{
+	int shift = 0;
+	unsigned long best_rate;
+	unsigned long best_diff;
+	unsigned long cur_rate = *parent_rate;
+	unsigned long cur_diff;
+	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(clk);
+
+	if (periph->id < PERIPHERAL_ID_MIN || !periph->range.max)
+		return *parent_rate;
+
+	if (periph->range.max) {
+		for (; shift <= PERIPHERAL_MAX_SHIFT; shift++) {
+			cur_rate = *parent_rate >> shift;
+			if (cur_rate <= periph->range.max)
+				break;
+		}
+	}
+
+	if (rate >= cur_rate)
+		return cur_rate;
+
+	best_diff = cur_rate - rate;
+	best_rate = cur_rate;
+	for (; shift <= PERIPHERAL_MAX_SHIFT; shift++) {
+		cur_rate = *parent_rate >> shift;
+		if (cur_rate < rate)
+			cur_diff = rate - cur_rate;
+		else
+			cur_diff = cur_rate - rate;
+
+		if (cur_diff < best_diff) {
+			best_diff = cur_diff;
+			best_rate = cur_rate;
+		}
+
+		if (!best_diff || cur_rate < rate)
+			break;
+	}
+
+	return best_rate;
+}
+
+static int clk_sam9x5_peripheral_set_rate(struct clk *clk,
+					  unsigned long rate,
+					  unsigned long parent_rate)
+{
+	int shift;
+	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(clk);
+	if (periph->id < PERIPHERAL_ID_MIN || !periph->range.max) {
+		if (parent_rate == rate)
+			return 0;
+		else
+			return -EINVAL;
+	}
+
+	if (periph->range.max && rate > periph->range.max)
+		return -EINVAL;
+
+	for (shift = 0; shift <= PERIPHERAL_MAX_SHIFT; shift++) {
+		if (parent_rate >> shift == rate) {
+			periph->auto_div = false;
+			periph->div = shift;
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
+static const struct clk_ops sam9x5_peripheral_ops = {
+	.enable = clk_sam9x5_peripheral_enable,
+	.disable = clk_sam9x5_peripheral_disable,
+	.is_enabled = clk_sam9x5_peripheral_is_enabled,
+	.recalc_rate = clk_sam9x5_peripheral_recalc_rate,
+	.round_rate = clk_sam9x5_peripheral_round_rate,
+	.set_rate = clk_sam9x5_peripheral_set_rate,
+};
+
+static struct clk *
+at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
+				    const char *name, const char *parent_name,
+				    u32 id, const struct clk_range *range)
+{
+	int ret;
+	struct clk_sam9x5_peripheral *periph;
+
+	if (!name || !parent_name)
+		return ERR_PTR(-EINVAL);
+
+	periph = xzalloc(sizeof(*periph));
+
+	periph->clk.name = name;
+	periph->clk.ops = &sam9x5_peripheral_ops;
+
+	if (parent_name) {
+		periph->parent = parent_name;
+		periph->clk.parent_names = &periph->parent;
+		periph->clk.num_parents = 1;
+	}
+
+	periph->id = id;
+	periph->div = 0;
+	periph->regmap = regmap;
+	periph->auto_div = true;
+	periph->range = *range;
+
+	ret = clk_register(&periph->clk);
+	if (ret) {
+		kfree(periph);
+		return ERR_PTR(ret);
+	}
+
+	clk_sam9x5_peripheral_autodiv(periph);
+
+	return &periph->clk;
+}
+
+static int
+of_at91_clk_periph_setup(struct device_node *np, u8 type)
+{
+	int num;
+	u32 id;
+	struct clk *clk;
+	const char *parent_name;
+	const char *name;
+	struct device_node *periphclknp;
+	struct regmap *regmap;
+
+	parent_name = of_clk_get_parent_name(np, 0);
+	if (!parent_name)
+		return -ENOENT;
+
+	num = of_get_child_count(np);
+	if (!num || num > PERIPHERAL_MAX)
+		return -EINVAL;
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	for_each_child_of_node(np, periphclknp) {
+		if (of_property_read_u32(periphclknp, "reg", &id))
+			continue;
+
+		if (id >= PERIPHERAL_MAX)
+			continue;
+
+		if (of_property_read_string(np, "clock-output-names", &name))
+			name = periphclknp->name;
+
+		if (type == PERIPHERAL_AT91RM9200) {
+			clk = at91_clk_register_peripheral(regmap, name,
+							   parent_name, id);
+		} else {
+			struct clk_range range = CLK_RANGE(0, 0);
+
+			of_at91_get_clk_range(periphclknp,
+					      "atmel,clk-output-range",
+					      &range);
+
+			clk = at91_clk_register_sam9x5_peripheral(regmap,
+								  name,
+								  parent_name,
+								  id, &range);
+		}
+
+		if (IS_ERR(clk))
+			continue;
+
+		of_clk_add_provider(periphclknp, of_clk_src_simple_get, clk);
+	}
+
+	return 0;
+}
+
+static int of_at91rm9200_clk_periph_setup(struct device_node *np)
+{
+	return of_at91_clk_periph_setup(np, PERIPHERAL_AT91RM9200);
+}
+CLK_OF_DECLARE(at91rm9200_clk_periph, "atmel,at91rm9200-clk-peripheral",
+	       of_at91rm9200_clk_periph_setup);
+
+static int of_at91sam9x5_clk_periph_setup(struct device_node *np)
+{
+	return of_at91_clk_periph_setup(np, PERIPHERAL_AT91SAM9X5);
+}
+CLK_OF_DECLARE(at91sam9x5_clk_periph, "atmel,at91sam9x5-clk-peripheral",
+	       of_at91sam9x5_clk_periph_setup);
+
diff --git a/drivers/clk/at91/clk-pll.c b/drivers/clk/at91/clk-pll.c
new file mode 100644
index 0000000..cf38742
--- /dev/null
+++ b/drivers/clk/at91/clk-pll.c
@@ -0,0 +1,516 @@
+/*
+ *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
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
+
+#include "pmc.h"
+
+#define PLL_STATUS_MASK(id)	(1 << (1 + (id)))
+#define PLL_REG(id)		(AT91_CKGR_PLLAR + ((id) * 4))
+#define PLL_DIV_MASK		0xff
+#define PLL_DIV_MAX		PLL_DIV_MASK
+#define PLL_DIV(reg)		((reg) & PLL_DIV_MASK)
+#define PLL_MUL(reg, layout)	(((reg) >> (layout)->mul_shift) & \
+				 (layout)->mul_mask)
+#define PLL_MUL_MIN		2
+#define PLL_MUL_MASK(layout)	((layout)->mul_mask)
+#define PLL_MUL_MAX(layout)	(PLL_MUL_MASK(layout) + 1)
+#define PLL_ICPR_SHIFT(id)	((id) * 16)
+#define PLL_ICPR_MASK(id)	(0xffff << PLL_ICPR_SHIFT(id))
+#define PLL_MAX_COUNT		0x3f
+#define PLL_COUNT_SHIFT		8
+#define PLL_OUT_SHIFT		14
+#define PLL_MAX_ID		1
+
+struct clk_pll_characteristics {
+	struct clk_range input;
+	int num_output;
+	struct clk_range *output;
+	u16 *icpll;
+	u8 *out;
+};
+
+struct clk_pll_layout {
+	u32 pllr_mask;
+	u16 mul_mask;
+	u8 mul_shift;
+};
+
+#define to_clk_pll(clk) container_of(clk, struct clk_pll, clk)
+
+struct clk_pll {
+	struct clk clk;
+	struct regmap *regmap;
+	u8 id;
+	u8 div;
+	u8 range;
+	u16 mul;
+	const struct clk_pll_layout *layout;
+	const struct clk_pll_characteristics *characteristics;
+	const char *parent;
+};
+
+static inline bool clk_pll_ready(struct regmap *regmap, int id)
+{
+	unsigned int status;
+
+	regmap_read(regmap, AT91_PMC_SR, &status);
+
+	return status & PLL_STATUS_MASK(id) ? 1 : 0;
+}
+
+static int clk_pll_enable(struct clk *clk)
+{
+	struct clk_pll *pll = to_clk_pll(clk);
+	struct regmap *regmap = pll->regmap;
+	const struct clk_pll_layout *layout = pll->layout;
+	const struct clk_pll_characteristics *characteristics =
+							pll->characteristics;
+	u8 id = pll->id;
+	u32 mask = PLL_STATUS_MASK(id);
+	int offset = PLL_REG(id);
+	u8 out = 0;
+	unsigned int pllr;
+	unsigned int status;
+	u8 div;
+	u16 mul;
+
+	regmap_read(regmap, offset, &pllr);
+	div = PLL_DIV(pllr);
+	mul = PLL_MUL(pllr, layout);
+
+	regmap_read(regmap, AT91_PMC_SR, &status);
+	if ((status & mask) &&
+	    (div == pll->div && mul == pll->mul))
+		return 0;
+
+	if (characteristics->out)
+		out = characteristics->out[pll->range];
+
+	if (characteristics->icpll)
+		regmap_write_bits(regmap, AT91_PMC_PLLICPR, PLL_ICPR_MASK(id),
+			characteristics->icpll[pll->range] << PLL_ICPR_SHIFT(id));
+
+	regmap_write_bits(regmap, offset, layout->pllr_mask,
+			  pll->div | (PLL_MAX_COUNT << PLL_COUNT_SHIFT) |
+			  (out << PLL_OUT_SHIFT) |
+			  ((pll->mul & layout->mul_mask) << layout->mul_shift));
+
+	while (!clk_pll_ready(regmap, pll->id))
+		barrier();
+
+	return 0;
+}
+
+static int clk_pll_is_enabled(struct clk *clk)
+{
+	struct clk_pll *pll = to_clk_pll(clk);
+
+	return clk_pll_ready(pll->regmap, pll->id);
+}
+
+static void clk_pll_disable(struct clk *clk)
+{
+	struct clk_pll *pll = to_clk_pll(clk);
+	unsigned int mask = pll->layout->pllr_mask;
+
+	regmap_write_bits(pll->regmap, PLL_REG(pll->id), mask, ~mask);
+}
+
+static unsigned long clk_pll_recalc_rate(struct clk *clk,
+					 unsigned long parent_rate)
+{
+	struct clk_pll *pll = to_clk_pll(clk);
+	unsigned int pllr;
+	u16 mul;
+	u8 div;
+
+	regmap_read(pll->regmap, PLL_REG(pll->id), &pllr);
+
+	div = PLL_DIV(pllr);
+	mul = PLL_MUL(pllr, pll->layout);
+
+	if (!div || !mul)
+		return 0;
+
+	return (parent_rate / div) * (mul + 1);
+}
+
+static long clk_pll_get_best_div_mul(struct clk_pll *pll, unsigned long rate,
+				     unsigned long parent_rate,
+				     u32 *div, u32 *mul,
+				     u32 *index) {
+	const struct clk_pll_layout *layout = pll->layout;
+	const struct clk_pll_characteristics *characteristics =
+							pll->characteristics;
+	unsigned long bestremainder = ULONG_MAX;
+	unsigned long maxdiv, mindiv, tmpdiv;
+	long bestrate = -ERANGE;
+	unsigned long bestdiv;
+	unsigned long bestmul;
+	int i = 0;
+
+	/* Check if parent_rate is a valid input rate */
+	if (parent_rate < characteristics->input.min)
+		return -ERANGE;
+
+	/*
+	 * Calculate minimum divider based on the minimum multiplier, the
+	 * parent_rate and the requested rate.
+	 * Should always be 2 according to the input and output characteristics
+	 * of the PLL blocks.
+	 */
+	mindiv = (parent_rate * PLL_MUL_MIN) / rate;
+	if (!mindiv)
+		mindiv = 1;
+
+	if (parent_rate > characteristics->input.max) {
+		tmpdiv = DIV_ROUND_UP(parent_rate, characteristics->input.max);
+		if (tmpdiv > PLL_DIV_MAX)
+			return -ERANGE;
+
+		if (tmpdiv > mindiv)
+			mindiv = tmpdiv;
+	}
+
+	/*
+	 * Calculate the maximum divider which is limited by PLL register
+	 * layout (limited by the MUL or DIV field size).
+	 */
+	maxdiv = DIV_ROUND_UP(parent_rate * PLL_MUL_MAX(layout), rate);
+	if (maxdiv > PLL_DIV_MAX)
+		maxdiv = PLL_DIV_MAX;
+
+	/*
+	 * Iterate over the acceptable divider values to find the best
+	 * divider/multiplier pair (the one that generates the closest
+	 * rate to the requested one).
+	 */
+	for (tmpdiv = mindiv; tmpdiv <= maxdiv; tmpdiv++) {
+		unsigned long remainder;
+		unsigned long tmprate;
+		unsigned long tmpmul;
+
+		/*
+		 * Calculate the multiplier associated with the current
+		 * divider that provide the closest rate to the requested one.
+		 */
+		tmpmul = DIV_ROUND_CLOSEST(rate, parent_rate / tmpdiv);
+		tmprate = (parent_rate / tmpdiv) * tmpmul;
+		if (tmprate > rate)
+			remainder = tmprate - rate;
+		else
+			remainder = rate - tmprate;
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
+		}
+
+		/*
+		 * We've found a perfect match!
+		 * Stop searching now and use this multiplier/divider pair.
+		 */
+		if (!remainder)
+			break;
+	}
+
+	/* We haven't found any multiplier/divider pair => return -ERANGE */
+	if (bestrate < 0)
+		return bestrate;
+
+	/* Check if bestrate is a valid output rate  */
+	for (i = 0; i < characteristics->num_output; i++) {
+		if (bestrate >= characteristics->output[i].min &&
+		    bestrate <= characteristics->output[i].max)
+			break;
+	}
+
+	if (i >= characteristics->num_output)
+		return -ERANGE;
+
+	if (div)
+		*div = bestdiv;
+	if (mul)
+		*mul = bestmul - 1;
+	if (index)
+		*index = i;
+
+	return bestrate;
+}
+
+static long clk_pll_round_rate(struct clk *clk, unsigned long rate,
+			       unsigned long *parent_rate)
+{
+	struct clk_pll *pll = to_clk_pll(clk);
+
+	return clk_pll_get_best_div_mul(pll, rate, *parent_rate,
+					NULL, NULL, NULL);
+}
+
+static int clk_pll_set_rate(struct clk *clk, unsigned long rate,
+			    unsigned long parent_rate)
+{
+	struct clk_pll *pll = to_clk_pll(clk);
+	long ret;
+	u32 div;
+	u32 mul;
+	u32 index;
+
+	ret = clk_pll_get_best_div_mul(pll, rate, parent_rate,
+				       &div, &mul, &index);
+	if (ret < 0)
+		return ret;
+
+	pll->range = index;
+	pll->div = div;
+	pll->mul = mul;
+
+	return 0;
+}
+
+static const struct clk_ops pll_ops = {
+	.enable = clk_pll_enable,
+	.disable = clk_pll_disable,
+	.is_enabled = clk_pll_is_enabled,
+	.recalc_rate = clk_pll_recalc_rate,
+	.round_rate = clk_pll_round_rate,
+	.set_rate = clk_pll_set_rate,
+};
+
+static struct clk *
+at91_clk_register_pll(struct regmap *regmap, const char *name,
+		      const char *parent_name, u8 id,
+		      const struct clk_pll_layout *layout,
+		      const struct clk_pll_characteristics *characteristics)
+{
+	struct clk_pll *pll;
+	int offset = PLL_REG(id);
+	unsigned int pllr;
+	int ret;
+
+	if (id > PLL_MAX_ID)
+		return ERR_PTR(-EINVAL);
+
+	pll = xzalloc(sizeof(*pll));
+
+	pll->parent = parent_name;
+	pll->clk.name = name;
+	pll->clk.ops = &pll_ops;
+	pll->clk.parent_names = &pll->parent;
+	pll->clk.num_parents = 1;
+
+	/* init.flags = CLK_SET_RATE_GATE; */
+
+	pll->id = id;
+	pll->layout = layout;
+	pll->characteristics = characteristics;
+	pll->regmap = regmap;
+	regmap_read(regmap, offset, &pllr);
+	pll->div = PLL_DIV(pllr);
+	pll->mul = PLL_MUL(pllr, layout);
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
+
+static const struct clk_pll_layout at91rm9200_pll_layout = {
+	.pllr_mask = 0x7FFFFFF,
+	.mul_shift = 16,
+	.mul_mask = 0x7FF,
+};
+
+static const struct clk_pll_layout at91sam9g45_pll_layout = {
+	.pllr_mask = 0xFFFFFF,
+	.mul_shift = 16,
+	.mul_mask = 0xFF,
+};
+
+static const struct clk_pll_layout at91sam9g20_pllb_layout = {
+	.pllr_mask = 0x3FFFFF,
+	.mul_shift = 16,
+	.mul_mask = 0x3F,
+};
+
+static const struct clk_pll_layout sama5d3_pll_layout = {
+	.pllr_mask = 0x1FFFFFF,
+	.mul_shift = 18,
+	.mul_mask = 0x7F,
+};
+
+
+static struct clk_pll_characteristics *
+of_at91_clk_pll_get_characteristics(struct device_node *np)
+{
+	int i;
+	int offset;
+	u32 tmp;
+	int num_output;
+	u32 num_cells;
+	struct clk_range input;
+	struct clk_range *output;
+	u8 *out = NULL;
+	u16 *icpll = NULL;
+	struct clk_pll_characteristics *characteristics;
+
+	if (of_at91_get_clk_range(np, "atmel,clk-input-range", &input))
+		return NULL;
+
+	if (of_property_read_u32(np, "#atmel,pll-clk-output-range-cells",
+				 &num_cells))
+		return NULL;
+
+	if (num_cells < 2 || num_cells > 4)
+		return NULL;
+
+	if (!of_get_property(np, "atmel,pll-clk-output-ranges", &tmp))
+		return NULL;
+	num_output = tmp / (sizeof(u32) * num_cells);
+
+	characteristics = xzalloc(sizeof(*characteristics));
+	output = xzalloc(sizeof(*output) * num_output);
+
+	if (num_cells > 2)
+		out = xzalloc(sizeof(*out) * num_output);
+
+	if (num_cells > 3)
+		icpll = xzalloc(sizeof(*icpll) * num_output);
+
+
+	for (i = 0; i < num_output; i++) {
+		offset = i * num_cells;
+		if (of_property_read_u32_index(np,
+					       "atmel,pll-clk-output-ranges",
+					       offset, &tmp))
+			goto out_free_output;
+		output[i].min = tmp;
+		if (of_property_read_u32_index(np,
+					       "atmel,pll-clk-output-ranges",
+					       offset + 1, &tmp))
+			goto out_free_output;
+		output[i].max = tmp;
+
+		if (num_cells == 2)
+			continue;
+
+		if (of_property_read_u32_index(np,
+					       "atmel,pll-clk-output-ranges",
+					       offset + 2, &tmp))
+			goto out_free_output;
+		out[i] = tmp;
+
+		if (num_cells == 3)
+			continue;
+
+		if (of_property_read_u32_index(np,
+					       "atmel,pll-clk-output-ranges",
+					       offset + 3, &tmp))
+			goto out_free_output;
+		icpll[i] = tmp;
+	}
+
+	characteristics->input = input;
+	characteristics->num_output = num_output;
+	characteristics->output = output;
+	characteristics->out = out;
+	characteristics->icpll = icpll;
+	return characteristics;
+
+out_free_output:
+	kfree(icpll);
+	kfree(out);
+	kfree(output);
+	kfree(characteristics);
+	return NULL;
+}
+
+static int
+of_at91_clk_pll_setup(struct device_node *np,
+		      const struct clk_pll_layout *layout)
+{
+	u32 id;
+	struct clk *clk;
+	struct regmap *regmap;
+	const char *parent_name;
+	const char *name = np->name;
+	struct clk_pll_characteristics *characteristics;
+
+	if (of_property_read_u32(np, "reg", &id))
+		return -EINVAL;
+
+	parent_name = of_clk_get_parent_name(np, 0);
+
+	of_property_read_string(np, "clock-output-names", &name);
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	characteristics = of_at91_clk_pll_get_characteristics(np);
+	if (!characteristics)
+		return -EINVAL;
+
+	clk = at91_clk_register_pll(regmap, name, parent_name, id, layout,
+				    characteristics);
+	if (IS_ERR(clk)) {
+		kfree(characteristics);
+		return PTR_ERR(clk);
+	}
+	
+	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+
+static int of_at91rm9200_clk_pll_setup(struct device_node *np)
+{
+	return of_at91_clk_pll_setup(np, &at91rm9200_pll_layout);
+}
+CLK_OF_DECLARE(at91rm9200_clk_pll, "atmel,at91rm9200-clk-pll",
+	       of_at91rm9200_clk_pll_setup);
+
+static int of_at91sam9g45_clk_pll_setup(struct device_node *np)
+{
+	return of_at91_clk_pll_setup(np, &at91sam9g45_pll_layout);
+}
+CLK_OF_DECLARE(at91sam9g45_clk_pll, "atmel,at91sam9g45-clk-pll",
+	       of_at91sam9g45_clk_pll_setup);
+
+static int of_at91sam9g20_clk_pllb_setup(struct device_node *np)
+{
+	return of_at91_clk_pll_setup(np, &at91sam9g20_pllb_layout);
+}
+CLK_OF_DECLARE(at91sam9g20_clk_pllb, "atmel,at91sam9g20-clk-pllb",
+	       of_at91sam9g20_clk_pllb_setup);
+
+static int of_sama5d3_clk_pll_setup(struct device_node *np)
+{
+	return of_at91_clk_pll_setup(np, &sama5d3_pll_layout);
+}
+CLK_OF_DECLARE(sama5d3_clk_pll, "atmel,sama5d3-clk-pll",
+	       of_sama5d3_clk_pll_setup);
diff --git a/drivers/clk/at91/clk-plldiv.c b/drivers/clk/at91/clk-plldiv.c
new file mode 100644
index 0000000..917108e
--- /dev/null
+++ b/drivers/clk/at91/clk-plldiv.c
@@ -0,0 +1,135 @@
+/*
+ *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
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
+
+#include "pmc.h"
+
+#define to_clk_plldiv(hw) container_of(clk, struct clk_plldiv, clk)
+
+struct clk_plldiv {
+	struct clk clk;
+	struct regmap *regmap;
+	const char *parent;
+};
+
+static unsigned long clk_plldiv_recalc_rate(struct clk *clk,
+					    unsigned long parent_rate)
+{
+	struct clk_plldiv *plldiv = to_clk_plldiv(clk);
+	unsigned int mckr;
+
+	regmap_read(plldiv->regmap, AT91_PMC_MCKR, &mckr);
+
+	if (mckr & AT91_PMC_PLLADIV2)
+		return parent_rate / 2;
+
+	return parent_rate;
+}
+
+static long clk_plldiv_round_rate(struct clk *clk, unsigned long rate,
+				  unsigned long *parent_rate)
+{
+	unsigned long div;
+
+	if (rate > *parent_rate)
+		return *parent_rate;
+	div = *parent_rate / 2;
+	if (rate < div)
+		return div;
+
+	if (rate - div < *parent_rate - rate)
+		return div;
+
+	return *parent_rate;
+}
+
+static int clk_plldiv_set_rate(struct clk *clk, unsigned long rate,
+			       unsigned long parent_rate)
+{
+	struct clk_plldiv *plldiv = to_clk_plldiv(clk);
+
+	if ((parent_rate != rate) && (parent_rate / 2 != rate))
+		return -EINVAL;
+
+	regmap_write_bits(plldiv->regmap, AT91_PMC_MCKR, AT91_PMC_PLLADIV2,
+			  parent_rate != rate ? AT91_PMC_PLLADIV2 : 0);
+
+	return 0;
+}
+
+static const struct clk_ops plldiv_ops = {
+	.recalc_rate = clk_plldiv_recalc_rate,
+	.round_rate = clk_plldiv_round_rate,
+	.set_rate = clk_plldiv_set_rate,
+};
+
+static struct clk *
+at91_clk_register_plldiv(struct regmap *regmap, const char *name,
+			 const char *parent_name)
+{
+	int ret;
+	struct clk_plldiv *plldiv;
+
+	plldiv = xzalloc(sizeof(*plldiv));
+
+	plldiv->clk.name = name;
+	plldiv->clk.ops  = &plldiv_ops;
+
+	if (parent_name) {
+		plldiv->parent = parent_name;
+		plldiv->clk.parent_names = &plldiv->parent;
+		plldiv->clk.num_parents = 1;
+	}
+
+	/* init.flags = CLK_SET_RATE_GATE; */
+
+	plldiv->regmap = regmap;
+
+	ret = clk_register(&plldiv->clk);
+	if (ret) {
+		kfree(plldiv);
+		return ERR_PTR(ret);
+	}
+
+	return &plldiv->clk;
+}
+
+static int
+of_at91sam9x5_clk_plldiv_setup(struct device_node *np)
+{
+	struct clk *clk;
+	const char *parent_name;
+	const char *name = np->name;
+	struct regmap *regmap;
+
+	parent_name = of_clk_get_parent_name(np, 0);
+
+	of_property_read_string(np, "clock-output-names", &name);
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	clk = at91_clk_register_plldiv(regmap, name, parent_name);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+CLK_OF_DECLARE(at91sam9x5_clk_plldiv, "atmel,at91sam9x5-clk-plldiv",
+	       of_at91sam9x5_clk_plldiv_setup);
diff --git a/drivers/clk/at91/clk-programmable.c b/drivers/clk/at91/clk-programmable.c
new file mode 100644
index 0000000..ddb18c0
--- /dev/null
+++ b/drivers/clk/at91/clk-programmable.c
@@ -0,0 +1,254 @@
+/*
+ *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <of.h>
+#include <io.h>
+#include <linux/list.h>
+#include <linux/clk.h>
+#include <linux/clk/at91_pmc.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+
+#include "pmc.h"
+
+#define PROG_SOURCE_MAX		5
+#define PROG_ID_MAX		7
+
+#define PROG_STATUS_MASK(id)	(1 << ((id) + 8))
+#define PROG_PRES_MASK		0x7
+#define PROG_PRES(layout, pckr)	((pckr >> layout->pres_shift) & PROG_PRES_MASK)
+#define PROG_MAX_RM9200_CSS	3
+
+struct clk_programmable_layout {
+	u8 pres_shift;
+	u8 css_mask;
+	u8 have_slck_mck;
+};
+
+struct clk_programmable {
+	struct clk clk;
+	struct regmap *regmap;
+	u8 id;
+	const struct clk_programmable_layout *layout;
+	const char *parent_names[PROG_SOURCE_MAX];
+};
+
+#define to_clk_programmable(clk) container_of(clk, struct clk_programmable, clk)
+
+static unsigned long clk_programmable_recalc_rate(struct clk *clk,
+						  unsigned long parent_rate)
+{
+	struct clk_programmable *prog = to_clk_programmable(clk);
+	unsigned int pckr;
+
+	regmap_read(prog->regmap, AT91_PMC_PCKR(prog->id), &pckr);
+
+	return parent_rate >> PROG_PRES(prog->layout, pckr);
+}
+
+static int clk_programmable_set_parent(struct clk *clk, u8 index)
+{
+	struct clk_programmable *prog = to_clk_programmable(clk);
+	const struct clk_programmable_layout *layout = prog->layout;
+	unsigned int mask = layout->css_mask;
+	unsigned int pckr = index;
+
+	if (layout->have_slck_mck)
+		mask |= AT91_PMC_CSSMCK_MCK;
+
+	if (index > layout->css_mask) {
+		if (index > PROG_MAX_RM9200_CSS && !layout->have_slck_mck)
+			return -EINVAL;
+
+		pckr |= AT91_PMC_CSSMCK_MCK;
+	}
+
+	regmap_write_bits(prog->regmap, AT91_PMC_PCKR(prog->id), mask, pckr);
+
+	return 0;
+}
+
+static int clk_programmable_get_parent(struct clk *clk)
+{
+	struct clk_programmable *prog = to_clk_programmable(clk);
+	const struct clk_programmable_layout *layout = prog->layout;
+	unsigned int pckr;
+	u8 ret;
+
+	regmap_read(prog->regmap, AT91_PMC_PCKR(prog->id), &pckr);
+
+	ret = pckr & layout->css_mask;
+
+	if (layout->have_slck_mck && (pckr & AT91_PMC_CSSMCK_MCK) && !ret)
+		ret = PROG_MAX_RM9200_CSS + 1;
+
+	return ret;
+}
+
+static int clk_programmable_set_rate(struct clk *clk, unsigned long rate,
+				     unsigned long parent_rate)
+{
+	struct clk_programmable *prog = to_clk_programmable(clk);
+	const struct clk_programmable_layout *layout = prog->layout;
+	unsigned long div = parent_rate / rate;
+	unsigned int pckr;
+	int shift = 0;
+
+	regmap_read(prog->regmap, AT91_PMC_PCKR(prog->id), &pckr);
+
+	if (!div)
+		return -EINVAL;
+
+	shift = fls(div) - 1;
+
+	if (div != (1 << shift))
+		return -EINVAL;
+
+	if (shift >= PROG_PRES_MASK)
+		return -EINVAL;
+
+	regmap_write_bits(prog->regmap, AT91_PMC_PCKR(prog->id),
+			   PROG_PRES_MASK << layout->pres_shift,
+			   shift << layout->pres_shift);
+
+	return 0;
+}
+
+static const struct clk_ops programmable_ops = {
+	.recalc_rate = clk_programmable_recalc_rate,
+	.get_parent = clk_programmable_get_parent,
+	.set_parent = clk_programmable_set_parent,
+	.set_rate = clk_programmable_set_rate,
+};
+
+static struct clk *
+at91_clk_register_programmable(struct regmap *regmap,
+			       const char *name, const char **parent_names,
+			       u8 num_parents, u8 id,
+			       const struct clk_programmable_layout *layout)
+{
+	struct clk_programmable *prog;
+	int ret;
+
+	if (id > PROG_ID_MAX)
+		return ERR_PTR(-EINVAL);
+
+	prog = kzalloc(sizeof(*prog), GFP_KERNEL);
+	if (!prog)
+		return ERR_PTR(-ENOMEM);
+
+	prog->clk.name = name;
+	prog->clk.ops = &programmable_ops;
+	memcpy(prog->parent_names, parent_names,
+	       num_parents * sizeof(prog->parent_names[0]));
+	prog->clk.parent_names = &prog->parent_names[0];
+	prog->clk.num_parents = num_parents;
+	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE; */
+
+	prog->id = id;
+	prog->layout = layout;
+	prog->regmap = regmap;
+
+	ret = clk_register(&prog->clk);
+	if (ret) {
+		kfree(prog);
+		return ERR_PTR(ret);
+	}
+
+	return &prog->clk;
+}
+
+static const struct clk_programmable_layout at91rm9200_programmable_layout = {
+	.pres_shift = 2,
+	.css_mask = 0x3,
+	.have_slck_mck = 0,
+};
+
+static const struct clk_programmable_layout at91sam9g45_programmable_layout = {
+	.pres_shift = 2,
+	.css_mask = 0x3,
+	.have_slck_mck = 1,
+};
+
+static const struct clk_programmable_layout at91sam9x5_programmable_layout = {
+	.pres_shift = 4,
+	.css_mask = 0x7,
+	.have_slck_mck = 0,
+};
+
+static int
+of_at91_clk_prog_setup(struct device_node *np,
+		       const struct clk_programmable_layout *layout)
+{
+	int num;
+	u32 id;
+	struct clk *clk;
+	unsigned int num_parents;
+	const char *parent_names[PROG_SOURCE_MAX];
+	const char *name;
+	struct device_node *progclknp;
+	struct regmap *regmap;
+
+	num_parents = of_clk_get_parent_count(np);
+	if (num_parents == 0 || num_parents > PROG_SOURCE_MAX)
+		return -EINVAL;
+
+	of_clk_parent_fill(np, parent_names, num_parents);
+
+	num = of_get_child_count(np);
+	if (!num || num > (PROG_ID_MAX + 1))
+		return -EINVAL;
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	for_each_child_of_node(np, progclknp) {
+		if (of_property_read_u32(progclknp, "reg", &id))
+			continue;
+
+		if (of_property_read_string(np, "clock-output-names", &name))
+			name = progclknp->name;
+
+		clk = at91_clk_register_programmable(regmap, name,
+						     parent_names, num_parents,
+						     id, layout);
+		if (IS_ERR(clk))
+			continue;
+
+		of_clk_add_provider(progclknp, of_clk_src_simple_get, clk);
+	}
+
+	return 0;
+}
+
+
+static void __init of_at91rm9200_clk_prog_setup(struct device_node *np)
+{
+	of_at91_clk_prog_setup(np, &at91rm9200_programmable_layout);
+}
+CLK_OF_DECLARE(at91rm9200_clk_prog, "atmel,at91rm9200-clk-programmable",
+	       of_at91rm9200_clk_prog_setup);
+
+static int of_at91sam9g45_clk_prog_setup(struct device_node *np)
+{
+	return of_at91_clk_prog_setup(np, &at91sam9g45_programmable_layout);
+}
+CLK_OF_DECLARE(at91sam9g45_clk_prog, "atmel,at91sam9g45-clk-programmable",
+	       of_at91sam9g45_clk_prog_setup);
+
+static int of_at91sam9x5_clk_prog_setup(struct device_node *np)
+{
+	return of_at91_clk_prog_setup(np, &at91sam9x5_programmable_layout);
+}
+CLK_OF_DECLARE(at91sam9x5_clk_prog, "atmel,at91sam9x5-clk-programmable",
+	       of_at91sam9x5_clk_prog_setup);
diff --git a/drivers/clk/at91/clk-slow.c b/drivers/clk/at91/clk-slow.c
new file mode 100644
index 0000000..d4981e7
--- /dev/null
+++ b/drivers/clk/at91/clk-slow.c
@@ -0,0 +1,108 @@
+/*
+ * drivers/clk/at91/clk-slow.c
+ *
+ *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <of.h>
+#include <io.h>
+#include <linux/list.h>
+#include <linux/clk.h>
+#include <linux/clk/at91_pmc.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+
+#include "pmc.h"
+
+struct clk_sam9260_slow {
+	struct clk clk;
+	struct regmap *regmap;
+	const char *parent_names[2];
+};
+
+#define to_clk_sam9260_slow(clk) container_of(clk, struct clk_sam9260_slow, clk)
+
+static int clk_sam9260_slow_get_parent(struct clk *clk)
+{
+	struct clk_sam9260_slow *slowck = to_clk_sam9260_slow(clk);
+	unsigned int status;
+
+	regmap_read(slowck->regmap, AT91_PMC_SR, &status);
+
+	return status & AT91_PMC_OSCSEL ? 1 : 0;
+}
+
+static const struct clk_ops sam9260_slow_ops = {
+	.get_parent = clk_sam9260_slow_get_parent,
+};
+
+static struct clk * __init
+at91_clk_register_sam9260_slow(struct regmap *regmap,
+			       const char *name,
+			       const char **parent_names,
+			       int num_parents)
+{
+	struct clk_sam9260_slow *slowck;
+	int ret;
+
+	if (!name)
+		return ERR_PTR(-EINVAL);
+
+	if (!parent_names || !num_parents)
+		return ERR_PTR(-EINVAL);
+
+	slowck = xzalloc(sizeof(*slowck));
+	slowck->clk.name = name;
+	slowck->clk.ops = &sam9260_slow_ops;
+	memcpy(slowck->parent_names, parent_names,
+	       num_parents * sizeof(slowck->parent_names[0]));
+	slowck->clk.parent_names = slowck->parent_names;
+	slowck->clk.num_parents = num_parents;
+	slowck->regmap = regmap;
+
+	ret = clk_register(&slowck->clk);
+	if (ret) {
+		kfree(slowck);
+		return ERR_PTR(ret);
+	}
+
+	return &slowck->clk;
+}
+
+static int of_at91sam9260_clk_slow_setup(struct device_node *np)
+{
+	struct clk *clk;
+	const char *parent_names[2];
+	unsigned int num_parents;
+	const char *name = np->name;
+	struct regmap *regmap;
+
+	num_parents = of_clk_get_parent_count(np);
+	if (num_parents != 2)
+		return -EINVAL;
+
+	of_clk_parent_fill(np, parent_names, num_parents);
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	of_property_read_string(np, "clock-output-names", &name);
+
+	clk = at91_clk_register_sam9260_slow(regmap, name, parent_names,
+					     num_parents);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+
+CLK_OF_DECLARE(at91sam9260_clk_slow, "atmel,at91sam9260-clk-slow",
+	       of_at91sam9260_clk_slow_setup);
diff --git a/drivers/clk/at91/clk-smd.c b/drivers/clk/at91/clk-smd.c
new file mode 100644
index 0000000..0d72491
--- /dev/null
+++ b/drivers/clk/at91/clk-smd.c
@@ -0,0 +1,172 @@
+/*
+ *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <of.h>
+#include <io.h>
+#include <linux/list.h>
+#include <linux/clk.h>
+#include <linux/clk/at91_pmc.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+
+#include "pmc.h"
+
+#define SMD_SOURCE_MAX		2
+
+#define SMD_DIV_SHIFT		8
+#define SMD_MAX_DIV		0xf
+
+struct at91sam9x5_clk_smd {
+	struct clk clk;
+	struct regmap *regmap;
+	const char *parent_names[SMD_SOURCE_MAX];	
+};
+
+#define to_at91sam9x5_clk_smd(clk) \
+	container_of(clk, struct at91sam9x5_clk_smd, clk)
+
+static unsigned long at91sam9x5_clk_smd_recalc_rate(struct clk *clk,
+						    unsigned long parent_rate)
+{
+	struct at91sam9x5_clk_smd *smd = to_at91sam9x5_clk_smd(clk);
+	unsigned int smdr;
+	u8 smddiv;
+
+	regmap_read(smd->regmap, AT91_PMC_SMD, &smdr);
+	smddiv = (smdr & AT91_PMC_SMD_DIV) >> SMD_DIV_SHIFT;
+
+	return parent_rate / (smddiv + 1);
+}
+
+static long at91sam9x5_clk_smd_round_rate(struct clk *clk, unsigned long rate,
+					  unsigned long *parent_rate)
+{
+	unsigned long div;
+	unsigned long bestrate;
+	unsigned long tmp;
+
+	if (rate >= *parent_rate)
+		return *parent_rate;
+
+	div = *parent_rate / rate;
+	if (div > SMD_MAX_DIV)
+		return *parent_rate / (SMD_MAX_DIV + 1);
+
+	bestrate = *parent_rate / div;
+	tmp = *parent_rate / (div + 1);
+	if (bestrate - rate > rate - tmp)
+		bestrate = tmp;
+
+	return bestrate;
+}
+
+static int at91sam9x5_clk_smd_set_parent(struct clk *clk, u8 index)
+{
+	struct at91sam9x5_clk_smd *smd = to_at91sam9x5_clk_smd(clk);
+
+	if (index > 1)
+		return -EINVAL;
+
+	regmap_write_bits(smd->regmap, AT91_PMC_SMD, AT91_PMC_SMDS,
+			  index ? AT91_PMC_SMDS : 0);
+
+	return 0;
+}
+
+static int at91sam9x5_clk_smd_get_parent(struct clk *clk)
+{
+	struct at91sam9x5_clk_smd *smd = to_at91sam9x5_clk_smd(clk);
+	unsigned int smdr;
+
+	regmap_read(smd->regmap, AT91_PMC_SMD, &smdr);
+
+	return smdr & AT91_PMC_SMDS;
+}
+
+static int at91sam9x5_clk_smd_set_rate(struct clk *clk, unsigned long rate,
+				       unsigned long parent_rate)
+{
+	struct at91sam9x5_clk_smd *smd = to_at91sam9x5_clk_smd(clk);
+	unsigned long div = parent_rate / rate;
+
+	if (parent_rate % rate || div < 1 || div > (SMD_MAX_DIV + 1))
+		return -EINVAL;
+
+	regmap_write_bits(smd->regmap, AT91_PMC_SMD, AT91_PMC_SMD_DIV,
+			  (div - 1) << SMD_DIV_SHIFT);
+
+	return 0;
+}
+
+static const struct clk_ops at91sam9x5_smd_ops = {
+	.recalc_rate = at91sam9x5_clk_smd_recalc_rate,
+	.round_rate = at91sam9x5_clk_smd_round_rate,
+	.get_parent = at91sam9x5_clk_smd_get_parent,
+	.set_parent = at91sam9x5_clk_smd_set_parent,
+	.set_rate = at91sam9x5_clk_smd_set_rate,
+};
+
+static struct clk *
+at91sam9x5_clk_register_smd(struct regmap *regmap, const char *name,
+			    const char **parent_names, u8 num_parents)
+{
+	struct at91sam9x5_clk_smd *smd;
+	int ret;
+
+	smd = xzalloc(sizeof(*smd));
+	smd->clk.name = name;
+	smd->clk.ops = &at91sam9x5_smd_ops;
+	memcpy(smd->parent_names, parent_names,
+	       num_parents * sizeof(smd->parent_names[0]));
+	smd->clk.parent_names = smd->parent_names;
+	smd->clk.num_parents = num_parents;
+	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE; */
+	smd->regmap = regmap;
+
+	ret = clk_register(&smd->clk);
+	if (ret) {
+		kfree(smd);
+		return ERR_PTR(ret);
+	}
+
+	return &smd->clk;
+}
+
+static int of_at91sam9x5_clk_smd_setup(struct device_node *np)
+{
+	struct clk *clk;
+	unsigned int num_parents;
+	const char *parent_names[SMD_SOURCE_MAX];
+	const char *name = np->name;
+	struct regmap *regmap;
+
+	num_parents = of_clk_get_parent_count(np);
+	if (num_parents == 0 || num_parents > SMD_SOURCE_MAX)
+		return -EINVAL;
+
+	of_clk_parent_fill(np, parent_names, num_parents);
+
+	of_property_read_string(np, "clock-output-names", &name);
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	clk = at91sam9x5_clk_register_smd(regmap, name, parent_names,
+					  num_parents);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+CLK_OF_DECLARE(at91sam9x5_clk_smd, "atmel,at91sam9x5-clk-smd",
+	       of_at91sam9x5_clk_smd_setup);
diff --git a/drivers/clk/at91/clk-system.c b/drivers/clk/at91/clk-system.c
new file mode 100644
index 0000000..021930e
--- /dev/null
+++ b/drivers/clk/at91/clk-system.c
@@ -0,0 +1,160 @@
+/*
+ *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+#include <common.h>
+#include <clock.h>
+#include <of.h>
+#include <io.h>
+#include <linux/list.h>
+#include <linux/clk.h>
+#include <linux/clk/at91_pmc.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+
+#include "pmc.h"
+
+#define SYSTEM_MAX_ID		31
+
+#define SYSTEM_MAX_NAME_SZ	32
+
+#define to_clk_system(clk) container_of(clk, struct clk_system, clk)
+struct clk_system {
+	struct clk clk;
+	struct regmap *regmap;
+	u8 id;
+	const char *parent_name;
+};
+
+static inline int is_pck(int id)
+{
+	return (id >= 8) && (id <= 15);
+}
+
+static inline bool clk_system_ready(struct regmap *regmap, int id)
+{
+	unsigned int status;
+
+	regmap_read(regmap, AT91_PMC_SR, &status);
+
+	return status & (1 << id) ? 1 : 0;
+}
+
+static int clk_system_enable(struct clk *clk)
+{
+	struct clk_system *sys = to_clk_system(clk);
+
+	regmap_write(sys->regmap, AT91_PMC_SCER, 1 << sys->id);
+
+	if (!is_pck(sys->id))
+		return 0;
+
+	while (!clk_system_ready(sys->regmap, sys->id))
+		barrier();
+
+	return 0;
+}
+
+static void clk_system_disable(struct clk *clk)
+{
+	struct clk_system *sys = to_clk_system(clk);
+
+	regmap_write(sys->regmap, AT91_PMC_SCDR, 1 << sys->id);
+}
+
+static int clk_system_is_enabled(struct clk *clk)
+{
+	struct clk_system *sys = to_clk_system(clk);
+	unsigned int status;
+
+	regmap_read(sys->regmap, AT91_PMC_SCSR, &status);
+
+	if (!(status & (1 << sys->id)))
+		return 0;
+
+	if (!is_pck(sys->id))
+		return 1;
+
+	regmap_read(sys->regmap, AT91_PMC_SR, &status);
+
+	return status & (1 << sys->id) ? 1 : 0;
+}
+
+static const struct clk_ops system_ops = {
+	.enable = clk_system_enable,
+	.disable = clk_system_disable,
+	.is_enabled = clk_system_is_enabled,
+};
+
+static struct clk *
+at91_clk_register_system(struct regmap *regmap, const char *name,
+			 const char *parent_name, u8 id)
+{
+	struct clk_system *sys;
+	int ret;
+
+	if (!parent_name || id > SYSTEM_MAX_ID)
+		return ERR_PTR(-EINVAL);
+
+	sys = xzalloc(sizeof(*sys));
+	sys->clk.name = name;
+	sys->clk.ops = &system_ops;
+	sys->parent_name = parent_name;
+	sys->clk.parent_names = &sys->parent_name;
+	sys->clk.num_parents = 1;
+	/* init.flags = CLK_SET_RATE_PARENT; */
+	sys->id = id;
+	sys->regmap = regmap;
+
+	ret = clk_register(&sys->clk);
+	if (ret) {
+		kfree(sys);
+		return ERR_PTR(ret);
+	}
+
+	return &sys->clk;
+}
+
+static int of_at91rm9200_clk_sys_setup(struct device_node *np)
+{
+	int num;
+	u32 id;
+	struct clk *clk;
+	const char *name;
+	struct device_node *sysclknp;
+	const char *parent_name;
+	struct regmap *regmap;
+
+	num = of_get_child_count(np);
+	if (num > (SYSTEM_MAX_ID + 1))
+		return -EINVAL;
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	for_each_child_of_node(np, sysclknp) {
+		if (of_property_read_u32(sysclknp, "reg", &id))
+			continue;
+
+		if (of_property_read_string(np, "clock-output-names", &name))
+			name = sysclknp->name;
+
+		parent_name = of_clk_get_parent_name(sysclknp, 0);
+
+		clk = at91_clk_register_system(regmap, name, parent_name, id);
+		if (IS_ERR(clk))
+			continue;
+
+		of_clk_add_provider(sysclknp, of_clk_src_simple_get, clk);
+	}
+
+	return 0;
+}
+CLK_OF_DECLARE(at91rm9200_clk_sys, "atmel,at91rm9200-clk-system",
+	       of_at91rm9200_clk_sys_setup);
diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
new file mode 100644
index 0000000..99ba671
--- /dev/null
+++ b/drivers/clk/at91/clk-usb.c
@@ -0,0 +1,397 @@
+/*
+ *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <of.h>
+#include <io.h>
+#include <linux/list.h>
+#include <linux/clk.h>
+#include <linux/clk/at91_pmc.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+
+#include "pmc.h"
+
+#define USB_SOURCE_MAX		2
+
+#define SAM9X5_USB_DIV_SHIFT	8
+#define SAM9X5_USB_MAX_DIV	0xf
+
+#define RM9200_USB_DIV_SHIFT	28
+#define RM9200_USB_DIV_TAB_SIZE	4
+
+struct at91sam9x5_clk_usb {
+	struct clk clk;
+	struct regmap *regmap;
+	const char *parent_names[USB_SOURCE_MAX];
+};
+
+#define to_at91sam9x5_clk_usb(clk) \
+	container_of(clk, struct at91sam9x5_clk_usb, clk)
+
+struct at91rm9200_clk_usb {
+	struct clk clk;
+	struct regmap *regmap;
+	u32 divisors[4];
+	const char *parent_name;
+};
+
+#define to_at91rm9200_clk_usb(clk) \
+	container_of(clk, struct at91rm9200_clk_usb, clk)
+
+static unsigned long at91sam9x5_clk_usb_recalc_rate(struct clk *clk,
+						    unsigned long parent_rate)
+{
+	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
+	unsigned int usbr;
+	u8 usbdiv;
+
+	regmap_read(usb->regmap, AT91_PMC_USB, &usbr);
+	usbdiv = (usbr & AT91_PMC_OHCIUSBDIV) >> SAM9X5_USB_DIV_SHIFT;
+
+	return DIV_ROUND_CLOSEST(parent_rate, (usbdiv + 1));
+}
+
+static int at91sam9x5_clk_usb_set_parent(struct clk *clk, u8 index)
+{
+	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
+
+	if (index > 1)
+		return -EINVAL;
+
+	regmap_write_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_USBS,
+			  index ? AT91_PMC_USBS : 0);
+
+	return 0;
+}
+
+static int at91sam9x5_clk_usb_get_parent(struct clk *clk)
+{
+	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
+	unsigned int usbr;
+
+	regmap_read(usb->regmap, AT91_PMC_USB, &usbr);
+
+	return usbr & AT91_PMC_USBS;
+}
+
+static int at91sam9x5_clk_usb_set_rate(struct clk *clk, unsigned long rate,
+				       unsigned long parent_rate)
+{
+	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
+	unsigned long div;
+
+	if (!rate)
+		return -EINVAL;
+
+	div = DIV_ROUND_CLOSEST(parent_rate, rate);
+	if (div > SAM9X5_USB_MAX_DIV + 1 || !div)
+		return -EINVAL;
+
+	regmap_write_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_OHCIUSBDIV,
+			  (div - 1) << SAM9X5_USB_DIV_SHIFT);
+
+	return 0;
+}
+
+static const struct clk_ops at91sam9x5_usb_ops = {
+	.recalc_rate = at91sam9x5_clk_usb_recalc_rate,
+	.get_parent = at91sam9x5_clk_usb_get_parent,
+	.set_parent = at91sam9x5_clk_usb_set_parent,
+	.set_rate = at91sam9x5_clk_usb_set_rate,
+};
+
+static int at91sam9n12_clk_usb_enable(struct clk *clk)
+{
+	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
+
+	regmap_write_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_USBS,
+			  AT91_PMC_USBS);
+
+	return 0;
+}
+
+static void at91sam9n12_clk_usb_disable(struct clk *clk)
+{
+	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
+
+	regmap_write_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_USBS, 0);
+}
+
+static int at91sam9n12_clk_usb_is_enabled(struct clk *clk)
+{
+	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
+	unsigned int usbr;
+
+	regmap_read(usb->regmap, AT91_PMC_USB, &usbr);
+
+	return usbr & AT91_PMC_USBS;
+}
+
+static const struct clk_ops at91sam9n12_usb_ops = {
+	.enable = at91sam9n12_clk_usb_enable,
+	.disable = at91sam9n12_clk_usb_disable,
+	.is_enabled = at91sam9n12_clk_usb_is_enabled,
+	.recalc_rate = at91sam9x5_clk_usb_recalc_rate,
+	.set_rate = at91sam9x5_clk_usb_set_rate,
+};
+
+static struct clk *
+at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
+			    const char **parent_names, u8 num_parents)
+{
+	struct at91sam9x5_clk_usb *usb;
+	int ret;
+
+	usb = kzalloc(sizeof(*usb), GFP_KERNEL);
+	usb->clk.name = name;
+	usb->clk.ops = &at91sam9x5_usb_ops;
+	memcpy(usb->parent_names, parent_names,
+	       num_parents * sizeof(usb->parent_names[0]));
+	usb->clk.parent_names = usb->parent_names;
+	usb->clk.num_parents = num_parents;
+	usb->clk.flags = CLK_SET_RATE_PARENT;
+	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE | */
+	/* 	     CLK_SET_RATE_PARENT; */
+	usb->regmap = regmap;
+
+	ret = clk_register(&usb->clk);
+	if (ret) {
+		kfree(usb);
+		return ERR_PTR(ret);
+	}
+
+	return &usb->clk;
+}
+
+static struct clk *
+at91sam9n12_clk_register_usb(struct regmap *regmap, const char *name,
+			     const char *parent_name)
+{
+	struct at91sam9x5_clk_usb *usb;
+	int ret;
+
+	usb = xzalloc(sizeof(*usb));
+	usb->clk.name = name;
+	usb->clk.ops = &at91sam9n12_usb_ops;
+	usb->parent_names[0] = parent_name;
+	usb->clk.parent_names = &usb->parent_names[0];
+	usb->clk.num_parents = 1;
+	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT; */
+	usb->regmap = regmap;
+
+	ret = clk_register(&usb->clk);
+	if (ret) {
+		kfree(usb);
+		return ERR_PTR(ret);
+	}
+
+	return &usb->clk;
+}
+
+static unsigned long at91rm9200_clk_usb_recalc_rate(struct clk *clk,
+						    unsigned long parent_rate)
+{
+	struct at91rm9200_clk_usb *usb = to_at91rm9200_clk_usb(clk);
+	unsigned int pllbr;
+	u8 usbdiv;
+
+	regmap_read(usb->regmap, AT91_CKGR_PLLBR, &pllbr);
+
+	usbdiv = (pllbr & AT91_PMC_USBDIV) >> RM9200_USB_DIV_SHIFT;
+	if (usb->divisors[usbdiv])
+		return parent_rate / usb->divisors[usbdiv];
+
+	return 0;
+}
+
+static long at91rm9200_clk_usb_round_rate(struct clk *clk, unsigned long rate,
+					  unsigned long *parent_rate)
+{
+	struct at91rm9200_clk_usb *usb = to_at91rm9200_clk_usb(clk);
+	struct clk *parent = clk_get_parent(clk);
+	unsigned long bestrate = 0;
+	int bestdiff = -1;
+	unsigned long tmprate;
+	int tmpdiff;
+	int i = 0;
+
+	for (i = 0; i < RM9200_USB_DIV_TAB_SIZE; i++) {
+		unsigned long tmp_parent_rate;
+
+		if (!usb->divisors[i])
+			continue;
+
+		tmp_parent_rate = rate * usb->divisors[i];
+		tmp_parent_rate = clk_round_rate(parent, tmp_parent_rate);
+		tmprate = DIV_ROUND_CLOSEST(tmp_parent_rate, usb->divisors[i]);
+		if (tmprate < rate)
+			tmpdiff = rate - tmprate;
+		else
+			tmpdiff = tmprate - rate;
+
+		if (bestdiff < 0 || bestdiff > tmpdiff) {
+			bestrate = tmprate;
+			bestdiff = tmpdiff;
+			*parent_rate = tmp_parent_rate;
+		}
+
+		if (!bestdiff)
+			break;
+	}
+
+	return bestrate;
+}
+
+static int at91rm9200_clk_usb_set_rate(struct clk *clk, unsigned long rate,
+				       unsigned long parent_rate)
+{
+	int i;
+	struct at91rm9200_clk_usb *usb = to_at91rm9200_clk_usb(clk);
+	unsigned long div;
+
+	if (!rate)
+		return -EINVAL;
+
+	div = DIV_ROUND_CLOSEST(parent_rate, rate);
+
+	for (i = 0; i < RM9200_USB_DIV_TAB_SIZE; i++) {
+		if (usb->divisors[i] == div) {
+			regmap_write_bits(usb->regmap, AT91_CKGR_PLLBR,
+					  AT91_PMC_USBDIV,
+					  i << RM9200_USB_DIV_SHIFT);
+
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
+static const struct clk_ops at91rm9200_usb_ops = {
+	.recalc_rate = at91rm9200_clk_usb_recalc_rate,
+	.round_rate = at91rm9200_clk_usb_round_rate,
+	.set_rate = at91rm9200_clk_usb_set_rate,
+};
+
+static struct clk *
+at91rm9200_clk_register_usb(struct regmap *regmap, const char *name,
+			    const char *parent_name, const u32 *divisors)
+{
+	struct at91rm9200_clk_usb *usb;
+	int ret;
+
+	usb = xzalloc(sizeof(*usb));
+	usb->clk.name = name;
+	usb->clk.ops = &at91rm9200_usb_ops;
+	usb->parent_name = parent_name;
+	usb->clk.parent_names = &usb->parent_name;
+	usb->clk.num_parents = 1;
+	/* init.flags = CLK_SET_RATE_PARENT; */
+
+	usb->regmap = regmap;
+	memcpy(usb->divisors, divisors, sizeof(usb->divisors));
+
+	ret = clk_register(&usb->clk);
+	if (ret) {
+		kfree(usb);
+		return ERR_PTR(ret);
+	}
+
+	return &usb->clk;
+}
+
+static int of_at91sam9x5_clk_usb_setup(struct device_node *np)
+{
+	struct clk *clk;
+	unsigned int num_parents;
+	const char *parent_names[USB_SOURCE_MAX];
+	const char *name = np->name;
+	struct regmap *regmap;
+
+	num_parents = of_clk_get_parent_count(np);
+	if (num_parents == 0 || num_parents > USB_SOURCE_MAX)
+		return -EINVAL;
+
+	of_clk_parent_fill(np, parent_names, num_parents);
+
+	of_property_read_string(np, "clock-output-names", &name);
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	clk = at91sam9x5_clk_register_usb(regmap, name, parent_names,
+					 num_parents);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+CLK_OF_DECLARE(at91sam9x5_clk_usb, "atmel,at91sam9x5-clk-usb",
+	       of_at91sam9x5_clk_usb_setup);
+
+static int of_at91sam9n12_clk_usb_setup(struct device_node *np)
+{
+	struct clk *clk;
+	const char *parent_name;
+	const char *name = np->name;
+	struct regmap *regmap;
+
+	parent_name = of_clk_get_parent_name(np, 0);
+	if (!parent_name)
+		return -EINVAL;
+
+	of_property_read_string(np, "clock-output-names", &name);
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	clk = at91sam9n12_clk_register_usb(regmap, name, parent_name);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+CLK_OF_DECLARE(at91sam9n12_clk_usb, "atmel,at91sam9n12-clk-usb",
+	       of_at91sam9n12_clk_usb_setup);
+
+static int of_at91rm9200_clk_usb_setup(struct device_node *np)
+{
+	struct clk *clk;
+	const char *parent_name;
+	const char *name = np->name;
+	u32 divisors[4] = {0, 0, 0, 0};
+	struct regmap *regmap;
+
+	parent_name = of_clk_get_parent_name(np, 0);
+	if (!parent_name)
+		return -EINVAL;
+
+	of_property_read_u32_array(np, "atmel,clk-divisors", divisors, 4);
+	if (!divisors[0])
+		return -EINVAL;
+
+	of_property_read_string(np, "clock-output-names", &name);
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	clk = at91rm9200_clk_register_usb(regmap, name, parent_name, divisors);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+CLK_OF_DECLARE(at91rm9200_clk_usb, "atmel,at91rm9200-clk-usb",
+	       of_at91rm9200_clk_usb_setup);
diff --git a/drivers/clk/at91/clk-utmi.c b/drivers/clk/at91/clk-utmi.c
new file mode 100644
index 0000000..96ce35c
--- /dev/null
+++ b/drivers/clk/at91/clk-utmi.c
@@ -0,0 +1,138 @@
+/*
+ *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
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
+
+#include "pmc.h"
+
+#define UTMI_FIXED_MUL		40
+
+struct clk_utmi {
+	struct clk clk;
+	struct regmap *regmap;
+	const char *parent;
+};
+
+#define to_clk_utmi(clk) container_of(clk, struct clk_utmi, clk)
+
+static inline bool clk_utmi_ready(struct regmap *regmap)
+{
+	unsigned int status;
+
+	regmap_read(regmap, AT91_PMC_SR, &status);
+
+	return status & AT91_PMC_LOCKU;
+}
+
+static int clk_utmi_enable(struct clk *clk)
+{
+	struct clk_utmi *utmi = to_clk_utmi(clk);
+	unsigned int uckr = AT91_PMC_UPLLEN | AT91_PMC_UPLLCOUNT |
+			    AT91_PMC_BIASEN;
+
+	regmap_write_bits(utmi->regmap, AT91_CKGR_UCKR, uckr, uckr);
+
+	while (!clk_utmi_ready(utmi->regmap))
+		barrier();
+
+	return 0;
+}
+
+static int clk_utmi_is_enabled(struct clk *clk)
+{
+	struct clk_utmi *utmi = to_clk_utmi(clk);
+	
+	return clk_utmi_ready(utmi->regmap);
+}
+
+static void clk_utmi_disable(struct clk *clk)
+{
+	struct clk_utmi *utmi = to_clk_utmi(clk);
+
+	regmap_write_bits(utmi->regmap, AT91_CKGR_UCKR, AT91_PMC_UPLLEN, 0);
+}
+
+static unsigned long clk_utmi_recalc_rate(struct clk *clk,
+					  unsigned long parent_rate)
+{
+	/* UTMI clk is a fixed clk multiplier */
+	return parent_rate * UTMI_FIXED_MUL;
+}
+
+static const struct clk_ops utmi_ops = {
+	.enable = clk_utmi_enable,
+	.disable = clk_utmi_disable,
+	.is_enabled = clk_utmi_is_enabled,
+	.recalc_rate = clk_utmi_recalc_rate,
+};
+
+static struct clk * __init
+at91_clk_register_utmi(struct regmap *regmap,
+		       const char *name, const char *parent_name)
+{
+	int ret;
+	struct clk_utmi *utmi;
+
+	utmi = xzalloc(sizeof(*utmi));
+
+	utmi->clk.name = name;
+	utmi->clk.ops = &utmi_ops;
+
+	if (parent_name) {
+		utmi->parent = parent_name;
+		utmi->clk.parent_names = &utmi->parent;
+		utmi->clk.num_parents = 1;
+	}
+
+	/* utmi->clk.flags = CLK_SET_RATE_GATE; */
+
+	utmi->regmap = regmap;
+
+	ret = clk_register(&utmi->clk);
+	if (ret) {
+		kfree(utmi);
+		return ERR_PTR(ret);
+	}
+
+	return &utmi->clk;
+}
+#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
+static void __init of_at91sam9x5_clk_utmi_setup(struct device_node *np)
+{
+	struct clk *clk;
+	const char *parent_name;
+	const char *name = np->name;
+	struct regmap *regmap;
+
+	parent_name = of_clk_get_parent_name(np, 0);
+
+	of_property_read_string(np, "clock-output-names", &name);
+
+	regmap = syscon_node_to_regmap(of_get_parent(np));
+	if (IS_ERR(regmap))
+		return;
+
+	clk = at91_clk_register_utmi(regmap, name, parent_name);
+	if (IS_ERR(clk))
+		return;
+
+	of_clk_add_provider(np, of_clk_src_simple_get, clk);
+	return;
+}
+CLK_OF_DECLARE(at91sam9x5_clk_utmi, "atmel,at91sam9x5-clk-utmi",
+	       of_at91sam9x5_clk_utmi_setup);
+#endif
diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
new file mode 100644
index 0000000..d156d50
--- /dev/null
+++ b/drivers/clk/at91/pmc.c
@@ -0,0 +1,41 @@
+/*
+ *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+
+#include <module.h>
+#include <linux/list.h>
+#include <linux/clkdev.h>
+#include <of.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+
+#include "pmc.h"
+
+int of_at91_get_clk_range(struct device_node *np, const char *propname,
+			  struct clk_range *range)
+{
+	u32 min, max;
+	int ret;
+
+	ret = of_property_read_u32_index(np, propname, 0, &min);
+	if (ret)
+		return ret;
+
+	ret = of_property_read_u32_index(np, propname, 1, &max);
+	if (ret)
+		return ret;
+
+	if (range) {
+		range->min = min;
+		range->max = max;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_at91_get_clk_range);
diff --git a/drivers/clk/at91/pmc.h b/drivers/clk/at91/pmc.h
new file mode 100644
index 0000000..c6c14a7
--- /dev/null
+++ b/drivers/clk/at91/pmc.h
@@ -0,0 +1,27 @@
+/*
+ * drivers/clk/at91/pmc.h
+ *
+ *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef __PMC_H_
+#define __PMC_H_
+
+#include <io.h>
+
+struct clk_range {
+	unsigned long min;
+	unsigned long max;
+};
+
+#define CLK_RANGE(MIN, MAX) {.min = MIN, .max = MAX,}
+
+int of_at91_get_clk_range(struct device_node *np, const char *propname,
+			  struct clk_range *range);
+
+#endif /* __PMC_H_ */
diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
new file mode 100644
index 0000000..debaafb
--- /dev/null
+++ b/drivers/clk/at91/sckc.c
@@ -0,0 +1,485 @@
+/*
+ * drivers/clk/at91/sckc.c
+ *
+ *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <of.h>
+#include <of_address.h>
+#include <io.h>
+#include <linux/list.h>
+#include <linux/clk.h>
+#include <linux/clk/at91_pmc.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+
+
+
+#define SLOW_CLOCK_FREQ		32768
+#define SLOWCK_SW_CYCLES	5
+#define SLOWCK_SW_TIME_USEC	((SLOWCK_SW_CYCLES * SECOND) / \
+				 SLOW_CLOCK_FREQ)
+
+#define	AT91_SCKC_CR			0x00
+#define		AT91_SCKC_RCEN		(1 << 0)
+#define		AT91_SCKC_OSC32EN	(1 << 1)
+#define		AT91_SCKC_OSC32BYP	(1 << 2)
+#define		AT91_SCKC_OSCSEL	(1 << 3)
+
+struct clk_slow_osc {
+	struct clk clk;
+	void __iomem *sckcr;
+	unsigned long startup_usec;
+	const char *parent_name;
+};
+
+#define to_clk_slow_osc(clk) container_of(clk, struct clk_slow_osc, clk)
+
+struct clk_sama5d4_slow_osc {
+	struct clk clk;
+	void __iomem *sckcr;
+	unsigned long startup_usec;
+	bool prepared;
+	const char *parent_name;
+};
+
+#define to_clk_sama5d4_slow_osc(clk) container_of(clk, struct clk_sama5d4_slow_osc, clk)
+
+struct clk_slow_rc_osc {
+	struct clk clk;
+	void __iomem *sckcr;
+	unsigned long frequency;
+	unsigned long startup_usec;
+	const char *parent_name;
+};
+
+#define to_clk_slow_rc_osc(clk) container_of(clk, struct clk_slow_rc_osc, clk)
+
+struct clk_sam9x5_slow {
+	struct clk clk;
+	void __iomem *sckcr;
+	u8 parent;
+	const char *parent_names[2];
+};
+
+#define to_clk_sam9x5_slow(clk) container_of(clk, struct clk_sam9x5_slow, clk)
+
+static int clk_slow_osc_enable(struct clk *clk)
+{
+	struct clk_slow_osc *osc = to_clk_slow_osc(clk);
+	void __iomem *sckcr = osc->sckcr;
+	u32 tmp = readl(sckcr);
+
+	if (tmp & (AT91_SCKC_OSC32BYP | AT91_SCKC_OSC32EN))
+		return 0;
+
+	writel(tmp | AT91_SCKC_OSC32EN, sckcr);
+
+	udelay(osc->startup_usec);
+
+	return 0;
+}
+
+static void clk_slow_osc_disable(struct clk *clk)
+{
+	struct clk_slow_osc *osc = to_clk_slow_osc(clk);
+	void __iomem *sckcr = osc->sckcr;
+	u32 tmp = readl(sckcr);
+
+	if (tmp & AT91_SCKC_OSC32BYP)
+		return;
+
+	writel(tmp & ~AT91_SCKC_OSC32EN, sckcr);
+}
+
+static int clk_slow_osc_is_enabled(struct clk *clk)
+{
+	struct clk_slow_osc *osc = to_clk_slow_osc(clk);
+	void __iomem *sckcr = osc->sckcr;
+	u32 tmp = readl(sckcr);
+
+	if (tmp & AT91_SCKC_OSC32BYP)
+		return 1;
+
+	return !!(tmp & AT91_SCKC_OSC32EN);
+}
+
+static const struct clk_ops slow_osc_ops = {
+	.enable = clk_slow_osc_enable,
+	.disable = clk_slow_osc_disable,
+	.is_enabled = clk_slow_osc_is_enabled,
+};
+
+static struct clk * 
+at91_clk_register_slow_osc(void __iomem *sckcr,
+			   const char *name,
+			   const char *parent_name,
+			   unsigned long startup,
+			   bool bypass)
+{
+	int ret;
+	struct clk_slow_osc *osc;
+
+	if (!sckcr || !name || !parent_name)
+		return ERR_PTR(-EINVAL);
+
+	osc = xzalloc(sizeof(*osc));
+
+	osc->clk.name = name;
+	osc->clk.ops = &slow_osc_ops;
+	osc->parent_name = parent_name;
+	osc->clk.parent_names = &osc->parent_name;
+	osc->clk.num_parents = 1;
+
+	osc->sckcr = sckcr;
+	osc->startup_usec = startup;
+
+	if (bypass)
+		writel((readl(sckcr) & ~AT91_SCKC_OSC32EN) | AT91_SCKC_OSC32BYP,
+		       sckcr);
+
+	ret = clk_register(&osc->clk);
+	if (ret) {
+		kfree(osc);
+		return ERR_PTR(ret);
+	}
+
+	return &osc->clk;
+}
+
+static void 
+of_at91sam9x5_clk_slow_osc_setup(struct device_node *np, void __iomem *sckcr)
+{
+	struct clk *clk;
+	const char *parent_name;
+	const char *name = np->name;
+	u32 startup;
+	bool bypass;
+
+	parent_name = of_clk_get_parent_name(np, 0);
+	of_property_read_string(np, "clock-output-names", &name);
+	of_property_read_u32(np, "atmel,startup-time-usec", &startup);
+	bypass = of_property_read_bool(np, "atmel,osc-bypass");
+
+	clk = at91_clk_register_slow_osc(sckcr, name, parent_name, startup,
+					 bypass);
+	if (IS_ERR(clk))
+		return;
+
+	of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+
+static unsigned long clk_slow_rc_osc_recalc_rate(struct clk *clk,
+						 unsigned long parent_rate)
+{
+	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk);
+
+	return osc->frequency;
+}
+
+static int clk_slow_rc_osc_enable(struct clk *clk)
+{
+	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk);
+	void __iomem *sckcr = osc->sckcr;
+
+	writel(readl(sckcr) | AT91_SCKC_RCEN, sckcr);
+
+	udelay(osc->startup_usec);
+
+	return 0;
+}
+
+static void clk_slow_rc_osc_disable(struct clk *clk)
+{
+	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk);
+	void __iomem *sckcr = osc->sckcr;
+
+	writel(readl(sckcr) & ~AT91_SCKC_RCEN, sckcr);
+}
+
+static int clk_slow_rc_osc_is_enabled(struct clk *clk)
+{
+	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk);
+
+	return !!(readl(osc->sckcr) & AT91_SCKC_RCEN);
+}
+
+static const struct clk_ops slow_rc_osc_ops = {
+	.enable = clk_slow_rc_osc_enable,
+	.disable = clk_slow_rc_osc_disable,
+	.is_enabled = clk_slow_rc_osc_is_enabled,
+	.recalc_rate = clk_slow_rc_osc_recalc_rate,
+};
+
+static struct clk * 
+at91_clk_register_slow_rc_osc(void __iomem *sckcr,
+			      const char *name,
+			      unsigned long frequency,
+			      unsigned long startup)
+{
+	struct clk_slow_rc_osc *osc;
+	int ret;
+
+	if (!sckcr || !name)
+		return ERR_PTR(-EINVAL);
+
+	osc = xzalloc(sizeof(*osc));
+	osc->clk.name = name;
+	osc->clk.ops = &slow_rc_osc_ops;
+	osc->clk.parent_names = NULL;
+	osc->clk.num_parents = 0;
+	/* init.flags = CLK_IGNORE_UNUSED; */
+
+	osc->sckcr = sckcr;
+	osc->frequency = frequency;
+	osc->startup_usec = startup;
+
+	ret = clk_register(&osc->clk);
+	if (ret) {
+		kfree(osc);
+		return ERR_PTR(ret);
+	}
+
+	return &osc->clk;
+}
+
+static void 
+of_at91sam9x5_clk_slow_rc_osc_setup(struct device_node *np, void __iomem *sckcr)
+{
+	struct clk *clk;
+	u32 frequency = 0;
+	u32 startup = 0;
+	const char *name = np->name;
+
+	of_property_read_string(np, "clock-output-names", &name);
+	of_property_read_u32(np, "clock-frequency", &frequency);
+	of_property_read_u32(np, "atmel,startup-time-usec", &startup);
+
+	clk = at91_clk_register_slow_rc_osc(sckcr, name, frequency, startup);
+	if (IS_ERR(clk))
+		return;
+
+	of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+
+static int clk_sam9x5_slow_set_parent(struct clk *clk, u8 index)
+{
+	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(clk);
+	void __iomem *sckcr = slowck->sckcr;
+	u32 tmp;
+
+	if (index > 1)
+		return -EINVAL;
+
+	tmp = readl(sckcr);
+
+	if ((!index && !(tmp & AT91_SCKC_OSCSEL)) ||
+	    (index && (tmp & AT91_SCKC_OSCSEL)))
+		return 0;
+
+	if (index)
+		tmp |= AT91_SCKC_OSCSEL;
+	else
+		tmp &= ~AT91_SCKC_OSCSEL;
+
+	writel(tmp, sckcr);
+
+	udelay(SLOWCK_SW_TIME_USEC);
+
+	return 0;
+}
+
+static int clk_sam9x5_slow_get_parent(struct clk *clk)
+{
+	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(clk);
+
+	return !!(readl(slowck->sckcr) & AT91_SCKC_OSCSEL);
+}
+
+static const struct clk_ops sam9x5_slow_ops = {
+	.set_parent = clk_sam9x5_slow_set_parent,
+	.get_parent = clk_sam9x5_slow_get_parent,
+};
+
+static struct clk * 
+at91_clk_register_sam9x5_slow(void __iomem *sckcr,
+			      const char *name,
+			      const char **parent_names,
+			      int num_parents)
+{
+	struct clk_sam9x5_slow *slowck;
+	int ret;
+
+	if (!sckcr || !name || !parent_names || !num_parents)
+		return ERR_PTR(-EINVAL);
+
+	slowck = xzalloc(sizeof(*slowck));
+	slowck->clk.name = name;
+	slowck->clk.ops = &sam9x5_slow_ops;
+
+	memcpy(slowck->parent_names, parent_names,
+	       num_parents * sizeof(slowck->parent_names[0]));
+	slowck->clk.parent_names = slowck->parent_names;
+	slowck->clk.num_parents = num_parents;
+	slowck->sckcr = sckcr;
+	slowck->parent = !!(readl(sckcr) & AT91_SCKC_OSCSEL);
+
+	ret = clk_register(&slowck->clk);
+	if (ret) {
+		kfree(slowck);
+		return ERR_PTR(ret);
+	}
+
+	return &slowck->clk;
+}
+
+static int
+of_at91sam9x5_clk_slow_setup(struct device_node *np, void __iomem *sckcr)
+{
+	struct clk *clk;
+	const char *parent_names[2];
+	unsigned int num_parents;
+	const char *name = np->name;
+
+	num_parents = of_clk_get_parent_count(np);
+	if (num_parents == 0 || num_parents > 2)
+		return -EINVAL;
+
+	of_clk_parent_fill(np, parent_names, num_parents);
+
+	of_property_read_string(np, "clock-output-names", &name);
+
+	clk = at91_clk_register_sam9x5_slow(sckcr, name, parent_names,
+					    num_parents);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+
+static const struct of_device_id sckc_clk_ids[] = {
+	/* Slow clock */
+	{
+		.compatible = "atmel,at91sam9x5-clk-slow-osc",
+		.data = of_at91sam9x5_clk_slow_osc_setup,
+	},
+	{
+		.compatible = "atmel,at91sam9x5-clk-slow-rc-osc",
+		.data = of_at91sam9x5_clk_slow_rc_osc_setup,
+	},
+	{
+		.compatible = "atmel,at91sam9x5-clk-slow",
+		.data = of_at91sam9x5_clk_slow_setup,
+	},
+	{ /*sentinel*/ }
+};
+
+static int of_at91sam9x5_sckc_setup(struct device_node *np)
+{
+	struct device_node *childnp;
+	void (*clk_setup)(struct device_node *, void __iomem *);
+	const struct of_device_id *clk_id;
+	void __iomem *regbase = of_iomap(np, 0);
+
+	if (!regbase)
+		return -ENOMEM;
+
+	for_each_child_of_node(np, childnp) {
+		clk_id = of_match_node(sckc_clk_ids, childnp);
+		if (!clk_id)
+			continue;
+		clk_setup = clk_id->data;
+		clk_setup(childnp, regbase);
+	}
+
+	return 0;
+}
+CLK_OF_DECLARE(at91sam9x5_clk_sckc, "atmel,at91sam9x5-sckc",
+	       of_at91sam9x5_sckc_setup);
+
+static int clk_sama5d4_slow_osc_enable(struct clk *clk)
+{
+	struct clk_sama5d4_slow_osc *osc = to_clk_sama5d4_slow_osc(clk);
+
+	if (osc->prepared)
+		return 0;
+
+	/*
+	 * Assume that if it has already been selected (for example by the
+	 * bootloader), enough time has aready passed.
+	 */
+	if ((readl(osc->sckcr) & AT91_SCKC_OSCSEL)) {
+		osc->prepared = true;
+		return 0;
+	}
+
+	udelay(osc->startup_usec);
+	osc->prepared = true;
+
+	return 0;
+}
+
+static int clk_sama5d4_slow_osc_is_enabled(struct clk *clk)
+{
+	struct clk_sama5d4_slow_osc *osc = to_clk_sama5d4_slow_osc(clk);
+
+	return osc->prepared;
+}
+
+static const struct clk_ops sama5d4_slow_osc_ops = {
+	.enable = clk_sama5d4_slow_osc_enable,
+	.is_enabled = clk_sama5d4_slow_osc_is_enabled,
+};
+
+static int of_sama5d4_sckc_setup(struct device_node *np)
+{
+	void __iomem *regbase = of_iomap(np, 0);
+	struct clk *clk;
+	struct clk_sama5d4_slow_osc *osc;
+	const char *parent_names[2] = { "slow_rc_osc", "slow_osc" };
+	bool bypass;
+	int ret;
+
+	if (!regbase)
+		return -ENOMEM;
+
+	clk = clk_fixed(parent_names[0], 32768);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	bypass = of_property_read_bool(np, "atmel,osc-bypass");
+
+	osc = xzalloc(sizeof(*osc));
+	osc->parent_name = of_clk_get_parent_name(np, 0);
+	osc->clk.name = parent_names[1];
+	osc->clk.ops = &sama5d4_slow_osc_ops;
+	osc->clk.parent_names = &osc->parent_name;
+	osc->clk.num_parents = 1;
+	osc->sckcr = regbase;
+	osc->startup_usec = 1200000;
+
+	if (bypass)
+		writel((readl(regbase) | AT91_SCKC_OSC32BYP), regbase);
+
+	ret = clk_register(&osc->clk);
+	if (ret) {
+		kfree(osc);
+		return ret;
+	}
+
+	clk = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names, 2);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
+}
+CLK_OF_DECLARE(sama5d4_clk_sckc, "atmel,sama5d4-sckc",
+	       of_sama5d4_sckc_setup);
diff --git a/include/linux/clk/at91_pmc.h b/include/linux/clk/at91_pmc.h
new file mode 100644
index 0000000..17f413b
--- /dev/null
+++ b/include/linux/clk/at91_pmc.h
@@ -0,0 +1,188 @@
+/*
+ * include/linux/clk/at91_pmc.h
+ *
+ * Copyright (C) 2005 Ivan Kokshaysky
+ * Copyright (C) SAN People
+ *
+ * Power Management Controller (PMC) - System peripherals registers.
+ * Based on AT91RM9200 datasheet revision E.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91_PMC_H
+#define AT91_PMC_H
+
+#define	AT91_PMC_SCER		0x00			/* System Clock Enable Register */
+#define	AT91_PMC_SCDR		0x04			/* System Clock Disable Register */
+
+#define	AT91_PMC_SCSR		0x08			/* System Clock Status Register */
+#define		AT91_PMC_PCK		(1 <<  0)		/* Processor Clock */
+#define		AT91RM9200_PMC_UDP	(1 <<  1)		/* USB Devcice Port Clock [AT91RM9200 only] */
+#define		AT91RM9200_PMC_MCKUDP	(1 <<  2)		/* USB Device Port Master Clock Automatic Disable on Suspend [AT91RM9200 only] */
+#define		AT91RM9200_PMC_UHP	(1 <<  4)		/* USB Host Port Clock [AT91RM9200 only] */
+#define		AT91SAM926x_PMC_UHP	(1 <<  6)		/* USB Host Port Clock [AT91SAM926x only] */
+#define		AT91SAM926x_PMC_UDP	(1 <<  7)		/* USB Devcice Port Clock [AT91SAM926x only] */
+#define		AT91_PMC_PCK0		(1 <<  8)		/* Programmable Clock 0 */
+#define		AT91_PMC_PCK1		(1 <<  9)		/* Programmable Clock 1 */
+#define		AT91_PMC_PCK2		(1 << 10)		/* Programmable Clock 2 */
+#define		AT91_PMC_PCK3		(1 << 11)		/* Programmable Clock 3 */
+#define		AT91_PMC_PCK4		(1 << 12)		/* Programmable Clock 4 [AT572D940HF only] */
+#define		AT91_PMC_HCK0		(1 << 16)		/* AHB Clock (USB host) [AT91SAM9261 only] */
+#define		AT91_PMC_HCK1		(1 << 17)		/* AHB Clock (LCD) [AT91SAM9261 only] */
+
+#define	AT91_PMC_PCER		0x10			/* Peripheral Clock Enable Register */
+#define	AT91_PMC_PCDR		0x14			/* Peripheral Clock Disable Register */
+#define	AT91_PMC_PCSR		0x18			/* Peripheral Clock Status Register */
+
+#define	AT91_CKGR_UCKR		0x1C			/* UTMI Clock Register [some SAM9] */
+#define		AT91_PMC_UPLLEN		(1   << 16)		/* UTMI PLL Enable */
+#define		AT91_PMC_UPLLCOUNT	(0xf << 20)		/* UTMI PLL Start-up Time */
+#define		AT91_PMC_BIASEN		(1   << 24)		/* UTMI BIAS Enable */
+#define		AT91_PMC_BIASCOUNT	(0xf << 28)		/* UTMI BIAS Start-up Time */
+
+#define	AT91_CKGR_MOR		0x20			/* Main Oscillator Register [not on SAM9RL] */
+#define		AT91_PMC_MOSCEN		(1    <<  0)		/* Main Oscillator Enable */
+#define		AT91_PMC_OSCBYPASS	(1    <<  1)		/* Oscillator Bypass */
+#define		AT91_PMC_MOSCRCEN	(1    <<  3)		/* Main On-Chip RC Oscillator Enable [some SAM9] */
+#define		AT91_PMC_OSCOUNT	(0xff <<  8)		/* Main Oscillator Start-up Time */
+#define		AT91_PMC_KEY		(0x37 << 16)		/* MOR Writing Key */
+#define		AT91_PMC_MOSCSEL	(1    << 24)		/* Main Oscillator Selection [some SAM9] */
+#define		AT91_PMC_CFDEN		(1    << 25)		/* Clock Failure Detector Enable [some SAM9] */
+
+#define	AT91_CKGR_MCFR		0x24			/* Main Clock Frequency Register */
+#define		AT91_PMC_MAINF		(0xffff <<  0)		/* Main Clock Frequency */
+#define		AT91_PMC_MAINRDY	(1	<< 16)		/* Main Clock Ready */
+
+#define	AT91_CKGR_PLLAR		0x28			/* PLL A Register */
+#define	AT91_CKGR_PLLBR		0x2c			/* PLL B Register */
+#define		AT91_PMC_DIV		(0xff  <<  0)		/* Divider */
+#define		AT91_PMC_PLLCOUNT	(0x3f  <<  8)		/* PLL Counter */
+#define		AT91_PMC_OUT		(3     << 14)		/* PLL Clock Frequency Range */
+#define		AT91_PMC_MUL		(0x7ff << 16)		/* PLL Multiplier */
+#define		AT91_PMC_MUL_GET(n)	((n) >> 16 & 0x7ff)
+#define		AT91_PMC3_MUL		(0x7f  << 18)		/* PLL Multiplier [SAMA5 only] */
+#define		AT91_PMC3_MUL_GET(n)	((n) >> 18 & 0x7f)
+#define		AT91_PMC_USBDIV		(3     << 28)		/* USB Divisor (PLLB only) */
+#define			AT91_PMC_USBDIV_1		(0 << 28)
+#define			AT91_PMC_USBDIV_2		(1 << 28)
+#define			AT91_PMC_USBDIV_4		(2 << 28)
+#define		AT91_PMC_USB96M		(1     << 28)		/* Divider by 2 Enable (PLLB only) */
+
+#define	AT91_PMC_MCKR		0x30			/* Master Clock Register */
+#define		AT91_PMC_CSS		(3 <<  0)		/* Master Clock Selection */
+#define			AT91_PMC_CSS_SLOW		(0 << 0)
+#define			AT91_PMC_CSS_MAIN		(1 << 0)
+#define			AT91_PMC_CSS_PLLA		(2 << 0)
+#define			AT91_PMC_CSS_PLLB		(3 << 0)
+#define			AT91_PMC_CSS_UPLL		(3 << 0)	/* [some SAM9 only] */
+#define		PMC_PRES_OFFSET		2
+#define		AT91_PMC_PRES		(7 <<  PMC_PRES_OFFSET)		/* Master Clock Prescaler */
+#define			AT91_PMC_PRES_1			(0 << PMC_PRES_OFFSET)
+#define			AT91_PMC_PRES_2			(1 << PMC_PRES_OFFSET)
+#define			AT91_PMC_PRES_4			(2 << PMC_PRES_OFFSET)
+#define			AT91_PMC_PRES_8			(3 << PMC_PRES_OFFSET)
+#define			AT91_PMC_PRES_16		(4 << PMC_PRES_OFFSET)
+#define			AT91_PMC_PRES_32		(5 << PMC_PRES_OFFSET)
+#define			AT91_PMC_PRES_64		(6 << PMC_PRES_OFFSET)
+#define		PMC_ALT_PRES_OFFSET	4
+#define		AT91_PMC_ALT_PRES	(7 <<  PMC_ALT_PRES_OFFSET)		/* Master Clock Prescaler [alternate location] */
+#define			AT91_PMC_ALT_PRES_1		(0 << PMC_ALT_PRES_OFFSET)
+#define			AT91_PMC_ALT_PRES_2		(1 << PMC_ALT_PRES_OFFSET)
+#define			AT91_PMC_ALT_PRES_4		(2 << PMC_ALT_PRES_OFFSET)
+#define			AT91_PMC_ALT_PRES_8		(3 << PMC_ALT_PRES_OFFSET)
+#define			AT91_PMC_ALT_PRES_16		(4 << PMC_ALT_PRES_OFFSET)
+#define			AT91_PMC_ALT_PRES_32		(5 << PMC_ALT_PRES_OFFSET)
+#define			AT91_PMC_ALT_PRES_64		(6 << PMC_ALT_PRES_OFFSET)
+#define		AT91_PMC_MDIV		(3 <<  8)		/* Master Clock Division */
+#define			AT91RM9200_PMC_MDIV_1		(0 << 8)	/* [AT91RM9200 only] */
+#define			AT91RM9200_PMC_MDIV_2		(1 << 8)
+#define			AT91RM9200_PMC_MDIV_3		(2 << 8)
+#define			AT91RM9200_PMC_MDIV_4		(3 << 8)
+#define			AT91SAM9_PMC_MDIV_1		(0 << 8)	/* [SAM9 only] */
+#define			AT91SAM9_PMC_MDIV_2		(1 << 8)
+#define			AT91SAM9_PMC_MDIV_4		(2 << 8)
+#define			AT91SAM9_PMC_MDIV_6		(3 << 8)	/* [some SAM9 only] */
+#define			AT91SAM9_PMC_MDIV_3		(3 << 8)	/* [some SAM9 only] */
+#define		AT91_PMC_PDIV		(1 << 12)		/* Processor Clock Division [some SAM9 only] */
+#define			AT91_PMC_PDIV_1			(0 << 12)
+#define			AT91_PMC_PDIV_2			(1 << 12)
+#define		AT91_PMC_PLLADIV2	(1 << 12)		/* PLLA divisor by 2 [some SAM9 only] */
+#define			AT91_PMC_PLLADIV2_OFF		(0 << 12)
+#define			AT91_PMC_PLLADIV2_ON		(1 << 12)
+#define		AT91_PMC_H32MXDIV	BIT(24)
+
+#define	AT91_PMC_USB		0x38			/* USB Clock Register [some SAM9 only] */
+#define		AT91_PMC_USBS		(0x1 <<  0)		/* USB OHCI Input clock selection */
+#define			AT91_PMC_USBS_PLLA		(0 << 0)
+#define			AT91_PMC_USBS_UPLL		(1 << 0)
+#define			AT91_PMC_USBS_PLLB		(1 << 0)	/* [AT91SAMN12 only] */
+#define		AT91_PMC_OHCIUSBDIV	(0xF <<  8)		/* Divider for USB OHCI Clock */
+#define			AT91_PMC_OHCIUSBDIV_1	(0x0 <<  8)
+#define			AT91_PMC_OHCIUSBDIV_2	(0x1 <<  8)
+
+#define	AT91_PMC_SMD		0x3c			/* Soft Modem Clock Register [some SAM9 only] */
+#define		AT91_PMC_SMDS		(0x1  <<  0)		/* SMD input clock selection */
+#define		AT91_PMC_SMD_DIV	(0x1f <<  8)		/* SMD input clock divider */
+#define		AT91_PMC_SMDDIV(n)	(((n) <<  8) & AT91_PMC_SMD_DIV)
+
+#define	AT91_PMC_PCKR(n)	(0x40 + ((n) * 4))	/* Programmable Clock 0-N Registers */
+#define		AT91_PMC_ALT_PCKR_CSS	(0x7 <<  0)		/* Programmable Clock Source Selection [alternate length] */
+#define			AT91_PMC_CSS_MASTER		(4 << 0)	/* [some SAM9 only] */
+#define		AT91_PMC_CSSMCK		(0x1 <<  8)		/* CSS or Master Clock Selection */
+#define			AT91_PMC_CSSMCK_CSS		(0 << 8)
+#define			AT91_PMC_CSSMCK_MCK		(1 << 8)
+
+#define	AT91_PMC_IER		0x60			/* Interrupt Enable Register */
+#define	AT91_PMC_IDR		0x64			/* Interrupt Disable Register */
+#define	AT91_PMC_SR		0x68			/* Status Register */
+#define		AT91_PMC_MOSCS		(1 <<  0)		/* MOSCS Flag */
+#define		AT91_PMC_LOCKA		(1 <<  1)		/* PLLA Lock */
+#define		AT91_PMC_LOCKB		(1 <<  2)		/* PLLB Lock */
+#define		AT91_PMC_MCKRDY		(1 <<  3)		/* Master Clock */
+#define		AT91_PMC_LOCKU		(1 <<  6)		/* UPLL Lock [some SAM9] */
+#define		AT91_PMC_OSCSEL		(1 <<  7)		/* Slow Oscillator Selection [some SAM9] */
+#define		AT91_PMC_PCK0RDY	(1 <<  8)		/* Programmable Clock 0 */
+#define		AT91_PMC_PCK1RDY	(1 <<  9)		/* Programmable Clock 1 */
+#define		AT91_PMC_PCK2RDY	(1 << 10)		/* Programmable Clock 2 */
+#define		AT91_PMC_PCK3RDY	(1 << 11)		/* Programmable Clock 3 */
+#define		AT91_PMC_MOSCSELS	(1 << 16)		/* Main Oscillator Selection [some SAM9] */
+#define		AT91_PMC_MOSCRCS	(1 << 17)		/* Main On-Chip RC [some SAM9] */
+#define		AT91_PMC_CFDEV		(1 << 18)		/* Clock Failure Detector Event [some SAM9] */
+#define		AT91_PMC_GCKRDY		(1 << 24)		/* Generated Clocks */
+#define	AT91_PMC_IMR		0x6c			/* Interrupt Mask Register */
+
+#define AT91_PMC_PLLICPR	0x80			/* PLL Charge Pump Current Register */
+
+#define AT91_PMC_PROT		0xe4			/* Write Protect Mode Register [some SAM9] */
+#define		AT91_PMC_WPEN		(0x1  <<  0)		/* Write Protect Enable */
+#define		AT91_PMC_WPKEY		(0xffffff << 8)		/* Write Protect Key */
+#define		AT91_PMC_PROTKEY	(0x504d43 << 8)		/* Activation Code */
+
+#define AT91_PMC_WPSR		0xe8			/* Write Protect Status Register [some SAM9] */
+#define		AT91_PMC_WPVS		(0x1  <<  0)		/* Write Protect Violation Status */
+#define		AT91_PMC_WPVSRC		(0xffff  <<  8)		/* Write Protect Violation Source */
+
+#define AT91_PMC_PCER1		0x100			/* Peripheral Clock Enable Register 1 [SAMA5 only]*/
+#define AT91_PMC_PCDR1		0x104			/* Peripheral Clock Enable Register 1 */
+#define AT91_PMC_PCSR1		0x108			/* Peripheral Clock Enable Register 1 */
+
+#define AT91_PMC_PCR		0x10c			/* Peripheral Control Register [some SAM9 and SAMA5] */
+#define		AT91_PMC_PCR_PID_MASK		0x3f
+#define		AT91_PMC_PCR_GCKCSS_OFFSET	8
+#define		AT91_PMC_PCR_GCKCSS_MASK	(0x7  << AT91_PMC_PCR_GCKCSS_OFFSET)
+#define		AT91_PMC_PCR_GCKCSS(n)		((n)  << AT91_PMC_PCR_GCKCSS_OFFSET)	/* GCK Clock Source Selection */
+#define		AT91_PMC_PCR_CMD		(0x1  <<  12)				/* Command (read=0, write=1) */
+#define		AT91_PMC_PCR_DIV_OFFSET		16
+#define		AT91_PMC_PCR_DIV_MASK		(0x3  << AT91_PMC_PCR_DIV_OFFSET)
+#define		AT91_PMC_PCR_DIV(n)		((n)  << AT91_PMC_PCR_DIV_OFFSET)	/* Divisor Value */
+#define		AT91_PMC_PCR_GCKDIV_OFFSET	20
+#define		AT91_PMC_PCR_GCKDIV_MASK	(0xff  << AT91_PMC_PCR_GCKDIV_OFFSET)
+#define		AT91_PMC_PCR_GCKDIV(n)		((n)  << AT91_PMC_PCR_GCKDIV_OFFSET)	/* Generated Clock Divisor Value */
+#define		AT91_PMC_PCR_EN			(0x1  <<  28)				/* Enable */
+#define		AT91_PMC_PCR_GCKEN		(0x1  <<  29)				/* GCK Enable */
+
+#endif
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
