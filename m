Delivery-date: Wed, 02 Jun 2021 12:07:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNmR-0000oj-HI
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:07:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNmI-00038r-9i
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:07:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=744wclN0MfKes5+1mP+ljLDV9d1IzgQpVoMW/kvJJfI=; b=HNY5kA//WGMGUB
	lt5SB+Yssl4j9+lE5unWr/QbZ9iAeA31Cp4SxNbwbneL8VJGlNtkk0EJ5fKjPl+bcCB6v46kTtddW
	f2xrmc645G6pRixs58PMuZNSrKlXncFdSGrKXYBwoUci8Qij3WmZETZo0u141x7VQySpACxu8SYxQ
	NzXWRiYuSG0TcYKCq6aOXfzqoE4dlV99/MUhXwnSRw3NcQMKAWnEYfQynDxtY1rXFzT0lwlVyH6q6
	SpH6IW8skF/xDiOnrfRhB0EBnWPl1I6SIR01PjKLQs72GDrN5ySiraEthQH7bY/eFwVefqa7rXyW9
	aO3rz4fQEQcupxo9/0mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNk3-0039tO-Hu; Wed, 02 Jun 2021 10:04:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNal-0036Ff-Bi
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:28 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MQ-OP; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNah-0003AN-1S; Wed, 02 Jun 2021 11:55:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:55:06 +0200
Message-Id: <20210602095507.24609-24-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 23/24] clk: rockchip: Update to current Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This updates the Rockchip clk code to Linux-5.13-rc1. The code is
unchanged as much as possible. The pre- and post- change hooks are
removed and also the notifier blocks.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/rockchip/Makefile        |   2 +-
 drivers/clk/rockchip/clk-cpu.c       |  80 ++-
 drivers/clk/rockchip/clk-inverter.c  | 107 ++++
 drivers/clk/rockchip/clk-mmc-phase.c | 192 ++++++
 drivers/clk/rockchip/clk-muxgrf.c    |  95 +++
 drivers/clk/rockchip/clk-pll.c       | 839 +++++++++++++++++++++++----
 drivers/clk/rockchip/clk-rk3188.c    | 363 ++++++------
 drivers/clk/rockchip/clk-rk3288.c    | 309 ++++++----
 drivers/clk/rockchip/clk.c           | 489 ++++++++++++----
 drivers/clk/rockchip/clk.h           | 500 ++++++++++++++--
 10 files changed, 2396 insertions(+), 580 deletions(-)
 create mode 100644 drivers/clk/rockchip/clk-inverter.c
 create mode 100644 drivers/clk/rockchip/clk-mmc-phase.c
 create mode 100644 drivers/clk/rockchip/clk-muxgrf.c

diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
index 5fcf0c2515..9964b331f2 100644
--- a/drivers/clk/rockchip/Makefile
+++ b/drivers/clk/rockchip/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-y += clk-cpu.o clk-pll.o clk.o
+obj-y += clk-cpu.o clk-pll.o clk.o clk-muxgrf.o clk-mmc-phase.o clk-inverter.o
 obj-$(CONFIG_ARCH_RK3188) += clk-rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += clk-rk3288.o
diff --git a/drivers/clk/rockchip/clk-cpu.c b/drivers/clk/rockchip/clk-cpu.c
index 88564872f5..8b5d4a0330 100644
--- a/drivers/clk/rockchip/clk-cpu.c
+++ b/drivers/clk/rockchip/clk-cpu.c
@@ -34,8 +34,10 @@
 #include <malloc.h>
 #include <io.h>
 #include <xfuncs.h>
-#include "clk.h"
 #include <linux/barebox-wrapper.h>
+#include <linux/clk.h>
+#include <linux/spinlock.h>
+#include "clk.h"
 
 /**
  * struct rockchip_cpuclk: information about clock supplied to a CPU core.
@@ -43,31 +45,34 @@
  * @alt_parent:	alternate parent clock to use when switching the speed
  *		of the primary parent clock.
  * @reg_base:	base register for cpu-clock values.
+ * @clk_nb:	clock notifier registered for changes in clock speed of the
+ *		primary parent clock.
  * @rate_count:	number of rates in the rate_table
  * @rate_table:	pll-rates and their associated dividers
  * @reg_data:	cpu-specific register settings
+ * @lock:	clock lock
  */
 struct rockchip_cpuclk {
 	struct clk_hw				hw;
-
 	struct clk				*alt_parent;
 	void __iomem				*reg_base;
 	unsigned int				rate_count;
 	struct rockchip_cpuclk_rate_table	*rate_table;
 	const struct rockchip_cpuclk_reg_data	*reg_data;
+	spinlock_t				*lock;
 };
 
-#define to_rockchip_cpuclk_hw(_hw) container_of(_hw, struct rockchip_cpuclk, hw)
+#define to_rockchip_cpuclk_hw(hw) container_of(hw, struct rockchip_cpuclk, hw)
 
 static unsigned long rockchip_cpuclk_recalc_rate(struct clk_hw *hw,
 					unsigned long parent_rate)
 {
 	struct rockchip_cpuclk *cpuclk = to_rockchip_cpuclk_hw(hw);
 	const struct rockchip_cpuclk_reg_data *reg_data = cpuclk->reg_data;
-	u32 clksel0 = readl(cpuclk->reg_base + reg_data->core_reg);
+	u32 clksel0 = readl_relaxed(cpuclk->reg_base + reg_data->core_reg[0]);
 
-	clksel0 >>= reg_data->div_core_shift;
-	clksel0 &= reg_data->div_core_mask;
+	clksel0 >>= reg_data->div_core_shift[0];
+	clksel0 &= reg_data->div_core_mask[0];
 	return parent_rate / (clksel0 + 1);
 }
 
@@ -76,17 +81,18 @@ static const struct clk_ops rockchip_cpuclk_ops = {
 };
 
 struct clk *rockchip_clk_register_cpuclk(const char *name,
-			const char **parent_names, u8 num_parents,
+			const char *const *parent_names, u8 num_parents,
 			const struct rockchip_cpuclk_reg_data *reg_data,
 			const struct rockchip_cpuclk_rate_table *rates,
-			int nrates, void __iomem *reg_base)
+			int nrates, void __iomem *reg_base, spinlock_t *lock)
 {
 	struct rockchip_cpuclk *cpuclk;
-	struct clk *clk;
+	struct clk_init_data init;
+	struct clk *clk, *cclk;
 	int ret;
 
-	if (num_parents != 2) {
-		pr_err("%s: needs two parent clocks\n", __func__);
+	if (num_parents < 2) {
+		pr_err("%s: needs at least two parent clocks\n", __func__);
 		return ERR_PTR(-EINVAL);
 	}
 
@@ -94,21 +100,28 @@ struct clk *rockchip_clk_register_cpuclk(const char *name,
 	if (!cpuclk)
 		return ERR_PTR(-ENOMEM);
 
-	cpuclk->hw.clk.name = name;
-	cpuclk->hw.clk.parent_names = &parent_names[0];
-	cpuclk->hw.clk.num_parents = 1;
-	cpuclk->hw.clk.ops = &rockchip_cpuclk_ops;
+	init.name = name;
+	init.parent_names = &parent_names[reg_data->mux_core_main];
+	init.num_parents = 1;
+	init.ops = &rockchip_cpuclk_ops;
 
 	/* only allow rate changes when we have a rate table */
-	cpuclk->hw.clk.flags = (nrates > 0) ? CLK_SET_RATE_PARENT : 0;
+	init.flags = (nrates > 0) ? CLK_SET_RATE_PARENT : 0;
+
+	/* disallow automatic parent changes by ccf */
+	init.flags |= CLK_SET_RATE_NO_REPARENT;
+
+	init.flags |= CLK_GET_RATE_NOCACHE;
 
 	cpuclk->reg_base = reg_base;
+	cpuclk->lock = lock;
 	cpuclk->reg_data = reg_data;
+	cpuclk->hw.init = &init;
 
-	cpuclk->alt_parent = __clk_lookup(parent_names[1]);
+	cpuclk->alt_parent = __clk_lookup(parent_names[reg_data->mux_core_alt]);
 	if (!cpuclk->alt_parent) {
-		pr_err("%s: could not lookup alternate parent\n",
-		       __func__);
+		pr_err("%s: could not lookup alternate parent: (%d)\n",
+		       __func__, reg_data->mux_core_alt);
 		ret = -EINVAL;
 		goto free_cpuclk;
 	}
@@ -120,37 +133,40 @@ struct clk *rockchip_clk_register_cpuclk(const char *name,
 		goto free_cpuclk;
 	}
 
-	clk = __clk_lookup(parent_names[0]);
+	clk = __clk_lookup(parent_names[reg_data->mux_core_main]);
 	if (!clk) {
-		pr_err("%s: could not lookup parent clock %s\n",
-		       __func__, parent_names[0]);
+		pr_err("%s: could not lookup parent clock: (%d) %s\n",
+		       __func__, reg_data->mux_core_main,
+		       parent_names[reg_data->mux_core_main]);
 		ret = -EINVAL;
-		goto free_cpuclk;
+		goto free_alt_parent;
 	}
 
 	if (nrates > 0) {
 		cpuclk->rate_count = nrates;
-		cpuclk->rate_table = xmemdup(rates,
-					     sizeof(*rates) * nrates
-					     );
+		cpuclk->rate_table = kmemdup(rates,
+					     sizeof(*rates) * nrates,
+					     GFP_KERNEL);
 		if (!cpuclk->rate_table) {
-			pr_err("%s: could not allocate memory for cpuclk rates\n",
-			       __func__);
 			ret = -ENOMEM;
-			goto free_cpuclk;
+			goto unregister_notifier;
 		}
 	}
 
-	ret = bclk_register(&cpuclk->hw.clk);
-	if (ret) {
+	cclk = clk_register(NULL, &cpuclk->hw);
+	if (IS_ERR(cclk)) {
 		pr_err("%s: could not register cpuclk %s\n", __func__,	name);
+		ret = PTR_ERR(cclk);
 		goto free_rate_table;
 	}
 
-	return &cpuclk->hw.clk;
+	return cclk;
 
 free_rate_table:
 	kfree(cpuclk->rate_table);
+unregister_notifier:
+free_alt_parent:
+	clk_disable(cpuclk->alt_parent);
 free_cpuclk:
 	kfree(cpuclk);
 	return ERR_PTR(ret);
diff --git a/drivers/clk/rockchip/clk-inverter.c b/drivers/clk/rockchip/clk-inverter.c
new file mode 100644
index 0000000000..7cdcf15fd8
--- /dev/null
+++ b/drivers/clk/rockchip/clk-inverter.c
@@ -0,0 +1,107 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright 2015 Heiko Stuebner <heiko@sntech.de>
+ */
+
+#include <common.h>
+#include <of.h>
+#include <malloc.h>
+#include <io.h>
+#include <xfuncs.h>
+#include <linux/barebox-wrapper.h>
+#include <linux/clk.h>
+#include <regmap.h>
+#include <linux/spinlock.h>
+#include "clk.h"
+
+struct rockchip_inv_clock {
+	struct clk_hw	hw;
+	void __iomem	*reg;
+	int		shift;
+	int		flags;
+	spinlock_t	*lock;
+};
+
+#define to_inv_clock(_hw) container_of(_hw, struct rockchip_inv_clock, hw)
+
+#define INVERTER_MASK 0x1
+
+static int rockchip_inv_get_phase(struct clk_hw *hw)
+{
+	struct rockchip_inv_clock *inv_clock = to_inv_clock(hw);
+	u32 val;
+
+	val = readl(inv_clock->reg) >> inv_clock->shift;
+	val &= INVERTER_MASK;
+	return val ? 180 : 0;
+}
+
+static int rockchip_inv_set_phase(struct clk_hw *hw, int degrees)
+{
+	struct rockchip_inv_clock *inv_clock = to_inv_clock(hw);
+	u32 val;
+
+	if (degrees % 180 == 0) {
+		val = !!degrees;
+	} else {
+		pr_err("%s: unsupported phase %d for %s\n",
+		       __func__, degrees, clk_hw_get_name(hw));
+		return -EINVAL;
+	}
+
+	if (inv_clock->flags & ROCKCHIP_INVERTER_HIWORD_MASK) {
+		writel(HIWORD_UPDATE(val, INVERTER_MASK, inv_clock->shift),
+		       inv_clock->reg);
+	} else {
+		unsigned long flags;
+		u32 reg;
+
+		spin_lock_irqsave(inv_clock->lock, flags);
+
+		reg = readl(inv_clock->reg);
+		reg &= ~BIT(inv_clock->shift);
+		reg |= val;
+		writel(reg, inv_clock->reg);
+
+		spin_unlock_irqrestore(inv_clock->lock, flags);
+	}
+
+	return 0;
+}
+
+static const struct clk_ops rockchip_inv_clk_ops = {
+	.get_phase	= rockchip_inv_get_phase,
+	.set_phase	= rockchip_inv_set_phase,
+};
+
+struct clk *rockchip_clk_register_inverter(const char *name,
+				const char *const *parent_names, u8 num_parents,
+				void __iomem *reg, int shift, int flags,
+				spinlock_t *lock)
+{
+	struct clk_init_data init;
+	struct rockchip_inv_clock *inv_clock;
+	struct clk *clk;
+
+	inv_clock = kzalloc(sizeof(*inv_clock), GFP_KERNEL);
+	if (!inv_clock)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.num_parents = num_parents;
+	init.flags = CLK_SET_RATE_PARENT;
+	init.parent_names = parent_names;
+	init.ops = &rockchip_inv_clk_ops;
+
+	inv_clock->hw.init = &init;
+	inv_clock->reg = reg;
+	inv_clock->shift = shift;
+	inv_clock->flags = flags;
+	inv_clock->lock = lock;
+
+	clk = clk_register(NULL, &inv_clock->hw);
+	if (IS_ERR(clk))
+		kfree(inv_clock);
+
+	return clk;
+}
diff --git a/drivers/clk/rockchip/clk-mmc-phase.c b/drivers/clk/rockchip/clk-mmc-phase.c
new file mode 100644
index 0000000000..822189a2fd
--- /dev/null
+++ b/drivers/clk/rockchip/clk-mmc-phase.c
@@ -0,0 +1,192 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright 2014 Google, Inc
+ * Author: Alexandru M Stan <amstan@chromium.org>
+ */
+
+#include <common.h>
+#include <of.h>
+#include <malloc.h>
+#include <io.h>
+#include <xfuncs.h>
+#include <linux/barebox-wrapper.h>
+#include <linux/clk.h>
+#include <linux/spinlock.h>
+#include "clk.h"
+
+struct rockchip_mmc_clock {
+	struct clk_hw	hw;
+	void __iomem	*reg;
+	int		id;
+	int		shift;
+	int		cached_phase;
+};
+
+#define to_mmc_clock(_hw) container_of(_hw, struct rockchip_mmc_clock, hw)
+
+#define RK3288_MMC_CLKGEN_DIV 2
+
+static unsigned long rockchip_mmc_recalc(struct clk_hw *hw,
+					 unsigned long parent_rate)
+{
+	return parent_rate / RK3288_MMC_CLKGEN_DIV;
+}
+
+#define ROCKCHIP_MMC_DELAY_SEL BIT(10)
+#define ROCKCHIP_MMC_DEGREE_MASK 0x3
+#define ROCKCHIP_MMC_DELAYNUM_OFFSET 2
+#define ROCKCHIP_MMC_DELAYNUM_MASK (0xff << ROCKCHIP_MMC_DELAYNUM_OFFSET)
+
+#define PSECS_PER_SEC 1000000000000LL
+
+/*
+ * Each fine delay is between 44ps-77ps. Assume each fine delay is 60ps to
+ * simplify calculations. So 45degs could be anywhere between 33deg and 57.8deg.
+ */
+#define ROCKCHIP_MMC_DELAY_ELEMENT_PSEC 60
+
+static int rockchip_mmc_get_phase(struct clk_hw *hw)
+{
+	struct rockchip_mmc_clock *mmc_clock = to_mmc_clock(hw);
+	unsigned long rate = clk_hw_get_rate(hw);
+	u32 raw_value;
+	u16 degrees;
+	u32 delay_num = 0;
+
+	/* Constant signal, no measurable phase shift */
+	if (!rate)
+		return 0;
+
+	raw_value = readl(mmc_clock->reg) >> (mmc_clock->shift);
+
+	degrees = (raw_value & ROCKCHIP_MMC_DEGREE_MASK) * 90;
+
+	if (raw_value & ROCKCHIP_MMC_DELAY_SEL) {
+		/* degrees/delaynum * 1000000 */
+		unsigned long factor = (ROCKCHIP_MMC_DELAY_ELEMENT_PSEC / 10) *
+					36 * (rate / 10000);
+
+		delay_num = (raw_value & ROCKCHIP_MMC_DELAYNUM_MASK);
+		delay_num >>= ROCKCHIP_MMC_DELAYNUM_OFFSET;
+		degrees += DIV_ROUND_CLOSEST(delay_num * factor, 1000000);
+	}
+
+	return degrees % 360;
+}
+
+static int rockchip_mmc_set_phase(struct clk_hw *hw, int degrees)
+{
+	struct rockchip_mmc_clock *mmc_clock = to_mmc_clock(hw);
+	unsigned long rate = clk_hw_get_rate(hw);
+	u8 nineties, remainder;
+	u8 delay_num;
+	u32 raw_value;
+	u32 delay;
+
+	/*
+	 * The below calculation is based on the output clock from
+	 * MMC host to the card, which expects the phase clock inherits
+	 * the clock rate from its parent, namely the output clock
+	 * provider of MMC host. However, things may go wrong if
+	 * (1) It is orphan.
+	 * (2) It is assigned to the wrong parent.
+	 *
+	 * This check help debug the case (1), which seems to be the
+	 * most likely problem we often face and which makes it difficult
+	 * for people to debug unstable mmc tuning results.
+	 */
+	if (!rate) {
+		pr_err("%s: invalid clk rate\n", __func__);
+		return -EINVAL;
+	}
+
+	nineties = degrees / 90;
+	remainder = (degrees % 90);
+
+	/*
+	 * Due to the inexact nature of the "fine" delay, we might
+	 * actually go non-monotonic.  We don't go _too_ monotonic
+	 * though, so we should be OK.  Here are options of how we may
+	 * work:
+	 *
+	 * Ideally we end up with:
+	 *   1.0, 2.0, ..., 69.0, 70.0, ...,  89.0, 90.0
+	 *
+	 * On one extreme (if delay is actually 44ps):
+	 *   .73, 1.5, ..., 50.6, 51.3, ...,  65.3, 90.0
+	 * The other (if delay is actually 77ps):
+	 *   1.3, 2.6, ..., 88.6. 89.8, ..., 114.0, 90
+	 *
+	 * It's possible we might make a delay that is up to 25
+	 * degrees off from what we think we're making.  That's OK
+	 * though because we should be REALLY far from any bad range.
+	 */
+
+	/*
+	 * Convert to delay; do a little extra work to make sure we
+	 * don't overflow 32-bit / 64-bit numbers.
+	 */
+	delay = 10000000; /* PSECS_PER_SEC / 10000 / 10 */
+	delay *= remainder;
+	delay = DIV_ROUND_CLOSEST(delay,
+			(rate / 1000) * 36 *
+				(ROCKCHIP_MMC_DELAY_ELEMENT_PSEC / 10));
+
+	delay_num = (u8) min_t(u32, delay, 255);
+
+	raw_value = delay_num ? ROCKCHIP_MMC_DELAY_SEL : 0;
+	raw_value |= delay_num << ROCKCHIP_MMC_DELAYNUM_OFFSET;
+	raw_value |= nineties;
+	writel(HIWORD_UPDATE(raw_value, 0x07ff, mmc_clock->shift),
+	       mmc_clock->reg);
+
+	pr_debug("%s->set_phase(%d) delay_nums=%u reg[0x%p]=0x%03x actual_degrees=%d\n",
+		clk_hw_get_name(hw), degrees, delay_num,
+		mmc_clock->reg, raw_value>>(mmc_clock->shift),
+		rockchip_mmc_get_phase(hw)
+	);
+
+	return 0;
+}
+
+static const struct clk_ops rockchip_mmc_clk_ops = {
+	.recalc_rate	= rockchip_mmc_recalc,
+	.get_phase	= rockchip_mmc_get_phase,
+	.set_phase	= rockchip_mmc_set_phase,
+};
+
+struct clk *rockchip_clk_register_mmc(const char *name,
+				const char *const *parent_names, u8 num_parents,
+				void __iomem *reg, int shift)
+{
+	struct clk_init_data init;
+	struct rockchip_mmc_clock *mmc_clock;
+	struct clk *clk;
+	int ret;
+
+	mmc_clock = kzalloc(sizeof(*mmc_clock), GFP_KERNEL);
+	if (!mmc_clock)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.flags = 0;
+	init.num_parents = num_parents;
+	init.parent_names = parent_names;
+	init.ops = &rockchip_mmc_clk_ops;
+
+	mmc_clock->hw.init = &init;
+	mmc_clock->reg = reg;
+	mmc_clock->shift = shift;
+
+	clk = clk_register(NULL, &mmc_clock->hw);
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
+		goto err_register;
+	}
+
+	return clk;
+
+err_register:
+	kfree(mmc_clock);
+	return ERR_PTR(ret);
+}
diff --git a/drivers/clk/rockchip/clk-muxgrf.c b/drivers/clk/rockchip/clk-muxgrf.c
new file mode 100644
index 0000000000..f06fa69514
--- /dev/null
+++ b/drivers/clk/rockchip/clk-muxgrf.c
@@ -0,0 +1,95 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <of.h>
+#include <malloc.h>
+#include <io.h>
+#include <xfuncs.h>
+#include <linux/barebox-wrapper.h>
+#include <linux/clk.h>
+#include <regmap.h>
+#include <linux/spinlock.h>
+#include "clk.h"
+
+struct rockchip_muxgrf_clock {
+	struct clk_hw		hw;
+	struct regmap		*regmap;
+	u32			reg;
+	u32			shift;
+	u32			width;
+	int			flags;
+};
+
+#define to_muxgrf_clock(_hw) container_of(_hw, struct rockchip_muxgrf_clock, hw)
+
+static int rockchip_muxgrf_get_parent(struct clk_hw *hw)
+{
+	struct rockchip_muxgrf_clock *mux = to_muxgrf_clock(hw);
+	unsigned int mask = GENMASK(mux->width - 1, 0);
+	unsigned int val;
+
+	regmap_read(mux->regmap, mux->reg, &val);
+
+	val >>= mux->shift;
+	val &= mask;
+
+	return val;
+}
+
+static int rockchip_muxgrf_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct rockchip_muxgrf_clock *mux = to_muxgrf_clock(hw);
+	unsigned int mask = GENMASK(mux->width + mux->shift - 1, mux->shift);
+	unsigned int val;
+
+	val = index;
+	val <<= mux->shift;
+
+	if (mux->flags & CLK_MUX_HIWORD_MASK)
+		return regmap_write(mux->regmap, mux->reg, val | (mask << 16));
+	else
+		return regmap_update_bits(mux->regmap, mux->reg, mask, val);
+}
+
+static const struct clk_ops rockchip_muxgrf_clk_ops = {
+	.get_parent = rockchip_muxgrf_get_parent,
+	.set_parent = rockchip_muxgrf_set_parent,
+};
+
+struct clk *rockchip_clk_register_muxgrf(const char *name,
+				const char *const *parent_names, u8 num_parents,
+				int flags, struct regmap *regmap, int reg,
+				int shift, int width, int mux_flags)
+{
+	struct rockchip_muxgrf_clock *muxgrf_clock;
+	struct clk_init_data init;
+	struct clk *clk;
+
+	if (IS_ERR(regmap)) {
+		pr_err("%s: regmap not available\n", __func__);
+		return ERR_PTR(-ENOTSUPP);
+	}
+
+	muxgrf_clock = kzalloc(sizeof(*muxgrf_clock), GFP_KERNEL);
+	if (!muxgrf_clock)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.flags = flags;
+	init.num_parents = num_parents;
+	init.parent_names = parent_names;
+	init.ops = &rockchip_muxgrf_clk_ops;
+
+	muxgrf_clock->hw.init = &init;
+	muxgrf_clock->regmap = regmap;
+	muxgrf_clock->reg = reg;
+	muxgrf_clock->shift = shift;
+	muxgrf_clock->width = width;
+	muxgrf_clock->flags = mux_flags;
+
+	clk = clk_register(NULL, &muxgrf_clock->hw);
+	if (IS_ERR(clk))
+		kfree(muxgrf_clock);
+
+	return clk;
+}
diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 9a430f928b..fdbb016e7f 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -2,6 +2,9 @@
 /*
  * Copyright (c) 2014 MundoReader S.L.
  * Author: Heiko Stuebner <heiko@sntech.de>
+ *
+ * Copyright (c) 2015 Rockchip Electronics Co. Ltd.
+ * Author: Xing Zheng <zhengxing@rock-chips.com>
  */
 
 #include <linux/math64.h>
@@ -14,16 +17,19 @@
 #include <linux/barebox-wrapper.h>
 #include "clk.h"
 #include <xfuncs.h>
+#include <regmap.h>
+#include <linux/iopoll.h>
 
-#define PLL_MODE_MASK		0x3
+#define PLL_MODE_WIDTH		2
 #define PLL_MODE_SLOW		0x0
 #define PLL_MODE_NORM		0x1
 #define PLL_MODE_DEEP		0x2
+#define PLL_RK3328_MODE_WIDTH	1
 
 struct rockchip_clk_pll {
 	struct clk_hw		hw;
 
-	struct clk_hw		pll_mux;
+	struct clk_mux		pll_mux;
 	const struct clk_ops	*pll_mux_ops;
 
 	void __iomem		*reg_base;
@@ -33,7 +39,9 @@ struct rockchip_clk_pll {
 	u8			flags;
 	const struct rockchip_pll_rate_table *rate_table;
 	unsigned int		rate_count;
-	char			pll_name[20];
+	spinlock_t		*lock;
+
+	struct rockchip_clk_provider *ctx;
 };
 
 #define to_rockchip_clk_pll(_hw) container_of(_hw, struct rockchip_clk_pll, hw)
@@ -74,26 +82,282 @@ static long rockchip_pll_round_rate(struct clk_hw *hw,
  * The calling set_rate function is responsible for making sure the
  * grf regmap is available.
  */
-#define RK3188_PLL_LOCK_REG     0x200080ac
-
 static int rockchip_pll_wait_lock(struct rockchip_clk_pll *pll)
 {
-	int delay = 24000000;
-	int val;
+	struct regmap *grf = pll->ctx->grf;
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read_poll_timeout(grf, pll->lock_offset, val,
+				       val & BIT(pll->lock_shift), 1000);
+	if (ret)
+		pr_err("%s: timeout waiting for pll to lock\n", __func__);
+
+	return ret;
+}
+
+/*
+ * PLL used in RK3036
+ */
+
+#define RK3036_PLLCON(i)			(i * 0x4)
+#define RK3036_PLLCON0_FBDIV_MASK		0xfff
+#define RK3036_PLLCON0_FBDIV_SHIFT		0
+#define RK3036_PLLCON0_POSTDIV1_MASK		0x7
+#define RK3036_PLLCON0_POSTDIV1_SHIFT		12
+#define RK3036_PLLCON1_REFDIV_MASK		0x3f
+#define RK3036_PLLCON1_REFDIV_SHIFT		0
+#define RK3036_PLLCON1_POSTDIV2_MASK		0x7
+#define RK3036_PLLCON1_POSTDIV2_SHIFT		6
+#define RK3036_PLLCON1_LOCK_STATUS		BIT(10)
+#define RK3036_PLLCON1_DSMPD_MASK		0x1
+#define RK3036_PLLCON1_DSMPD_SHIFT		12
+#define RK3036_PLLCON1_PWRDOWN			BIT(13)
+#define RK3036_PLLCON2_FRAC_MASK		0xffffff
+#define RK3036_PLLCON2_FRAC_SHIFT		0
+
+static int rockchip_rk3036_pll_wait_lock(struct rockchip_clk_pll *pll)
+{
+	u32 pllcon;
+	int ret;
+
+	/*
+	 * Lock time typical 250, max 500 input clock cycles @24MHz
+	 * So define a very safe maximum of 1000us, meaning 24000 cycles.
+	 */
+	ret = readl_poll_timeout(pll->reg_base + RK3036_PLLCON(1),
+					 pllcon,
+					 pllcon & RK3036_PLLCON1_LOCK_STATUS,
+					 1000);
+	if (ret)
+		pr_err("%s: timeout waiting for pll to lock\n", __func__);
+
+	return ret;
+}
+
+static void rockchip_rk3036_pll_get_params(struct rockchip_clk_pll *pll,
+					struct rockchip_pll_rate_table *rate)
+{
+	u32 pllcon;
+
+	pllcon = readl_relaxed(pll->reg_base + RK3036_PLLCON(0));
+	rate->fbdiv = ((pllcon >> RK3036_PLLCON0_FBDIV_SHIFT)
+				& RK3036_PLLCON0_FBDIV_MASK);
+	rate->postdiv1 = ((pllcon >> RK3036_PLLCON0_POSTDIV1_SHIFT)
+				& RK3036_PLLCON0_POSTDIV1_MASK);
+
+	pllcon = readl_relaxed(pll->reg_base + RK3036_PLLCON(1));
+	rate->refdiv = ((pllcon >> RK3036_PLLCON1_REFDIV_SHIFT)
+				& RK3036_PLLCON1_REFDIV_MASK);
+	rate->postdiv2 = ((pllcon >> RK3036_PLLCON1_POSTDIV2_SHIFT)
+				& RK3036_PLLCON1_POSTDIV2_MASK);
+	rate->dsmpd = ((pllcon >> RK3036_PLLCON1_DSMPD_SHIFT)
+				& RK3036_PLLCON1_DSMPD_MASK);
+
+	pllcon = readl_relaxed(pll->reg_base + RK3036_PLLCON(2));
+	rate->frac = ((pllcon >> RK3036_PLLCON2_FRAC_SHIFT)
+				& RK3036_PLLCON2_FRAC_MASK);
+}
+
+static unsigned long rockchip_rk3036_pll_recalc_rate(struct clk_hw *hw,
+						     unsigned long prate)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	struct rockchip_pll_rate_table cur;
+	u64 rate64 = prate;
+
+	rockchip_rk3036_pll_get_params(pll, &cur);
+
+	rate64 *= cur.fbdiv;
+	do_div(rate64, cur.refdiv);
+
+	if (cur.dsmpd == 0) {
+		/* fractional mode */
+		u64 frac_rate64 = prate * cur.frac;
+
+		do_div(frac_rate64, cur.refdiv);
+		rate64 += frac_rate64 >> 24;
+	}
+
+	do_div(rate64, cur.postdiv1);
+	do_div(rate64, cur.postdiv2);
+
+	return (unsigned long)rate64;
+}
+
+static int rockchip_rk3036_pll_set_params(struct rockchip_clk_pll *pll,
+				const struct rockchip_pll_rate_table *rate)
+{
+	const struct clk_ops *pll_mux_ops = pll->pll_mux_ops;
+	struct clk_mux *pll_mux = &pll->pll_mux;
+	struct rockchip_pll_rate_table cur;
+	u32 pllcon;
+	int rate_change_remuxed = 0;
+	int cur_parent;
+	int ret;
+
+	pr_debug("%s: rate settings for %lu fbdiv: %d, postdiv1: %d, refdiv: %d, postdiv2: %d, dsmpd: %d, frac: %d\n",
+		__func__, rate->rate, rate->fbdiv, rate->postdiv1, rate->refdiv,
+		rate->postdiv2, rate->dsmpd, rate->frac);
+
+	rockchip_rk3036_pll_get_params(pll, &cur);
+	cur.rate = 0;
+
+	cur_parent = pll_mux_ops->get_parent(&pll_mux->hw);
+	if (cur_parent == PLL_MODE_NORM) {
+		pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_SLOW);
+		rate_change_remuxed = 1;
+	}
+
+	/* update pll values */
+	writel_relaxed(HIWORD_UPDATE(rate->fbdiv, RK3036_PLLCON0_FBDIV_MASK,
+					  RK3036_PLLCON0_FBDIV_SHIFT) |
+		       HIWORD_UPDATE(rate->postdiv1, RK3036_PLLCON0_POSTDIV1_MASK,
+					     RK3036_PLLCON0_POSTDIV1_SHIFT),
+		       pll->reg_base + RK3036_PLLCON(0));
+
+	writel_relaxed(HIWORD_UPDATE(rate->refdiv, RK3036_PLLCON1_REFDIV_MASK,
+						   RK3036_PLLCON1_REFDIV_SHIFT) |
+		       HIWORD_UPDATE(rate->postdiv2, RK3036_PLLCON1_POSTDIV2_MASK,
+						     RK3036_PLLCON1_POSTDIV2_SHIFT) |
+		       HIWORD_UPDATE(rate->dsmpd, RK3036_PLLCON1_DSMPD_MASK,
+						  RK3036_PLLCON1_DSMPD_SHIFT),
+		       pll->reg_base + RK3036_PLLCON(1));
+
+	/* GPLL CON2 is not HIWORD_MASK */
+	pllcon = readl_relaxed(pll->reg_base + RK3036_PLLCON(2));
+	pllcon &= ~(RK3036_PLLCON2_FRAC_MASK << RK3036_PLLCON2_FRAC_SHIFT);
+	pllcon |= rate->frac << RK3036_PLLCON2_FRAC_SHIFT;
+	writel_relaxed(pllcon, pll->reg_base + RK3036_PLLCON(2));
 
 	/* wait for the pll to lock */
-	while (delay > 0) {
-		val = readl(RK3188_PLL_LOCK_REG);
-		if (val & BIT(pll->lock_shift))
+	ret = rockchip_rk3036_pll_wait_lock(pll);
+	if (ret) {
+		pr_warn("%s: pll update unsuccessful, trying to restore old params\n",
+			__func__);
+		rockchip_rk3036_pll_set_params(pll, &cur);
+	}
+
+	if (rate_change_remuxed)
+		pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_NORM);
+
+	return ret;
+}
+
+static int rockchip_rk3036_pll_set_rate(struct clk_hw *hw, unsigned long drate,
+					unsigned long prate)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	const struct rockchip_pll_rate_table *rate;
+
+	pr_debug("%s: changing %s to %lu with a parent rate of %lu\n",
+		 __func__, clk_hw_get_name(hw), drate, prate);
+
+	/* Get required rate settings from table */
+	rate = rockchip_get_pll_settings(pll, drate);
+	if (!rate) {
+		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
+			drate, clk_hw_get_name(hw));
+		return -EINVAL;
+	}
+
+	return rockchip_rk3036_pll_set_params(pll, rate);
+}
+
+static int rockchip_rk3036_pll_enable(struct clk_hw *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+
+	writel(HIWORD_UPDATE(0, RK3036_PLLCON1_PWRDOWN, 0),
+	       pll->reg_base + RK3036_PLLCON(1));
+	rockchip_rk3036_pll_wait_lock(pll);
+
+	return 0;
+}
+
+static void rockchip_rk3036_pll_disable(struct clk_hw *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+
+	writel(HIWORD_UPDATE(RK3036_PLLCON1_PWRDOWN,
+			     RK3036_PLLCON1_PWRDOWN, 0),
+	       pll->reg_base + RK3036_PLLCON(1));
+}
+
+static int rockchip_rk3036_pll_is_enabled(struct clk_hw *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	u32 pllcon = readl(pll->reg_base + RK3036_PLLCON(1));
+
+	return !(pllcon & RK3036_PLLCON1_PWRDOWN);
+}
+
+static int rockchip_rk3036_pll_init(struct clk_hw *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	const struct rockchip_pll_rate_table *rate;
+	struct rockchip_pll_rate_table cur;
+	unsigned long drate;
+
+	if (!(pll->flags & ROCKCHIP_PLL_SYNC_RATE))
+		return 0;
+
+	drate = clk_hw_get_rate(hw);
+	rate = rockchip_get_pll_settings(pll, drate);
+
+	/* when no rate setting for the current rate, rely on clk_set_rate */
+	if (!rate)
+		return 0;
+
+	rockchip_rk3036_pll_get_params(pll, &cur);
+
+	pr_debug("%s: pll %s@%lu: Hz\n", __func__, clk_hw_get_name(hw),
+		 drate);
+	pr_debug("old - fbdiv: %d, postdiv1: %d, refdiv: %d, postdiv2: %d, dsmpd: %d, frac: %d\n",
+		 cur.fbdiv, cur.postdiv1, cur.refdiv, cur.postdiv2,
+		 cur.dsmpd, cur.frac);
+	pr_debug("new - fbdiv: %d, postdiv1: %d, refdiv: %d, postdiv2: %d, dsmpd: %d, frac: %d\n",
+		 rate->fbdiv, rate->postdiv1, rate->refdiv, rate->postdiv2,
+		 rate->dsmpd, rate->frac);
+
+	if (rate->fbdiv != cur.fbdiv || rate->postdiv1 != cur.postdiv1 ||
+		rate->refdiv != cur.refdiv || rate->postdiv2 != cur.postdiv2 ||
+		rate->dsmpd != cur.dsmpd ||
+		(!cur.dsmpd && (rate->frac != cur.frac))) {
+		struct clk *parent = clk_get_parent(clk_hw_to_clk(hw));
+
+		if (!parent) {
+			pr_warn("%s: parent of %s not available\n",
+				__func__, clk_hw_get_name(hw));
 			return 0;
-		delay--;
+		}
+
+		pr_debug("%s: pll %s: rate params do not match rate table, adjusting\n",
+			 __func__, clk_hw_get_name(hw));
+		rockchip_rk3036_pll_set_params(pll, rate);
 	}
 
-	pr_err("%s: timeout waiting for pll to lock\n", __func__);
-	return -ETIMEDOUT;
+	return 0;
 }
 
