Delivery-date: Sun, 20 Feb 2022 13:51:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlgK-004x1y-0B
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:51:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlgD-0002H4-1r
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:51:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DGTPE03FRSAu0lUZLsFRKALBcMJAdf77/iz3RLcM3Q=; b=0GfWrzSu5ebFoQ
	XRHEPxMx5DOpEB2I1dhRJckVPENY1QVyF/YAFUCepfEKtZ5t4oDmYBPGdoCtWi8Mo8uDD3h+kFvAa
	D9wHgunVy2/57DdFiN/RIaAv5rixxaCmmd8YxBhpToWdiUlVdYokHRvKRzNroy7/YYABjMy5I6YXw
	If4i9u/IQlqZW1lYnKnnGPIc8lPKpthyEK0AwIJhKsLaMX21jjYkuudRb2dz497+Nm32Cb4k6KF/5
	s0uDmQGJ3RwR611MfGRAdjzeMHilGiK/xRqbdSPpsJzF4wxNakiYc0q2nNbO+OobfW7c5AQy7kMS3
	pwER+NTSLa9XAXUUXArQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLleG-001Iqn-Nb; Sun, 20 Feb 2022 12:49:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLld2-001I4J-2c
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:48:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000aF-Nu; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcr-00CoQI-Hs; Sun, 20 Feb 2022 13:47:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:33 +0100
Message-Id: <20220220124736.3052502-22-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044752_724146_BF24C473 
X-CRM114-Status: GOOD (  21.31  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 21/24] clk: stm32mp1: sync with Linux v5.17-rc1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux has meanwhile extended the RCC driver to support both reset and
clocks as well as peaceful co-existence with the SCMI driver.

Import these changes into barebox and remove the reset controller
handling from the old RCC reset driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk-stm32mp1.c         | 886 ++++++++++++++++++++---------
 drivers/power/reset/Kconfig        |   5 +-
 drivers/power/reset/stm32-reboot.c |  60 +-
 include/driver.h                   |   5 +
 include/soc/stm32/reboot.h         |  16 +
 5 files changed, 652 insertions(+), 320 deletions(-)
 create mode 100644 include/soc/stm32/reboot.h

diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
index 8f1ba96e6399..3e0c15ee32b9 100644
--- a/drivers/clk/clk-stm32mp1.c
+++ b/drivers/clk/clk-stm32mp1.c
@@ -6,14 +6,22 @@
  */
 
 #include <linux/clk.h>
+#include <clock.h>
 #include <linux/err.h>
+#include <linux/overflow.h>
 #include <io.h>
 #include <of.h>
 #include <of_address.h>
-#include <linux/math64.h>
+#include <driver.h>
+#include <linux/reset-controller.h>
+#include <linux/slab.h>
+#include <linux/spinlock.h>
+#include <soc/stm32/reboot.h>
 
 #include <dt-bindings/clock/stm32mp1-clks.h>
 
+static DEFINE_SPINLOCK(rlock);
+
 #define RCC_OCENSETR		0x0C
 #define RCC_HSICFGR		0x18
 #define RCC_RDLSICR		0x144
