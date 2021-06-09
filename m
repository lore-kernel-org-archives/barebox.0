Delivery-date: Wed, 09 Jun 2021 11:38:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquf8-0006jH-Of
	for lore@lore.pengutronix.de; Wed, 09 Jun 2021 11:38:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquf6-0003MM-UG
	for lore@pengutronix.de; Wed, 09 Jun 2021 11:38:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ql/q9xCVVuPrx4qa+8QSZWbw00JhEAm9MvGisQN4tvQ=; b=ZhG81tt7+2ilbB
	6oDZJ61COdZkx0GZ8LwShp/9PxouD/O91v2T5gx/llsJZYbfkrIC5JvIsbXw2ydY0aWbcE2KiF7pe
	/IPXAfNKj49cayplY3hFKp5zgcL/yfArG0AW4Lfgf94NIDxapp1nMyq/h3nyIVafr6iQl4XY8SgGe
	Nzc5JsqUKlzs+A94QAW7zVsr8xoplejGXtMc+cTWK8613WSLKuac39308ehdWjU1YURO8eolY2E1U
	mVWNky5AgCiPc2PRPbRkCkGG8A0fSPU1IC0OKWZ2rC/kM6H4MEznqipBu/Fg4QGYIOl709MGspcNB
	Qp+SRdo9TBMd7hNbc1IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqucn-00Cids-60; Wed, 09 Jun 2021 09:35:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lquR4-00Ce6g-2H
 for barebox@lists.infradead.org; Wed, 09 Jun 2021 09:23:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lquR2-00016L-NX; Wed, 09 Jun 2021 11:23:40 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lquR2-00053q-Es; Wed, 09 Jun 2021 11:23:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Jun 2021 11:23:08 +0200