-/**
+static const struct clk_ops rockchip_rk3036_pll_clk_norate_ops = {
+	.recalc_rate = rockchip_rk3036_pll_recalc_rate,
+	.enable = rockchip_rk3036_pll_enable,
+	.disable = rockchip_rk3036_pll_disable,
+	.is_enabled = rockchip_rk3036_pll_is_enabled,
+};
+
+static const struct clk_ops rockchip_rk3036_pll_clk_ops = {
+	.recalc_rate = rockchip_rk3036_pll_recalc_rate,
+	.round_rate = rockchip_pll_round_rate,
+	.set_rate = rockchip_rk3036_pll_set_rate,
+	.enable = rockchip_rk3036_pll_enable,
+	.disable = rockchip_rk3036_pll_disable,
+	.is_enabled = rockchip_rk3036_pll_is_enabled,
+	.init = rockchip_rk3036_pll_init,
+};
+
+/*
  * PLL used in RK3066, RK3188 and RK3288
  */
 
@@ -106,75 +370,75 @@ static int rockchip_pll_wait_lock(struct rockchip_clk_pll *pll)
 #define RK3066_PLLCON0_NR_SHIFT		8
 #define RK3066_PLLCON1_NF_MASK		0x1fff
 #define RK3066_PLLCON1_NF_SHIFT		0
-#define RK3066_PLLCON2_BWADJ_MASK	0xfff
-#define RK3066_PLLCON2_BWADJ_SHIFT	0
+#define RK3066_PLLCON2_NB_MASK		0xfff
+#define RK3066_PLLCON2_NB_SHIFT		0
 #define RK3066_PLLCON3_RESET		(1 << 5)
 #define RK3066_PLLCON3_PWRDOWN		(1 << 1)
 #define RK3066_PLLCON3_BYPASS		(1 << 0)
 
+static void rockchip_rk3066_pll_get_params(struct rockchip_clk_pll *pll,
+					struct rockchip_pll_rate_table *rate)
+{
+	u32 pllcon;
+
+	pllcon = readl_relaxed(pll->reg_base + RK3066_PLLCON(0));
+	rate->nr = ((pllcon >> RK3066_PLLCON0_NR_SHIFT)
+				& RK3066_PLLCON0_NR_MASK) + 1;
+	rate->no = ((pllcon >> RK3066_PLLCON0_OD_SHIFT)
+				& RK3066_PLLCON0_OD_MASK) + 1;
+
+	pllcon = readl_relaxed(pll->reg_base + RK3066_PLLCON(1));
+	rate->nf = ((pllcon >> RK3066_PLLCON1_NF_SHIFT)
+				& RK3066_PLLCON1_NF_MASK) + 1;
+
+	pllcon = readl_relaxed(pll->reg_base + RK3066_PLLCON(2));
+	rate->nb = ((pllcon >> RK3066_PLLCON2_NB_SHIFT)
+				& RK3066_PLLCON2_NB_MASK) + 1;
+}
+
 static unsigned long rockchip_rk3066_pll_recalc_rate(struct clk_hw *hw,
 						     unsigned long prate)
 {
 	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
-	u64 nf, nr, no, rate64 = prate;
+	struct rockchip_pll_rate_table cur;
+	u64 rate64 = prate;
 	u32 pllcon;
 
-	pllcon = readl(pll->reg_base + RK3066_PLLCON(3));
+	pllcon = readl_relaxed(pll->reg_base + RK3066_PLLCON(3));
 	if (pllcon & RK3066_PLLCON3_BYPASS) {
 		pr_debug("%s: pll %s is bypassed\n", __func__,
 			clk_hw_get_name(hw));
 		return prate;
 	}
 
-	pllcon = readl(pll->reg_base + RK3066_PLLCON(1));
-	nf = (pllcon >> RK3066_PLLCON1_NF_SHIFT) & RK3066_PLLCON1_NF_MASK;
-
-	pllcon = readl(pll->reg_base + RK3066_PLLCON(0));
-	nr = (pllcon >> RK3066_PLLCON0_NR_SHIFT) & RK3066_PLLCON0_NR_MASK;
-	no = (pllcon >> RK3066_PLLCON0_OD_SHIFT) & RK3066_PLLCON0_OD_MASK;
-
-	rate64 *= (nf + 1);
-	do_div(rate64, nr + 1);
-	do_div(rate64, no + 1);
+	rockchip_rk3066_pll_get_params(pll, &cur);
 
-	pr_debug("%s: %s rate=%lu\n",
-		 __func__, clk_hw_get_name(hw), (unsigned long)rate64);
+	rate64 *= cur.nf;
+	do_div(rate64, cur.nr);
+	do_div(rate64, cur.no);
 
 	return (unsigned long)rate64;
 }
 
-static int rockchip_rk3066_pll_set_rate(struct clk_hw *hw, unsigned long drate,
-					unsigned long prate)
+static int rockchip_rk3066_pll_set_params(struct rockchip_clk_pll *pll,
+				const struct rockchip_pll_rate_table *rate)
 {
-	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
-	const struct rockchip_pll_rate_table *rate;
-	unsigned long old_rate = rockchip_rk3066_pll_recalc_rate(hw, prate);
-	struct clk_hw *pll_mux = &pll->pll_mux;
 	const struct clk_ops *pll_mux_ops = pll->pll_mux_ops;
+	struct clk_mux *pll_mux = &pll->pll_mux;
+	struct rockchip_pll_rate_table cur;
 	int rate_change_remuxed = 0;
 	int cur_parent;
 	int ret;
 
-	if (old_rate == drate)
-		return 0;
-
-	pr_debug("%s: changing %s from %lu to %lu with a parent rate of %lu\n",
-		 __func__, clk_hw_get_name(hw), old_rate, drate, prate);
-
-	/* Get required rate settings from table */
-	rate = rockchip_get_pll_settings(pll, drate);
-	if (!rate) {
-		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
-			drate, clk_hw_get_name(hw));
-		return -EINVAL;
-	}
-
 	pr_debug("%s: rate settings for %lu (nr, no, nf): (%d, %d, %d)\n",
 		 __func__, rate->rate, rate->nr, rate->no, rate->nf);
 
-	cur_parent = pll_mux_ops->get_parent(pll_mux);
+	rockchip_rk3066_pll_get_params(pll, &cur);
+	cur.rate = 0;
+
+	cur_parent = pll_mux_ops->get_parent(&pll_mux->hw);
 	if (cur_parent == PLL_MODE_NORM) {
-		pll_mux_ops->set_parent(pll_mux, PLL_MODE_SLOW);
+		pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_SLOW);
 		rate_change_remuxed = 1;
 	}
 
@@ -189,11 +453,11 @@ static int rockchip_rk3066_pll_set_rate(struct clk_hw *hw, unsigned long drate,
 					   RK3066_PLLCON0_OD_SHIFT),
 	       pll->reg_base + RK3066_PLLCON(0));
 
-	writel(HIWORD_UPDATE(rate->nf - 1, RK3066_PLLCON1_NF_MASK,
+	writel_relaxed(HIWORD_UPDATE(rate->nf - 1, RK3066_PLLCON1_NF_MASK,
 						   RK3066_PLLCON1_NF_SHIFT),
 		       pll->reg_base + RK3066_PLLCON(1));
-	writel(HIWORD_UPDATE(rate->bwadj, RK3066_PLLCON2_BWADJ_MASK,
-						  RK3066_PLLCON2_BWADJ_SHIFT),
+	writel_relaxed(HIWORD_UPDATE(rate->nb - 1, RK3066_PLLCON2_NB_MASK,
+						   RK3066_PLLCON2_NB_SHIFT),
 		       pll->reg_base + RK3066_PLLCON(2));
 
 	/* leave reset and wait the reset_delay */
@@ -204,23 +468,44 @@ static int rockchip_rk3066_pll_set_rate(struct clk_hw *hw, unsigned long drate,
 	/* wait for the pll to lock */
 	ret = rockchip_pll_wait_lock(pll);
 	if (ret) {
-		pr_warn("%s: pll did not lock, trying to restore old rate %lu\n",
-			__func__, old_rate);
-		rockchip_rk3066_pll_set_rate(hw, old_rate, prate);
+		pr_warn("%s: pll update unsuccessful, trying to restore old params\n",
+			__func__);
+		rockchip_rk3066_pll_set_params(pll, &cur);
 	}
 
 	if (rate_change_remuxed)
-		pll_mux_ops->set_parent(pll_mux, PLL_MODE_NORM);
+		pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_NORM);
 
 	return ret;
 }
 
+static int rockchip_rk3066_pll_set_rate(struct clk_hw *hw, unsigned long drate,
+					unsigned long prate)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	const struct rockchip_pll_rate_table *rate;
+
+	pr_debug("%s: changing %s to %lu with a parent rate of %lu\n",
+		 __func__, clk_hw_get_name(hw), drate, prate);
+
+	/* Get required rate settings from table */
+	rate = rockchip_get_pll_settings(pll, drate);
+	if (!rate) {
+		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
+			drate, clk_hw_get_name(hw));
+		return -EINVAL;
+	}
+
+	return rockchip_rk3066_pll_set_params(pll, rate);
+}
+
 static int rockchip_rk3066_pll_enable(struct clk_hw *hw)
 {
 	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
 
 	writel(HIWORD_UPDATE(0, RK3066_PLLCON3_PWRDOWN, 0),
 	       pll->reg_base + RK3066_PLLCON(3));
+	rockchip_pll_wait_lock(pll);
 
 	return 0;
 }
@@ -242,6 +527,38 @@ static int rockchip_rk3066_pll_is_enabled(struct clk_hw *hw)
 	return !(pllcon & RK3066_PLLCON3_PWRDOWN);
 }
 