@@ -116,7 +124,7 @@ static const char * const cpu_src[] = {
 };
 
 static const char * const axi_src[] = {
-	"ck_hsi", "ck_hse", "pll2_p", "pll3_p"
+	"ck_hsi", "ck_hse", "pll2_p"
 };
 
 static const char * const per_src[] = {
@@ -220,19 +228,19 @@ static const char * const usart6_src[] = {
 };
 
 static const char * const fdcan_src[] = {
-	"ck_hse", "pll3_q", "pll4_q"
+	"ck_hse", "pll3_q", "pll4_q", "pll4_r"
 };
 
 static const char * const sai_src[] = {
-	"pll4_q", "pll3_q", "i2s_ckin", "ck_per"
+	"pll4_q", "pll3_q", "i2s_ckin", "ck_per", "pll3_r"
 };
 
 static const char * const sai2_src[] = {
-	"pll4_q", "pll3_q", "i2s_ckin", "ck_per", "spdif_ck_symb"
+	"pll4_q", "pll3_q", "i2s_ckin", "ck_per", "spdif_ck_symb", "pll3_r"
 };
 
 static const char * const adc12_src[] = {
-	"pll4_q", "ck_per"
+	"pll4_r", "ck_per", "pll3_q"
 };
 
 static const char * const dsi_src[] = {
@@ -240,7 +248,7 @@ static const char * const dsi_src[] = {
 };
 
 static const char * const rtc_src[] = {
-	"off", "ck_lse", "ck_lsi", "ck_hse_rtc"
+	"off", "ck_lse", "ck_lsi", "ck_hse"
 };
 
 static const char * const mco1_src[] = {
@@ -264,7 +272,7 @@ static const struct clk_div_table axi_div_table[] = {
 static const struct clk_div_table mcu_div_table[] = {
 	{ 0, 1 }, { 1, 2 }, { 2, 4 }, { 3, 8 },
 	{ 4, 16 }, { 5, 32 }, { 6, 64 }, { 7, 128 },
-	{ 8, 512 }, { 9, 512 }, { 10, 512}, { 11, 512 },
+	{ 8, 256 }, { 9, 512 }, { 10, 512}, { 11, 512 },
 	{ 12, 512 }, { 13, 512 }, { 14, 512}, { 15, 512 },
 	{ 0 },
 };
@@ -312,7 +320,10 @@ struct clock_config {
 	int num_parents;
 	unsigned long flags;
 	void *cfg;
-	struct clk * (*func)(void __iomem *base, const struct clock_config *cfg);
+	struct clk_hw * (*func)(struct device_d *dev,
+				struct clk_hw_onecell_data *clk_data,
+				void __iomem *base, spinlock_t *lock,
+				const struct clock_config *cfg);
 };
 
 #define NO_ID ~0
@@ -368,53 +379,69 @@ struct stm32_composite_cfg {
 	const struct stm32_mux_cfg	*mux;
 };
 
-static struct clk *
-_clk_hw_register_gate(void __iomem *base,
+static struct clk_hw *
+_clk_hw_register_gate(struct device_d *dev,
+		      struct clk_hw_onecell_data *clk_data,
+		      void __iomem *base, spinlock_t *lock,
 		      const struct clock_config *cfg)
 {
 	struct gate_cfg *gate_cfg = cfg->cfg;
 
-	return clk_gate(cfg->name, cfg->parent_name, gate_cfg->reg_off + base,
-			gate_cfg->bit_idx, cfg->flags, gate_cfg->gate_flags);
+	return clk_hw_register_gate(dev,
+				    cfg->name,
+				    cfg->parent_name,
+				    cfg->flags,
+				    gate_cfg->reg_off + base,
+				    gate_cfg->bit_idx,
+				    gate_cfg->gate_flags,
+				    lock);
 }
 
-static struct clk *
-_clk_hw_register_fixed_factor(void __iomem *base,
+static struct clk_hw *
+_clk_hw_register_fixed_factor(struct device_d *dev,
+			      struct clk_hw_onecell_data *clk_data,
+			      void __iomem *base, spinlock_t *lock,
 			      const struct clock_config *cfg)
 {
 	struct fixed_factor_cfg *ff_cfg = cfg->cfg;
 
-	return clk_fixed_factor(cfg->name, cfg->parent_name, ff_cfg->mult,
-				ff_cfg->div, cfg->flags);
+	return clk_hw_register_fixed_factor(dev, cfg->name, cfg->parent_name,
+					    cfg->flags, ff_cfg->mult,
+					    ff_cfg->div);
 }
 
-static struct clk *
-_clk_hw_register_divider_table(void __iomem *base,
+static struct clk_hw *
+_clk_hw_register_divider_table(struct device_d *dev,
+			       struct clk_hw_onecell_data *clk_data,
+			       void __iomem *base, spinlock_t *lock,
 			       const struct clock_config *cfg)
 {
-
 	struct div_cfg *div_cfg = cfg->cfg;
 
-	if (div_cfg->table)
-		return clk_divider_table(cfg->name, cfg->parent_name, cfg->flags,
-					 div_cfg->reg_off + base, div_cfg->shift,
-					 div_cfg->width, div_cfg->table,
-					 div_cfg->div_flags);
-	else
-		return clk_divider(cfg->name, cfg->parent_name, cfg->flags,
-				   div_cfg->reg_off + base, div_cfg->shift,
-		     div_cfg->width, div_cfg->div_flags);
+	return clk_hw_register_divider_table(dev,
+					     cfg->name,
+					     cfg->parent_name,
+					     cfg->flags,
+					     div_cfg->reg_off + base,
+					     div_cfg->shift,
+					     div_cfg->width,
+					     div_cfg->div_flags,
+					     div_cfg->table,
+					     lock);
 }
 
-static struct clk *
-_clk_hw_register_mux(void __iomem *base,
+static struct clk_hw *
+_clk_hw_register_mux(struct device_d *dev,
+		     struct clk_hw_onecell_data *clk_data,
+		     void __iomem *base, spinlock_t *lock,
 		     const struct clock_config *cfg)
 {
 	struct mux_cfg *mux_cfg = cfg->cfg;
 
-	return clk_mux(cfg->name,cfg->flags, mux_cfg->reg_off + base, mux_cfg->shift,
-		       mux_cfg->width, cfg->parent_names, cfg->num_parents,
-		       mux_cfg->mux_flags);
+	return clk_hw_register_mux(dev, cfg->name, cfg->parent_names,
+				   cfg->num_parents, cfg->flags,
+				   mux_cfg->reg_off + base, mux_cfg->shift,
+				   mux_cfg->width, mux_cfg->mux_flags, lock);
 }
 
 /* MP1 Gate clock with set & clear registers */
@@ -430,9 +457,12 @@ static int mp1_gate_clk_enable(struct clk_hw *hw)
 static void mp1_gate_clk_disable(struct clk_hw *hw)
 {
 	struct clk_gate *gate = to_clk_gate(hw);
+	unsigned long flags = 0;
 
 	if (clk_gate_ops.is_enabled(hw)) {
-		writel(BIT(gate->shift), gate->reg + RCC_CLR);
+		spin_lock_irqsave(gate->lock, flags);
+		writel_relaxed(BIT(gate->shift), gate->reg + RCC_CLR);
+		spin_unlock_irqrestore(gate->lock, flags);
 	}
 }
 
@@ -442,8 +472,9 @@ static const struct clk_ops mp1_gate_clk_ops = {
 	.is_enabled	= clk_gate_is_enabled,
 };
 
-static struct clk_hw *_get_stm32_mux(void __iomem *base,
-				     const struct stm32_mux_cfg *cfg)
+static struct clk_hw *_get_stm32_mux(struct device_d *dev, void __iomem *base,
+				     const struct stm32_mux_cfg *cfg,
+				     spinlock_t *lock)
 {
 	struct stm32_clk_mmux *mmux;
 	struct clk_mux *mux;
@@ -457,10 +488,13 @@ static struct clk_hw *_get_stm32_mux(void __iomem *base,
 		mmux->mux.reg = cfg->mux->reg_off + base;
 		mmux->mux.shift = cfg->mux->shift;
 		mmux->mux.width = cfg->mux->width;
+		mmux->mux.flags = cfg->mux->mux_flags;
+		mmux->mux.table = cfg->mux->table;
+		mmux->mux.lock = lock;
 		mmux->mmux = cfg->mmux;
 		mux_hw = &mmux->mux.hw;
 		cfg->mmux->hws[cfg->mmux->nbr_clk++] = mux_hw;
-		mux = &mmux->mux;
+
 	} else {
 		mux = kzalloc(sizeof(*mux), GFP_KERNEL);
 		if (!mux)
@@ -469,23 +503,23 @@ static struct clk_hw *_get_stm32_mux(void __iomem *base,
 		mux->reg = cfg->mux->reg_off + base;
 		mux->shift = cfg->mux->shift;
 		mux->width = cfg->mux->width;
+		mux->flags = cfg->mux->mux_flags;
+		mux->table = cfg->mux->table;
+		mux->lock = lock;
 		mux_hw = &mux->hw;
 	}
 
-	if (cfg->ops)
-		mux->hw.clk.ops = cfg->ops;
-	else
-		mux->hw.clk.ops = &clk_mux_ops;
-
 	return mux_hw;
 }
 
-static struct clk_hw *_get_stm32_div(void __iomem *base,
-				     const struct stm32_div_cfg *cfg)
+static struct clk_hw *_get_stm32_div(struct device_d *dev, void __iomem *base,
+				     const struct stm32_div_cfg *cfg,
+				     spinlock_t *lock)
 {
 	struct clk_divider *div;
 
 	div = kzalloc(sizeof(*div), GFP_KERNEL);
+
 	if (!div)
 		return ERR_PTR(-ENOMEM);
 
@@ -494,21 +528,18 @@ static struct clk_hw *_get_stm32_div(void __iomem *base,
 	div->width = cfg->div->width;
 	div->flags = cfg->div->div_flags;
 	div->table = cfg->div->table;
-
-	if (cfg->ops)
-		div->hw.clk.ops = cfg->ops;
-	else
-		div->hw.clk.ops = &clk_divider_ops;
+	div->lock = lock;
 
 	return &div->hw;
 }
 
-static struct clk_gate *
-_get_stm32_gate(void __iomem *base,
-		const struct stm32_gate_cfg *cfg)
+static struct clk_hw *_get_stm32_gate(struct device_d *dev, void __iomem *base,
+				      const struct stm32_gate_cfg *cfg,
+				      spinlock_t *lock)
 {
 	struct stm32_clk_mgate *mgate;
 	struct clk_gate *gate;
+	struct clk_hw *gate_hw;
 
 	if (cfg->mgate) {
 		mgate = kzalloc(sizeof(*mgate), GFP_KERNEL);
@@ -518,11 +549,12 @@ _get_stm32_gate(void __iomem *base,
 		mgate->gate.reg = cfg->gate->reg_off + base;
 		mgate->gate.shift = cfg->gate->bit_idx;
 		mgate->gate.flags = cfg->gate->gate_flags;
+		mgate->gate.lock = lock;
 		mgate->mask = BIT(cfg->mgate->nbr_clk++);
 
 		mgate->mgate = cfg->mgate;
 
-		gate = &mgate->gate;
+		gate_hw = &mgate->gate.hw;
 
 	} else {
 		gate = kzalloc(sizeof(*gate), GFP_KERNEL);
@@ -532,71 +564,103 @@ _get_stm32_gate(void __iomem *base,
 		gate->reg = cfg->gate->reg_off + base;
 		gate->shift = cfg->gate->bit_idx;
 		gate->flags = cfg->gate->gate_flags;
+		gate->lock = lock;
+
+		gate_hw = &gate->hw;
 	}
-	
-	if (cfg->ops)
-		gate->hw.clk.ops = cfg->ops;
-	else
-		gate->hw.clk.ops = &clk_gate_ops;
 
-	return gate;
+	return gate_hw;
 }
 
-static struct clk *
-clk_stm32_register_gate_ops(const char *name,
+static struct clk_hw *
+clk_stm32_register_gate_ops(struct device_d *dev,
+			    const char *name,
 			    const char *parent_name,
 			    unsigned long flags,
 			    void __iomem *base,
-			    const struct stm32_gate_cfg *cfg)
+			    const struct stm32_gate_cfg *cfg,
+			    spinlock_t *lock)
 {
-	struct clk *clk;
-	struct clk_gate *gate;
+	struct clk_init_data init = { NULL };
+	struct clk_hw *hw;
 	int ret;
 
-	gate = _get_stm32_gate(base, cfg);
-	if (IS_ERR(gate))
+	init.name = name;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.flags = flags;
+
+	init.ops = &clk_gate_ops;
+
+	if (cfg->ops)
+		init.ops = cfg->ops;
+
+	hw = _get_stm32_gate(dev, base, cfg, lock);
+	if (IS_ERR(hw))
 		return ERR_PTR(-ENOMEM);
 
-	gate->parent = parent_name;
-	clk = &gate->hw.clk;
-	clk->name = name;
-	clk->parent_names = &gate->parent;
-	clk->num_parents = 1;
-	clk->flags = flags;
+	hw->init = &init;
 
-	ret = bclk_register(clk);
+	ret = clk_hw_register(dev, hw);
 	if (ret)
-		clk = ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 
-	return clk;
+	return hw;
 }
 
-static struct clk *
-clk_stm32_register_composite(const char *name, const char * const *parent_names,
+static struct clk_hw *
+clk_stm32_register_composite(struct device_d *dev,
+			     const char *name, const char * const *parent_names,
 			     int num_parents, void __iomem *base,
 			     const struct stm32_composite_cfg *cfg,
-			     unsigned long flags)
+			     unsigned long flags, spinlock_t *lock)
 {
+	const struct clk_ops *mux_ops, *div_ops, *gate_ops;
 	struct clk_hw *mux_hw, *div_hw, *gate_hw;
-	struct clk_gate *gate;
 
 	mux_hw = NULL;
 	div_hw = NULL;
 	gate_hw = NULL;
+	mux_ops = NULL;
+	div_ops = NULL;
+	gate_ops = NULL;
+
+	if (cfg->mux) {
+		mux_hw = _get_stm32_mux(dev, base, cfg->mux, lock);
+
+		if (!IS_ERR(mux_hw)) {
+			mux_ops = &clk_mux_ops;
+
+			if (cfg->mux->ops)
+				mux_ops = cfg->mux->ops;
+		}
+	}
+
+	if (cfg->div) {
+		div_hw = _get_stm32_div(dev, base, cfg->div, lock);
 
-	if (cfg->mux)
-		mux_hw = _get_stm32_mux(base, cfg->mux);
+		if (!IS_ERR(div_hw)) {
+			div_ops = &clk_divider_ops;
 
-	if (cfg->div)
-		div_hw = _get_stm32_div(base, cfg->div);
+			if (cfg->div->ops)
+				div_ops = cfg->div->ops;
+		}
+	}
 
 	if (cfg->gate) {
-		gate = _get_stm32_gate(base, cfg->gate);
-		gate_hw = &gate->hw;
+		gate_hw = _get_stm32_gate(dev, base, cfg->gate, lock);
+
+		if (!IS_ERR(gate_hw)) {
+			gate_ops = &clk_gate_ops;
+
+			if (cfg->gate->ops)
+				gate_ops = cfg->gate->ops;
+		}
 	}
 
-	return clk_register_composite(name, parent_names, num_parents,
-				       &mux_hw->clk, &div_hw->clk, &gate_hw->clk, flags);
+	return clk_hw_register_composite(dev, name, parent_names, num_parents,
+				       mux_hw, mux_ops, div_hw, div_ops,
+				       gate_hw, gate_ops, flags);
 }
 
 #define to_clk_mgate(_gate) container_of(_gate, struct stm32_clk_mgate, gate)
@@ -652,7 +716,8 @@ static int clk_mmux_set_parent(struct clk_hw *hw, u8 index)
 	hwp = clk_hw_get_parent(hw);
 
 	for (n = 0; n < clk_mmux->mmux->nbr_clk; n++)
-		clk_hw_set_parent(clk_mmux->mmux->hws[n], hw);
+		if (clk_mmux->mmux->hws[n] != hw)
+			clk_hw_reparent(clk_mmux->mmux->hws[n], hwp);
 
 	return 0;
 }
@@ -660,16 +725,19 @@ static int clk_mmux_set_parent(struct clk_hw *hw, u8 index)
 static const struct clk_ops clk_mmux_ops = {
 	.get_parent	= clk_mmux_get_parent,
 	.set_parent	= clk_mmux_set_parent,
+	.round_rate	= clk_mux_round_rate,
 };
 
 /* STM32 PLL */
 struct stm32_pll_obj {
+	/* lock pll enable/disable registers */
+	spinlock_t *lock;
 	void __iomem *reg;
-	const char *parent;
-	struct clk clk;
+	struct clk_hw hw;
+	struct clk_mux mux;
 };
 
-#define to_pll(clk) container_of(clk, struct stm32_pll_obj, clk)
+#define to_pll(_hw) container_of(_hw, struct stm32_pll_obj, hw)
 
 #define PLL_ON		BIT(0)
 #define PLL_RDY		BIT(1)
@@ -681,30 +749,34 @@ struct stm32_pll_obj {
 #define FRAC_MASK	0x1FFF
 #define FRAC_SHIFT	3
 #define FRACLE		BIT(16)
+#define PLL_MUX_SHIFT	0
+#define PLL_MUX_WIDTH	2
 
-static int __pll_is_enabled(struct clk *clk)
+static int __pll_is_enabled(struct clk_hw *hw)
 {
-	struct stm32_pll_obj *clk_elem = to_pll(clk);
+	struct stm32_pll_obj *clk_elem = to_pll(hw);
 
-	return readl(clk_elem->reg) & PLL_ON;
+	return readl_relaxed(clk_elem->reg) & PLL_ON;
 }
 
 #define TIMEOUT 5
 
 static int pll_enable(struct clk_hw *hw)
 {
-	struct clk *clk = clk_hw_to_clk(hw);
-	struct stm32_pll_obj *clk_elem = to_pll(clk);
+	struct stm32_pll_obj *clk_elem = to_pll(hw);
 	u32 reg;
+	unsigned long flags = 0;
 	unsigned int timeout = TIMEOUT;
 	int bit_status = 0;
 
-	if (__pll_is_enabled(clk))
+	spin_lock_irqsave(clk_elem->lock, flags);
+
+	if (__pll_is_enabled(hw))
 		goto unlock;
 
-	reg = readl(clk_elem->reg);
+	reg = readl_relaxed(clk_elem->reg);
 	reg |= PLL_ON;
-	writel(reg, clk_elem->reg);
+	writel_relaxed(reg, clk_elem->reg);
 
 	/* We can't use readl_poll_timeout() because we can be blocked if
 	 * someone enables this clock before clocksource changes.
@@ -712,7 +784,7 @@ static int pll_enable(struct clk_hw *hw)
 	 * interruptions and enable op does not allow to be interrupted.
 	 */
 	do {
-		bit_status = !(readl(clk_elem->reg) & PLL_RDY);
+		bit_status = !(readl_relaxed(clk_elem->reg) & PLL_RDY);
 
 		if (bit_status)
 			udelay(120);
@@ -720,26 +792,32 @@ static int pll_enable(struct clk_hw *hw)
 	} while (bit_status && --timeout);
 
 unlock:
+	spin_unlock_irqrestore(clk_elem->lock, flags);
+
 	return bit_status;
 }
 
 static void pll_disable(struct clk_hw *hw)
 {
-	struct clk *clk = clk_hw_to_clk(hw);
-	struct stm32_pll_obj *clk_elem = to_pll(clk);
+	struct stm32_pll_obj *clk_elem = to_pll(hw);
 	u32 reg;
+	unsigned long flags = 0;
+
+	spin_lock_irqsave(clk_elem->lock, flags);
 
-	reg = readl(clk_elem->reg);
+	reg = readl_relaxed(clk_elem->reg);
 	reg &= ~PLL_ON;
-	writel(reg, clk_elem->reg);
+	writel_relaxed(reg, clk_elem->reg);
+
+	spin_unlock_irqrestore(clk_elem->lock, flags);
 }
 
-static u32 pll_frac_val(struct clk *clk)
+static u32 pll_frac_val(struct clk_hw *hw)
 {
-	struct stm32_pll_obj *clk_elem = to_pll(clk);
+	struct stm32_pll_obj *clk_elem = to_pll(hw);
 	u32 reg, frac = 0;
 
-	reg = readl(clk_elem->reg + FRAC_OFFSET);
+	reg = readl_relaxed(clk_elem->reg + FRAC_OFFSET);
 	if (reg & FRACLE)
 		frac = (reg >> FRAC_SHIFT) & FRAC_MASK;
 
@@ -749,13 +827,12 @@ static u32 pll_frac_val(struct clk *clk)
 static unsigned long pll_recalc_rate(struct clk_hw *hw,
 				     unsigned long parent_rate)
 {
-	struct clk *clk = clk_hw_to_clk(hw);
-	struct stm32_pll_obj *clk_elem = to_pll(clk);
+	struct stm32_pll_obj *clk_elem = to_pll(hw);
 	u32 reg;
 	u32 frac, divm, divn;
 	u64 rate, rate_frac = 0;
 
-	reg = readl(clk_elem->reg + 4);
+	reg = readl_relaxed(clk_elem->reg + 4);
 
 	divm = ((reg >> DIVM_SHIFT) & DIVM_MASK) + 1;
 	divn = ((reg >> DIVN_SHIFT) & DIVN_MASK) + 1;
@@ -763,7 +840,7 @@ static unsigned long pll_recalc_rate(struct clk_hw *hw,
 
 	do_div(rate, divm);
 
-	frac = pll_frac_val(clk);
+	frac = pll_frac_val(hw);
 	if (frac) {
 		rate_frac = (u64)parent_rate * (u64)frac;
 		do_div(rate_frac, (divm * 8192));
@@ -772,79 +849,89 @@ static unsigned long pll_recalc_rate(struct clk_hw *hw,
 	return rate + rate_frac;
 }
 
-static int pll_is_enabled(struct clk_hw *hw)
+static int pll_get_parent(struct clk_hw *hw)
 {
-	struct clk *clk = clk_hw_to_clk(hw);
-	int ret;
+	struct stm32_pll_obj *clk_elem = to_pll(hw);
+	struct clk_hw *mux_hw = &clk_elem->mux.hw;
 
-	ret = __pll_is_enabled(clk);
+	mux_hw->clk = hw->clk;
 
-	return ret;
+	return clk_mux_ops.get_parent(mux_hw);
 }
 
 static const struct clk_ops pll_ops = {
 	.enable		= pll_enable,
 	.disable	= pll_disable,
 	.recalc_rate	= pll_recalc_rate,
-	.is_enabled	= pll_is_enabled,
+	.is_enabled	= __pll_is_enabled,
+	.get_parent	= pll_get_parent,
 };
 
-static struct clk *clk_register_pll(const char *name,
-				    const char *parent_name,
-				    void __iomem *reg,
-				    unsigned long flags)
+static struct clk_hw *clk_register_pll(struct device_d *dev, const char *name,
+				       const char * const *parent_names,
+				       int num_parents,
+				       void __iomem *reg,
+				       void __iomem *mux_reg,
+				       unsigned long flags,
+				       spinlock_t *lock)
 {
 	struct stm32_pll_obj *element;
-	struct clk *clk;
+	struct clk_init_data init;
+	struct clk_hw *hw;
 	int err;
 
 	element = kzalloc(sizeof(*element), GFP_KERNEL);
 	if (!element)
 		return ERR_PTR(-ENOMEM);
 
-	element->parent = parent_name;
-
-	clk = &element->clk;
+	init.name = name;
+	init.ops = &pll_ops;
+	init.flags = flags;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
 
-	clk->name = name;
-	clk->ops = &pll_ops;
-	clk->flags = flags;
-	clk->parent_names = &element->parent;
-	clk->num_parents = 1;
+	element->mux.lock = lock;
+	element->mux.reg =  mux_reg;
+	element->mux.shift = PLL_MUX_SHIFT;
+	element->mux.width =  PLL_MUX_WIDTH;
+	element->mux.flags =  CLK_MUX_READ_ONLY;
+	element->mux.reg =  mux_reg;
 
+	element->hw.init = &init;
 	element->reg = reg;
+	element->lock = lock;
 
-	err = bclk_register(clk);
+	hw = &element->hw;
+	err = clk_hw_register(dev, hw);
 
-	if (err) {
-		kfree(element);
+	if (err)
 		return ERR_PTR(err);
-	}
 
-	return clk;
+	return hw;
 }
 
 /* Kernel Timer */
 struct timer_cker {
+	/* lock the kernel output divider register */
+	spinlock_t *lock;
 	void __iomem *apbdiv;
 	void __iomem *timpre;
-	const char *parent;
-	struct clk clk;
+	struct clk_hw hw;
 };
 
-#define to_timer_cker(_hw) container_of(_hw, struct timer_cker, clk)
+#define to_timer_cker(_hw) container_of(_hw, struct timer_cker, hw)
 
 #define APB_DIV_MASK 0x07
 #define TIM_PRE_MASK 0x01
 
-static unsigned long __bestmult(struct clk *clk, unsigned long rate,
+static unsigned long __bestmult(struct clk_hw *hw, unsigned long rate,
 				unsigned long parent_rate)
 {
-	struct timer_cker *tim_ker = to_timer_cker(clk);
+	struct timer_cker *tim_ker = to_timer_cker(hw);
 	u32 prescaler;
 	unsigned int mult = 0;
 
-	prescaler = readl(tim_ker->apbdiv) & APB_DIV_MASK;
+	prescaler = readl_relaxed(tim_ker->apbdiv) & APB_DIV_MASK;
 	if (prescaler < 2)
 		return 1;
 
@@ -859,8 +946,7 @@ static unsigned long __bestmult(struct clk *clk, unsigned long rate,
 static long timer_ker_round_rate(struct clk_hw *hw, unsigned long rate,
 				 unsigned long *parent_rate)
 {
-	struct clk *clk = clk_hw_to_clk(hw);
-	unsigned long factor = __bestmult(clk, rate, *parent_rate);
+	unsigned long factor = __bestmult(hw, rate, *parent_rate);
 
 	return *parent_rate * factor;
 }
@@ -868,23 +954,26 @@ static long timer_ker_round_rate(struct clk_hw *hw, unsigned long rate,
 static int timer_ker_set_rate(struct clk_hw *hw, unsigned long rate,
 			      unsigned long parent_rate)
 {
-	struct clk *clk = clk_hw_to_clk(hw);
-	struct timer_cker *tim_ker = to_timer_cker(clk);
-	unsigned long factor = __bestmult(clk, rate, parent_rate);
+	struct timer_cker *tim_ker = to_timer_cker(hw);
+	unsigned long flags = 0;
+	unsigned long factor = __bestmult(hw, rate, parent_rate);
 	int ret = 0;
 
+	spin_lock_irqsave(tim_ker->lock, flags);
+
 	switch (factor) {
 	case 1:
 		break;
 	case 2:
-		writel(0, tim_ker->timpre);
+		writel_relaxed(0, tim_ker->timpre);
 		break;
 	case 4:
-		writel(1, tim_ker->timpre);
+		writel_relaxed(1, tim_ker->timpre);
 		break;
 	default:
 		ret = -EINVAL;
 	}
+	spin_unlock_irqrestore(tim_ker->lock, flags);
 
 	return ret;
 }
@@ -892,14 +981,13 @@ static int timer_ker_set_rate(struct clk_hw *hw, unsigned long rate,
 static unsigned long timer_ker_recalc_rate(struct clk_hw *hw,
 					   unsigned long parent_rate)
 {
-	struct clk *clk = clk_hw_to_clk(hw);
-	struct timer_cker *tim_ker = to_timer_cker(clk);
+	struct timer_cker *tim_ker = to_timer_cker(hw);
 	u32 prescaler, timpre;
 	u32 mul;
 
-	prescaler = readl(tim_ker->apbdiv) & APB_DIV_MASK;
+	prescaler = readl_relaxed(tim_ker->apbdiv) & APB_DIV_MASK;
 
-	timpre = readl(tim_ker->timpre) & TIM_PRE_MASK;
+	timpre = readl_relaxed(tim_ker->timpre) & TIM_PRE_MASK;
 
 	if (!prescaler)
 		return parent_rate;
@@ -916,51 +1004,59 @@ static const struct clk_ops timer_ker_ops = {
 
 };
 
-static struct clk *clk_register_cktim(const char *name,
+static struct clk_hw *clk_register_cktim(struct device_d *dev, const char *name,
 					 const char *parent_name,
 					 unsigned long flags,
 					 void __iomem *apbdiv,
-					 void __iomem *timpre)
+					 void __iomem *timpre,
+					 spinlock_t *lock)
 {
 	struct timer_cker *tim_ker;
-	struct clk *clk;
+	struct clk_init_data init;
+	struct clk_hw *hw;
 	int err;
 
 	tim_ker = kzalloc(sizeof(*tim_ker), GFP_KERNEL);
 	if (!tim_ker)
 		return ERR_PTR(-ENOMEM);
 
-	clk = &tim_ker->clk;
-	tim_ker->parent = parent_name;
-	clk->name = name;
-	clk->parent_names = &tim_ker->parent;
-	clk->num_parents = 1;
-	clk->ops = &timer_ker_ops;
-	clk->flags = flags;
+	init.name = name;
+	init.ops = &timer_ker_ops;
+	init.flags = flags;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
 
+	tim_ker->hw.init = &init;
+	tim_ker->lock = lock;
 	tim_ker->apbdiv = apbdiv;
 	tim_ker->timpre = timpre;
 
-	err = bclk_register(clk);
-	if (err) {
-		kfree(tim_ker);
+	hw = &tim_ker->hw;
+	err = clk_hw_register(dev, hw);
+
+	if (err)
 		return ERR_PTR(err);
-	}
 
-	return clk;
+	return hw;
 }
 
 struct stm32_pll_cfg {
 	u32 offset;
+	u32 muxoff;
 };
 
-static struct clk *_clk_register_pll(void __iomem *base,
-				     const struct clock_config *cfg)
+static struct clk_hw *_clk_register_pll(struct device_d *dev,
+					struct clk_hw_onecell_data *clk_data,
+					void __iomem *base, spinlock_t *lock,
+					const struct clock_config *cfg)
 {
 	struct stm32_pll_cfg *stm_pll_cfg = cfg->cfg;
 
-	return clk_register_pll(cfg->name, cfg->parent_name,
-				base + stm_pll_cfg->offset, cfg->flags);
+	return clk_register_pll(dev, cfg->name, cfg->parent_names,
+				cfg->num_parents,
+				base + stm_pll_cfg->offset,
+				base + stm_pll_cfg->muxoff,
+				cfg->flags, lock);
 }
 
 struct stm32_cktim_cfg {
@@ -968,31 +1064,42 @@ struct stm32_cktim_cfg {
 	u32 offset_timpre;
 };
 
-static struct clk *_clk_register_cktim(void __iomem *base,
-				       const struct clock_config *cfg)
+static struct clk_hw *_clk_register_cktim(struct device_d *dev,
+					  struct clk_hw_onecell_data *clk_data,
+					  void __iomem *base, spinlock_t *lock,
+					  const struct clock_config *cfg)
 {
 	struct stm32_cktim_cfg *cktim_cfg = cfg->cfg;
 
-	return clk_register_cktim(cfg->name, cfg->parent_name, cfg->flags,
+	return clk_register_cktim(dev, cfg->name, cfg->parent_name, cfg->flags,
 				  cktim_cfg->offset_apbdiv + base,
-				  cktim_cfg->offset_timpre + base);
+				  cktim_cfg->offset_timpre + base, lock);
 }
 
-static struct clk *
-_clk_stm32_register_gate(void __iomem *base,
+static struct clk_hw *
+_clk_stm32_register_gate(struct device_d *dev,
+			 struct clk_hw_onecell_data *clk_data,
+			 void __iomem *base, spinlock_t *lock,
 			 const struct clock_config *cfg)
 {
-	return clk_stm32_register_gate_ops(cfg->name, cfg->parent_name,
-					   cfg->flags, base, cfg->cfg);
+	return clk_stm32_register_gate_ops(dev,
+				    cfg->name,
+				    cfg->parent_name,
+				    cfg->flags,
+				    base,
+				    cfg->cfg,
+				    lock);
 }
 
-static struct clk *
-_clk_stm32_register_composite(void __iomem *base,
+static struct clk_hw *
+_clk_stm32_register_composite(struct device_d *dev,
+			      struct clk_hw_onecell_data *clk_data,
+			      void __iomem *base, spinlock_t *lock,
 			      const struct clock_config *cfg)
 {
-	return clk_stm32_register_composite(cfg->name, cfg->parent_names,
+	return clk_stm32_register_composite(dev, cfg->name, cfg->parent_names,
 					    cfg->num_parents, base, cfg->cfg,
-					    cfg->flags);
+					    cfg->flags, lock);
 }
 
 #define GATE(_id, _name, _parent, _flags, _offset, _bit_idx, _gate_flags)\
@@ -1059,14 +1166,16 @@ _clk_stm32_register_composite(void __iomem *base,
 	.func		= _clk_hw_register_mux,\
 }
 
-#define PLL(_id, _name, _parent, _flags, _offset)\
+#define PLL(_id, _name, _parents, _flags, _offset_p, _offset_mux)\
 {\
 	.id		= _id,\
 	.name		= _name,\
-	.parent_name	= _parent,\
-	.flags		= _flags,\
+	.parent_names	= _parents,\
+	.num_parents	= ARRAY_SIZE(_parents),\
+	.flags		= CLK_IGNORE_UNUSED | (_flags),\
 	.cfg		=  &(struct stm32_pll_cfg) {\
-		.offset = _offset,\
+		.offset = _offset_p,\
+		.muxoff = _offset_mux,\
 	},\
 	.func		= _clk_register_pll,\
 }
@@ -1099,13 +1208,14 @@ _clk_stm32_register_composite(void __iomem *base,
 	.func		= _clk_stm32_register_gate,\
 }
 
-#define _STM32_GATE(_gate_offset, _gate_bit_idx, _gate_flags, _ops)\
+#define _STM32_GATE(_gate_offset, _gate_bit_idx, _gate_flags, _mgate, _ops)\
 	(&(struct stm32_gate_cfg) {\
 		&(struct gate_cfg) {\
 			.reg_off	= _gate_offset,\
 			.bit_idx	= _gate_bit_idx,\
 			.gate_flags	= _gate_flags,\
 		},\
+		.mgate		= _mgate,\
 		.ops		= _ops,\
 	})
 
@@ -1114,11 +1224,11 @@ _clk_stm32_register_composite(void __iomem *base,
 
 #define _GATE(_gate_offset, _gate_bit_idx, _gate_flags)\
 	_STM32_GATE(_gate_offset, _gate_bit_idx, _gate_flags,\
-		    NULL)\
+		    NULL, NULL)\
 
 #define _GATE_MP1(_gate_offset, _gate_bit_idx, _gate_flags)\
 	_STM32_GATE(_gate_offset, _gate_bit_idx, _gate_flags,\
-		    &mp1_gate_clk_ops)\
+		    NULL, &mp1_gate_clk_ops)\
 
 #define _MGATE_MP1(_mgate)\
 	.gate = &per_gate_cfg[_mgate]
@@ -1191,10 +1301,11 @@ _clk_stm32_register_composite(void __iomem *base,
 	MGATE_MP1(_id, _name, _parent, _flags, _mgate)
 
 #define KCLK(_id, _name, _parents, _flags, _mgate, _mmux)\
-	     COMPOSITE(_id, _name, _parents, CLK_OPS_PARENT_ENABLE | _flags,\
-		  _MGATE_MP1(_mgate),\
-		  _MMUX(_mmux),\
-		  _NO_DIV)
+	     COMPOSITE(_id, _name, _parents, CLK_OPS_PARENT_ENABLE |\
+		       CLK_SET_RATE_NO_REPARENT | _flags,\
+		       _MGATE_MP1(_mgate),\
+		       _MMUX(_mmux),\
+		       _NO_DIV)
 
 enum {
 	G_SAI1,
@@ -1306,6 +1417,7 @@ enum {
 	G_CRYP1,
 	G_HASH1,
 	G_BKPSRAM,
+	G_DDRPERFM,
 
 	G_LAST
 };
@@ -1392,6 +1504,7 @@ static struct stm32_gate_cfg per_gate_cfg[G_LAST] = {
 	K_GATE(G_STGENRO,	RCC_APB4ENSETR, 20, 0),
 	K_MGATE(G_USBPHY,	RCC_APB4ENSETR, 16, 0),
 	K_GATE(G_IWDG2,		RCC_APB4ENSETR, 15, 0),
+	K_GATE(G_DDRPERFM,	RCC_APB4ENSETR, 8, 0),
 	K_MGATE(G_DSI,		RCC_APB4ENSETR, 4, 0),
 	K_MGATE(G_LTDC,		RCC_APB4ENSETR, 0, 0),
 
@@ -1533,7 +1646,7 @@ static const struct stm32_mux_cfg ker_mux_cfg[M_LAST] = {
 	K_MMUX(M_ETHCK, RCC_ETHCKSELR, 0, 2, 0),
 	K_MMUX(M_I2C46, RCC_I2C46CKSELR, 0, 3, 0),
 
-	/* Kernel simple mux */
+	/*  Kernel simple mux */
 	K_MUX(M_RNG2, RCC_RNG2CKSELR, 0, 2, 0),
 	K_MUX(M_SDMMC3, RCC_SDMMC3CKSELR, 0, 3, 0),
 	K_MUX(M_FMC, RCC_FMCCKSELR, 0, 2, 0),
@@ -1559,34 +1672,26 @@ static const struct stm32_mux_cfg ker_mux_cfg[M_LAST] = {
 };
 
 static const struct clock_config stm32mp1_clock_cfg[] = {
-	/* Oscillator divider */
-	DIV(NO_ID, "clk-hsi-div", "clk-hsi", 0, RCC_HSICFGR, 0, 2,
-	    CLK_DIVIDER_READ_ONLY),
-
 	/*  External / Internal Oscillators */
 	GATE_MP1(CK_HSE, "ck_hse", "clk-hse", 0, RCC_OCENSETR, 8, 0),
-	GATE_MP1(CK_CSI, "ck_csi", "clk-csi", 0, RCC_OCENSETR, 4, 0),
-	GATE_MP1(CK_HSI, "ck_hsi", "clk-hsi-div", 0, RCC_OCENSETR, 0, 0),
+	/* ck_csi is used by IO compensation and should be critical */
+	GATE_MP1(CK_CSI, "ck_csi", "clk-csi", CLK_IS_CRITICAL,
+		 RCC_OCENSETR, 4, 0),
+	COMPOSITE(CK_HSI, "ck_hsi", PARENT("clk-hsi"), 0,
+		  _GATE_MP1(RCC_OCENSETR, 0, 0),
+		  _NO_MUX,
+		  _DIV(RCC_HSICFGR, 0, 2, CLK_DIVIDER_POWER_OF_TWO |
+		       CLK_DIVIDER_READ_ONLY, NULL)),
 	GATE(CK_LSI, "ck_lsi", "clk-lsi", 0, RCC_RDLSICR, 0, 0),
 	GATE(CK_LSE, "ck_lse", "clk-lse", 0, RCC_BDCR, 0, 0),
 
 	FIXED_FACTOR(CK_HSE_DIV2, "clk-hse-div2", "ck_hse", 0, 1, 2),
 
-	/* ref clock pll */
-	MUX(NO_ID, "ref1", ref12_parents, CLK_OPS_PARENT_ENABLE, RCC_RCK12SELR,
-	    0, 2, CLK_MUX_READ_ONLY),
-
-	MUX(NO_ID, "ref3", ref3_parents, CLK_OPS_PARENT_ENABLE, RCC_RCK3SELR,
-	    0, 2, CLK_MUX_READ_ONLY),
-
-	MUX(NO_ID, "ref4", ref4_parents, CLK_OPS_PARENT_ENABLE, RCC_RCK4SELR,
-	    0, 2, CLK_MUX_READ_ONLY),
-
 	/* PLLs */
-	PLL(PLL1, "pll1", "ref1", CLK_IGNORE_UNUSED, RCC_PLL1CR),
-	PLL(PLL2, "pll2", "ref1", CLK_IGNORE_UNUSED, RCC_PLL2CR),
-	PLL(PLL3, "pll3", "ref3", CLK_IGNORE_UNUSED, RCC_PLL3CR),
-	PLL(PLL4, "pll4", "ref4", CLK_IGNORE_UNUSED, RCC_PLL4CR),
+	PLL(PLL1, "pll1", ref12_parents, 0, RCC_PLL1CR, RCC_RCK12SELR),
+	PLL(PLL2, "pll2", ref12_parents, 0, RCC_PLL2CR, RCC_RCK12SELR),
+	PLL(PLL3, "pll3", ref3_parents, 0, RCC_PLL3CR, RCC_RCK3SELR),
+	PLL(PLL4, "pll4", ref4_parents, 0, RCC_PLL4CR, RCC_RCK4SELR),
 
 	/* ODF */
 	COMPOSITE(PLL1_P, "pll1_p", PARENT("pll1"), 0,
@@ -1801,6 +1906,7 @@ static const struct clock_config stm32mp1_clock_cfg[] = {
 	PCLK(CRC1, "crc1", "ck_axi", 0, G_CRC1),
 	PCLK(USBH, "usbh", "ck_axi", 0, G_USBH),
 	PCLK(ETHSTP, "ethstp", "ck_axi", 0, G_ETHSTP),
+	PCLK(DDRPERFM, "ddrperfm", "pclk4", 0, G_DDRPERFM),
 
 	/* Kernel clocks */
 	KCLK(SDMMC1_K, "sdmmc1_k", sdmmc12_src, 0, G_SDMMC1, M_SDMMC12),
@@ -1857,18 +1963,17 @@ static const struct clock_config stm32mp1_clock_cfg[] = {
 	MGATE_MP1(GPU_K, "gpu_k", "pll2_q", 0, G_GPU),
 	MGATE_MP1(DAC12_K, "dac12_k", "ck_lsi", 0, G_DAC12),
 
-	COMPOSITE(ETHPTP_K, "ethptp_k", eth_src, CLK_OPS_PARENT_ENABLE,
+	COMPOSITE(ETHPTP_K, "ethptp_k", eth_src, CLK_OPS_PARENT_ENABLE |
+		  CLK_SET_RATE_NO_REPARENT,
 		  _NO_GATE,
 		  _MMUX(M_ETHCK),
 		  _DIV(RCC_ETHCKSELR, 4, 4, 0, NULL)),
 
 	/* RTC clock */
-	DIV(NO_ID, "ck_hse_rtc", "ck_hse", 0, RCC_RTCDIVR, 0, 7, 0),
-
 	COMPOSITE(RTC, "ck_rtc", rtc_src, CLK_OPS_PARENT_ENABLE |
-		   CLK_SET_RATE_PARENT,
-		  _GATE(RCC_BDCR, 20, 0),
-		  _MUX(RCC_BDCR, 16, 2, 0),
+		  CLK_SET_RATE_PARENT,
+		  _NO_GATE,
+		  _NO_MUX,
 		  _NO_DIV),
 
 	/* MCO clocks */
@@ -1894,16 +1999,76 @@ static const struct clock_config stm32mp1_clock_cfg[] = {
 		  _DIV(RCC_DBGCFGR, 0, 3, 0, ck_trace_div_table)),
 };
 
-struct stm32_clock_match_data {
+static const u32 stm32mp1_clock_secured[] = {
+	CK_HSE,
+	CK_HSI,
+	CK_CSI,
+	CK_LSI,
+	CK_LSE,
+	PLL1,
+	PLL2,
+	PLL1_P,
+	PLL2_P,
+	PLL2_Q,
+	PLL2_R,
+	CK_MPU,
+	CK_AXI,
+	SPI6,
+	I2C4,
+	I2C6,
+	USART1,
+	RTCAPB,
+	TZC1,
+	TZC2,
+	TZPC,
+	IWDG1,
+	BSEC,
+	STGEN,
+	GPIOZ,
+	CRYP1,
+	HASH1,
+	RNG1,
+	BKPSRAM,
+	RNG1_K,
+	STGEN_K,
+	SPI6_K,
+	I2C4_K,
+	I2C6_K,
+	USART1_K,
+	RTC,
+};
+
+static bool stm32_check_security(const struct clock_config *cfg)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(stm32mp1_clock_secured); i++)
+		if (cfg->id == stm32mp1_clock_secured[i])
+			return true;
+	return false;
+}
+
+struct stm32_rcc_match_data {
 	const struct clock_config *cfg;
 	unsigned int num;
 	unsigned int maxbinding;
+	u32 clear_offset;
+	bool (*check_security)(const struct clock_config *cfg);
+};
+
+static struct stm32_rcc_match_data stm32mp1_data = {
+	.cfg		= stm32mp1_clock_cfg,
+	.num		= ARRAY_SIZE(stm32mp1_clock_cfg),
+	.maxbinding	= STM32MP1_LAST_CLK,
+	.clear_offset	= RCC_CLR,
 };
 
-static struct stm32_clock_match_data stm32mp1_data = {
+static struct stm32_rcc_match_data stm32mp1_data_secure = {
 	.cfg		= stm32mp1_clock_cfg,
 	.num		= ARRAY_SIZE(stm32mp1_clock_cfg),
 	.maxbinding	= STM32MP1_LAST_CLK,
+	.clear_offset	= RCC_CLR,
+	.check_security = &stm32_check_security
 };
 
 static const struct of_device_id stm32mp1_match_data[] = {
@@ -1911,85 +2076,282 @@ static const struct of_device_id stm32mp1_match_data[] = {
 		.compatible = "st,stm32mp1-rcc",
 		.data = &stm32mp1_data,
 	},
+	{
+		.compatible = "st,stm32mp1-rcc-secure",
+		.data = &stm32mp1_data_secure,
+	},
 	{ }
 };
 
-static int stm32_register_hw_clk(struct clk_onecell_data *clk_data,
-				 void __iomem *base,
+static int stm32_register_hw_clk(struct device_d *dev,
+				 struct clk_hw_onecell_data *clk_data,
+				 void __iomem *base, spinlock_t *lock,
 				 const struct clock_config *cfg)
 {
-	struct clk *clk = ERR_PTR(-ENOENT);
+	struct clk_hw **hws;
+	struct clk_hw *hw = ERR_PTR(-ENOENT);
+
+	hws = clk_data->hws;
 
 	if (cfg->func)
-		clk = (*cfg->func)(base, cfg);
+		hw = (*cfg->func)(dev, clk_data, base, lock, cfg);
 
-	if (IS_ERR(clk)) {
+	if (IS_ERR(hw)) {
 		pr_err("Unable to register %s\n", cfg->name);
-		return  PTR_ERR(clk);
+		return  PTR_ERR(hw);
 	}
 
 	if (cfg->id != NO_ID)
-		clk_data->clks[cfg->id] = clk;
+		hws[cfg->id] = hw;
 
 	return 0;
 }
 
-static int stm32_rcc_init(struct device_node *np,
-			  void __iomem *base,
-			  const struct of_device_id *match_data)
+#define STM32_RESET_ID_MASK GENMASK(15, 0)
+
+struct stm32_reset_data {
+	/* reset lock */
+	spinlock_t			lock;
+	struct reset_controller_dev	rcdev;
+	void __iomem			*membase;
+	u32				clear_offset;
+};
+
+static inline struct stm32_reset_data *
+to_stm32_reset_data(struct reset_controller_dev *rcdev)
 {
-	struct clk_onecell_data *clk_data;
-	struct clk **clks;
-	const struct of_device_id *match;
-	const struct stm32_clock_match_data *data;
-	int err, n, max_binding;
+	return container_of(rcdev, struct stm32_reset_data, rcdev);
+}
 
-	match = of_match_node(match_data, np);
-	if (!match) {
-		pr_err("%s: match data not found\n", __func__);
-		return -ENODEV;
+static int stm32_reset_update(struct reset_controller_dev *rcdev,
+			      unsigned long id, bool assert)
+{
+	struct stm32_reset_data *data = to_stm32_reset_data(rcdev);
+	int reg_width = sizeof(u32);
+	int bank = id / (reg_width * BITS_PER_BYTE);
+	int offset = id % (reg_width * BITS_PER_BYTE);
+
+	if (data->clear_offset) {
+		void __iomem *addr;
+
+		addr = data->membase + (bank * reg_width);
+		if (!assert)
+			addr += data->clear_offset;
+
+		writel(BIT(offset), addr);
+
+	} else {
+		unsigned long flags;
+		u32 reg;
+
+		spin_lock_irqsave(&data->lock, flags);
+
+		reg = readl(data->membase + (bank * reg_width));
+
+		if (assert)
+			reg |= BIT(offset);
+		else
+			reg &= ~BIT(offset);
+
+		writel(reg, data->membase + (bank * reg_width));
+
+		spin_unlock_irqrestore(&data->lock, flags);
 	}
 
-	data = match->data;
+	return 0;
+}
+
+static int stm32_reset_assert(struct reset_controller_dev *rcdev,
+			      unsigned long id)
+{
+	return stm32_reset_update(rcdev, id, true);
+}
+
+static int stm32_reset_deassert(struct reset_controller_dev *rcdev,
+				unsigned long id)
+{
+	return stm32_reset_update(rcdev, id, false);
+}
+
+static int stm32_reset_status(struct reset_controller_dev *rcdev,
+			      unsigned long id)
+{
+	struct stm32_reset_data *data = to_stm32_reset_data(rcdev);
+	int reg_width = sizeof(u32);
+	int bank = id / (reg_width * BITS_PER_BYTE);
+	int offset = id % (reg_width * BITS_PER_BYTE);
+	u32 reg;
+
+	reg = readl(data->membase + (bank * reg_width));
+
+	return !!(reg & BIT(offset));
+}
+
+static const struct reset_control_ops stm32_reset_ops = {
+	.assert		= stm32_reset_assert,
+	.deassert	= stm32_reset_deassert,
+	.status		= stm32_reset_status,
+};
+
+static int stm32_rcc_reset_init(struct device_d *dev, void __iomem *base,
+				const struct of_device_id *match)
+{
+	const struct stm32_rcc_match_data *data = match->data;
+	struct stm32_reset_data *reset_data = NULL;
+
+	reset_data = kzalloc(sizeof(*reset_data), GFP_KERNEL);
+	if (!reset_data)
+		return -ENOMEM;
+
+	reset_data->membase = base;
+	reset_data->rcdev.ops = &stm32_reset_ops;
+	reset_data->rcdev.of_node = dev_of_node(dev);
+	reset_data->rcdev.nr_resets = STM32_RESET_ID_MASK;
+	reset_data->clear_offset = data->clear_offset;
+
+	return reset_controller_register(&reset_data->rcdev);
+}
+
+static int stm32_rcc_clock_init(struct device_d *dev, void __iomem *base,
+				const struct of_device_id *match)
+{
+	const struct stm32_rcc_match_data *data = match->data;
+	struct clk_hw_onecell_data *clk_data;
+	struct clk_hw **hws;
+	int err, n, max_binding;
+
+	max_binding =  data->maxbinding;
 
-	max_binding = data->maxbinding;
+	clk_data = kzalloc(struct_size(clk_data, hws, max_binding),
+				GFP_KERNEL);
+	if (!clk_data)
+		return -ENOMEM;
 
-	clk_data = xzalloc(sizeof(*clk_data));
-	clk_data->clks = xzalloc(sizeof(void *) * max_binding);
-	clk_data->clk_num = max_binding;
+	clk_data->num = max_binding;
 
-	clks = clk_data->clks;
+	hws = clk_data->hws;
 
 	for (n = 0; n < max_binding; n++)
-		clks[n] = ERR_PTR(-ENOENT);
+		hws[n] = ERR_PTR(-ENOENT);
 
 	for (n = 0; n < data->num; n++) {
-		err = stm32_register_hw_clk(clk_data, base,
+		if (data->check_security && data->check_security(&data->cfg[n]))
+			continue;
+
+		err = stm32_register_hw_clk(dev, clk_data, base, &rlock,
 					    &data->cfg[n]);
 		if (err) {
-			pr_err("%s: can't register  %s\n", __func__,
-			       data->cfg[n].name);
-
-			kfree(clk_data);
+			dev_err(dev, "Can't register clk %s: %d\n",
+				data->cfg[n].name, err);
 
 			return err;
 		}
 	}
 
-	return of_clk_add_provider(np, of_clk_src_onecell_get, clk_data);
+	return of_clk_add_hw_provider(dev_of_node(dev), of_clk_hw_onecell_get, clk_data);
 }
 
-static void stm32mp1_rcc_init(struct device_node *np)
+static int stm32_rcc_init(struct device_d *dev, void __iomem *base,
+			  const struct of_device_id *match_data)
+{
+	const struct of_device_id *match;
+	int err;
+
+	match = of_match_node(match_data, dev_of_node(dev));
+	if (!match) {
+		dev_err(dev, "match data not found\n");
+		return -ENODEV;
+	}
+
+	/* RCC Reset Configuration */
+	err = stm32_rcc_reset_init(dev, base, match);
+	if (err) {
+		pr_err("stm32mp1 reset failed to initialize\n");
+		return err;
+	}
+
+	/* RCC Clock Configuration */
+	err = stm32_rcc_clock_init(dev, base, match);
+	if (err) {
+		pr_err("stm32mp1 clock failed to initialize\n");
+		return err;
+	}
+
+	return 0;
+}
+
+static int stm32mp1_rcc_init(struct device_d *dev)
 {
 	void __iomem *base;
+	int ret;
 
-	base = of_iomap(np, 0);
+	base = of_iomap(dev_of_node(dev), 0);
 	if (!base) {
-		pr_err("%pOFn: unable to map resource", np);
-		return;
+		dev_err(dev, "unable to map resource\n");
+		return -ENOMEM;
 	}
 
-	stm32_rcc_init(np, base, stm32mp1_match_data);
+	ret = stm32_rcc_init(dev, base, stm32mp1_match_data);
+	if (ret)
+		return ret;
+
+	stm32mp_system_restart_init(base);
+	return 0;
 }
 
-CLK_OF_DECLARE_DRIVER(stm32mp1_rcc, "st,stm32mp1-rcc", stm32mp1_rcc_init);
+static int get_clock_deps(struct device_d *dev)
+{
+	static const char * const clock_deps_name[] = {
+		"hsi", "hse", "csi", "lsi", "lse",
+	};
+	size_t deps_size = sizeof(struct clk *) * ARRAY_SIZE(clock_deps_name);
+	struct clk **clk_deps;
+	int i;
+
+	clk_deps = kzalloc(deps_size, GFP_KERNEL);
+	if (!clk_deps)
+		return -ENOMEM;
+
+	for (i = 0; i < ARRAY_SIZE(clock_deps_name); i++) {
+		struct clk *clk = of_clk_get_by_name(dev_of_node(dev),
+						     clock_deps_name[i]);
+
+		if (IS_ERR(clk)) {
+			if (PTR_ERR(clk) != -EINVAL && PTR_ERR(clk) != -ENOENT)
+				return PTR_ERR(clk);
+		} else {
+			/* Device gets a reference count on the clock */
+			clk_deps[i] = clk_get(dev, __clk_get_name(clk));
+			clk_put(clk);
+		}
+	}
+
+	return 0;
+}
+
+static int stm32mp1_rcc_clocks_probe(struct device_d *dev)
+{
+	int ret = get_clock_deps(dev);
+
+	if (!ret)
+		ret = stm32mp1_rcc_init(dev);
+
+	return ret;
+}
+
+static void stm32mp1_rcc_clocks_remove(struct device_d *dev)
+{
+	struct device_node *child, *np = dev_of_node(dev);
+
+	for_each_available_child_of_node(np, child)
+		of_clk_del_provider(child);
+}
+
+static struct driver_d stm32mp1_rcc_clocks_driver = {
+	.name = "stm32mp1_rcc",
+	.of_compatible = stm32mp1_match_data,
+	.probe = stm32mp1_rcc_clocks_probe,
+	.remove = stm32mp1_rcc_clocks_remove,
+};
+
+core_platform_driver(stm32mp1_rcc_clocks_driver);
diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index 40cbc4a3dffd..f931c117f402 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -64,7 +64,8 @@ config POWER_RESET_HTIF_POWEROFF
 	  supporting the UC Berkely Host/Target Interface (HTIF).
 
 config RESET_STM32
-	bool "STM32 Reset Driver"
+	bool "STM32 restart Driver"
 	depends on ARCH_STM32MP || COMPILE_TEST
 	help
-	  This enables the reset controller driver for STM32MP1.
+	  This enables support for restarting and reset source
+	  computation on the STM32MP1.
diff --git a/drivers/power/reset/stm32-reboot.c b/drivers/power/reset/stm32-reboot.c
index e625ba27fff6..809531e71396 100644
--- a/drivers/power/reset/stm32-reboot.c
+++ b/drivers/power/reset/stm32-reboot.c
@@ -6,12 +6,11 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <linux/err.h>
-#include <linux/reset-controller.h>
 #include <restart.h>
 #include <reset_source.h>
 #include <asm/io.h>
+#include <soc/stm32/reboot.h>
 
 #define RCC_CL 0x4
 
@@ -42,15 +41,9 @@ struct stm32_reset_reason {
 
 struct stm32_reset {
 	void __iomem *base;
-	struct reset_controller_dev rcdev;
 	struct restart_handler restart;
 };
 
-static struct stm32_reset *to_stm32_reset(struct reset_controller_dev *rcdev)
-{
-	return container_of(rcdev, struct stm32_reset, rcdev);
-}
-
 static u32 stm32_reset_status(struct stm32_reset *priv, unsigned long bank)
 {
 	return readl(priv->base + bank);
@@ -115,64 +108,19 @@ static void stm32_set_reset_reason(struct stm32_reset *priv,
 		reset_source_to_string(type), reg);
 }
 
-static int stm32_reset_assert(struct reset_controller_dev *rcdev,
-			      unsigned long id)
-{
-	stm32_reset(to_stm32_reset(rcdev), id, true);
-	return 0;
-}
-
-static int stm32_reset_deassert(struct reset_controller_dev *rcdev,
-				unsigned long id)
-{
-	stm32_reset(to_stm32_reset(rcdev), id, false);
-	return 0;
-}
-
-static const struct reset_control_ops stm32_reset_ops = {
-	.assert		= stm32_reset_assert,
-	.deassert	= stm32_reset_deassert,
-};
-
-static int stm32_reset_probe(struct device_d *dev)
+void stm32mp_system_restart_init(void __iomem *base)
 {
 	struct stm32_reset *priv;
-	struct resource *iores;
-	int ret;
 
 	priv = xzalloc(sizeof(*priv));
 
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-
-	priv->base = IOMEM(iores->start);
-	priv->rcdev.nr_resets = (iores->end - iores->start) * BITS_PER_BYTE;
-	priv->rcdev.ops = &stm32_reset_ops;
-	priv->rcdev.of_node = dev->device_node;
+	priv->base = base;
 
 	priv->restart.name = "stm32-rcc";
 	priv->restart.restart = stm32mp_rcc_restart_handler;
 	priv->restart.priority = 200;
 
-	ret = restart_handler_register(&priv->restart);
-	if (ret)
-		dev_warn(dev, "Cannot register restart handler\n");
+	restart_handler_register(&priv->restart);
 
 	stm32_set_reset_reason(priv, stm32mp_reset_reasons);
-
-	return reset_controller_register(&priv->rcdev);
 }
-
-static const struct of_device_id stm32_rcc_reset_dt_ids[] = {
-	{ .compatible = "st,stm32mp1-rcc" },
-	{ /* sentinel */ },
-};
-
-static struct driver_d stm32_rcc_reset_driver = {
-	.name = "stm32mp_rcc_reset",
-	.probe = stm32_reset_probe,
-	.of_compatible = DRV_OF_COMPAT(stm32_rcc_reset_dt_ids),
-};
-
-postcore_platform_driver(stm32_rcc_reset_driver);
diff --git a/include/driver.h b/include/driver.h
index e59f0a164d42..1ee255c9ad0c 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -598,4 +598,9 @@ int device_match_of_modalias(struct device_d *dev, struct driver_d *drv);
 struct device_d *device_find_child(struct device_d *parent, void *data,
 				 int (*match)(struct device_d *dev, void *data));
 
+static inline struct device_node *dev_of_node(struct device_d *dev)
+{
+	return dev->device_node;
+}
+
 #endif /* DRIVER_H */
diff --git a/include/soc/stm32/reboot.h b/include/soc/stm32/reboot.h
new file mode 100644
index 000000000000..d6c731f59f74
--- /dev/null
+++ b/include/soc/stm32/reboot.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __SOC_STM32_REBOOT_H_
+#define __SOC_STM32_REBOOT_H_
+
+#include <linux/compiler.h>
+
+#ifdef CONFIG_RESET_STM32
+void stm32mp_system_restart_init(void __iomem *rcc);
+#else
+static inline void stm32mp_system_restart_init(void __iomem *rcc)
+{
+}
+#endif
+
+#endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