Message-Id: <20210609092307.19324-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_022342_151242_1F402263 
X-CRM114-Status: GOOD (  19.53  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! clk: rockchip: Update to current Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux clock drivers for rockchip SoCs have to convenience functions
that weren't ported:

	rockchip_register_restart_notifier()
	rockchip_register_softrst()

They control system and peripheral reset, respectively. Port both.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Hello Sascha,

I ported these over for rk3399, but I see, you might need them too,
so sending these out early.

Ported from v5.13.
---
 drivers/clk/rockchip/Makefile  |   1 +
 drivers/clk/rockchip/clk.c     |  26 ++++++++
 drivers/clk/rockchip/clk.h     |  17 +++++
 drivers/clk/rockchip/softrst.c | 110 +++++++++++++++++++++++++++++++++
 4 files changed, 154 insertions(+)
 create mode 100644 drivers/clk/rockchip/softrst.c

diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
index 4c387b3a890e..a2461d16c10d 100644
--- a/drivers/clk/rockchip/Makefile
+++ b/drivers/clk/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-y += clk-cpu.o clk-pll.o clk.o clk-muxgrf.o clk-mmc-phase.o clk-inverter.o
+obj-$(CONFIG_RESET_CONTROLLER) += softrst.o
 obj-$(CONFIG_ARCH_RK3188) += clk-rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += clk-rk3288.o
 obj-$(CONFIG_ARCH_RK3568) += clk-rk3568.o
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index dd542c2e2060..613b168b4d96 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -21,6 +21,7 @@
 #include <mfd/syscon.h>
 #include <linux/spinlock.h>
 #include <linux/rational.h>
+#include <restart.h>
 #include "clk.h"
 
 /*
@@ -545,3 +546,28 @@ void rockchip_clk_protect_critical(const char *const clocks[],
 	}
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_protect_critical);
+
+static void rockchip_restart(struct restart_handler *this)
+{
+	struct rockchip_clk_provider *ctx =
+		container_of(this, struct rockchip_clk_provider, restart_handler);
+
+	writel(0xfdb9, ctx->reg_base + ctx->reg_restart);
+	mdelay(1000);
+}
+
+void rockchip_register_restart_notifier(struct rockchip_clk_provider *ctx,
+					unsigned int reg)
+{
+	int ret;
+
+	ctx->restart_handler.name = "rockchip-pmu",
+	ctx->restart_handler.restart = rockchip_restart,
+	ctx->restart_handler.priority = RESTART_DEFAULT_PRIORITY,
+
+	ret = restart_handler_register(&ctx->restart_handler);
+	if (ret)
+		pr_err("%s: cannot register restart handler, %d\n",
+		       __func__, ret);
+}
+EXPORT_SYMBOL_GPL(rockchip_register_restart_notifier);
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index c17da6e66386..2616277bb049 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -19,6 +19,7 @@
 
 #include <io.h>
 #include <linux/clk.h>
+#include <restart.h>
 
 struct clk;
 #define writel_relaxed	writel
@@ -268,6 +269,8 @@ struct rockchip_clk_provider {
 	struct clk_onecell_data clk_data;
 	struct device_node *cru_node;
 	struct regmap *grf;
+	struct restart_handler restart_handler;
+	unsigned int reg_restart;
 	spinlock_t lock;
 };
 
@@ -806,6 +809,20 @@ void rockchip_clk_register_armclk(struct rockchip_clk_provider *ctx,
 			const struct rockchip_cpuclk_rate_table *rates,
 			int nrates);
 void rockchip_clk_protect_critical(const char *const clocks[], int nclocks);
+void rockchip_register_restart_notifier(struct rockchip_clk_provider *ctx,
+					unsigned int reg);
+
+#ifdef CONFIG_RESET_CONTROLLER
+void rockchip_register_softrst(struct device_node *np,
+			       unsigned int num_regs,
+			       void __iomem *base, u8 flags);
+#else
+static inline void rockchip_register_softrst(struct device_node *np,
+			       unsigned int num_regs,
+			       void __iomem *base, u8 flags)
+{
+}
+#endif
 
 #define ROCKCHIP_SOFTRST_HIWORD_MASK	BIT(0)
 
diff --git a/drivers/clk/rockchip/softrst.c b/drivers/clk/rockchip/softrst.c
new file mode 100644
index 000000000000..e3f3937ca019
--- /dev/null
+++ b/drivers/clk/rockchip/softrst.c
@@ -0,0 +1,110 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2014 MundoReader S.L.
+ * Author: Heiko Stuebner <heiko@sntech.de>
+ */
+
+#include <common.h>
+#include <io.h>
+#include <linux/bitops.h>
+#include <linux/reset-controller.h>
+#include <linux/spinlock.h>
+#include "clk.h"
+
+struct rockchip_softrst {
+	struct reset_controller_dev	rcdev;
+	void __iomem			*reg_base;
+	int				num_regs;
+	int				num_per_reg;
+	u8				flags;
+	spinlock_t			lock;
+};
+
+static int rockchip_softrst_assert(struct reset_controller_dev *rcdev,
+			      unsigned long id)
+{
+	struct rockchip_softrst *softrst = container_of(rcdev,
+						     struct rockchip_softrst,
+						     rcdev);
+	int bank = id / softrst->num_per_reg;
+	int offset = id % softrst->num_per_reg;
+
+	if (softrst->flags & ROCKCHIP_SOFTRST_HIWORD_MASK) {
+		writel(BIT(offset) | (BIT(offset) << 16),
+		       softrst->reg_base + (bank * 4));
+	} else {
+		unsigned long flags;
+		u32 reg;
+
+		spin_lock_irqsave(&softrst->lock, flags);
+
+		reg = readl(softrst->reg_base + (bank * 4));
+		writel(reg | BIT(offset), softrst->reg_base + (bank * 4));
+
+		spin_unlock_irqrestore(&softrst->lock, flags);
+	}
+
+	return 0;
+}
+
+static int rockchip_softrst_deassert(struct reset_controller_dev *rcdev,
+				unsigned long id)
+{
+	struct rockchip_softrst *softrst = container_of(rcdev,
+						     struct rockchip_softrst,
+						     rcdev);
+	int bank = id / softrst->num_per_reg;
+	int offset = id % softrst->num_per_reg;
+
+	if (softrst->flags & ROCKCHIP_SOFTRST_HIWORD_MASK) {
+		writel((BIT(offset) << 16), softrst->reg_base + (bank * 4));
+	} else {
+		unsigned long flags;
+		u32 reg;
+
+		spin_lock_irqsave(&softrst->lock, flags);
+
+		reg = readl(softrst->reg_base + (bank * 4));
+		writel(reg & ~BIT(offset), softrst->reg_base + (bank * 4));
+
+		spin_unlock_irqrestore(&softrst->lock, flags);
+	}
+
+	return 0;
+}
+
+static const struct reset_control_ops rockchip_softrst_ops = {
+	.assert		= rockchip_softrst_assert,
+	.deassert	= rockchip_softrst_deassert,
+};
+
+void rockchip_register_softrst(struct device_node *np,
+			       unsigned int num_regs,
+			       void __iomem *base, u8 flags)
+{
+	struct rockchip_softrst *softrst;
+	int ret;
+
+	softrst = kzalloc(sizeof(*softrst), GFP_KERNEL);
+	if (!softrst)
+		return;
+
+	spin_lock_init(&softrst->lock);
+
+	softrst->reg_base = base;
+	softrst->flags = flags;
+	softrst->num_regs = num_regs;
+	softrst->num_per_reg = (flags & ROCKCHIP_SOFTRST_HIWORD_MASK) ? 16
+								      : 32;
+
+	softrst->rcdev.nr_resets =  num_regs * softrst->num_per_reg;
+	softrst->rcdev.ops = &rockchip_softrst_ops;
+	softrst->rcdev.of_node = np;
+	ret = reset_controller_register(&softrst->rcdev);
+	if (ret) {
+		pr_err("%s: could not register reset controller, %d\n",
+		       __func__, ret);
+		kfree(softrst);
+	}
+};
+EXPORT_SYMBOL_GPL(rockchip_register_softrst);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

