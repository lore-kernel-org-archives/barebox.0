Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjpGO-00063C-VM
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 17:46:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gjpGL-0006gT-72
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:01 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC4)
 (envelope-from <afa@pengutronix.de>) id 1gjpGK-0007q0-Ob
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Jan 2019 18:45:49 +0100
Message-Id: <20190116174559.17416-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190116174559.17416-1-a.fatoum@pengutronix.de>
References: <20190116174559.17416-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 01/11] ARM: at91: clk: prune never-compiled h32mx code
To: barebox@lists.infradead.org

This code is conditionally compiled when CONFIG_HAVE_AT91_H32MX
is defined, which never happens as it neither has a prompt
nor does another option select it.

As no one seems to miss it till now, just remove it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig   |   3 -
 drivers/clk/at91/Makefile    |   1 -
 drivers/clk/at91/clk-h32mx.c | 125 -----------------------------------
 3 files changed, 129 deletions(-)
 delete mode 100644 drivers/clk/at91/clk-h32mx.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index b101e61d221d..63e6e7285931 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -30,9 +30,6 @@ config MACH_AT91SAM9263EK_DT
 config HAVE_AT91_SMD
 	bool
 
-config HAVE_AT91_H32MX
-	bool
-
 config HAVE_AT91_GENERATED_CLK
 	bool
 
diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
index 13e67bd35cff..b1fe8b010797 100644
--- a/drivers/clk/at91/Makefile
+++ b/drivers/clk/at91/Makefile
@@ -9,5 +9,4 @@ obj-y += clk-system.o clk-peripheral.o clk-programmable.o
 obj-$(CONFIG_HAVE_AT91_UTMI)		+= clk-utmi.o
 obj-$(CONFIG_HAVE_AT91_USB_CLK)		+= clk-usb.o
 obj-$(CONFIG_HAVE_AT91_SMD)		+= clk-smd.o
-obj-$(CONFIG_HAVE_AT91_H32MX)		+= clk-h32mx.o
 obj-$(CONFIG_HAVE_AT91_GENERATED_CLK)	+= clk-generated.o
diff --git a/drivers/clk/at91/clk-h32mx.c b/drivers/clk/at91/clk-h32mx.c
deleted file mode 100644
index e0daa4a31f88..000000000000
--- a/drivers/clk/at91/clk-h32mx.c
+++ /dev/null
@@ -1,125 +0,0 @@
-/*
- * clk-h32mx.c
- *
- *  Copyright (C) 2014 Atmel
- *
- * Alexandre Belloni <alexandre.belloni@free-electrons.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- */
-
-#include <linux/clk-provider.h>
-#include <linux/clkdev.h>
-#include <linux/clk/at91_pmc.h>
-#include <linux/of.h>
-#include <linux/regmap.h>
-#include <linux/mfd/syscon.h>
-
-#include "pmc.h"
-
-#define H32MX_MAX_FREQ	90000000
-
-struct clk_sama5d4_h32mx {
-	struct clk_hw hw;
-	struct regmap *regmap;
-};
-
-#define to_clk_sama5d4_h32mx(hw) container_of(hw, struct clk_sama5d4_h32mx, hw)
-
-static unsigned long clk_sama5d4_h32mx_recalc_rate(struct clk_hw *hw,
-						 unsigned long parent_rate)
-{
-	struct clk_sama5d4_h32mx *h32mxclk = to_clk_sama5d4_h32mx(hw);
-	unsigned int mckr;
-
-	regmap_read(h32mxclk->regmap, AT91_PMC_MCKR, &mckr);
-	if (mckr & AT91_PMC_H32MXDIV)
-		return parent_rate / 2;
-
-	if (parent_rate > H32MX_MAX_FREQ)
-		pr_warn("H32MX clock is too fast\n");
-	return parent_rate;
-}
-
-static long clk_sama5d4_h32mx_round_rate(struct clk_hw *hw, unsigned long rate,
-				       unsigned long *parent_rate)
-{
-	unsigned long div;
-
-	if (rate > *parent_rate)
-		return *parent_rate;
-	div = *parent_rate / 2;
-	if (rate < div)
-		return div;
-
-	if (rate - div < *parent_rate - rate)
-		return div;
-
-	return *parent_rate;
-}
-
-static int clk_sama5d4_h32mx_set_rate(struct clk_hw *hw, unsigned long rate,
-				    unsigned long parent_rate)
-{
-	struct clk_sama5d4_h32mx *h32mxclk = to_clk_sama5d4_h32mx(hw);
-	u32 mckr = 0;
-
-	if (parent_rate != rate && (parent_rate / 2) != rate)
-		return -EINVAL;
-
-	if ((parent_rate / 2) == rate)
-		mckr = AT91_PMC_H32MXDIV;
-
-	regmap_update_bits(h32mxclk->regmap, AT91_PMC_MCKR,
-			   AT91_PMC_H32MXDIV, mckr);
-
-	return 0;
-}
-
-static const struct clk_ops h32mx_ops = {
-	.recalc_rate = clk_sama5d4_h32mx_recalc_rate,
-	.round_rate = clk_sama5d4_h32mx_round_rate,
-	.set_rate = clk_sama5d4_h32mx_set_rate,
-};
-
-static void __init of_sama5d4_clk_h32mx_setup(struct device_node *np)
-{
-	struct clk_sama5d4_h32mx *h32mxclk;
-	struct clk_init_data init;
-	const char *parent_name;
-	struct regmap *regmap;
-	int ret;
-
-	regmap = syscon_node_to_regmap(of_get_parent(np));
-	if (IS_ERR(regmap))
-		return;
-
-	h32mxclk = kzalloc(sizeof(*h32mxclk), GFP_KERNEL);
-	if (!h32mxclk)
-		return;
-
-	parent_name = of_clk_get_parent_name(np, 0);
-
-	init.name = np->name;
-	init.ops = &h32mx_ops;
-	init.parent_names = parent_name ? &parent_name : NULL;
-	init.num_parents = parent_name ? 1 : 0;
-	init.flags = CLK_SET_RATE_GATE;
-
-	h32mxclk->hw.init = &init;
-	h32mxclk->regmap = regmap;
-
-	ret = clk_hw_register(NULL, &h32mxclk->hw);
-	if (ret) {
-		kfree(h32mxclk);
-		return;
-	}
-
-	of_clk_add_hw_provider(np, of_clk_hw_simple_get, &h32mxclk->hw);
-}
-CLK_OF_DECLARE(of_sama5d4_clk_h32mx_setup, "atmel,sama5d4-clk-h32mx",
-	       of_sama5d4_clk_h32mx_setup);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