+static int rockchip_rk3066_pll_init(struct clk_hw *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	const struct rockchip_pll_rate_table *rate;
+	struct rockchip_pll_rate_table cur;
+	unsigned long drate;
+
+	if (!(pll->flags & ROCKCHIP_PLL_SYNC_RATE))
+		return 0;
+
+	drate = clk_hw_get_rate(hw);
+	rate = rockchip_get_pll_settings(pll, drate);
+
+	/* when no rate setting for the current rate, rely on clk_set_rate */
+	if (!rate)
+		return 0;
+
+	rockchip_rk3066_pll_get_params(pll, &cur);
+
+	pr_debug("%s: pll %s@%lu: nr (%d:%d); no (%d:%d); nf(%d:%d), nb(%d:%d)\n",
+		 __func__, clk_hw_get_name(hw), drate, rate->nr, cur.nr,
+		 rate->no, cur.no, rate->nf, cur.nf, rate->nb, cur.nb);
+	if (rate->nr != cur.nr || rate->no != cur.no || rate->nf != cur.nf
+						     || rate->nb != cur.nb) {
+		pr_debug("%s: pll %s: rate params do not match rate table, adjusting\n",
+			 __func__, clk_hw_get_name(hw));
+		rockchip_rk3066_pll_set_params(pll, rate);
+	}
+
+	return 0;
+}
+
 static const struct clk_ops rockchip_rk3066_pll_clk_norate_ops = {
 	.recalc_rate = rockchip_rk3066_pll_recalc_rate,
 	.enable = rockchip_rk3066_pll_enable,
@@ -256,44 +573,351 @@ static const struct clk_ops rockchip_rk3066_pll_clk_ops = {
 	.enable = rockchip_rk3066_pll_enable,
 	.disable = rockchip_rk3066_pll_disable,
 	.is_enabled = rockchip_rk3066_pll_is_enabled,
+	.init = rockchip_rk3066_pll_init,
+};
+
+/*
+ * PLL used in RK3399
+ */
+
+#define RK3399_PLLCON(i)			(i * 0x4)
+#define RK3399_PLLCON0_FBDIV_MASK		0xfff
+#define RK3399_PLLCON0_FBDIV_SHIFT		0
+#define RK3399_PLLCON1_REFDIV_MASK		0x3f
+#define RK3399_PLLCON1_REFDIV_SHIFT		0
+#define RK3399_PLLCON1_POSTDIV1_MASK		0x7
+#define RK3399_PLLCON1_POSTDIV1_SHIFT		8
+#define RK3399_PLLCON1_POSTDIV2_MASK		0x7
+#define RK3399_PLLCON1_POSTDIV2_SHIFT		12
+#define RK3399_PLLCON2_FRAC_MASK		0xffffff
+#define RK3399_PLLCON2_FRAC_SHIFT		0
+#define RK3399_PLLCON2_LOCK_STATUS		BIT(31)
+#define RK3399_PLLCON3_PWRDOWN			BIT(0)
+#define RK3399_PLLCON3_DSMPD_MASK		0x1
+#define RK3399_PLLCON3_DSMPD_SHIFT		3
+
+static int rockchip_rk3399_pll_wait_lock(struct rockchip_clk_pll *pll)
+{
+	u32 pllcon;
+	int ret;
+
+	/*
+	 * Lock time typical 250, max 500 input clock cycles @24MHz
+	 * So define a very safe maximum of 1000us, meaning 24000 cycles.
+	 */
+	ret = readl_relaxed_poll_timeout(pll->reg_base + RK3399_PLLCON(2),
+					 pllcon,
+					 pllcon & RK3399_PLLCON2_LOCK_STATUS,
+					 1000);
+	if (ret)
+		pr_err("%s: timeout waiting for pll to lock\n", __func__);
+
+	return ret;
+}
+
+static void rockchip_rk3399_pll_get_params(struct rockchip_clk_pll *pll,
+					struct rockchip_pll_rate_table *rate)
+{
+	u32 pllcon;
+
+	pllcon = readl_relaxed(pll->reg_base + RK3399_PLLCON(0));
+	rate->fbdiv = ((pllcon >> RK3399_PLLCON0_FBDIV_SHIFT)
+				& RK3399_PLLCON0_FBDIV_MASK);
+
+	pllcon = readl_relaxed(pll->reg_base + RK3399_PLLCON(1));
+	rate->refdiv = ((pllcon >> RK3399_PLLCON1_REFDIV_SHIFT)
+				& RK3399_PLLCON1_REFDIV_MASK);
+	rate->postdiv1 = ((pllcon >> RK3399_PLLCON1_POSTDIV1_SHIFT)
+				& RK3399_PLLCON1_POSTDIV1_MASK);
+	rate->postdiv2 = ((pllcon >> RK3399_PLLCON1_POSTDIV2_SHIFT)
+				& RK3399_PLLCON1_POSTDIV2_MASK);
+
+	pllcon = readl_relaxed(pll->reg_base + RK3399_PLLCON(2));
+	rate->frac = ((pllcon >> RK3399_PLLCON2_FRAC_SHIFT)
+				& RK3399_PLLCON2_FRAC_MASK);
+
+	pllcon = readl_relaxed(pll->reg_base + RK3399_PLLCON(3));
+	rate->dsmpd = ((pllcon >> RK3399_PLLCON3_DSMPD_SHIFT)
+				& RK3399_PLLCON3_DSMPD_MASK);
+}
+
+static unsigned long rockchip_rk3399_pll_recalc_rate(struct clk_hw *hw,
+						     unsigned long prate)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	struct rockchip_pll_rate_table cur;
+	u64 rate64 = prate;
+
+	rockchip_rk3399_pll_get_params(pll, &cur);
+
+	rate64 *= cur.fbdiv;
+	do_div(rate64, cur.refdiv);
+
+	if (cur.dsmpd == 0) {
+		/* fractional mode */
+		u64 frac_rate64 = prate * cur.frac;
+
+		do_div(frac_rate64, cur.refdiv);
+		rate64 += frac_rate64 >> 24;
+	}
+
+	do_div(rate64, cur.postdiv1);
+	do_div(rate64, cur.postdiv2);
+
+	return (unsigned long)rate64;
+}
+
+static int rockchip_rk3399_pll_set_params(struct rockchip_clk_pll *pll,
+				const struct rockchip_pll_rate_table *rate)
+{
+	const struct clk_ops *pll_mux_ops = pll->pll_mux_ops;
+	struct clk_mux *pll_mux = &pll->pll_mux;
+	struct rockchip_pll_rate_table cur;
+	u32 pllcon;
+	int rate_change_remuxed = 0;
+	int cur_parent;
+	int ret;
+
+	pr_debug("%s: rate settings for %lu fbdiv: %d, postdiv1: %d, refdiv: %d, postdiv2: %d, dsmpd: %d, frac: %d\n",
+		__func__, rate->rate, rate->fbdiv, rate->postdiv1, rate->refdiv,
+		rate->postdiv2, rate->dsmpd, rate->frac);
+
+	rockchip_rk3399_pll_get_params(pll, &cur);
+	cur.rate = 0;
+
+	cur_parent = pll_mux_ops->get_parent(&pll_mux->hw);
+	if (cur_parent == PLL_MODE_NORM) {
+		pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_SLOW);
+		rate_change_remuxed = 1;
+	}
+
+	/* update pll values */
+	writel_relaxed(HIWORD_UPDATE(rate->fbdiv, RK3399_PLLCON0_FBDIV_MASK,
+						  RK3399_PLLCON0_FBDIV_SHIFT),
+		       pll->reg_base + RK3399_PLLCON(0));
+
+	writel_relaxed(HIWORD_UPDATE(rate->refdiv, RK3399_PLLCON1_REFDIV_MASK,
+						   RK3399_PLLCON1_REFDIV_SHIFT) |
+		       HIWORD_UPDATE(rate->postdiv1, RK3399_PLLCON1_POSTDIV1_MASK,
+						     RK3399_PLLCON1_POSTDIV1_SHIFT) |
+		       HIWORD_UPDATE(rate->postdiv2, RK3399_PLLCON1_POSTDIV2_MASK,
+						     RK3399_PLLCON1_POSTDIV2_SHIFT),
+		       pll->reg_base + RK3399_PLLCON(1));
+
+	/* xPLL CON2 is not HIWORD_MASK */
+	pllcon = readl_relaxed(pll->reg_base + RK3399_PLLCON(2));
+	pllcon &= ~(RK3399_PLLCON2_FRAC_MASK << RK3399_PLLCON2_FRAC_SHIFT);
+	pllcon |= rate->frac << RK3399_PLLCON2_FRAC_SHIFT;
+	writel_relaxed(pllcon, pll->reg_base + RK3399_PLLCON(2));
+
+	writel_relaxed(HIWORD_UPDATE(rate->dsmpd, RK3399_PLLCON3_DSMPD_MASK,
+					    RK3399_PLLCON3_DSMPD_SHIFT),
+		       pll->reg_base + RK3399_PLLCON(3));
+
+	/* wait for the pll to lock */
+	ret = rockchip_rk3399_pll_wait_lock(pll);
+	if (ret) {
+		pr_warn("%s: pll update unsuccessful, trying to restore old params\n",
+			__func__);
+		rockchip_rk3399_pll_set_params(pll, &cur);
+	}
+
+	if (rate_change_remuxed)
+		pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_NORM);
+
+	return ret;
+}
+
+static int rockchip_rk3399_pll_set_rate(struct clk_hw *hw, unsigned long drate,
+					unsigned long prate)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	const struct rockchip_pll_rate_table *rate;
+
+	pr_debug("%s: changing %s to %lu with a parent rate of %lu\n",
+		 __func__, clk_hw_get_name(hw), drate, prate);
+
+	/* Get required rate settings from table */
+	rate = rockchip_get_pll_settings(pll, drate);
+	if (!rate) {
+		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
+			drate, clk_hw_get_name(hw));
+		return -EINVAL;
+	}
+
+	return rockchip_rk3399_pll_set_params(pll, rate);
+}
+
+static int rockchip_rk3399_pll_enable(struct clk_hw *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+
+	writel(HIWORD_UPDATE(0, RK3399_PLLCON3_PWRDOWN, 0),
+	       pll->reg_base + RK3399_PLLCON(3));
+	rockchip_rk3399_pll_wait_lock(pll);
+
+	return 0;
+}
+
+static void rockchip_rk3399_pll_disable(struct clk_hw *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+
+	writel(HIWORD_UPDATE(RK3399_PLLCON3_PWRDOWN,
+			     RK3399_PLLCON3_PWRDOWN, 0),
+	       pll->reg_base + RK3399_PLLCON(3));
+}
+
+static int rockchip_rk3399_pll_is_enabled(struct clk_hw *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	u32 pllcon = readl(pll->reg_base + RK3399_PLLCON(3));
+
+	return !(pllcon & RK3399_PLLCON3_PWRDOWN);
+}
+
+static int rockchip_rk3399_pll_init(struct clk_hw *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	const struct rockchip_pll_rate_table *rate;
+	struct rockchip_pll_rate_table cur;
+	unsigned long drate;
+
+	if (!(pll->flags & ROCKCHIP_PLL_SYNC_RATE))
+		return 0;
+
+	drate = clk_hw_get_rate(hw);
+	rate = rockchip_get_pll_settings(pll, drate);
+
+	/* when no rate setting for the current rate, rely on clk_set_rate */
+	if (!rate)
+		return 0;
+
+	rockchip_rk3399_pll_get_params(pll, &cur);
+
+	pr_debug("%s: pll %s@%lu: Hz\n", __func__, clk_hw_get_name(hw),
+		 drate);
+	pr_debug("old - fbdiv: %d, postdiv1: %d, refdiv: %d, postdiv2: %d, dsmpd: %d, frac: %d\n",
+		 cur.fbdiv, cur.postdiv1, cur.refdiv, cur.postdiv2,
+		 cur.dsmpd, cur.frac);
+	pr_debug("new - fbdiv: %d, postdiv1: %d, refdiv: %d, postdiv2: %d, dsmpd: %d, frac: %d\n",
+		 rate->fbdiv, rate->postdiv1, rate->refdiv, rate->postdiv2,
+		 rate->dsmpd, rate->frac);
+
+	if (rate->fbdiv != cur.fbdiv || rate->postdiv1 != cur.postdiv1 ||
+		rate->refdiv != cur.refdiv || rate->postdiv2 != cur.postdiv2 ||
+		rate->dsmpd != cur.dsmpd ||
+		(!cur.dsmpd && (rate->frac != cur.frac))) {
+		struct clk *parent = clk_get_parent(clk_hw_to_clk(hw));
+
+		if (!parent) {
+			pr_warn("%s: parent of %s not available\n",
+				__func__, clk_hw_get_name(hw));
+			return 0;
+		}
+
+		pr_debug("%s: pll %s: rate params do not match rate table, adjusting\n",
+			 __func__, clk_hw_get_name(hw));
+		rockchip_rk3399_pll_set_params(pll, rate);
+	}
+
+	return 0;
+}
+
+static const struct clk_ops rockchip_rk3399_pll_clk_norate_ops = {
+	.recalc_rate = rockchip_rk3399_pll_recalc_rate,
+	.enable = rockchip_rk3399_pll_enable,
+	.disable = rockchip_rk3399_pll_disable,
+	.is_enabled = rockchip_rk3399_pll_is_enabled,
+};
+
+static const struct clk_ops rockchip_rk3399_pll_clk_ops = {
+	.recalc_rate = rockchip_rk3399_pll_recalc_rate,
+	.round_rate = rockchip_pll_round_rate,
+	.set_rate = rockchip_rk3399_pll_set_rate,
+	.enable = rockchip_rk3399_pll_enable,
+	.disable = rockchip_rk3399_pll_disable,
+	.is_enabled = rockchip_rk3399_pll_is_enabled,
+	.init = rockchip_rk3399_pll_init,
 };
 
 /*
  * Common registering of pll clocks
  */
 
-struct clk *rockchip_clk_register_pll(enum rockchip_pll_type pll_type,
-		const char *name, const char **parent_names, u8 num_parents,
-		void __iomem *base, int con_offset, int grf_lock_offset,
+struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
+		enum rockchip_pll_type pll_type,
+		const char *name, const char *const *parent_names,
+		u8 num_parents, int con_offset, int grf_lock_offset,
 		int lock_shift, int mode_offset, int mode_shift,
 		struct rockchip_pll_rate_table *rate_table,
-		u8 clk_pll_flags)
+		unsigned long flags, u8 clk_pll_flags)
 {
-	const char **pll_parents;
+	const char *pll_parents[3];
+	struct clk_init_data init;
 	struct rockchip_clk_pll *pll;
-	struct clk *pll_mux;
-	struct clk *mux_clk;
-	int ret;
+	struct clk_mux *pll_mux;
+	struct clk *pll_clk, *mux_clk;
+	char pll_name[20];
 
-	if (num_parents != 2) {
+	if ((pll_type != pll_rk3328 && num_parents != 2) ||
+	    (pll_type == pll_rk3328 && num_parents != 1)) {
 		pr_err("%s: needs two parent clocks\n", __func__);
 		return ERR_PTR(-EINVAL);
 	}
 
+	/* name the actual pll */
+	snprintf(pll_name, sizeof(pll_name), "pll_%s", name);
+
 	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
 	if (!pll)
 		return ERR_PTR(-ENOMEM);
 
-	pll_parents = kzalloc(sizeof(char *)*3, GFP_KERNEL);
-	if (!pll_parents)
-		return ERR_PTR(-ENOMEM);
+	/* create the mux on top of the real pll */
+	pll->pll_mux_ops = &clk_mux_ops;
+	pll_mux = &pll->pll_mux;
+	pll_mux->reg = ctx->reg_base + mode_offset;
+	pll_mux->shift = mode_shift;
+	if (pll_type == pll_rk3328)
+		pll_mux->width = PLL_RK3328_MODE_WIDTH;
+	else
+		pll_mux->width = PLL_MODE_WIDTH;
+	pll_mux->flags = 0;
+	pll_mux->lock = &ctx->lock;
+	pll_mux->hw.init = &init;
+
+	if (pll_type == pll_rk3036 ||
+	    pll_type == pll_rk3066 ||
+	    pll_type == pll_rk3328 ||
+	    pll_type == pll_rk3399)
+		pll_mux->flags |= CLK_MUX_HIWORD_MASK;
 
-	/* name the actual pll */
-	snprintf(pll->pll_name, sizeof(pll->pll_name), "pll_%s", name);
-	pll->hw.clk.name = pll->pll_name;
+	/* the actual muxing is xin24m, pll-output, xin32k */
+	pll_parents[0] = parent_names[0];
+	pll_parents[1] = pll_name;
+	pll_parents[2] = parent_names[1];
 
-	pll->hw.clk.parent_names = &parent_names[0];
-	pll->hw.clk.num_parents = 1;
+	init.name = name;
+	init.flags = CLK_SET_RATE_PARENT;
+	init.ops = pll->pll_mux_ops;
+	init.parent_names = pll_parents;
+	if (pll_type == pll_rk3328)
+		init.num_parents = 2;
+	else
+		init.num_parents = ARRAY_SIZE(pll_parents);
+
+	mux_clk = clk_register(NULL, &pll_mux->hw);
+	if (IS_ERR(mux_clk))
+		goto err_mux;
+
+	/* now create the actual pll */
+	init.name = pll_name;
+
+	/* keep all plls untouched for now */
+	init.flags = flags | CLK_IGNORE_UNUSED;
+
+	init.parent_names = &parent_names[0];
+	init.num_parents = 1;
 
 	if (rate_table) {
 		int len;
@@ -303,61 +927,62 @@ struct clk *rockchip_clk_register_pll(enum rockchip_pll_type pll_type,
 			len++;
 
 		pll->rate_count = len;
-		pll->rate_table = xmemdup(rate_table,
+		pll->rate_table = kmemdup(rate_table,
 					pll->rate_count *
-					sizeof(struct rockchip_pll_rate_table)
-					);
+					sizeof(struct rockchip_pll_rate_table),
+					GFP_KERNEL);
 		WARN(!pll->rate_table,
 			"%s: could not allocate rate table for %s\n",
 			__func__, name);
 	}
 
 	switch (pll_type) {
+	case pll_rk3036:
+	case pll_rk3328:
+		if (!pll->rate_table || IS_ERR(ctx->grf))
+			init.ops = &rockchip_rk3036_pll_clk_norate_ops;
+		else
+			init.ops = &rockchip_rk3036_pll_clk_ops;
+		break;
 	case pll_rk3066:
+		if (!pll->rate_table || IS_ERR(ctx->grf))
+			init.ops = &rockchip_rk3066_pll_clk_norate_ops;
+		else
+			init.ops = &rockchip_rk3066_pll_clk_ops;
+		break;
+	case pll_rk3399:
 		if (!pll->rate_table)
-			pll->hw.clk.ops = &rockchip_rk3066_pll_clk_norate_ops;
+			init.ops = &rockchip_rk3399_pll_clk_norate_ops;
 		else
-			pll->hw.clk.ops = &rockchip_rk3066_pll_clk_ops;
+			init.ops = &rockchip_rk3399_pll_clk_ops;
 		break;
 	default:
 		pr_warn("%s: Unknown pll type for pll clk %s\n",
 			__func__, name);
 	}
 
+	pll->hw.init = &init;
 	pll->type = pll_type;
-	pll->reg_base = base + con_offset;
+	pll->reg_base = ctx->reg_base + con_offset;
 	pll->lock_offset = grf_lock_offset;
 	pll->lock_shift = lock_shift;
 	pll->flags = clk_pll_flags;
-
-	ret = bclk_register(&pll->hw.clk);
-	if (ret) {
-		pr_err("%s: failed to register pll clock %s : %d\n",
-			__func__, name, ret);
-		mux_clk = &pll->hw.clk;
-		goto err_exit;
+	pll->lock = &ctx->lock;
+	pll->ctx = ctx;
+
+	pll_clk = clk_register(NULL, &pll->hw);
+	if (IS_ERR(pll_clk)) {
+		pr_err("%s: failed to register pll clock %s : %ld\n",
+			__func__, name, PTR_ERR(pll_clk));
+		goto err_pll;
 	}
 
-	/* the actual muxing is xin24m, pll-output, xin32k */
-	pll_parents[0] = parent_names[0];
-	pll_parents[1] = pll->pll_name;
-	pll_parents[2] = parent_names[1];
-
-	pll_mux = clk_mux_alloc(name, CLK_SET_RATE_PARENT, base + mode_offset, mode_shift,
-				PLL_MODE_MASK, pll_parents, 3, 0);
-	pll->pll_mux_ops = pll_mux->ops;
-	mux_clk = pll_mux;
-
-	if (pll_type == pll_rk3066)
-		pll_mux->flags |= CLK_MUX_HIWORD_MASK;
-
-	ret = bclk_register(pll_mux);
-	if (ret)
-		goto err_exit;
-
 	return mux_clk;
 
-err_exit:
+err_pll:
+	clk_unregister(mux_clk);
+	mux_clk = pll_clk;
+err_mux:
 	kfree(pll);
 	return mux_clk;
 }
diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
index 61dfb27ef4..8597a9d229 100644
--- a/drivers/clk/rockchip/clk-rk3188.c
+++ b/drivers/clk/rockchip/clk-rk3188.c
@@ -20,7 +20,7 @@ enum rk3188_plls {
 	apll, cpll, dpll, gpll,
 };
 
-struct rockchip_pll_rate_table rk3188_pll_rates[] = {
+static struct rockchip_pll_rate_table rk3188_pll_rates[] = {
 	RK3066_PLL_RATE(2208000000, 1, 92, 1),
 	RK3066_PLL_RATE(2184000000, 1, 91, 1),
 	RK3066_PLL_RATE(2160000000, 1, 90, 1),
@@ -82,6 +82,7 @@ struct rockchip_pll_rate_table rk3188_pll_rates[] = {
 	RK3066_PLL_RATE( 504000000, 1, 84, 4),
 	RK3066_PLL_RATE( 456000000, 1, 76, 4),
 	RK3066_PLL_RATE( 408000000, 1, 68, 4),
+	RK3066_PLL_RATE( 400000000, 3, 100, 2),
 	RK3066_PLL_RATE( 384000000, 2, 128, 4),
 	RK3066_PLL_RATE( 360000000, 1, 60, 4),
 	RK3066_PLL_RATE( 312000000, 1, 52, 4),
@@ -145,10 +146,14 @@ static struct rockchip_cpuclk_rate_table rk3066_cpuclk_rates[] __initdata = {
 };
 
 static const struct rockchip_cpuclk_reg_data rk3066_cpuclk_data = {
-	.core_reg = RK2928_CLKSEL_CON(0),
-	.div_core_shift = 0,
-	.div_core_mask = 0x1f,
+	.core_reg[0] = RK2928_CLKSEL_CON(0),
+	.div_core_shift[0] = 0,
+	.div_core_mask[0] = 0x1f,
+	.num_cores = 1,
+	.mux_core_alt = 1,
+	.mux_core_main = 0,
 	.mux_core_shift = 8,
+	.mux_core_mask = 0x1,
 };
 
 #define RK3188_DIV_ACLK_CORE_MASK	0x7
@@ -181,10 +186,14 @@ static struct rockchip_cpuclk_rate_table rk3188_cpuclk_rates[] __initdata = {
 };
 
 static const struct rockchip_cpuclk_reg_data rk3188_cpuclk_data = {
-	.core_reg = RK2928_CLKSEL_CON(0),
-	.div_core_shift = 9,
-	.div_core_mask = 0x1f,
+	.core_reg[0] = RK2928_CLKSEL_CON(0),
+	.div_core_shift[0] = 9,
+	.div_core_mask[0] = 0x1f,
+	.num_cores = 1,
+	.mux_core_alt = 1,
+	.mux_core_main = 0,
 	.mux_core_shift = 8,
+	.mux_core_mask = 0x1,
 };
 
 PNAME(mux_pll_p)		= { "xin24m", "xin32k" };
@@ -195,7 +204,7 @@ PNAME(mux_pll_src_cpll_gpll_p)	= { "cpll", "gpll" };
 PNAME(mux_aclk_cpu_p)		= { "apll", "gpll" };
 PNAME(mux_sclk_cif0_p)		= { "cif0_pre", "xin24m" };
 PNAME(mux_sclk_i2s0_p)		= { "i2s0_pre", "i2s0_frac", "xin12m" };
-PNAME(mux_sclk_spdif_p)		= { "spdif_src", "spdif_frac", "xin12m" };
+PNAME(mux_sclk_spdif_p)		= { "spdif_pre", "spdif_frac", "xin12m" };
 PNAME(mux_sclk_uart0_p)		= { "uart0_pre", "uart0_frac", "xin24m" };
 PNAME(mux_sclk_uart1_p)		= { "uart1_pre", "uart1_frac", "xin24m" };
 PNAME(mux_sclk_uart2_p)		= { "uart2_pre", "uart2_frac", "xin24m" };
@@ -229,6 +238,7 @@ static struct rockchip_pll_clock rk3188_pll_clks[] __initdata = {
 #define MFLAGS CLK_MUX_HIWORD_MASK
 #define DFLAGS CLK_DIVIDER_HIWORD_MASK
 #define GFLAGS (CLK_GATE_HIWORD_MASK | CLK_GATE_SET_TO_DISABLE)
+#define IFLAGS ROCKCHIP_INVERTER_HIWORD_MASK
 
 /* 2 ^ (val + 1) */
 static struct clk_div_table div_core_peri_t[] = {
@@ -239,6 +249,30 @@ static struct clk_div_table div_core_peri_t[] = {
 	{ /* sentinel */ },
 };
 
+static struct rockchip_clk_branch common_hsadc_out_fracmux __initdata =
+	MUX(0, "sclk_hsadc_out", mux_sclk_hsadc_p, 0,
+			RK2928_CLKSEL_CON(22), 4, 2, MFLAGS);
+
+static struct rockchip_clk_branch common_spdif_fracmux __initdata =
+	MUX(SCLK_SPDIF, "sclk_spdif", mux_sclk_spdif_p, CLK_SET_RATE_PARENT,
+			RK2928_CLKSEL_CON(5), 8, 2, MFLAGS);
+
+static struct rockchip_clk_branch common_uart0_fracmux __initdata =
+	MUX(SCLK_UART0, "sclk_uart0", mux_sclk_uart0_p, CLK_SET_RATE_PARENT,
+			RK2928_CLKSEL_CON(13), 8, 2, MFLAGS);
+
+static struct rockchip_clk_branch common_uart1_fracmux __initdata =
+	MUX(SCLK_UART1, "sclk_uart1", mux_sclk_uart1_p, CLK_SET_RATE_PARENT,
+			RK2928_CLKSEL_CON(14), 8, 2, MFLAGS);
+
+static struct rockchip_clk_branch common_uart2_fracmux __initdata =
+	MUX(SCLK_UART2, "sclk_uart2", mux_sclk_uart2_p, CLK_SET_RATE_PARENT,
+			RK2928_CLKSEL_CON(15), 8, 2, MFLAGS);
+
+static struct rockchip_clk_branch common_uart3_fracmux __initdata =
+	MUX(SCLK_UART3, "sclk_uart3", mux_sclk_uart3_p, CLK_SET_RATE_PARENT,
+			RK2928_CLKSEL_CON(16), 8, 2, MFLAGS);
+
 static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 	/*
 	 * Clock-Architecture Diagram 2
@@ -251,15 +285,15 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(0), 6, 2, DFLAGS | CLK_DIVIDER_READ_ONLY,
 			div_core_peri_t, RK2928_CLKGATE_CON(0), 0, GFLAGS),
 
-	COMPOSITE(0, "aclk_vepu", mux_pll_src_cpll_gpll_p, 0,
+	COMPOSITE(ACLK_VEPU, "aclk_vepu", mux_pll_src_cpll_gpll_p, 0,
 			RK2928_CLKSEL_CON(32), 7, 1, MFLAGS, 0, 5, DFLAGS,
 			RK2928_CLKGATE_CON(3), 9, GFLAGS),
-	GATE(0, "hclk_vepu", "aclk_vepu", 0,
+	GATE(HCLK_VEPU, "hclk_vepu", "aclk_vepu", 0,
 			RK2928_CLKGATE_CON(3), 10, GFLAGS),
-	COMPOSITE(0, "aclk_vdpu", mux_pll_src_cpll_gpll_p, 0,
+	COMPOSITE(ACLK_VDPU, "aclk_vdpu", mux_pll_src_cpll_gpll_p, 0,
 			RK2928_CLKSEL_CON(32), 15, 1, MFLAGS, 8, 5, DFLAGS,
 			RK2928_CLKGATE_CON(3), 11, GFLAGS),
-	GATE(0, "hclk_vdpu", "aclk_vdpu", 0,
+	GATE(HCLK_VDPU, "hclk_vdpu", "aclk_vdpu", 0,
 			RK2928_CLKGATE_CON(3), 12, GFLAGS),
 
 	GATE(0, "gpll_ddr", "gpll", CLK_IGNORE_UNUSED,
@@ -268,14 +302,14 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(26), 8, 1, MFLAGS, 0, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO,
 			RK2928_CLKGATE_CON(0), 2, GFLAGS),
 
-	GATE(0, "aclk_cpu", "aclk_cpu_pre", 0,
+	GATE(ACLK_CPU, "aclk_cpu", "aclk_cpu_pre", 0,
 			RK2928_CLKGATE_CON(0), 3, GFLAGS),
 
 	GATE(0, "atclk_cpu", "pclk_cpu_pre", 0,
 			RK2928_CLKGATE_CON(0), 6, GFLAGS),
-	GATE(0, "pclk_cpu", "pclk_cpu_pre", 0,
+	GATE(PCLK_CPU, "pclk_cpu", "pclk_cpu_pre", 0,
 			RK2928_CLKGATE_CON(0), 5, GFLAGS),
-	GATE(0, "hclk_cpu", "hclk_cpu_pre", CLK_IGNORE_UNUSED,
+	GATE(HCLK_CPU, "hclk_cpu", "hclk_cpu_pre", CLK_IGNORE_UNUSED,
 			RK2928_CLKGATE_CON(0), 4, GFLAGS),
 
 	COMPOSITE(0, "aclk_lcdc0_pre", mux_pll_src_cpll_gpll_p, CLK_IGNORE_UNUSED,
@@ -285,12 +319,12 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(31), 15, 1, MFLAGS, 8, 5, DFLAGS,
 			RK2928_CLKGATE_CON(1), 4, GFLAGS),
 
-	GATE(0, "aclk_peri", "aclk_peri_pre", 0,
+	GATE(ACLK_PERI, "aclk_peri", "aclk_peri_pre", 0,
 			RK2928_CLKGATE_CON(2), 1, GFLAGS),
-	COMPOSITE_NOMUX(0, "hclk_peri", "aclk_peri_pre", 0,
+	COMPOSITE_NOMUX(HCLK_PERI, "hclk_peri", "aclk_peri_pre", 0,
 			RK2928_CLKSEL_CON(10), 8, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO,
 			RK2928_CLKGATE_CON(2), 2, GFLAGS),
-	COMPOSITE_NOMUX(0, "pclk_peri", "aclk_peri_pre", 0,
+	COMPOSITE_NOMUX(PCLK_PERI, "pclk_peri", "aclk_peri_pre", 0,
 			RK2928_CLKSEL_CON(10), 12, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO,
 			RK2928_CLKGATE_CON(2), 3, GFLAGS),
 
@@ -304,14 +338,18 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 
 	GATE(0, "pclkin_cif0", "ext_cif0", 0,
 			RK2928_CLKGATE_CON(3), 3, GFLAGS),
+	INVERTER(0, "pclk_cif0", "pclkin_cif0",
+			RK2928_CLKSEL_CON(30), 8, IFLAGS),
+
+	FACTOR(0, "xin12m", "xin24m", 0, 1, 2),
 
 	/*
 	 * the 480m are generated inside the usb block from these clocks,
 	 * but they are also a source for the hsicphy clock.
 	 */
-	GATE(SCLK_OTGPHY0, "sclk_otgphy0", "usb480m", CLK_IGNORE_UNUSED,
+	GATE(SCLK_OTGPHY0, "sclk_otgphy0", "xin24m", CLK_IGNORE_UNUSED,
 			RK2928_CLKGATE_CON(1), 5, GFLAGS),
-	GATE(SCLK_OTGPHY1, "sclk_otgphy1", "usb480m", CLK_IGNORE_UNUSED,
+	GATE(SCLK_OTGPHY1, "sclk_otgphy1", "xin24m", CLK_IGNORE_UNUSED,
 			RK2928_CLKGATE_CON(1), 6, GFLAGS),
 
 	COMPOSITE(0, "mac_src", mux_mac_p, 0,
@@ -319,17 +357,18 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 			RK2928_CLKGATE_CON(2), 5, GFLAGS),
 	MUX(SCLK_MAC, "sclk_macref", mux_sclk_macref_p, CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(21), 4, 1, MFLAGS),
-	GATE(0, "sclk_mac_lbtest", "sclk_macref",
-			RK2928_CLKGATE_CON(2), 12, 0, GFLAGS),
+	GATE(0, "sclk_mac_lbtest", "sclk_macref", 0,
+			RK2928_CLKGATE_CON(2), 12, GFLAGS),
 
 	COMPOSITE(0, "hsadc_src", mux_pll_src_gpll_cpll_p, 0,
 			RK2928_CLKSEL_CON(22), 0, 1, MFLAGS, 8, 8, DFLAGS,
 			RK2928_CLKGATE_CON(2), 6, GFLAGS),
-	COMPOSITE_FRAC(0, "hsadc_frac", "hsadc_src", 0,
+	COMPOSITE_FRACMUX(0, "hsadc_frac", "hsadc_src", 0,
 			RK2928_CLKSEL_CON(23), 0,
-			RK2928_CLKGATE_CON(2), 7, GFLAGS),
-	MUX(SCLK_HSADC, "sclk_hsadc", mux_sclk_hsadc_p, 0,
-			RK2928_CLKSEL_CON(22), 4, 2, MFLAGS),
+			RK2928_CLKGATE_CON(2), 7, GFLAGS,
+			&common_hsadc_out_fracmux),
+	INVERTER(SCLK_HSADC, "sclk_hsadc", "sclk_hsadc_out",
+			RK2928_CLKSEL_CON(22), 7, IFLAGS),
 
 	COMPOSITE_NOMUX(SCLK_SARADC, "sclk_saradc", "xin24m", 0,
 			RK2928_CLKSEL_CON(24), 8, 8, DFLAGS,
@@ -338,18 +377,17 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 	COMPOSITE_NOMUX(0, "spdif_pre", "i2s_src", 0,
 			RK2928_CLKSEL_CON(5), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 13, GFLAGS),
-	COMPOSITE_FRAC(0, "spdif_frac", "spdif_pll", 0,
+	COMPOSITE_FRACMUX(0, "spdif_frac", "spdif_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(9), 0,
-			RK2928_CLKGATE_CON(0), 14, GFLAGS),
-	MUX(SCLK_SPDIF, "sclk_spdif", mux_sclk_spdif_p, 0,
-			RK2928_CLKSEL_CON(5), 8, 2, MFLAGS),
+			RK2928_CLKGATE_CON(0), 14, GFLAGS,
+			&common_spdif_fracmux),
 
 	/*
 	 * Clock-Architecture Diagram 4
 	 */
 
-	GATE(SCLK_SMC, "sclk_smc", "hclk_peri",
-			RK2928_CLKGATE_CON(2), 4, 0, GFLAGS),
+	GATE(SCLK_SMC, "sclk_smc", "hclk_peri", 0,
+			RK2928_CLKGATE_CON(2), 4, GFLAGS),
 
 	COMPOSITE_NOMUX(SCLK_SPI0, "sclk_spi0", "pclk_peri", 0,
 			RK2928_CLKSEL_CON(25), 0, 7, DFLAGS,
@@ -373,35 +411,31 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 	COMPOSITE_NOMUX(0, "uart0_pre", "uart_src", 0,
 			RK2928_CLKSEL_CON(13), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(1), 8, GFLAGS),
-	COMPOSITE_FRAC(0, "uart0_frac", "uart0_pre", 0,
+	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(17), 0,
-			RK2928_CLKGATE_CON(1), 9, GFLAGS),
-	MUX(SCLK_UART0, "sclk_uart0", mux_sclk_uart0_p, 0,
-			RK2928_CLKSEL_CON(13), 8, 2, MFLAGS),
+			RK2928_CLKGATE_CON(1), 9, GFLAGS,
+			&common_uart0_fracmux),
 	COMPOSITE_NOMUX(0, "uart1_pre", "uart_src", 0,
 			RK2928_CLKSEL_CON(14), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(1), 10, GFLAGS),
-	COMPOSITE_FRAC(0, "uart1_frac", "uart1_pre", 0,
+	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(18), 0,
-			RK2928_CLKGATE_CON(1), 11, GFLAGS),
-	MUX(SCLK_UART1, "sclk_uart1", mux_sclk_uart1_p, 0,
-			RK2928_CLKSEL_CON(14), 8, 2, MFLAGS),
+			RK2928_CLKGATE_CON(1), 11, GFLAGS,
+			&common_uart1_fracmux),
 	COMPOSITE_NOMUX(0, "uart2_pre", "uart_src", 0,
 			RK2928_CLKSEL_CON(15), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(1), 12, GFLAGS),
-	COMPOSITE_FRAC(0, "uart2_frac", "uart2_pre", 0,
+	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(19), 0,
-			RK2928_CLKGATE_CON(1), 13, GFLAGS),
-	MUX(SCLK_UART2, "sclk_uart2", mux_sclk_uart2_p, 0,
-			RK2928_CLKSEL_CON(15), 8, 2, MFLAGS),
+			RK2928_CLKGATE_CON(1), 13, GFLAGS,
+			&common_uart2_fracmux),
 	COMPOSITE_NOMUX(0, "uart3_pre", "uart_src", 0,
 			RK2928_CLKSEL_CON(16), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(1), 14, GFLAGS),
-	COMPOSITE_FRAC(0, "uart3_frac", "uart3_pre", 0,
+	COMPOSITE_FRACMUX(0, "uart3_frac", "uart3_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(20), 0,
-			RK2928_CLKGATE_CON(1), 15, GFLAGS),
-	MUX(SCLK_UART3, "sclk_uart3", mux_sclk_uart3_p, 0,
-			RK2928_CLKSEL_CON(16), 8, 2, MFLAGS),
+			RK2928_CLKGATE_CON(1), 15, GFLAGS,
+			&common_uart3_fracmux),
 
 	GATE(SCLK_JTAG, "jtag", "ext_jtag", 0, RK2928_CLKGATE_CON(1), 3, GFLAGS),
 
@@ -418,7 +452,6 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 
 	/* hclk_cpu gates */
 	GATE(HCLK_ROM, "hclk_rom", "hclk_cpu", 0, RK2928_CLKGATE_CON(5), 6, GFLAGS),
-	GATE(HCLK_I2S0, "hclk_i2s0", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 2, GFLAGS),
 	GATE(HCLK_SPDIF, "hclk_spdif", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 1, GFLAGS),
 	GATE(0, "hclk_cpubus", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 8, GFLAGS),
 	/* hclk_ahb2apb is part of a clk branch */
@@ -468,8 +501,8 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 	GATE(PCLK_GPIO2, "pclk_gpio2", "pclk_cpu", 0, RK2928_CLKGATE_CON(8), 11, GFLAGS),
 	GATE(PCLK_EFUSE, "pclk_efuse", "pclk_cpu", 0, RK2928_CLKGATE_CON(5), 2, GFLAGS),
 	GATE(PCLK_TZPC, "pclk_tzpc", "pclk_cpu", 0, RK2928_CLKGATE_CON(5), 3, GFLAGS),
-	GATE(0, "pclk_ddrupctl", "pclk_cpu", 0, RK2928_CLKGATE_CON(5), 7, GFLAGS),
-	GATE(0, "pclk_ddrpubl", "pclk_cpu", 0, RK2928_CLKGATE_CON(9), 6, GFLAGS),
+	GATE(PCLK_DDRUPCTL, "pclk_ddrupctl", "pclk_cpu", 0, RK2928_CLKGATE_CON(5), 7, GFLAGS),
+	GATE(PCLK_PUBL, "pclk_ddrpubl", "pclk_cpu", 0, RK2928_CLKGATE_CON(9), 6, GFLAGS),
 	GATE(0, "pclk_dbg", "pclk_cpu", 0, RK2928_CLKGATE_CON(9), 1, GFLAGS),
 	GATE(PCLK_GRF, "pclk_grf", "pclk_cpu", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(5), 4, GFLAGS),
 	GATE(PCLK_PMU, "pclk_pmu", "pclk_cpu", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(5), 5, GFLAGS),
@@ -511,6 +544,18 @@ static struct clk_div_table div_aclk_cpu_t[] = {
 	{ /* sentinel */ },
 };
 
+static struct rockchip_clk_branch rk3066a_i2s0_fracmux __initdata =
+	MUX(SCLK_I2S0, "sclk_i2s0", mux_sclk_i2s0_p, CLK_SET_RATE_PARENT,
+			RK2928_CLKSEL_CON(2), 8, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3066a_i2s1_fracmux __initdata =
+	MUX(SCLK_I2S1, "sclk_i2s1", mux_sclk_i2s1_p, CLK_SET_RATE_PARENT,
+			RK2928_CLKSEL_CON(3), 8, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3066a_i2s2_fracmux __initdata =
+	MUX(SCLK_I2S2, "sclk_i2s2", mux_sclk_i2s2_p, CLK_SET_RATE_PARENT,
+			RK2928_CLKSEL_CON(4), 8, 2, MFLAGS);
+
 static struct rockchip_clk_branch rk3066a_clk_branches[] __initdata = {
 	DIVTBL(0, "aclk_cpu_pre", "armclk", 0,
 			RK2928_CLKSEL_CON(1), 0, 3, DFLAGS | CLK_DIVIDER_READ_ONLY, div_aclk_cpu_t),
@@ -535,12 +580,12 @@ static struct rockchip_clk_branch rk3066a_clk_branches[] __initdata = {
 	COMPOSITE(0, "dclk_lcdc0_src", mux_pll_src_cpll_gpll_p, 0,
 			RK2928_CLKSEL_CON(27), 0, 1, MFLAGS, 8, 8, DFLAGS,
 			RK2928_CLKGATE_CON(3), 1, GFLAGS),
-	MUX(DCLK_LCDC0, "dclk_lcdc0", mux_rk3066_lcdc0_p, 0,
+	MUX(DCLK_LCDC0, "dclk_lcdc0", mux_rk3066_lcdc0_p, CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(27), 4, 1, MFLAGS),
 	COMPOSITE(0, "dclk_lcdc1_src", mux_pll_src_cpll_gpll_p, 0,
 			RK2928_CLKSEL_CON(28), 0, 1, MFLAGS, 8, 8, DFLAGS,
 			RK2928_CLKGATE_CON(3), 2, GFLAGS),
-	MUX(DCLK_LCDC1, "dclk_lcdc1", mux_rk3066_lcdc1_p, 0,
+	MUX(DCLK_LCDC1, "dclk_lcdc1", mux_rk3066_lcdc1_p, CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(28), 4, 1, MFLAGS),
 
 	COMPOSITE_NOMUX(0, "cif1_pre", "cif_src", 0,
@@ -551,6 +596,8 @@ static struct rockchip_clk_branch rk3066a_clk_branches[] __initdata = {
 
 	GATE(0, "pclkin_cif1", "ext_cif1", 0,
 			RK2928_CLKGATE_CON(3), 4, GFLAGS),
+	INVERTER(0, "pclk_cif1", "pclkin_cif1",
+			RK2928_CLKSEL_CON(30), 12, IFLAGS),
 
 	COMPOSITE(0, "aclk_gpu_src", mux_pll_src_cpll_gpll_p, 0,
 			RK2928_CLKSEL_CON(33), 8, 1, MFLAGS, 0, 5, DFLAGS,
@@ -561,7 +608,7 @@ static struct rockchip_clk_branch rk3066a_clk_branches[] __initdata = {
 	GATE(SCLK_TIMER2, "timer2", "xin24m", 0,
 			RK2928_CLKGATE_CON(3), 2, GFLAGS),
 
-	COMPOSITE_NOMUX(0, "sclk_tsadc", "xin24m", 0,
+	COMPOSITE_NOMUX(SCLK_TSADC, "sclk_tsadc", "xin24m", 0,
 			RK2928_CLKSEL_CON(34), 0, 16, DFLAGS,
 			RK2928_CLKGATE_CON(2), 15, GFLAGS),
 
@@ -570,37 +617,35 @@ static struct rockchip_clk_branch rk3066a_clk_branches[] __initdata = {
 	COMPOSITE_NOMUX(0, "i2s0_pre", "i2s_src", 0,
 			RK2928_CLKSEL_CON(2), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 7, GFLAGS),
-	COMPOSITE_FRAC(0, "i2s0_frac", "i2s0_pre", 0,
+	COMPOSITE_FRACMUX(0, "i2s0_frac", "i2s0_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(6), 0,
-			RK2928_CLKGATE_CON(0), 8, GFLAGS),
-	MUX(SCLK_I2S0, "sclk_i2s0", mux_sclk_i2s0_p, 0,
-			RK2928_CLKSEL_CON(2), 8, 2, MFLAGS),
+			RK2928_CLKGATE_CON(0), 8, GFLAGS,
+			&rk3066a_i2s0_fracmux),
 	COMPOSITE_NOMUX(0, "i2s1_pre", "i2s_src", 0,
 			RK2928_CLKSEL_CON(3), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 9, GFLAGS),
-	COMPOSITE_FRAC(0, "i2s1_frac", "i2s1_pre", 0,
+	COMPOSITE_FRACMUX(0, "i2s1_frac", "i2s1_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(7), 0,
-			RK2928_CLKGATE_CON(0), 10, GFLAGS),
-	MUX(SCLK_I2S1, "sclk_i2s1", mux_sclk_i2s1_p, 0,
-			RK2928_CLKSEL_CON(3), 8, 2, MFLAGS),
+			RK2928_CLKGATE_CON(0), 10, GFLAGS,
+			&rk3066a_i2s1_fracmux),
 	COMPOSITE_NOMUX(0, "i2s2_pre", "i2s_src", 0,
 			RK2928_CLKSEL_CON(4), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 11, GFLAGS),
-	COMPOSITE_FRAC(0, "i2s2_frac", "i2s2_pre", 0,
+	COMPOSITE_FRACMUX(0, "i2s2_frac", "i2s2_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(8), 0,
-			RK2928_CLKGATE_CON(0), 12, GFLAGS),
-	MUX(SCLK_I2S2, "sclk_i2s2", mux_sclk_i2s2_p, 0,
-			RK2928_CLKSEL_CON(4), 8, 2, MFLAGS),
+			RK2928_CLKGATE_CON(0), 12, GFLAGS,
+			&rk3066a_i2s2_fracmux),
 
-	GATE(HCLK_I2S1, "hclk_i2s1", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 3, GFLAGS),
-	GATE(HCLK_I2S2, "hclk_i2s2", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 4, GFLAGS),
-	GATE(0, "hclk_cif1", "hclk_cpu", 0, RK2928_CLKGATE_CON(6), 6, GFLAGS),
-	GATE(0, "hclk_hdmi", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 14, GFLAGS),
+	GATE(HCLK_I2S0, "hclk_i2s0", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 4, GFLAGS),
+	GATE(HCLK_I2S1, "hclk_i2s1", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 2, GFLAGS),
+	GATE(HCLK_I2S2, "hclk_i2s2", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 3, GFLAGS),
+	GATE(HCLK_CIF1, "hclk_cif1", "hclk_cpu", 0, RK2928_CLKGATE_CON(6), 6, GFLAGS),
+	GATE(HCLK_HDMI, "hclk_hdmi", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 14, GFLAGS),
 
 	GATE(HCLK_OTG1, "hclk_usbotg1", "hclk_peri", CLK_IGNORE_UNUSED,
 			RK2928_CLKGATE_CON(5), 14, GFLAGS),
 
-	GATE(0, "aclk_cif1", "aclk_vio1", 0, RK2928_CLKGATE_CON(6), 7, GFLAGS),
+	GATE(ACLK_CIF1, "aclk_cif1", "aclk_vio1", 0, RK2928_CLKGATE_CON(6), 7, GFLAGS),
 
 	GATE(PCLK_TIMER1, "pclk_timer1", "pclk_cpu", 0, RK2928_CLKGATE_CON(7), 8, GFLAGS),
 	GATE(PCLK_TIMER2, "pclk_timer2", "pclk_cpu", 0, RK2928_CLKGATE_CON(7), 9, GFLAGS),
@@ -621,9 +666,13 @@ static struct clk_div_table div_rk3188_aclk_core_t[] = {
 	{ /* sentinel */ },
 };
 
-PNAME(mux_hsicphy_p)		= { "sclk_otgphy0", "sclk_otgphy1",
+PNAME(mux_hsicphy_p)		= { "sclk_otgphy0_480m", "sclk_otgphy1_480m",
 				    "gpll", "cpll" };
 
+static struct rockchip_clk_branch rk3188_i2s0_fracmux __initdata =
+	MUX(SCLK_I2S0, "sclk_i2s0", mux_sclk_i2s0_p, CLK_SET_RATE_PARENT,
+			RK2928_CLKSEL_CON(3), 8, 2, MFLAGS);
+
 static struct rockchip_clk_branch rk3188_clk_branches[] __initdata = {
 	COMPOSITE_NOMUX_DIVTBL(0, "aclk_core", "armclk", CLK_IGNORE_UNUSED,
 			RK2928_CLKSEL_CON(1), 3, 3, DFLAGS | CLK_DIVIDER_READ_ONLY,
@@ -677,12 +726,12 @@ static struct rockchip_clk_branch rk3188_clk_branches[] __initdata = {
 	COMPOSITE_NOMUX(0, "i2s0_pre", "i2s_src", 0,
 			RK2928_CLKSEL_CON(3), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 9, GFLAGS),
-	COMPOSITE_FRAC(0, "i2s0_frac", "i2s0_pre", 0,
+	COMPOSITE_FRACMUX(0, "i2s0_frac", "i2s0_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(7), 0,
-			RK2928_CLKGATE_CON(0), 10, GFLAGS),
-	MUX(SCLK_I2S0, "sclk_i2s0", mux_sclk_i2s0_p, 0,
-			RK2928_CLKSEL_CON(3), 8, 2, MFLAGS),
+			RK2928_CLKGATE_CON(0), 10, GFLAGS,
+			&rk3188_i2s0_fracmux),
 
+	GATE(HCLK_I2S0, "hclk_i2s0", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 2, GFLAGS),
 	GATE(0, "hclk_imem0", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 14, GFLAGS),
 	GATE(0, "hclk_imem1", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 15, GFLAGS),
 
@@ -698,142 +747,104 @@ static struct rockchip_clk_branch rk3188_clk_branches[] __initdata = {
 	GATE(ACLK_GPS, "aclk_gps", "aclk_peri", 0, RK2928_CLKGATE_CON(8), 13, GFLAGS),
 };
 
-static const char *rk3188_critical_clocks[] __initconst = {
+static const char *const rk3188_critical_clocks[] __initconst = {
 	"aclk_cpu",
 	"aclk_peri",
 	"hclk_peri",
+	"pclk_cpu",
+	"pclk_peri",
+	"hclk_cpubus",
+	"hclk_vio_bus",
+	"sclk_mac_lbtest",
 };
 
-
-static void __init rockchip_reparent_clk(char *clock, char *new_parent)
-{
-	struct clk *clk1, *clk2;
-	unsigned long rate;
-	int ret;
-
-	clk1 = __clk_lookup(clock);
-	clk2 = __clk_lookup(new_parent);
-	if (!IS_ERR(clk1) && !IS_ERR(clk2)) {
-		rate = clk_get_rate(clk1);
-
-		ret = clk_set_parent(clk1, clk2);
-		if (ret < 0)
-			pr_err("%s: could not reparent %s to %s, ret=%d\n",
-				__func__, clock, new_parent, ret);
-
-		clk_set_rate(clk1, rate);
-	} else {
-		pr_err("%s: missing clocks to reparent %s to %s\n",
-			__func__, clock, new_parent);
-	}
-}
-
-static void __init rockchip_clk_set_rate(char *clock, unsigned long rate)
-{
-	struct clk *clk;
-
-	clk = __clk_lookup(clock);
-	if(clk && !IS_ERR(clk)) {
-		clk_set_rate(clk, rate);
-		return;
-	}
-	pr_err("%s: missing clock %s when setting initial rate to %lu\n",
-		__func__, clock, rate);
-}
-
-static void __init rockchip_clk_set_defaults(void)
-{
-	struct rockchip_initial_rate {
-		char *name;
-		unsigned long rate;
-	};
-	int i;
-
-	struct rockchip_initial_rate rates[] = {
-		{"gpll", 891000000},
-		{"cpll", 600000000},
-		{"aclk_cpu", 300000000},
-		{"hclk_cpu", 150000000},
-		{"pclk_cpu", 75000000},
-		{"hclk_ahb2apb", 75000000},
-		{"aclk_peri_pre", 150000000},
-		{"hclk_peri", 150000000},
-		{"pclk_peri", 75000000},
-	};
-
-	rockchip_reparent_clk("aclk_cpu_pre", "gpll");
-	rockchip_reparent_clk("mac_src", "dpll");
-	rockchip_reparent_clk("aclk_peri_pre", "cpll");
-
-	for(i = 0; i < ARRAY_SIZE(rates); i++)
-		rockchip_clk_set_rate(rates[i].name, rates[i].rate);
-}
-
-static void __init rk3188_common_clk_init(struct device_node *np)
+static struct rockchip_clk_provider *__init rk3188_common_clk_init(struct device_node *np)
 {
+	struct rockchip_clk_provider *ctx;
 	void __iomem *reg_base;
-	struct clk *clk;
 
 	reg_base = of_iomap(np, 0);
 	if (!reg_base) {
 		pr_err("%s: could not map cru region\n", __func__);
-		return;
+		return ERR_PTR(-ENOMEM);
 	}
 
-	rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
-
-	/* Fixed-clock should be registered before all others */
-	clk=clk_fixed("xin24m",24000000);
-	if (IS_ERR(clk))
-		pr_warn("%s: could not register clock xin24m: %ld\n",
-			__func__, PTR_ERR(clk));
-
-	/* xin12m is created by an cru-internal divider */
-	clk = clk_fixed_factor("xin12m", "xin24m", 1, 2, 0);
-	if (IS_ERR(clk))
-		pr_warn("%s: could not register clock xin12m: %ld\n",
-			__func__, PTR_ERR(clk));
-
-	clk = clk_fixed_factor("usb480m", "xin24m", 20, 1, 0);
-	if (IS_ERR(clk))
-		pr_warn("%s: could not register clock usb480m: %ld\n",
-			__func__, PTR_ERR(clk));
+	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+	if (IS_ERR(ctx)) {
+		pr_err("%s: rockchip clk init failed\n", __func__);
+		return ERR_PTR(-ENOMEM);
+	}
 
-	rockchip_clk_register_branches(common_clk_branches,
+	rockchip_clk_register_branches(ctx, common_clk_branches,
 				  ARRAY_SIZE(common_clk_branches));
-	rockchip_clk_protect_critical(rk3188_critical_clocks,
-				      ARRAY_SIZE(rk3188_critical_clocks));
+
+	return ctx;
 }
 
 static void __init rk3066a_clk_init(struct device_node *np)
 {
-	rk3188_common_clk_init(np);
-	rockchip_clk_register_plls(rk3066_pll_clks,
+	struct rockchip_clk_provider *ctx;
+
+	ctx = rk3188_common_clk_init(np);
+	if (IS_ERR(ctx))
+		return;
+
+	rockchip_clk_register_plls(ctx, rk3066_pll_clks,
 				   ARRAY_SIZE(rk3066_pll_clks),
 				   RK3066_GRF_SOC_STATUS);
-	rockchip_clk_register_branches(rk3066a_clk_branches,
+	rockchip_clk_register_branches(ctx, rk3066a_clk_branches,
 				  ARRAY_SIZE(rk3066a_clk_branches));
-	rockchip_clk_register_armclk(ARMCLK, "armclk",
+	rockchip_clk_register_armclk(ctx, ARMCLK, "armclk",
 			mux_armclk_p, ARRAY_SIZE(mux_armclk_p),
 			&rk3066_cpuclk_data, rk3066_cpuclk_rates,
 			ARRAY_SIZE(rk3066_cpuclk_rates));
+	rockchip_clk_protect_critical(rk3188_critical_clocks,
+				      ARRAY_SIZE(rk3188_critical_clocks));
+	rockchip_clk_of_add_provider(np, ctx);
 }
 CLK_OF_DECLARE(rk3066a_cru, "rockchip,rk3066a-cru", rk3066a_clk_init);
 
 static void __init rk3188a_clk_init(struct device_node *np)
 {
-	rk3188_common_clk_init(np);
-	rockchip_clk_register_plls(rk3188_pll_clks,
+	struct rockchip_clk_provider *ctx;
+	struct clk *clk1, *clk2;
+	unsigned long rate;
+	int ret;
+
+	ctx = rk3188_common_clk_init(np);
+	if (IS_ERR(ctx))
+		return;
+
+	rockchip_clk_register_plls(ctx, rk3188_pll_clks,
 				   ARRAY_SIZE(rk3188_pll_clks),
 				   RK3188_GRF_SOC_STATUS);
-	rockchip_clk_register_branches(rk3188_clk_branches,
+	rockchip_clk_register_branches(ctx, rk3188_clk_branches,
 				  ARRAY_SIZE(rk3188_clk_branches));
-	rockchip_clk_register_armclk(ARMCLK, "armclk",
+	rockchip_clk_register_armclk(ctx, ARMCLK, "armclk",
 				  mux_armclk_p, ARRAY_SIZE(mux_armclk_p),
 				  &rk3188_cpuclk_data, rk3188_cpuclk_rates,
 				  ARRAY_SIZE(rk3188_cpuclk_rates));
 
-	rockchip_clk_set_defaults();
+	/* reparent aclk_cpu_pre from apll */
+	clk1 = __clk_lookup("aclk_cpu_pre");
+	clk2 = __clk_lookup("gpll");
+	if (clk1 && clk2) {
+		rate = clk_get_rate(clk1);
+
+		ret = clk_set_parent(clk1, clk2);
+		if (ret < 0)
+			pr_warn("%s: could not reparent aclk_cpu_pre to gpll\n",
+				__func__);
+
+		clk_set_rate(clk1, rate);
+	} else {
+		pr_warn("%s: missing clocks to reparent aclk_cpu_pre to gpll\n",
+			__func__);
+	}
+
+	rockchip_clk_protect_critical(rk3188_critical_clocks,
+				      ARRAY_SIZE(rk3188_critical_clocks));
+	rockchip_clk_of_add_provider(np, ctx);
 }
 CLK_OF_DECLARE(rk3188a_cru, "rockchip,rk3188a-cru", rk3188a_clk_init);
 
@@ -850,7 +861,7 @@ static void __init rk3188_clk_init(struct device_node *np)
 
 		rate = pll->rate_table;
 		while (rate->rate > 0) {
-			rate->bwadj = 0;
+			rate->nb = 1;
 			rate++;
 		}
 	}
diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index b6c122d393..fc9554e0f3 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -16,6 +16,11 @@
 #define RK3288_GRF_SOC_CON(x)	(0x244 + x * 4)
 #define RK3288_GRF_SOC_STATUS1	0x284
 
+enum rk3288_variant {
+	RK3288_CRU,
+	RK3288W_CRU,
+};
+
 enum rk3288_plls {
 	apll, dpll, cpll, gpll, npll,
 };
@@ -76,24 +81,44 @@ static struct rockchip_pll_rate_table rk3288_pll_rates[] = {
 	RK3066_PLL_RATE( 768000000, 1, 64, 2),
 	RK3066_PLL_RATE( 742500000, 8, 495, 2),
 	RK3066_PLL_RATE( 696000000, 1, 58, 2),
+	RK3066_PLL_RATE_NB(621000000, 1, 207, 8, 1),
 	RK3066_PLL_RATE( 600000000, 1, 50, 2),
-	RK3066_PLL_RATE_BWADJ(594000000, 1, 198, 8, 1),
+	RK3066_PLL_RATE_NB(594000000, 1, 198, 8, 1),
 	RK3066_PLL_RATE( 552000000, 1, 46, 2),
 	RK3066_PLL_RATE( 504000000, 1, 84, 4),
 	RK3066_PLL_RATE( 500000000, 3, 125, 2),
 	RK3066_PLL_RATE( 456000000, 1, 76, 4),
+	RK3066_PLL_RATE( 428000000, 1, 107, 6),
 	RK3066_PLL_RATE( 408000000, 1, 68, 4),
 	RK3066_PLL_RATE( 400000000, 3, 100, 2),
+	RK3066_PLL_RATE_NB( 394000000, 1, 197, 12, 1),
 	RK3066_PLL_RATE( 384000000, 2, 128, 4),
 	RK3066_PLL_RATE( 360000000, 1, 60, 4),
+	RK3066_PLL_RATE_NB( 356000000, 1, 178, 12, 1),
+	RK3066_PLL_RATE_NB( 324000000, 1, 189, 14, 1),
 	RK3066_PLL_RATE( 312000000, 1, 52, 4),
-	RK3066_PLL_RATE( 300000000, 1, 50, 4),
-	RK3066_PLL_RATE( 297000000, 2, 198, 8),
+	RK3066_PLL_RATE_NB( 308000000, 1, 154, 12, 1),
+	RK3066_PLL_RATE_NB( 303000000, 1, 202, 16, 1),
+	RK3066_PLL_RATE( 300000000, 1, 75, 6),
+	RK3066_PLL_RATE_NB( 297750000, 2, 397, 16, 1),
+	RK3066_PLL_RATE_NB( 293250000, 2, 391, 16, 1),
+	RK3066_PLL_RATE_NB( 292500000, 1, 195, 16, 1),
+	RK3066_PLL_RATE( 273600000, 1, 114, 10),
+	RK3066_PLL_RATE_NB( 273000000, 1, 182, 16, 1),
+	RK3066_PLL_RATE_NB( 270000000, 1, 180, 16, 1),
+	RK3066_PLL_RATE_NB( 266250000, 2, 355, 16, 1),
+	RK3066_PLL_RATE_NB( 256500000, 1, 171, 16, 1),
 	RK3066_PLL_RATE( 252000000, 1, 84, 8),
-	RK3066_PLL_RATE( 216000000, 1, 72, 8),
-	RK3066_PLL_RATE( 148500000, 2, 99, 8),
+	RK3066_PLL_RATE_NB( 250500000, 1, 167, 16, 1),
+	RK3066_PLL_RATE_NB( 243428571, 1, 142, 14, 1),
+	RK3066_PLL_RATE( 238000000, 1, 119, 12),
+	RK3066_PLL_RATE_NB( 219750000, 2, 293, 16, 1),
+	RK3066_PLL_RATE_NB( 216000000, 1, 144, 16, 1),
+	RK3066_PLL_RATE_NB( 213000000, 1, 142, 16, 1),
+	RK3066_PLL_RATE( 195428571, 1, 114, 14),
+	RK3066_PLL_RATE( 160000000, 1, 80, 12),
+	RK3066_PLL_RATE( 157500000, 1, 105, 16),
 	RK3066_PLL_RATE( 126000000, 1, 84, 16),
-	RK3066_PLL_RATE(  48000000, 1, 64, 32),
 	{ /* sentinel */ },
 };
 
@@ -155,10 +180,14 @@ static struct rockchip_cpuclk_rate_table rk3288_cpuclk_rates[] __initdata = {
 };
 
 static const struct rockchip_cpuclk_reg_data rk3288_cpuclk_data = {
-	.core_reg = RK3288_CLKSEL_CON(0),
-	.div_core_shift = 8,
-	.div_core_mask = 0x1f,
+	.core_reg[0] = RK3288_CLKSEL_CON(0),
+	.div_core_shift[0] = 8,
+	.div_core_mask[0] = 0x1f,
+	.num_cores = 1,
+	.mux_core_alt = 1,
+	.mux_core_main = 0,
 	.mux_core_shift = 15,
+	.mux_core_mask = 0x1,
 };
 
 PNAME(mux_pll_p)		= { "xin24m", "xin32k" };
@@ -169,8 +198,8 @@ PNAME(mux_aclk_cpu_src_p)	= { "cpll_aclk_cpu", "gpll_aclk_cpu" };
 PNAME(mux_pll_src_cpll_gpll_p)		= { "cpll", "gpll" };
 PNAME(mux_pll_src_npll_cpll_gpll_p)	= { "npll", "cpll", "gpll" };
 PNAME(mux_pll_src_cpll_gpll_npll_p)	= { "cpll", "gpll", "npll" };
-PNAME(mux_pll_src_cpll_gpll_usb480m_p)	= { "cpll", "gpll", "usbphy480m_src" };
-PNAME(mux_pll_src_cpll_gll_usb_npll_p)	= { "cpll", "gpll", "usbphy480m_src", "npll" };
+PNAME(mux_pll_src_cpll_gpll_usb480m_p)	= { "cpll", "gpll", "unstable:usbphy480m_src" };
+PNAME(mux_pll_src_cpll_gll_usb_npll_p)	= { "cpll", "gpll", "unstable:usbphy480m_src", "npll" };
 
 PNAME(mux_mmc_src_p)	= { "cpll", "gpll", "xin24m", "xin24m" };
 PNAME(mux_i2s_pre_p)	= { "i2s_src", "i2s_frac", "ext_i2s", "xin12m" };
@@ -188,8 +217,9 @@ PNAME(mux_hsadcout_p)	= { "hsadc_src", "ext_hsadc" };
 PNAME(mux_edp_24m_p)	= { "ext_edp_24m", "xin24m" };
 PNAME(mux_tspout_p)	= { "cpll", "gpll", "npll", "xin27m" };
 
-PNAME(mux_usbphy480m_p)		= { "sclk_otgphy1", "sclk_otgphy2",
-				    "sclk_otgphy0" };
+PNAME(mux_aclk_vcodec_pre_p)	= { "aclk_vdpu", "aclk_vepu" };
+PNAME(mux_usbphy480m_p)		= { "sclk_otgphy1_480m", "sclk_otgphy2_480m",
+				    "sclk_otgphy0_480m" };
 PNAME(mux_hsicphy480m_p)	= { "cpll", "gpll", "usbphy480m_src" };
 PNAME(mux_hsicphy12m_p)		= { "hsicphy12m_xin12m", "hsicphy12m_usbphy" };
 
@@ -216,6 +246,39 @@ static struct clk_div_table div_hclk_cpu_t[] = {
 #define MFLAGS CLK_MUX_HIWORD_MASK
 #define DFLAGS CLK_DIVIDER_HIWORD_MASK
 #define GFLAGS (CLK_GATE_HIWORD_MASK | CLK_GATE_SET_TO_DISABLE)
+#define IFLAGS ROCKCHIP_INVERTER_HIWORD_MASK
+
+static struct rockchip_clk_branch rk3288_i2s_fracmux __initdata =
+	MUX(0, "i2s_pre", mux_i2s_pre_p, CLK_SET_RATE_PARENT,
+			RK3288_CLKSEL_CON(4), 8, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3288_spdif_fracmux __initdata =
+	MUX(0, "spdif_mux", mux_spdif_p, CLK_SET_RATE_PARENT,
+			RK3288_CLKSEL_CON(5), 8, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3288_spdif_8ch_fracmux __initdata =
+	MUX(0, "spdif_8ch_mux", mux_spdif_8ch_p, CLK_SET_RATE_PARENT,
+			RK3288_CLKSEL_CON(40), 8, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3288_uart0_fracmux __initdata =
+	MUX(SCLK_UART0, "sclk_uart0", mux_uart0_p, CLK_SET_RATE_PARENT,
+			RK3288_CLKSEL_CON(13), 8, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3288_uart1_fracmux __initdata =
+	MUX(SCLK_UART1, "sclk_uart1", mux_uart1_p, CLK_SET_RATE_PARENT,
+			RK3288_CLKSEL_CON(14), 8, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3288_uart2_fracmux __initdata =
+	MUX(SCLK_UART2, "sclk_uart2", mux_uart2_p, CLK_SET_RATE_PARENT,
+			RK3288_CLKSEL_CON(15), 8, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3288_uart3_fracmux __initdata =
+	MUX(SCLK_UART3, "sclk_uart3", mux_uart3_p, CLK_SET_RATE_PARENT,
+			RK3288_CLKSEL_CON(16), 8, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3288_uart4_fracmux __initdata =
+	MUX(SCLK_UART4, "sclk_uart4", mux_uart4_p, CLK_SET_RATE_PARENT,
+			RK3288_CLKSEL_CON(3), 8, 2, MFLAGS);
 
 static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 	/*
@@ -287,20 +350,21 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 			RK3288_CLKGATE_CON(0), 4, GFLAGS),
 	GATE(0, "c2c_host", "aclk_cpu_src", 0,
 			RK3288_CLKGATE_CON(13), 8, GFLAGS),
-	COMPOSITE_NOMUX(0, "crypto", "aclk_cpu_pre", 0,
+	COMPOSITE_NOMUX(SCLK_CRYPTO, "crypto", "aclk_cpu_pre", 0,
 			RK3288_CLKSEL_CON(26), 6, 2, DFLAGS,
 			RK3288_CLKGATE_CON(5), 4, GFLAGS),
 	GATE(0, "aclk_bus_2pmu", "aclk_cpu_pre", CLK_IGNORE_UNUSED,
 			RK3288_CLKGATE_CON(0), 7, GFLAGS),
 
+	FACTOR(0, "xin12m", "xin24m", 0, 1, 2),
+
 	COMPOSITE(0, "i2s_src", mux_pll_src_cpll_gpll_p, 0,
 			RK3288_CLKSEL_CON(4), 15, 1, MFLAGS, 0, 7, DFLAGS,
 			RK3288_CLKGATE_CON(4), 1, GFLAGS),
-	COMPOSITE_FRAC(0, "i2s_frac", "i2s_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX(0, "i2s_frac", "i2s_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(8), 0,
-			RK3288_CLKGATE_CON(4), 2, GFLAGS),
-	MUX(0, "i2s_pre", mux_i2s_pre_p, CLK_SET_RATE_PARENT,
-			RK3288_CLKSEL_CON(4), 8, 2, MFLAGS),
+			RK3288_CLKGATE_CON(4), 2, GFLAGS,
+			&rk3288_i2s_fracmux),
 	COMPOSITE_NODIV(SCLK_I2S0_OUT, "i2s0_clkout", mux_i2s_clkout_p, 0,
 			RK3288_CLKSEL_CON(4), 12, 1, MFLAGS,
 			RK3288_CLKGATE_CON(4), 0, GFLAGS),
@@ -309,27 +373,28 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 
 	MUX(0, "spdif_src", mux_pll_src_cpll_gpll_p, 0,
 			RK3288_CLKSEL_CON(5), 15, 1, MFLAGS),
-	COMPOSITE_NOMUX(0, "spdif_pre", "spdif_src", 0,
+	COMPOSITE_NOMUX(0, "spdif_pre", "spdif_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(5), 0, 7, DFLAGS,
 			RK3288_CLKGATE_CON(4), 4, GFLAGS),
-	COMPOSITE_FRAC(0, "spdif_frac", "spdif_src", 0,
+	COMPOSITE_FRACMUX(0, "spdif_frac", "spdif_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(9), 0,
-			RK3288_CLKGATE_CON(4), 5, GFLAGS),
-	COMPOSITE_NODIV(SCLK_SPDIF, "sclk_spdif", mux_spdif_p, 0,
-			RK3288_CLKSEL_CON(5), 8, 2, MFLAGS,
+			RK3288_CLKGATE_CON(4), 5, GFLAGS,
+			&rk3288_spdif_fracmux),
+	GATE(SCLK_SPDIF, "sclk_spdif", "spdif_mux", CLK_SET_RATE_PARENT,
 			RK3288_CLKGATE_CON(4), 6, GFLAGS),
-	COMPOSITE_NOMUX(0, "spdif_8ch_pre", "spdif_src", 0,
+	COMPOSITE_NOMUX(0, "spdif_8ch_pre", "spdif_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(40), 0, 7, DFLAGS,
 			RK3288_CLKGATE_CON(4), 7, GFLAGS),
-	COMPOSITE_FRAC(0, "spdif_8ch_frac", "spdif_8ch_pre", 0,
+	COMPOSITE_FRACMUX(0, "spdif_8ch_frac", "spdif_8ch_pre", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(41), 0,
-			RK3288_CLKGATE_CON(4), 8, GFLAGS),
-	COMPOSITE_NODIV(SCLK_SPDIF8CH, "sclk_spdif_8ch", mux_spdif_8ch_p, 0,
-			RK3288_CLKSEL_CON(40), 8, 2, MFLAGS,
+			RK3288_CLKGATE_CON(4), 8, GFLAGS,
+			&rk3288_spdif_8ch_fracmux),
+	GATE(SCLK_SPDIF8CH, "sclk_spdif_8ch", "spdif_8ch_mux", CLK_SET_RATE_PARENT,
 			RK3288_CLKGATE_CON(4), 9, GFLAGS),
 
 	GATE(0, "sclk_acc_efuse", "xin24m", 0,
 			RK3288_CLKGATE_CON(0), 12, GFLAGS),
+
 	GATE(SCLK_TIMER0, "sclk_timer0", "xin24m", 0,
 			RK3288_CLKGATE_CON(1), 0, GFLAGS),
 	GATE(SCLK_TIMER1, "sclk_timer1", "xin24m", 0,
@@ -342,6 +407,7 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 			RK3288_CLKGATE_CON(1), 4, GFLAGS),
 	GATE(SCLK_TIMER5, "sclk_timer5", "xin24m", 0,
 			RK3288_CLKGATE_CON(1), 5, GFLAGS),
+
 	/*
 	 * Clock-Architecture Diagram 2
 	 */
@@ -352,26 +418,20 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 	COMPOSITE(0, "aclk_vdpu", mux_pll_src_cpll_gpll_usb480m_p, 0,
 			RK3288_CLKSEL_CON(32), 14, 2, MFLAGS, 8, 5, DFLAGS,
 			RK3288_CLKGATE_CON(3), 11, GFLAGS),
-	/*
-	 * We use aclk_vdpu by default GRF_SOC_CON0[7] setting in system,
-	 * so we ignore the mux and make clocks nodes as following,
-	 */
-	GATE(ACLK_VCODEC, "aclk_vcodec", "aclk_vdpu", 0,
+	MUXGRF(0, "aclk_vcodec_pre", mux_aclk_vcodec_pre_p, CLK_SET_RATE_PARENT,
+			RK3288_GRF_SOC_CON(0), 7, 1, MFLAGS),
+	GATE(ACLK_VCODEC, "aclk_vcodec", "aclk_vcodec_pre", 0,
 		RK3288_CLKGATE_CON(9), 0, GFLAGS),
-	/*
-	 * We introduce a virtul node of hclk_vodec_pre_v to split one clock
-	 * struct with a gate and a fix divider into two node in software.
-	 */
-	GATE(0, "hclk_vcodec_pre_v", "aclk_vdpu", 0,
+
+	FACTOR_GATE(0, "hclk_vcodec_pre", "aclk_vcodec_pre", 0, 1, 4,
 		RK3288_CLKGATE_CON(3), 10, GFLAGS),
+
 	GATE(HCLK_VCODEC, "hclk_vcodec", "hclk_vcodec_pre", 0,
 		RK3288_CLKGATE_CON(9), 1, GFLAGS),
 
 	COMPOSITE(0, "aclk_vio0", mux_pll_src_cpll_gpll_usb480m_p, CLK_IGNORE_UNUSED,
 			RK3288_CLKSEL_CON(31), 6, 2, MFLAGS, 0, 5, DFLAGS,
 			RK3288_CLKGATE_CON(3), 0, GFLAGS),
-	DIV(0, "hclk_vio", "aclk_vio0", 0,
-			RK3288_CLKSEL_CON(28), 8, 5, DFLAGS),
 	COMPOSITE(0, "aclk_vio1", mux_pll_src_cpll_gpll_usb480m_p, CLK_IGNORE_UNUSED,
 			RK3288_CLKSEL_CON(31), 14, 2, MFLAGS, 8, 5, DFLAGS,
 			RK3288_CLKGATE_CON(3), 2, GFLAGS),
@@ -425,7 +485,7 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 	COMPOSITE_NODIV(0, "vip_src", mux_pll_src_cpll_gpll_p, 0,
 			RK3288_CLKSEL_CON(26), 8, 1, MFLAGS,
 			RK3288_CLKGATE_CON(3), 7, GFLAGS),
-	COMPOSITE_NOGATE(0, "sclk_vip_out", mux_vip_out_p, 0,
+	COMPOSITE_NOGATE(SCLK_VIP_OUT, "sclk_vip_out", mux_vip_out_p, 0,
 			RK3288_CLKSEL_CON(26), 15, 1, MFLAGS, 9, 5, DFLAGS),
 
 	DIV(0, "pclk_pd_alive", "gpll", 0,
@@ -496,11 +556,11 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 			RK3288_CLKSEL_CON(35), 6, 2, MFLAGS, 0, 5, DFLAGS,
 			RK3288_CLKGATE_CON(4), 10, GFLAGS),
 
-	GATE(SCLK_OTGPHY0, "sclk_otgphy0", "usb480m", CLK_IGNORE_UNUSED,
+	GATE(SCLK_OTGPHY0, "sclk_otgphy0", "xin24m", CLK_IGNORE_UNUSED,
 			RK3288_CLKGATE_CON(13), 4, GFLAGS),
-	GATE(SCLK_OTGPHY1, "sclk_otgphy1", "usb480m", CLK_IGNORE_UNUSED,
+	GATE(SCLK_OTGPHY1, "sclk_otgphy1", "xin24m", CLK_IGNORE_UNUSED,
 			RK3288_CLKGATE_CON(13), 5, GFLAGS),
-	GATE(SCLK_OTGPHY2, "sclk_otgphy2", "usb480m", CLK_IGNORE_UNUSED,
+	GATE(SCLK_OTGPHY2, "sclk_otgphy2", "xin24m", CLK_IGNORE_UNUSED,
 			RK3288_CLKGATE_CON(13), 6, GFLAGS),
 	GATE(SCLK_OTG_ADP, "sclk_otg_adp", "xin32k", CLK_IGNORE_UNUSED,
 			RK3288_CLKGATE_CON(13), 7, GFLAGS),
@@ -526,45 +586,40 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 	COMPOSITE(0, "uart0_src", mux_pll_src_cpll_gll_usb_npll_p, 0,
 			RK3288_CLKSEL_CON(13), 13, 2, MFLAGS, 0, 7, DFLAGS,
 			RK3288_CLKGATE_CON(1), 8, GFLAGS),
-	COMPOSITE_FRAC(0, "uart0_frac", "uart0_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(17), 0,
-			RK3288_CLKGATE_CON(1), 9, GFLAGS),
-	MUX(SCLK_UART0, "sclk_uart0", mux_uart0_p, CLK_SET_RATE_PARENT,
-			RK3288_CLKSEL_CON(13), 8, 2, MFLAGS),
+			RK3288_CLKGATE_CON(1), 9, GFLAGS,
+			&rk3288_uart0_fracmux),
 	MUX(0, "uart_src", mux_pll_src_cpll_gpll_p, 0,
 			RK3288_CLKSEL_CON(13), 15, 1, MFLAGS),
 	COMPOSITE_NOMUX(0, "uart1_src", "uart_src", 0,
 			RK3288_CLKSEL_CON(14), 0, 7, DFLAGS,
 			RK3288_CLKGATE_CON(1), 10, GFLAGS),
-	COMPOSITE_FRAC(0, "uart1_frac", "uart1_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(18), 0,
-			RK3288_CLKGATE_CON(1), 11, GFLAGS),
-	MUX(SCLK_UART1, "sclk_uart1", mux_uart1_p, CLK_SET_RATE_PARENT,
-			RK3288_CLKSEL_CON(14), 8, 2, MFLAGS),
+			RK3288_CLKGATE_CON(1), 11, GFLAGS,
+			&rk3288_uart1_fracmux),
 	COMPOSITE_NOMUX(0, "uart2_src", "uart_src", 0,
 			RK3288_CLKSEL_CON(15), 0, 7, DFLAGS,
 			RK3288_CLKGATE_CON(1), 12, GFLAGS),
-	COMPOSITE_FRAC(0, "uart2_frac", "uart2_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(19), 0,
-			RK3288_CLKGATE_CON(1), 13, GFLAGS),
-	MUX(SCLK_UART2, "sclk_uart2", mux_uart2_p, CLK_SET_RATE_PARENT,
-			RK3288_CLKSEL_CON(15), 8, 2, MFLAGS),
+			RK3288_CLKGATE_CON(1), 13, GFLAGS,
+			&rk3288_uart2_fracmux),
 	COMPOSITE_NOMUX(0, "uart3_src", "uart_src", 0,
 			RK3288_CLKSEL_CON(16), 0, 7, DFLAGS,
 			RK3288_CLKGATE_CON(1), 14, GFLAGS),
-	COMPOSITE_FRAC(0, "uart3_frac", "uart3_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX(0, "uart3_frac", "uart3_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(20), 0,
-			RK3288_CLKGATE_CON(1), 15, GFLAGS),
-	MUX(SCLK_UART3, "sclk_uart3", mux_uart3_p, CLK_SET_RATE_PARENT,
-			RK3288_CLKSEL_CON(16), 8, 2, MFLAGS),
+			RK3288_CLKGATE_CON(1), 15, GFLAGS,
+			&rk3288_uart3_fracmux),
 	COMPOSITE_NOMUX(0, "uart4_src", "uart_src", 0,
 			RK3288_CLKSEL_CON(3), 0, 7, DFLAGS,
 			RK3288_CLKGATE_CON(2), 12, GFLAGS),
-	COMPOSITE_FRAC(0, "uart4_frac", "uart4_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX(0, "uart4_frac", "uart4_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(7), 0,
-			RK3288_CLKGATE_CON(2), 13, GFLAGS),
-	MUX(SCLK_UART4, "sclk_uart4", mux_uart4_p, CLK_SET_RATE_PARENT,
-			RK3288_CLKSEL_CON(3), 8, 2, MFLAGS),
+			RK3288_CLKGATE_CON(2), 13, GFLAGS,
+			&rk3288_uart4_fracmux),
 
 	COMPOSITE(0, "mac_pll_src", mux_pll_src_npll_cpll_gpll_p, 0,
 			RK3288_CLKSEL_CON(21), 0, 2, MFLAGS, 8, 5, DFLAGS,
@@ -585,6 +640,8 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 			RK3288_CLKGATE_CON(2), 6, GFLAGS),
 	MUX(0, "sclk_hsadc_out", mux_hsadcout_p, 0,
 			RK3288_CLKSEL_CON(22), 4, 1, MFLAGS),
+	INVERTER(SCLK_HSADC, "sclk_hsadc", "sclk_hsadc_out",
+			RK3288_CLKSEL_CON(22), 7, IFLAGS),
 
 	GATE(0, "jtag", "ext_jtag", 0,
 			RK3288_CLKGATE_CON(4), 14, GFLAGS),
@@ -632,11 +689,11 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 	GATE(PCLK_PUBL0, "pclk_publ0", "pclk_cpu", 0, RK3288_CLKGATE_CON(10), 15, GFLAGS),
 	GATE(PCLK_DDRUPCTL1, "pclk_ddrupctl1", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 0, GFLAGS),
 	GATE(PCLK_PUBL1, "pclk_publ1", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 1, GFLAGS),
-	GATE(0, "pclk_efuse_1024", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 2, GFLAGS),
+	GATE(PCLK_EFUSE1024, "pclk_efuse_1024", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 2, GFLAGS),
 	GATE(PCLK_TZPC, "pclk_tzpc", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 3, GFLAGS),
 	GATE(PCLK_UART2, "pclk_uart2", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 9, GFLAGS),
-	GATE(0, "pclk_efuse_256", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 10, GFLAGS),
-	GATE(PCLK_RKPWM, "pclk_rkpwm", "pclk_cpu", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(11), 11, GFLAGS),
+	GATE(PCLK_EFUSE256, "pclk_efuse_256", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 10, GFLAGS),
+	GATE(PCLK_RKPWM, "pclk_rkpwm", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 11, GFLAGS),
 
 	/* ddrctrl [DDR Controller PHY clock] gates */
 	GATE(0, "nclk_ddrupctl0", "ddrphy", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(11), 4, GFLAGS),
@@ -649,7 +706,7 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 	/* aclk_peri gates */
 	GATE(0, "aclk_peri_axi_matrix", "aclk_peri", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(6), 2, GFLAGS),
 	GATE(ACLK_DMAC2, "aclk_dmac2", "aclk_peri", 0, RK3288_CLKGATE_CON(6), 3, GFLAGS),
-	GATE(0, "aclk_peri_niu", "aclk_peri", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(7), 11, GFLAGS),
+	GATE(0, "aclk_peri_niu", "aclk_peri", 0, RK3288_CLKGATE_CON(7), 11, GFLAGS),
 	GATE(ACLK_MMU, "aclk_mmu", "aclk_peri", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(8), 12, GFLAGS),
 	GATE(ACLK_GMAC, "aclk_gmac", "aclk_peri", 0, RK3288_CLKGATE_CON(8), 0, GFLAGS),
 	GATE(HCLK_GPS, "hclk_gps", "aclk_peri", 0, RK3288_CLKGATE_CON(8), 2, GFLAGS),
@@ -697,7 +754,7 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 	GATE(SCLK_LCDC_PWM1, "sclk_lcdc_pwm1", "xin24m", 0, RK3288_CLKGATE_CON(13), 11, GFLAGS),
 	GATE(SCLK_PVTM_CORE, "sclk_pvtm_core", "xin24m", 0, RK3288_CLKGATE_CON(5), 9, GFLAGS),
 	GATE(SCLK_PVTM_GPU, "sclk_pvtm_gpu", "xin24m", 0, RK3288_CLKGATE_CON(5), 10, GFLAGS),
-	GATE(0, "sclk_mipidsi_24m", "xin24m", 0, RK3288_CLKGATE_CON(5), 15, GFLAGS),
+	GATE(SCLK_MIPIDSI_24M, "sclk_mipidsi_24m", "xin24m", 0, RK3288_CLKGATE_CON(5), 15, GFLAGS),
 
 	/* sclk_gpu gates */
 	GATE(ACLK_GPU, "aclk_gpu", "sclk_gpu", 0, RK3288_CLKGATE_CON(18), 0, GFLAGS),
@@ -712,12 +769,15 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 	GATE(PCLK_GPIO5, "pclk_gpio5", "pclk_pd_alive", 0, RK3288_CLKGATE_CON(14), 5, GFLAGS),
 	GATE(PCLK_GPIO6, "pclk_gpio6", "pclk_pd_alive", 0, RK3288_CLKGATE_CON(14), 6, GFLAGS),
 	GATE(PCLK_GRF, "pclk_grf", "pclk_pd_alive", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(14), 11, GFLAGS),
-	GATE(0, "pclk_alive_niu", "pclk_pd_alive", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(14), 12, GFLAGS),
+	GATE(0, "pclk_alive_niu", "pclk_pd_alive", 0, RK3288_CLKGATE_CON(14), 12, GFLAGS),
+
+	/* Watchdog pclk is controlled by RK3288_SGRF_SOC_CON0[1]. */
+	SGRF_GATE(PCLK_WDT, "pclk_wdt", "pclk_pd_alive"),
 
 	/* pclk_pd_pmu gates */
 	GATE(PCLK_PMU, "pclk_pmu", "pclk_pd_pmu", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(17), 0, GFLAGS),
 	GATE(0, "pclk_intmem1", "pclk_pd_pmu", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(17), 1, GFLAGS),
-	GATE(0, "pclk_pmu_niu", "pclk_pd_pmu", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(17), 2, GFLAGS),
+	GATE(0, "pclk_pmu_niu", "pclk_pd_pmu", 0, RK3288_CLKGATE_CON(17), 2, GFLAGS),
 	GATE(PCLK_SGRF, "pclk_sgrf", "pclk_pd_pmu", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(17), 3, GFLAGS),
 	GATE(PCLK_GPIO0, "pclk_gpio0", "pclk_pd_pmu", 0, RK3288_CLKGATE_CON(17), 4, GFLAGS),
 
@@ -726,7 +786,7 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 	GATE(HCLK_VOP0, "hclk_vop0", "hclk_vio", 0, RK3288_CLKGATE_CON(15), 6, GFLAGS),
 	GATE(HCLK_VOP1, "hclk_vop1", "hclk_vio", 0, RK3288_CLKGATE_CON(15), 8, GFLAGS),
 	GATE(HCLK_VIO_AHB_ARBI, "hclk_vio_ahb_arbi", "hclk_vio", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(15), 9, GFLAGS),
-	GATE(HCLK_VIO_NIU, "hclk_vio_niu", "hclk_vio", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(15), 10, GFLAGS),
+	GATE(HCLK_VIO_NIU, "hclk_vio_niu", "hclk_vio", 0, RK3288_CLKGATE_CON(15), 10, GFLAGS),
 	GATE(HCLK_VIP, "hclk_vip", "hclk_vio", 0, RK3288_CLKGATE_CON(15), 15, GFLAGS),
 	GATE(HCLK_IEP, "hclk_iep", "hclk_vio", 0, RK3288_CLKGATE_CON(15), 3, GFLAGS),
 	GATE(HCLK_ISP, "hclk_isp", "hclk_vio", 0, RK3288_CLKGATE_CON(16), 1, GFLAGS),
@@ -742,83 +802,106 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 	/* aclk_vio0 gates */
 	GATE(ACLK_VOP0, "aclk_vop0", "aclk_vio0", 0, RK3288_CLKGATE_CON(15), 5, GFLAGS),
 	GATE(ACLK_IEP, "aclk_iep", "aclk_vio0", 0, RK3288_CLKGATE_CON(15), 2, GFLAGS),
-	GATE(ACLK_VIO0_NIU, "aclk_vio0_niu", "aclk_vio0", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(15), 11, GFLAGS),
+	GATE(ACLK_VIO0_NIU, "aclk_vio0_niu", "aclk_vio0", 0, RK3288_CLKGATE_CON(15), 11, GFLAGS),
 	GATE(ACLK_VIP, "aclk_vip", "aclk_vio0", 0, RK3288_CLKGATE_CON(15), 14, GFLAGS),
 
 	/* aclk_vio1 gates */
 	GATE(ACLK_VOP1, "aclk_vop1", "aclk_vio1", 0, RK3288_CLKGATE_CON(15), 7, GFLAGS),
 	GATE(ACLK_ISP, "aclk_isp", "aclk_vio1", 0, RK3288_CLKGATE_CON(16), 2, GFLAGS),
-	GATE(ACLK_VIO1_NIU, "aclk_vio1_niu", "aclk_vio1", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(15), 12, GFLAGS),
+	GATE(ACLK_VIO1_NIU, "aclk_vio1_niu", "aclk_vio1", 0, RK3288_CLKGATE_CON(15), 12, GFLAGS),
 
 	/* aclk_rga_pre gates */
 	GATE(ACLK_RGA, "aclk_rga", "aclk_rga_pre", 0, RK3288_CLKGATE_CON(15), 0, GFLAGS),
-	GATE(ACLK_RGA_NIU, "aclk_rga_niu", "aclk_rga_pre", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(15), 13, GFLAGS),
+	GATE(ACLK_RGA_NIU, "aclk_rga_niu", "aclk_rga_pre", 0, RK3288_CLKGATE_CON(15), 13, GFLAGS),
 
 	/*
 	 * Other ungrouped clocks.
 	 */
 
 	GATE(0, "pclk_vip_in", "ext_vip", 0, RK3288_CLKGATE_CON(16), 0, GFLAGS),
-	GATE(0, "pclk_isp_in", "ext_isp", 0, RK3288_CLKGATE_CON(16), 3, GFLAGS),
+	INVERTER(0, "pclk_vip", "pclk_vip_in", RK3288_CLKSEL_CON(29), 4, IFLAGS),
+	GATE(PCLK_ISP_IN, "pclk_isp_in", "ext_isp", 0, RK3288_CLKGATE_CON(16), 3, GFLAGS),
+	INVERTER(0, "pclk_isp", "pclk_isp_in", RK3288_CLKSEL_CON(29), 3, IFLAGS),
+};
+
+static struct rockchip_clk_branch rk3288w_hclkvio_branch[] __initdata = {
+	DIV(0, "hclk_vio", "aclk_vio1", 0,
+			RK3288_CLKSEL_CON(28), 8, 5, DFLAGS),
 };
 
-static const char *rk3288_critical_clocks[] __initconst = {
+static struct rockchip_clk_branch rk3288_hclkvio_branch[] __initdata = {
+	DIV(0, "hclk_vio", "aclk_vio0", 0,
+			RK3288_CLKSEL_CON(28), 8, 5, DFLAGS),
+};
+
+static const char *const rk3288_critical_clocks[] __initconst = {
 	"aclk_cpu",
 	"aclk_peri",
+	"aclk_peri_niu",
+	"aclk_vio0_niu",
+	"aclk_vio1_niu",
+	"aclk_rga_niu",
 	"hclk_peri",
+	"hclk_vio_niu",
+	"pclk_alive_niu",
 	"pclk_pd_pmu",
+	"pclk_pmu_niu",
+	"pmu_hclk_otg0",
+	/* pwm-regulators on some boards, so handoff-critical later */
+	"pclk_rkpwm",
 };
 
-static int __init rk3288_clk_init(struct device_node *np)
+static void __iomem *rk3288_cru_base;
+
+static void __init rk3288_common_init(struct device_node *np,
+				      enum rk3288_variant soc)
 {
-	void __iomem *reg_base;
-	struct clk *clk;
+	struct rockchip_clk_provider *ctx;
 
-	reg_base = of_iomap(np, 0);
-	if (!reg_base) {
+	rk3288_cru_base = of_iomap(np, 0);
+	if (!rk3288_cru_base) {
 		pr_err("%s: could not map cru region\n", __func__);
-		return -ENOMEM;
+		return;
 	}
 
-	rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
-
-	/* xin12m is created by an cru-internal divider */
-	clk = clk_fixed_factor("xin12m", "xin24m", 1, 2, 0);
-	if (IS_ERR(clk))
-		pr_warn("%s: could not register clock xin12m: %ld\n",
-			__func__, PTR_ERR(clk));
-
-	clk = clk_fixed_factor("usb480m", "xin24m", 20, 1, 0);
-	if (IS_ERR(clk))
-		pr_warn("%s: could not register clock usb480m: %ld\n",
-			__func__, PTR_ERR(clk));
-
-	clk = clk_fixed_factor("hclk_vcodec_pre",
-					"hclk_vcodec_pre_v", 1, 4, 0);
-	if (IS_ERR(clk))
-		pr_warn("%s: could not register clock hclk_vcodec_pre: %ld\n",
-			__func__, PTR_ERR(clk));
-
-	/* Watchdog pclk is controlled by RK3288_SGRF_SOC_CON0[1]. */
-	clk = clk_fixed_factor("pclk_wdt", "pclk_pd_alive", 1, 1, 0);
-	if (IS_ERR(clk))
-		pr_warn("%s: could not register clock pclk_wdt: %ld\n",
-			__func__, PTR_ERR(clk));
-	else
-		rockchip_clk_add_lookup(clk, PCLK_WDT);
+	ctx = rockchip_clk_init(np, rk3288_cru_base, CLK_NR_CLKS);
+	if (IS_ERR(ctx)) {
+		pr_err("%s: rockchip clk init failed\n", __func__);
+		return;
+	}
 
-	rockchip_clk_register_plls(rk3288_pll_clks,
+	rockchip_clk_register_plls(ctx, rk3288_pll_clks,
 				   ARRAY_SIZE(rk3288_pll_clks),
 				   RK3288_GRF_SOC_STATUS1);
-	rockchip_clk_register_branches(rk3288_clk_branches,
+	rockchip_clk_register_branches(ctx, rk3288_clk_branches,
 				  ARRAY_SIZE(rk3288_clk_branches));
+
+	if (soc == RK3288W_CRU)
+		rockchip_clk_register_branches(ctx, rk3288w_hclkvio_branch,
+					       ARRAY_SIZE(rk3288w_hclkvio_branch));
+	else
+		rockchip_clk_register_branches(ctx, rk3288_hclkvio_branch,
+					       ARRAY_SIZE(rk3288_hclkvio_branch));
+
 	rockchip_clk_protect_critical(rk3288_critical_clocks,
 				      ARRAY_SIZE(rk3288_critical_clocks));
 
-	rockchip_clk_register_armclk(ARMCLK, "armclk",
+	rockchip_clk_register_armclk(ctx, ARMCLK, "armclk",
 			mux_armclk_p, ARRAY_SIZE(mux_armclk_p),
 			&rk3288_cpuclk_data, rk3288_cpuclk_rates,
 			ARRAY_SIZE(rk3288_cpuclk_rates));
-	return 0;
+
+	rockchip_clk_of_add_provider(np, ctx);
+}
+
+static void __init rk3288_clk_init(struct device_node *np)
+{
+	rk3288_common_init(np, RK3288_CRU);
 }
 CLK_OF_DECLARE(rk3288_cru, "rockchip,rk3288-cru", rk3288_clk_init);
+
+static void __init rk3288w_clk_init(struct device_node *np)
+{
+	rk3288_common_init(np, RK3288W_CRU);
+}
+CLK_OF_DECLARE(rk3288w_cru, "rockchip,rk3288w-cru", rk3288w_clk_init);
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 833e9bed0e..dd542c2e20 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -3,6 +3,9 @@
  * Copyright (c) 2014 MundoReader S.L.
  * Author: Heiko Stuebner <heiko@sntech.de>
  *
+ * Copyright (c) 2016 Rockchip Electronics Co. Ltd.
+ * Author: Xing Zheng <zhengxing@rock-chips.com>
+ *
  * based on
  *
  * samsung/clk.c
@@ -14,10 +17,13 @@
 #include <common.h>
 #include <malloc.h>
 #include <linux/clk.h>
+#include <regmap.h>
+#include <mfd/syscon.h>
+#include <linux/spinlock.h>
+#include <linux/rational.h>
 #include "clk.h"
-#include <init.h>
 
-/**
+/*
  * Register a clock branch.
  * Most clock branches have a form like
  *
@@ -28,134 +34,366 @@
  * sometimes without one of those components.
  */
 static struct clk *rockchip_clk_register_branch(const char *name,
-		const char **parent_names, u8 num_parents, void __iomem *base,
+		const char *const *parent_names, u8 num_parents,
+		void __iomem *base,
 		int muxdiv_offset, u8 mux_shift, u8 mux_width, u8 mux_flags,
-		u8 div_shift, u8 div_width, u8 div_flags,
+		int div_offset, u8 div_shift, u8 div_width, u8 div_flags,
 		struct clk_div_table *div_table, int gate_offset,
-		u8 gate_shift, u8 gate_flags, unsigned long flags
-		)
+		u8 gate_shift, u8 gate_flags, unsigned long flags,
+		spinlock_t *lock)
 {
 	struct clk *clk;
-	struct clk *mux = NULL;
-	struct clk *gate = NULL;
-	struct clk *div = NULL;
+	struct clk_mux *mux = NULL;
+	struct clk_gate *gate = NULL;
+	struct clk_divider *div = NULL;
+	int ret;
 
 	if (num_parents > 1) {
-		mux = clk_mux_alloc(name, 0, base + muxdiv_offset, mux_shift,
-		    mux_width, parent_names, num_parents, mux_flags);
+		mux = kzalloc(sizeof(*mux), GFP_KERNEL);
 		if (!mux)
 			return ERR_PTR(-ENOMEM);
+
+		mux->reg = base + muxdiv_offset;
+		mux->shift = mux_shift;
+		mux->width = mux_width;
+		mux->flags = mux_flags;
+		mux->lock = lock;
+		mux->hw.clk.ops = (mux_flags & CLK_MUX_READ_ONLY) ? &clk_mux_ro_ops
+							: &clk_mux_ops;
 	}
 
 	if (gate_offset >= 0) {
-		gate = clk_gate_alloc(name, *parent_names, base + gate_offset,
-		    gate_shift, flags, gate_flags);
-		if (!gate)
-			return ERR_PTR(-ENOMEM);
+		gate = kzalloc(sizeof(*gate), GFP_KERNEL);
+		if (!gate) {
+			ret = -ENOMEM;
+			goto err_gate;
+		}
+
+		gate->flags = gate_flags;
+		gate->reg = base + gate_offset;
+		gate->shift = gate_shift;
+		gate->lock = lock;
+		gate->hw.clk.ops = &clk_gate_ops;
 	}
 
 	if (div_width > 0) {
-		div = clk_divider_alloc(name, *parent_names, 0,
-		    base + muxdiv_offset, div_shift, div_width, div_flags);
-		if (!div)
-			return ERR_PTR(-ENOMEM);
+		div = kzalloc(sizeof(*div), GFP_KERNEL);
+		if (!div) {
+			ret = -ENOMEM;
+			goto err_div;
+		}
+
+		div->flags = div_flags;
+		if (div_offset)
+			div->reg = base + div_offset;
+		else
+			div->reg = base + muxdiv_offset;
+		div->shift = div_shift;
+		div->width = div_width;
+		div->lock = lock;
+		div->table = div_table;
+		div->hw.clk.ops = (div_flags & CLK_DIVIDER_READ_ONLY)
+						? &clk_divider_ro_ops
+						: &clk_divider_ops;
 	}
 
 	clk = clk_register_composite(name, parent_names, num_parents,
-				     mux,
-				     div,
-				     gate,
-				     flags);
+				       mux ? &mux->hw.clk : NULL,
+				       div ? &div->hw.clk : NULL,
+				       gate ? &gate->hw.clk : NULL,
+				       flags);
+	if (IS_ERR(clk)) {
+		kfree(div);
+		kfree(gate);
+		return ERR_CAST(clk);
+	}
 
 	return clk;
+err_div:
+	kfree(gate);
+err_gate:
+	kfree(mux);
+	return ERR_PTR(ret);
+}
+
+struct rockchip_clk_frac {
+	struct clk_fractional_divider		div;
+	struct clk_gate				gate;
+
+	struct clk_mux				mux;
+	const struct clk_ops			*mux_ops;
+	int					mux_frac_idx;
+
+	bool					rate_change_remuxed;
+	int					rate_change_idx;
+};
+
+/*
+ * fractional divider must set that denominator is 20 times larger than
+ * numerator to generate precise clock frequency.
+ */
+static void rockchip_fractional_approximation(struct clk_hw *hw,
+		unsigned long rate, unsigned long *parent_rate,
+		unsigned long *m, unsigned long *n)
+{
+	struct clk_fractional_divider *fd = to_clk_fd(hw);
+	unsigned long p_rate, p_parent_rate;
+	struct clk_hw *p_parent;
+	unsigned long scale;
+
+	p_rate = clk_hw_get_rate(clk_hw_get_parent(hw));
+	if ((rate * 20 > p_rate) && (p_rate % rate != 0)) {
+		p_parent = clk_hw_get_parent(clk_hw_get_parent(hw));
+		p_parent_rate = clk_hw_get_rate(p_parent);
+		*parent_rate = p_parent_rate;
+	}
+
+	/*
+	 * Get rate closer to *parent_rate to guarantee there is no overflow
+	 * for m and n. In the result it will be the nearest rate left shifted
+	 * by (scale - fd->nwidth) bits.
+	 */
+	scale = fls_long(*parent_rate / rate - 1);
+	if (scale > fd->nwidth)
+		rate <<= scale - fd->nwidth;
+
+	rational_best_approximation(rate, *parent_rate,
+			GENMASK(fd->mwidth - 1, 0), GENMASK(fd->nwidth - 1, 0),
+			m, n);
 }
 
-static struct clk *rockchip_clk_register_frac_branch(const char *name,
-		const char **parent_names, u8 num_parents, void __iomem *base,
-		int muxdiv_offset, u8 div_flags,
+static struct clk *rockchip_clk_register_frac_branch(
+		struct rockchip_clk_provider *ctx, const char *name,
+		const char *const *parent_names, u8 num_parents,
+		void __iomem *base, int muxdiv_offset, u8 div_flags,
 		int gate_offset, u8 gate_shift, u8 gate_flags,
-		unsigned long flags)
+		unsigned long flags, struct rockchip_clk_branch *child,
+		spinlock_t *lock)
 {
 	struct clk *clk;
-	struct clk *gate = NULL;
-	struct clk *div = NULL;
-
-	if (gate_offset >= 0) {
-		gate = clk_gate_alloc(name, *parent_names, base + gate_offset,
-		    gate_shift, flags, gate_flags);
-		if (!gate)
-			return ERR_PTR(-ENOMEM);
-	}
+	struct rockchip_clk_frac *frac;
+	struct clk_gate *gate = NULL;
+	struct clk_fractional_divider *div = NULL;
 
 	if (muxdiv_offset < 0)
 		return ERR_PTR(-EINVAL);
 
-	div = clk_fractional_divider_alloc(name, *parent_names, flags,
-		     base + muxdiv_offset, 16, 16, 0, 16, div_flags);
-	if (!div)
+	if (child && child->branch_type != branch_mux) {
+		pr_err("%s: fractional child clock for %s can only be a mux\n",
+		       __func__, name);
+		return ERR_PTR(-EINVAL);
+	}
+
+	frac = kzalloc(sizeof(*frac), GFP_KERNEL);
+	if (!frac)
 		return ERR_PTR(-ENOMEM);
 
+	if (gate_offset >= 0) {
+		gate = &frac->gate;
+		gate->flags = gate_flags;
+		gate->reg = base + gate_offset;
+		gate->shift = gate_shift;
+		gate->lock = lock;
+		gate->hw.clk.ops = &clk_gate_ops;
+	}
+
+	div = &frac->div;
+	div->flags = div_flags;
+	div->reg = base + muxdiv_offset;
+	div->mshift = 16;
+	div->mwidth = 16;
+	div->mmask = GENMASK(div->mwidth - 1, 0) << div->mshift;
+	div->nshift = 0;
+	div->nwidth = 16;
+	div->nmask = GENMASK(div->nwidth - 1, 0) << div->nshift;
+	div->lock = lock;
+	div->approximation = rockchip_fractional_approximation;
+	div->hw.clk.ops = &clk_fractional_divider_ops;
+
 	clk = clk_register_composite(name, parent_names, num_parents,
-				     NULL,
-				     div,
-				     gate,
-				     flags);
+				       NULL,
+				       &div->hw.clk,
+				       gate ? &gate->hw.clk : NULL,
+				       flags | CLK_SET_RATE_UNGATE);
+	if (IS_ERR(clk)) {
+		kfree(frac);
+		return ERR_CAST(clk);
+	}
+
+	if (child) {
+		struct clk_mux *frac_mux = &frac->mux;
+		struct clk_init_data init;
+		struct clk *mux_clk;
+
+		frac->mux_frac_idx = match_string(child->parent_names,
+						  child->num_parents, name);
+		frac->mux_ops = &clk_mux_ops;
+
+		frac_mux->reg = base + child->muxdiv_offset;
+		frac_mux->shift = child->mux_shift;
+		frac_mux->width = child->mux_width;
+		frac_mux->flags = child->mux_flags;
+		frac_mux->lock = lock;
+		frac_mux->hw.init = &init;
+
+		init.name = child->name;
+		init.flags = child->flags | CLK_SET_RATE_PARENT;
+		init.ops = frac->mux_ops;
+		init.parent_names = child->parent_names;
+		init.num_parents = child->num_parents;
+
+		mux_clk = clk_register(NULL, &frac_mux->hw);
+		if (IS_ERR(mux_clk)) {
+			kfree(frac);
+			return mux_clk;
+		}
+
+		rockchip_clk_add_lookup(ctx, mux_clk, child->id);
+
+		/* notifier on the fraction divider to catch rate changes */
+		if (frac->mux_frac_idx >= 0) {
+			pr_debug("%s: found fractional parent in mux at pos %d\n",
+				 __func__, frac->mux_frac_idx);
+		} else {
+			pr_warn("%s: could not find %s as parent of %s, rate changes may not work\n",
+				__func__, name, child->name);
+		}
+	}
 
 	return clk;
 }
 
-static struct clk **clk_table;
-static void __iomem *reg_base;
-static struct clk_onecell_data clk_data;
-static struct device_node *cru_node;
+static struct clk *rockchip_clk_register_factor_branch(const char *name,
+		const char *const *parent_names, u8 num_parents,
+		void __iomem *base, unsigned int mult, unsigned int div,
+		int gate_offset, u8 gate_shift, u8 gate_flags,
+		unsigned long flags, spinlock_t *lock)
+{
+	struct clk *clk;
+	struct clk_gate *gate = NULL;
+	struct clk_fixed_factor *fix = NULL;
+
+	/* without gate, register a simple factor clock */
+	if (gate_offset == 0) {
+		return clk_register_fixed_factor(NULL, name,
+				parent_names[0], flags, mult,
+				div);
+	}
+
+	gate = kzalloc(sizeof(*gate), GFP_KERNEL);
+	if (!gate)
+		return ERR_PTR(-ENOMEM);
+
+	gate->flags = gate_flags;
+	gate->reg = base + gate_offset;
+	gate->shift = gate_shift;
+	gate->lock = lock;
+	gate->hw.clk.ops = &clk_gate_ops;
+
+	fix = kzalloc(sizeof(*fix), GFP_KERNEL);
+	if (!fix) {
+		kfree(gate);
+		return ERR_PTR(-ENOMEM);
+	}
 
-void __init rockchip_clk_init(struct device_node *np, void __iomem *base,
-			      unsigned long nr_clks)
+	fix->mult = mult;
+	fix->div = div;
+	fix->hw.clk.ops = &clk_fixed_factor_ops;
+
+	clk = clk_register_composite(name, parent_names, num_parents,
+				       NULL,
+				       &fix->hw.clk,
+				       &gate->hw.clk, flags);
+	if (IS_ERR(clk)) {
+		kfree(fix);
+		kfree(gate);
+		return ERR_CAST(clk);
+	}
+
+	return clk;
+}
+
+struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
+						void __iomem *base,
+						unsigned long nr_clks)
 {
-	reg_base = base;
-	cru_node = np;
+	struct rockchip_clk_provider *ctx;
+	struct clk **clk_table;
+	int i;
+
+	ctx = kzalloc(sizeof(struct rockchip_clk_provider), GFP_KERNEL);
+	if (!ctx)
+		return ERR_PTR(-ENOMEM);
 
-	clk_table = calloc(nr_clks, sizeof(struct clk *));
+	clk_table = kcalloc(nr_clks, sizeof(struct clk *), GFP_KERNEL);
 	if (!clk_table)
-		pr_err("%s: could not allocate clock lookup table\n", __func__);
+		goto err_free;
+
+	for (i = 0; i < nr_clks; ++i)
+		clk_table[i] = ERR_PTR(-ENOENT);
+
+	ctx->reg_base = base;
+	ctx->clk_data.clks = clk_table;
+	ctx->clk_data.clk_num = nr_clks;
+	ctx->cru_node = np;
+	spin_lock_init(&ctx->lock);
+
+	ctx->grf = syscon_regmap_lookup_by_phandle(ctx->cru_node,
+						   "rockchip,grf");
+
+	return ctx;
 
-	clk_data.clks = clk_table;
-	clk_data.clk_num = nr_clks;
-	of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
+err_free:
+	kfree(ctx);
+	return ERR_PTR(-ENOMEM);
 }
+EXPORT_SYMBOL_GPL(rockchip_clk_init);
 
-void rockchip_clk_add_lookup(struct clk *clk, unsigned int id)
+void rockchip_clk_of_add_provider(struct device_node *np,
+				  struct rockchip_clk_provider *ctx)
 {
-	if (clk_table && id)
-		clk_table[id] = clk;
+	if (of_clk_add_provider(np, of_clk_src_onecell_get,
+				&ctx->clk_data))
+		pr_err("%s: could not register clk provider\n", __func__);
 }
+EXPORT_SYMBOL_GPL(rockchip_clk_of_add_provider);
 
-void __init rockchip_clk_register_plls(struct rockchip_pll_clock *list,
+void rockchip_clk_add_lookup(struct rockchip_clk_provider *ctx,
+			     struct clk *clk, unsigned int id)
+{
+	if (ctx->clk_data.clks && id)
+		ctx->clk_data.clks[id] = clk;
+}
+EXPORT_SYMBOL_GPL(rockchip_clk_add_lookup);
+
+void rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
+				struct rockchip_pll_clock *list,
 				unsigned int nr_pll, int grf_lock_offset)
 {
 	struct clk *clk;
 	int idx;
 
 	for (idx = 0; idx < nr_pll; idx++, list++) {
-		clk = rockchip_clk_register_pll(list->type, list->name,
+		clk = rockchip_clk_register_pll(ctx, list->type, list->name,
 				list->parent_names, list->num_parents,
-				reg_base, list->con_offset, grf_lock_offset,
+				list->con_offset, grf_lock_offset,
 				list->lock_shift, list->mode_offset,
 				list->mode_shift, list->rate_table,
-				list->pll_flags);
+				list->flags, list->pll_flags);
 		if (IS_ERR(clk)) {
 			pr_err("%s: failed to register clock %s\n", __func__,
 				list->name);
 			continue;
 		}
 
-		rockchip_clk_add_lookup(clk, list->id);
+		rockchip_clk_add_lookup(ctx, clk, list->id);
 	}
 }
+EXPORT_SYMBOL_GPL(rockchip_clk_register_plls);
 
-void __init rockchip_clk_register_branches(
-				      struct rockchip_clk_branch *list,
-				      unsigned int nr_clk)
+void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
+				    struct rockchip_clk_branch *list,
+				    unsigned int nr_clk)
 {
 	struct clk *clk = NULL;
 	unsigned int idx;
@@ -167,50 +405,89 @@ void __init rockchip_clk_register_branches(
 		/* catch simple muxes */
 		switch (list->branch_type) {
 		case branch_mux:
-			clk = clk_mux(list->name, flags,
-			    reg_base + list->muxdiv_offset, list->mux_shift,
-			    list->mux_width, list->parent_names,
-			    list->num_parents, list->mux_flags);
+			clk = clk_register_mux(NULL, list->name,
+				list->parent_names, list->num_parents,
+				flags, ctx->reg_base + list->muxdiv_offset,
+				list->mux_shift, list->mux_width,
+				list->mux_flags, &ctx->lock);
+			break;
+		case branch_muxgrf:
+			clk = rockchip_clk_register_muxgrf(list->name,
+				list->parent_names, list->num_parents,
+				flags, ctx->grf, list->muxdiv_offset,
+				list->mux_shift, list->mux_width,
+				list->mux_flags);
 			break;
 		case branch_divider:
 			if (list->div_table)
-				clk = clk_divider_table(list->name,
-				    list->parent_names[0], flags,
-				    reg_base + list->muxdiv_offset,
-				    list->div_shift, list->div_width,
-				    list->div_table, list->div_flags);
+				clk = clk_register_divider_table(NULL,
+					list->name, list->parent_names[0],
+					flags,
+					ctx->reg_base + list->muxdiv_offset,
+					list->div_shift, list->div_width,
+					list->div_flags, list->div_table,
+					&ctx->lock);
 			else
-				clk = clk_divider(list->name,
-				    list->parent_names[0], flags,
-				    reg_base + list->muxdiv_offset,
-				    list->div_shift, list->div_width,
-				    list->div_flags);
+				clk = clk_register_divider(NULL, list->name,
+					list->parent_names[0], flags,
+					ctx->reg_base + list->muxdiv_offset,
+					list->div_shift, list->div_width,
+					list->div_flags, &ctx->lock);
 			break;
 		case branch_fraction_divider:
-			clk = rockchip_clk_register_frac_branch(list->name,
+			clk = rockchip_clk_register_frac_branch(ctx, list->name,
 				list->parent_names, list->num_parents,
-				reg_base, list->muxdiv_offset, list->div_flags,
+				ctx->reg_base, list->muxdiv_offset,
+				list->div_flags,
 				list->gate_offset, list->gate_shift,
-				list->gate_flags, flags);
+				list->gate_flags, flags, list->child,
+				&ctx->lock);
+			break;
+		case branch_half_divider:
 			break;
 		case branch_gate:
 			flags |= CLK_SET_RATE_PARENT;
 
-			clk = clk_gate(list->name, list->parent_names[0],
-			    reg_base + list->gate_offset, list->gate_shift,
-			    flags, list->gate_flags);
+			clk = clk_register_gate(NULL, list->name,
+				list->parent_names[0], flags,
+				ctx->reg_base + list->gate_offset,
+				list->gate_shift, list->gate_flags, &ctx->lock);
 			break;
 		case branch_composite:
 			clk = rockchip_clk_register_branch(list->name,
 				list->parent_names, list->num_parents,
-				reg_base, list->muxdiv_offset, list->mux_shift,
+				ctx->reg_base, list->muxdiv_offset,
+				list->mux_shift,
 				list->mux_width, list->mux_flags,
-				list->div_shift, list->div_width,
+				list->div_offset, list->div_shift, list->div_width,
 				list->div_flags, list->div_table,
 				list->gate_offset, list->gate_shift,
-				list->gate_flags, flags);
+				list->gate_flags, flags, &ctx->lock);
 			break;
 		case branch_mmc:
+			clk = rockchip_clk_register_mmc(
+				list->name,
+				list->parent_names, list->num_parents,
+				ctx->reg_base + list->muxdiv_offset,
+				list->div_shift
+			);
+			break;
+		case branch_inverter:
+			clk = rockchip_clk_register_inverter(
+				list->name, list->parent_names,
+				list->num_parents,
+				ctx->reg_base + list->muxdiv_offset,
+				list->div_shift, list->div_flags, &ctx->lock);
+			break;
+		case branch_factor:
+			clk = rockchip_clk_register_factor_branch(
+				list->name, list->parent_names,
+				list->num_parents, ctx->reg_base,
+				list->div_shift, list->div_width,
+				list->gate_offset, list->gate_shift,
+				list->gate_flags, flags, &ctx->lock);
+			break;
+		case branch_ddrclk:
 			break;
 		}
 
@@ -227,32 +504,36 @@ void __init rockchip_clk_register_branches(
 			continue;
 		}
 
-		rockchip_clk_add_lookup(clk, list->id);
+		rockchip_clk_add_lookup(ctx, clk, list->id);
 	}
 }
-
-void __init rockchip_clk_register_armclk(unsigned int lookup_id,
-			const char *name, const char **parent_names,
-			u8 num_parents,
-			const struct rockchip_cpuclk_reg_data *reg_data,
-			const struct rockchip_cpuclk_rate_table *rates,
-			int nrates)
+EXPORT_SYMBOL_GPL(rockchip_clk_register_branches);
+
+void rockchip_clk_register_armclk(struct rockchip_clk_provider *ctx,
+				  unsigned int lookup_id,
+				  const char *name, const char *const *parent_names,
+				  u8 num_parents,
+				  const struct rockchip_cpuclk_reg_data *reg_data,
+				  const struct rockchip_cpuclk_rate_table *rates,
+				  int nrates)
 {
 	struct clk *clk;
 
 	clk = rockchip_clk_register_cpuclk(name, parent_names, num_parents,
-					   reg_data, rates, nrates, reg_base
-					   );
+					   reg_data, rates, nrates,
+					   ctx->reg_base, &ctx->lock);
 	if (IS_ERR(clk)) {
 		pr_err("%s: failed to register clock %s: %ld\n",
 		       __func__, name, PTR_ERR(clk));
 		return;
 	}
 
-	rockchip_clk_add_lookup(clk, lookup_id);
+	rockchip_clk_add_lookup(ctx, clk, lookup_id);
 }
+EXPORT_SYMBOL_GPL(rockchip_clk_register_armclk);
 
-void __init rockchip_clk_protect_critical(const char *clocks[], int nclocks)
+void rockchip_clk_protect_critical(const char *const clocks[],
+				   int nclocks)
 {
 	int i;
 
@@ -260,7 +541,7 @@ void __init rockchip_clk_protect_critical(const char *clocks[], int nclocks)
 	for (i = 0; i < nclocks; i++) {
 		struct clk *clk = __clk_lookup(clocks[i]);
 
-		if (clk)
-			clk_enable(clk);
+		clk_enable(clk);
 	}
 }
+EXPORT_SYMBOL_GPL(rockchip_clk_protect_critical);
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 006225b7e8..c17da6e663 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -3,6 +3,9 @@
  * Copyright (c) 2014 MundoReader S.L.
  * Author: Heiko Stuebner <heiko@sntech.de>
  *
+ * Copyright (c) 2015 Rockchip Electronics Co. Ltd.
+ * Author: Xing Zheng <zhengxing@rock-chips.com>
+ *
  * based on
  *
  * samsung/clk.h
@@ -17,30 +20,99 @@
 #include <io.h>
 #include <linux/clk.h>
 
-/* To keep changes from kernel smaller */
-#define CLK_GATE_SET_TO_DISABLE	CLK_GATE_INVERTED
-#define CLK_GET_RATE_NOCACHE 0
+struct clk;
+#define writel_relaxed	writel
+#define readl_relaxed	readl
 
 #define HIWORD_UPDATE(val, mask, shift) \
 		((val) << (shift) | (mask) << ((shift) + 16))
 
-/* register positions shared by RK2928, RK3066 and RK3188 */
-#define RK2928_PLL_CON(x)		(x * 0x4)
+/* register positions shared by PX30, RV1108, RK2928, RK3036, RK3066, RK3188 and RK3228 */
+#define BOOST_PLL_H_CON(x)		((x) * 0x4)
+#define BOOST_CLK_CON			0x0008
+#define BOOST_BOOST_CON			0x000c
+#define BOOST_SWITCH_CNT		0x0010
+#define BOOST_HIGH_PERF_CNT0		0x0014
+#define BOOST_HIGH_PERF_CNT1		0x0018
+#define BOOST_STATIS_THRESHOLD		0x001c
+#define BOOST_SHORT_SWITCH_CNT		0x0020
+#define BOOST_SWITCH_THRESHOLD		0x0024
+#define BOOST_FSM_STATUS		0x0028
+#define BOOST_PLL_L_CON(x)		((x) * 0x4 + 0x2c)
+#define BOOST_RECOVERY_MASK		0x1
+#define BOOST_RECOVERY_SHIFT		1
+#define BOOST_SW_CTRL_MASK		0x1
+#define BOOST_SW_CTRL_SHIFT		2
+#define BOOST_LOW_FREQ_EN_MASK		0x1
+#define BOOST_LOW_FREQ_EN_SHIFT		3
+#define BOOST_BUSY_STATE		BIT(8)
+
+#define PX30_PLL_CON(x)			((x) * 0x4)
+#define PX30_CLKSEL_CON(x)		((x) * 0x4 + 0x100)
+#define PX30_CLKGATE_CON(x)		((x) * 0x4 + 0x200)
+#define PX30_GLB_SRST_FST		0xb8
+#define PX30_GLB_SRST_SND		0xbc
+#define PX30_SOFTRST_CON(x)		((x) * 0x4 + 0x300)
+#define PX30_MODE_CON			0xa0
+#define PX30_MISC_CON			0xa4
+#define PX30_SDMMC_CON0			0x380
+#define PX30_SDMMC_CON1			0x384
+#define PX30_SDIO_CON0			0x388
+#define PX30_SDIO_CON1			0x38c
+#define PX30_EMMC_CON0			0x390
+#define PX30_EMMC_CON1			0x394
+
+#define PX30_PMU_PLL_CON(x)		((x) * 0x4)
+#define PX30_PMU_CLKSEL_CON(x)		((x) * 0x4 + 0x40)
+#define PX30_PMU_CLKGATE_CON(x)		((x) * 0x4 + 0x80)
+#define PX30_PMU_MODE			0x0020
+
+#define RV1108_PLL_CON(x)		((x) * 0x4)
+#define RV1108_CLKSEL_CON(x)		((x) * 0x4 + 0x60)
+#define RV1108_CLKGATE_CON(x)		((x) * 0x4 + 0x120)
+#define RV1108_SOFTRST_CON(x)		((x) * 0x4 + 0x180)
+#define RV1108_GLB_SRST_FST		0x1c0
+#define RV1108_GLB_SRST_SND		0x1c4
+#define RV1108_MISC_CON			0x1cc
+#define RV1108_SDMMC_CON0		0x1d8
+#define RV1108_SDMMC_CON1		0x1dc
+#define RV1108_SDIO_CON0		0x1e0
+#define RV1108_SDIO_CON1		0x1e4
+#define RV1108_EMMC_CON0		0x1e8
+#define RV1108_EMMC_CON1		0x1ec
+
+#define RK2928_PLL_CON(x)		((x) * 0x4)
 #define RK2928_MODE_CON		0x40
-#define RK2928_CLKSEL_CON(x)	(x * 0x4 + 0x44)
-#define RK2928_CLKGATE_CON(x)	(x * 0x4 + 0xd0)
+#define RK2928_CLKSEL_CON(x)	((x) * 0x4 + 0x44)
+#define RK2928_CLKGATE_CON(x)	((x) * 0x4 + 0xd0)
 #define RK2928_GLB_SRST_FST		0x100
 #define RK2928_GLB_SRST_SND		0x104
-#define RK2928_SOFTRST_CON(x)	(x * 0x4 + 0x110)
+#define RK2928_SOFTRST_CON(x)	((x) * 0x4 + 0x110)
 #define RK2928_MISC_CON		0x134
 
+#define RK3036_SDMMC_CON0		0x144
+#define RK3036_SDMMC_CON1		0x148
+#define RK3036_SDIO_CON0		0x14c
+#define RK3036_SDIO_CON1		0x150
+#define RK3036_EMMC_CON0		0x154
+#define RK3036_EMMC_CON1		0x158
+
+#define RK3228_GLB_SRST_FST		0x1f0
+#define RK3228_GLB_SRST_SND		0x1f4
+#define RK3228_SDMMC_CON0		0x1c0
+#define RK3228_SDMMC_CON1		0x1c4
+#define RK3228_SDIO_CON0		0x1c8
+#define RK3228_SDIO_CON1		0x1cc
+#define RK3228_EMMC_CON0		0x1d8
+#define RK3228_EMMC_CON1		0x1dc
+
 #define RK3288_PLL_CON(x)		RK2928_PLL_CON(x)
 #define RK3288_MODE_CON			0x50
-#define RK3288_CLKSEL_CON(x)		(x * 0x4 + 0x60)
-#define RK3288_CLKGATE_CON(x)		(x * 0x4 + 0x160)
+#define RK3288_CLKSEL_CON(x)		((x) * 0x4 + 0x60)
+#define RK3288_CLKGATE_CON(x)		((x) * 0x4 + 0x160)
 #define RK3288_GLB_SRST_FST		0x1b0
 #define RK3288_GLB_SRST_SND		0x1b4
-#define RK3288_SOFTRST_CON(x)		(x * 0x4 + 0x1b8)
+#define RK3288_SOFTRST_CON(x)		((x) * 0x4 + 0x1b8)
 #define RK3288_MISC_CON			0x1e8
 #define RK3288_SDMMC_CON0		0x200
 #define RK3288_SDMMC_CON1		0x204
@@ -51,41 +123,175 @@
 #define RK3288_EMMC_CON0		0x218
 #define RK3288_EMMC_CON1		0x21c
 
+#define RK3308_PLL_CON(x)		RK2928_PLL_CON(x)
+#define RK3308_CLKSEL_CON(x)		((x) * 0x4 + 0x100)
+#define RK3308_CLKGATE_CON(x)		((x) * 0x4 + 0x300)
+#define RK3308_GLB_SRST_FST		0xb8
+#define RK3308_SOFTRST_CON(x)		((x) * 0x4 + 0x400)
+#define RK3308_MODE_CON			0xa0
+#define RK3308_SDMMC_CON0		0x480
+#define RK3308_SDMMC_CON1		0x484
+#define RK3308_SDIO_CON0		0x488
+#define RK3308_SDIO_CON1		0x48c
+#define RK3308_EMMC_CON0		0x490
+#define RK3308_EMMC_CON1		0x494
+
+#define RK3328_PLL_CON(x)		RK2928_PLL_CON(x)
+#define RK3328_CLKSEL_CON(x)		((x) * 0x4 + 0x100)
+#define RK3328_CLKGATE_CON(x)		((x) * 0x4 + 0x200)
+#define RK3328_GRFCLKSEL_CON(x)		((x) * 0x4 + 0x100)
+#define RK3328_GLB_SRST_FST		0x9c
+#define RK3328_GLB_SRST_SND		0x98
+#define RK3328_SOFTRST_CON(x)		((x) * 0x4 + 0x300)
+#define RK3328_MODE_CON			0x80
+#define RK3328_MISC_CON			0x84
+#define RK3328_SDMMC_CON0		0x380
+#define RK3328_SDMMC_CON1		0x384
+#define RK3328_SDIO_CON0		0x388
+#define RK3328_SDIO_CON1		0x38c
+#define RK3328_EMMC_CON0		0x390
+#define RK3328_EMMC_CON1		0x394
+#define RK3328_SDMMC_EXT_CON0		0x398
+#define RK3328_SDMMC_EXT_CON1		0x39C
+
+#define RK3368_PLL_CON(x)		RK2928_PLL_CON(x)
+#define RK3368_CLKSEL_CON(x)		((x) * 0x4 + 0x100)
+#define RK3368_CLKGATE_CON(x)		((x) * 0x4 + 0x200)
+#define RK3368_GLB_SRST_FST		0x280
+#define RK3368_GLB_SRST_SND		0x284
+#define RK3368_SOFTRST_CON(x)		((x) * 0x4 + 0x300)
+#define RK3368_MISC_CON			0x380
+#define RK3368_SDMMC_CON0		0x400
+#define RK3368_SDMMC_CON1		0x404
+#define RK3368_SDIO0_CON0		0x408
+#define RK3368_SDIO0_CON1		0x40c
+#define RK3368_SDIO1_CON0		0x410
+#define RK3368_SDIO1_CON1		0x414
+#define RK3368_EMMC_CON0		0x418
+#define RK3368_EMMC_CON1		0x41c
+
+#define RK3399_PLL_CON(x)		RK2928_PLL_CON(x)
+#define RK3399_CLKSEL_CON(x)		((x) * 0x4 + 0x100)
+#define RK3399_CLKGATE_CON(x)		((x) * 0x4 + 0x300)
+#define RK3399_SOFTRST_CON(x)		((x) * 0x4 + 0x400)
+#define RK3399_GLB_SRST_FST		0x500
+#define RK3399_GLB_SRST_SND		0x504
+#define RK3399_GLB_CNT_TH		0x508
+#define RK3399_MISC_CON			0x50c
+#define RK3399_RST_CON			0x510
+#define RK3399_RST_ST			0x514
+#define RK3399_SDMMC_CON0		0x580
+#define RK3399_SDMMC_CON1		0x584
+#define RK3399_SDIO_CON0		0x588
+#define RK3399_SDIO_CON1		0x58c
+
+#define RK3399_PMU_PLL_CON(x)		RK2928_PLL_CON(x)
+#define RK3399_PMU_CLKSEL_CON(x)	((x) * 0x4 + 0x80)
+#define RK3399_PMU_CLKGATE_CON(x)	((x) * 0x4 + 0x100)
+#define RK3399_PMU_SOFTRST_CON(x)	((x) * 0x4 + 0x110)
+
+#define RK3568_PLL_CON(x)		RK2928_PLL_CON(x)
+#define RK3568_MODE_CON0		0xc0
+#define RK3568_MISC_CON0		0xc4
+#define RK3568_MISC_CON1		0xc8
+#define RK3568_MISC_CON2		0xcc
+#define RK3568_GLB_CNT_TH		0xd0
+#define RK3568_GLB_SRST_FST		0xd4
+#define RK3568_GLB_SRST_SND		0xd8
+#define RK3568_GLB_RST_CON		0xdc
+#define RK3568_GLB_RST_ST		0xe0
+#define RK3568_CLKSEL_CON(x)		((x) * 0x4 + 0x100)
+#define RK3568_CLKGATE_CON(x)		((x) * 0x4 + 0x300)
+#define RK3568_SOFTRST_CON(x)		((x) * 0x4 + 0x400)
+#define RK3568_SDMMC0_CON0		0x580
+#define RK3568_SDMMC0_CON1		0x584
+#define RK3568_SDMMC1_CON0		0x588
+#define RK3568_SDMMC1_CON1		0x58c
+#define RK3568_SDMMC2_CON0		0x590
+#define RK3568_SDMMC2_CON1		0x594
+#define RK3568_EMMC_CON0		0x598
+#define RK3568_EMMC_CON1		0x59c
+
+#define RK3568_PMU_PLL_CON(x)		RK2928_PLL_CON(x)
+#define RK3568_PMU_MODE_CON0		0x80
+#define RK3568_PMU_CLKSEL_CON(x)	((x) * 0x4 + 0x100)
+#define RK3568_PMU_CLKGATE_CON(x)	((x) * 0x4 + 0x180)
+#define RK3568_PMU_SOFTRST_CON(x)	((x) * 0x4 + 0x200)
+
 enum rockchip_pll_type {
+	pll_rk3036,
 	pll_rk3066,
+	pll_rk3328,
+	pll_rk3399,
 };
 
+#define RK3036_PLL_RATE(_rate, _refdiv, _fbdiv, _postdiv1,	\
+			_postdiv2, _dsmpd, _frac)		\
+{								\
+	.rate	= _rate##U,					\
+	.fbdiv = _fbdiv,					\
+	.postdiv1 = _postdiv1,					\
+	.refdiv = _refdiv,					\
+	.postdiv2 = _postdiv2,					\
+	.dsmpd = _dsmpd,					\
+	.frac = _frac,						\
+}
+
 #define RK3066_PLL_RATE(_rate, _nr, _nf, _no)	\
 {						\
 	.rate	= _rate##U,			\
 	.nr = _nr,				\
 	.nf = _nf,				\
 	.no = _no,				\
-	.bwadj = (_nf >> 1),			\
+	.nb = ((_nf) < 2) ? 1 : (_nf) >> 1,	\
 }
 
-#define RK3066_PLL_RATE_BWADJ(_rate, _nr, _nf, _no, _bw)	\
+#define RK3066_PLL_RATE_NB(_rate, _nr, _nf, _no, _nb)		\
 {								\
 	.rate	= _rate##U,					\
 	.nr = _nr,						\
 	.nf = _nf,						\
 	.no = _no,						\
-	.bwadj = _bw,						\
+	.nb = _nb,						\
 }
 
+/**
+ * struct rockchip_clk_provider - information about clock provider
+ * @reg_base: virtual address for the register base.
+ * @clk_data: holds clock related data like clk* and number of clocks.
+ * @cru_node: device-node of the clock-provider
+ * @grf: regmap of the general-register-files syscon
+ * @lock: maintains exclusion between callbacks for a given clock-provider.
+ */
+struct rockchip_clk_provider {
+	void __iomem *reg_base;
+	struct clk_onecell_data clk_data;
+	struct device_node *cru_node;
+	struct regmap *grf;
+	spinlock_t lock;
+};
+
 struct rockchip_pll_rate_table {
 	unsigned long rate;
 	unsigned int nr;
 	unsigned int nf;
 	unsigned int no;
-	unsigned int bwadj;
+	unsigned int nb;
+	/* for RK3036/RK3399 */
+	unsigned int fbdiv;
+	unsigned int postdiv1;
+	unsigned int refdiv;
+	unsigned int postdiv2;
+	unsigned int dsmpd;
+	unsigned int frac;
 };
 
 /**
- * struct rockchip_pll_clock: information about pll clock
+ * struct rockchip_pll_clock - information about pll clock
  * @id: platform specific id of the clock.
  * @name: name of this pll clock.
- * @parent_name: name of the parent clock.
+ * @parent_names: name of the parent clock.
+ * @num_parents: number of parents
  * @flags: optional flags for basic clock.
  * @con_offset: offset of the register for configuring the PLL.
  * @mode_offset: offset of the register for configuring the PLL-mode.
@@ -102,7 +308,7 @@ struct rockchip_pll_rate_table {
 struct rockchip_pll_clock {
 	unsigned int		id;
 	const char		*name;
-	const char		**parent_names;
+	const char		*const *parent_names;
 	u8			num_parents;
 	unsigned long		flags;
 	int			con_offset;
@@ -133,71 +339,111 @@ struct rockchip_pll_clock {
 		.rate_table	= _rtable,				\
 	}
 
-struct clk *rockchip_clk_register_pll(enum rockchip_pll_type pll_type,
-		const char *name, const char **parent_names, u8 num_parents,
-		void __iomem *base, int con_offset, int grf_lock_offset,
-		int lock_shift, int reg_mode, int mode_shift,
+struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
+		enum rockchip_pll_type pll_type,
+		const char *name, const char *const *parent_names,
+		u8 num_parents, int con_offset, int grf_lock_offset,
+		int lock_shift, int mode_offset, int mode_shift,
 		struct rockchip_pll_rate_table *rate_table,
-		u8 clk_pll_flags);
+		unsigned long flags, u8 clk_pll_flags);
 
 struct rockchip_cpuclk_clksel {
 	int reg;
 	u32 val;
 };
 
-#define ROCKCHIP_CPUCLK_NUM_DIVIDERS	2
+#define ROCKCHIP_CPUCLK_NUM_DIVIDERS	5
+#define ROCKCHIP_CPUCLK_MAX_CORES	4
 struct rockchip_cpuclk_rate_table {
 	unsigned long prate;
 	struct rockchip_cpuclk_clksel divs[ROCKCHIP_CPUCLK_NUM_DIVIDERS];
 };
 
 /**
- * struct rockchip_cpuclk_reg_data: describes register offsets and masks of the cpuclock
- * @core_reg:		register offset of the core settings register
- * @div_core_shift:	core divider offset used to divide the pll value
- * @div_core_mask:	core divider mask
+ * struct rockchip_cpuclk_reg_data - register offsets and masks of the cpuclock
+ * @core_reg[]:	register offset of the cores setting register
+ * @div_core_shift[]:	cores divider offset used to divide the pll value
+ * @div_core_mask[]:	cores divider mask
+ * @num_cores:	number of cpu cores
+ * @mux_core_main:	mux value to select main parent of core
  * @mux_core_shift:	offset of the core multiplexer
+ * @mux_core_mask:	core multiplexer mask
  */
 struct rockchip_cpuclk_reg_data {
-	int		core_reg;
-	u8		div_core_shift;
-	u32		div_core_mask;
-	int		mux_core_reg;
-	u8		mux_core_shift;
+	int	core_reg[ROCKCHIP_CPUCLK_MAX_CORES];
+	u8	div_core_shift[ROCKCHIP_CPUCLK_MAX_CORES];
+	u32	div_core_mask[ROCKCHIP_CPUCLK_MAX_CORES];
+	int	num_cores;
+	u8	mux_core_alt;
+	u8	mux_core_main;
+	u8	mux_core_shift;
+	u32	mux_core_mask;
 };
 
 struct clk *rockchip_clk_register_cpuclk(const char *name,
-			const char **parent_names, u8 num_parents,
+			const char *const *parent_names, u8 num_parents,
 			const struct rockchip_cpuclk_reg_data *reg_data,
 			const struct rockchip_cpuclk_rate_table *rates,
-			int nrates, void __iomem *reg_base);
+			int nrates, void __iomem *reg_base, spinlock_t *lock);
 
 struct clk *rockchip_clk_register_mmc(const char *name,
-				const char **parent_names, u8 num_parents,
+				const char *const *parent_names, u8 num_parents,
 				void __iomem *reg, int shift);
 
-#define PNAME(x) static const char *x[] __initconst
+/*
+ * DDRCLK flags, including method of setting the rate
+ * ROCKCHIP_DDRCLK_SIP: use SIP call to bl31 to change ddrclk rate.
+ */
+#define ROCKCHIP_DDRCLK_SIP		BIT(0)
+
+struct clk *rockchip_clk_register_ddrclk(const char *name, int flags,
+					 const char *const *parent_names,
+					 u8 num_parents, int mux_offset,
+					 int mux_shift, int mux_width,
+					 int div_shift, int div_width,
+					 int ddr_flags, void __iomem *reg_base,
+					 spinlock_t *lock);
+
+#define ROCKCHIP_INVERTER_HIWORD_MASK	BIT(0)
+
+struct clk *rockchip_clk_register_inverter(const char *name,
+				const char *const *parent_names, u8 num_parents,
+				void __iomem *reg, int shift, int flags,
+				spinlock_t *lock);
+
+struct clk *rockchip_clk_register_muxgrf(const char *name,
+				const char *const *parent_names, u8 num_parents,
+				int flags, struct regmap *grf, int reg,
+				int shift, int width, int mux_flags);
+
+#define PNAME(x) static const char *const x[] __initconst
 
 enum rockchip_clk_branch_type {
 	branch_composite,
 	branch_mux,
+	branch_muxgrf,
 	branch_divider,
 	branch_fraction_divider,
 	branch_gate,
 	branch_mmc,
+	branch_inverter,
+	branch_factor,
+	branch_ddrclk,
+	branch_half_divider,
 };
 
 struct rockchip_clk_branch {
 	unsigned int			id;
 	enum rockchip_clk_branch_type	branch_type;
 	const char			*name;
-	const char			**parent_names;
+	const char			*const *parent_names;
 	u8				num_parents;
 	unsigned long			flags;
 	int				muxdiv_offset;
 	u8				mux_shift;
 	u8				mux_width;
 	u8				mux_flags;
+	int				div_offset;
 	u8				div_shift;
 	u8				div_width;
 	u8				div_flags;
@@ -205,6 +451,7 @@ struct rockchip_clk_branch {
 	int				gate_offset;
 	u8				gate_shift;
 	u8				gate_flags;
+	struct rockchip_clk_branch	*child;
 };
 
 #define COMPOSITE(_id, cname, pnames, f, mo, ms, mw, mf, ds, dw,\
@@ -228,6 +475,28 @@ struct rockchip_clk_branch {
 		.gate_flags	= gf,				\
 	}
 
+#define COMPOSITE_DIV_OFFSET(_id, cname, pnames, f, mo, ms, mw,	\
+			     mf, do, ds, dw, df, go, gs, gf)	\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_composite,		\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.mux_shift	= ms,				\
+		.mux_width	= mw,				\
+		.mux_flags	= mf,				\
+		.div_offset	= do,				\
+		.div_shift	= ds,				\
+		.div_width	= dw,				\
+		.div_flags	= df,				\
+		.gate_offset	= go,				\
+		.gate_shift	= gs,				\
+		.gate_flags	= gf,				\
+	}
+
 #define COMPOSITE_NOMUX(_id, cname, pname, f, mo, ds, dw, df,	\
 			go, gs, gf)				\
 	{							\
@@ -302,6 +571,26 @@ struct rockchip_clk_branch {
 		.gate_offset	= -1,				\
 	}
 
+#define COMPOSITE_NOGATE_DIVTBL(_id, cname, pnames, f, mo, ms,	\
+				mw, mf, ds, dw, df, dt)		\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_composite,		\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.mux_shift	= ms,				\
+		.mux_width	= mw,				\
+		.mux_flags	= mf,				\
+		.div_shift	= ds,				\
+		.div_width	= dw,				\
+		.div_flags	= df,				\
+		.div_table	= dt,				\
+		.gate_offset	= -1,				\
+	}
+
 #define COMPOSITE_FRAC(_id, cname, pname, f, mo, df, go, gs, gf)\
 	{							\
 		.id		= _id,				\
@@ -319,6 +608,58 @@ struct rockchip_clk_branch {
 		.gate_flags	= gf,				\
 	}
 
+#define COMPOSITE_FRACMUX(_id, cname, pname, f, mo, df, go, gs, gf, ch) \
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_fraction_divider,	\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.div_shift	= 16,				\
+		.div_width	= 16,				\
+		.div_flags	= df,				\
+		.gate_offset	= go,				\
+		.gate_shift	= gs,				\
+		.gate_flags	= gf,				\
+		.child		= ch,				\
+	}
+
+#define COMPOSITE_FRACMUX_NOGATE(_id, cname, pname, f, mo, df, ch) \
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_fraction_divider,	\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.div_shift	= 16,				\
+		.div_width	= 16,				\
+		.div_flags	= df,				\
+		.gate_offset	= -1,				\
+		.child		= ch,				\
+	}
+
+#define COMPOSITE_DDRCLK(_id, cname, pnames, f, mo, ms, mw,	\
+			 ds, dw, df)				\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_ddrclk,		\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset  = mo,                           \
+		.mux_shift      = ms,                           \
+		.mux_width      = mw,                           \
+		.div_shift      = ds,                           \
+		.div_width      = dw,                           \
+		.div_flags	= df,				\
+		.gate_offset    = -1,                           \
+	}
+
 #define MUX(_id, cname, pnames, f, o, s, w, mf)			\
 	{							\
 		.id		= _id,				\
@@ -334,6 +675,21 @@ struct rockchip_clk_branch {
 		.gate_offset	= -1,				\
 	}
 
+#define MUXGRF(_id, cname, pnames, f, o, s, w, mf)		\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_muxgrf,		\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset	= o,				\
+		.mux_shift	= s,				\
+		.mux_width	= w,				\
+		.mux_flags	= mf,				\
+		.gate_offset	= -1,				\
+	}
+
 #define DIV(_id, cname, pname, f, o, s, w, df)			\
 	{							\
 		.id		= _id,				\
@@ -388,19 +744,69 @@ struct rockchip_clk_branch {
 		.div_shift	= shift,			\
 	}
 
-void rockchip_clk_init(struct device_node *np, void __iomem *base,
-		       unsigned long nr_clks);
-struct regmap *rockchip_clk_get_grf(void);
-void rockchip_clk_add_lookup(struct clk *clk, unsigned int id);
-void rockchip_clk_register_branches(struct rockchip_clk_branch *clk_list,
+#define INVERTER(_id, cname, pname, io, is, if)			\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_inverter,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.muxdiv_offset	= io,				\
+		.div_shift	= is,				\
+		.div_flags	= if,				\
+	}
+
+#define FACTOR(_id, cname, pname,  f, fm, fd)			\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_factor,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.div_shift	= fm,				\
+		.div_width	= fd,				\
+	}
+
+#define FACTOR_GATE(_id, cname, pname,  f, fm, fd, go, gb, gf)	\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_factor,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.div_shift	= fm,				\
+		.div_width	= fd,				\
+		.gate_offset	= go,				\
+		.gate_shift	= gb,				\
+		.gate_flags	= gf,				\
+	}
+
+/* SGRF clocks are only accessible from secure mode, so not controllable */
+#define SGRF_GATE(_id, cname, pname)				\
+		FACTOR(_id, cname, pname, 0, 1, 1)
+
+struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
+			void __iomem *base, unsigned long nr_clks);
+void rockchip_clk_of_add_provider(struct device_node *np,
+				struct rockchip_clk_provider *ctx);
+void rockchip_clk_add_lookup(struct rockchip_clk_provider *ctx,
+			     struct clk *clk, unsigned int id);
+void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
+				    struct rockchip_clk_branch *list,
 				    unsigned int nr_clk);
-void rockchip_clk_register_plls(struct rockchip_pll_clock *pll_list,
+void rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
+				struct rockchip_pll_clock *pll_list,
 				unsigned int nr_pll, int grf_lock_offset);
-void rockchip_clk_register_armclk(unsigned int lookup_id, const char *name,
-			const char **parent_names, u8 num_parents,
+void rockchip_clk_register_armclk(struct rockchip_clk_provider *ctx,
+			unsigned int lookup_id, const char *name,
+			const char *const *parent_names, u8 num_parents,
 			const struct rockchip_cpuclk_reg_data *reg_data,
 			const struct rockchip_cpuclk_rate_table *rates,
 			int nrates);
-void rockchip_clk_protect_critical(const char *clocks[], int nclocks);
+void rockchip_clk_protect_critical(const char *const clocks[], int nclocks);
+
+#define ROCKCHIP_SOFTRST_HIWORD_MASK	BIT(0)
 
 #endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

