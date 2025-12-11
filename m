Delivery-date: Thu, 11 Dec 2025 18:41:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTkfR-00ANFv-22
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 18:41:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTkfQ-0003ls-Mo
	for lore@pengutronix.de; Thu, 11 Dec 2025 18:41:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EHZySIqeowiVuT/MV84gB+32kbjke/QTHOZB9LsYhDA=; b=pRjAO7tBB57c73DXpQwTJ5EYMO
	Rqa46B/kbs7v3d9n8MSzLzxHNHrpRvO1gs65yxT4oOsPGNOzqC1WZcJdLxRoQtUTBeQERrFrZ0RXb
	aQrEOiKNt0otFA4MaZJG7+7Bq8l978H9fMmUdlhySVnX7r+umevFOtm+WrdNZvWWOw3LvV7+6czLK
	CqDPukCYW4LX4k8+spU2nZPB/C6cVqaEJk0A0s9ffPMmQzwLw4NLPBe66jc0qbmG4t5mrTVEb8lg6
	RZEd+CD2LAEr0HhYz2wG8AVjUyHNrD8w0BQL0fLdmwyRb0cfwrDqbmIcuTPh2IdGM/Kdn+gYzkcyB
	G2g1ziWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTkeu-0000000H5Qk-0yNc;
	Thu, 11 Dec 2025 17:40:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTker-0000000H5QH-2HaG
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 17:40:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTkep-0003gU-OH; Thu, 11 Dec 2025 18:40:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTkep-005AIT-1p;
	Thu, 11 Dec 2025 18:40:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTkep-0000000FWJz-1uAp;
	Thu, 11 Dec 2025 18:40:51 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 18:40:39 +0100
Message-ID: <20251211174050.3689753-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_094053_756168_86C19C31 
X-CRM114-Status: GOOD (  23.67  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] clk: vexpress: clk-sp810: sync with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

labgrid-pytest --lg-env test/arm/a15@multi_v7_defconfig.yaml crashes for
me, because the parent is hardcoded as 1 and that leads to an out of
bounds access when executing the clk_dump commands as it tries to get
ahold of the name in clk_lookup.

Sync the driver with Linux to fix this issue.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/vexpress/clk-sp810.c | 62 +++++++++++++++++++-------------
 include/linux/amba/sp810.h       | 58 ++++++++++++++++++++++++++++++
 2 files changed, 96 insertions(+), 24 deletions(-)
 create mode 100644 include/linux/amba/sp810.h

diff --git a/drivers/clk/vexpress/clk-sp810.c b/drivers/clk/vexpress/clk-sp810.c
index 6eba0a228546..dae1d23ad57f 100644
--- a/drivers/clk/vexpress/clk-sp810.c
+++ b/drivers/clk/vexpress/clk-sp810.c
@@ -1,40 +1,39 @@
 // SPDX-License-Identifier: GPL-2.0-only
 // SPDX-FileCopyrightText: 2013 ARM Limited
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/versatile/clk-sp810.c?id=66b065239a2db3ac188d369d0b1797cd8bf62aeb
 
-#include <common.h>
+#include <linux/amba/sp810.h>
 #include <io.h>
 #include <malloc.h>
 #include <of_address.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 
-/* sysctl registers offset */
-#define SCCTRL			0x000
-#define SCCTRL_TIMERENnSEL_SHIFT(n)	(15 + ((n) * 2))
+#define to_clk_sp810_timerclken(_hw) \
+		container_of(_hw, struct clk_sp810_timerclken, hw)
 
 struct clk_sp810;
 
 struct clk_sp810_timerclken {
 	struct clk_hw hw;
+	struct clk *clk;
 	struct clk_sp810 *sp810;
 	int channel;
 };
 
-static inline struct clk_sp810_timerclken *
-to_clk_sp810_timerclken(struct clk_hw *hw)
-{
-	return container_of(hw, struct clk_sp810_timerclken, hw);
-}
-
 struct clk_sp810 {
 	struct device_node *node;
 	void __iomem *base;
+	spinlock_t lock;
 	struct clk_sp810_timerclken timerclken[4];
 };
 
 static int clk_sp810_timerclken_get_parent(struct clk_hw *hw)
 {
-	return 1;
+	struct clk_sp810_timerclken *timerclken = to_clk_sp810_timerclken(hw);
+	u32 val = readl(timerclken->sp810->base + SCCTRL);
+
+	return !!(val & (1 << SCCTRL_TIMERENnSEL_SHIFT(timerclken->channel)));
 }
 
 static int clk_sp810_timerclken_set_parent(struct clk_hw *hw, u8 index)
@@ -42,18 +41,20 @@ static int clk_sp810_timerclken_set_parent(struct clk_hw *hw, u8 index)
 	struct clk_sp810_timerclken *timerclken = to_clk_sp810_timerclken(hw);
 	struct clk_sp810 *sp810 = timerclken->sp810;
 	u32 val, shift = SCCTRL_TIMERENnSEL_SHIFT(timerclken->channel);
+	unsigned long flags = 0;
 
 	if (WARN_ON(index > 1))
 		return -EINVAL;
 
-	if (index == 0)
-		return -EINVAL;
+	spin_lock_irqsave(&sp810->lock, flags);
 
 	val = readl(sp810->base + SCCTRL);
 	val &= ~(1 << shift);
 	val |= index << shift;
 	writel(val, sp810->base + SCCTRL);
 
+	spin_unlock_irqrestore(&sp810->lock, flags);
+
 	return 0;
 }
 
@@ -71,17 +72,19 @@ static struct clk *clk_sp810_timerclken_of_get(struct of_phandle_args *clkspec,
 		    clkspec->args[0] >=	ARRAY_SIZE(sp810->timerclken)))
 		return NULL;
 
-	return &sp810->timerclken[clkspec->args[0]].hw.clk;
+	return sp810->timerclken[clkspec->args[0]].clk;
 }
 
-static void clk_sp810_of_setup(struct device_node *node)
+static void __init clk_sp810_of_setup(struct device_node *node)
 {
 	struct clk_sp810 *sp810 = xzalloc(sizeof(*sp810));
 	const char *parent_names[2];
 	int num = ARRAY_SIZE(parent_names);
 	char name[12];
+	struct clk_init_data init;
 	static int instance;
 	int i;
+	bool deprecated;
 
 	if (!sp810)
 		return;
@@ -94,24 +97,35 @@ static void clk_sp810_of_setup(struct device_node *node)
 
 	sp810->node = node;
 	sp810->base = of_iomap(node, 0);
+	spin_lock_init(&sp810->lock);
+
+	init.name = name;
+	init.ops = &clk_sp810_timerclken_ops;
+	init.flags = 0;
+	init.parent_names = parent_names;
+	init.num_parents = num;
+
+	deprecated = !of_property_present(node, "assigned-clock-parents");
 
 	for (i = 0; i < ARRAY_SIZE(sp810->timerclken); i++) {
 		snprintf(name, sizeof(name), "sp810_%d_%d", instance, i);
 
 		sp810->timerclken[i].sp810 = sp810;
 		sp810->timerclken[i].channel = i;
-		sp810->timerclken[i].hw.clk.name = strdup(name);
-		sp810->timerclken[i].hw.clk.parent_names = parent_names;
-		sp810->timerclken[i].hw.clk.num_parents = num;
-		sp810->timerclken[i].hw.clk.ops = &clk_sp810_timerclken_ops;
-
-		bclk_register(&sp810->timerclken[i].hw.clk);
+		sp810->timerclken[i].hw.init = &init;
 
 		/*
-		 * Always set parent to 1MHz clock to match QEMU emulation
-		 * and satisfy requirements on real HW.
+		 * If DT isn't setting the parent, force it to be
+		 * the 1 MHz clock without going through the framework.
+		 * We do this before clk_register() so that it can determine
+		 * the parent and setup the tree properly.
 		 */
-		clk_sp810_timerclken_set_parent(&sp810->timerclken[i].hw, 1);
+		if (deprecated)
+			init.ops->set_parent(&sp810->timerclken[i].hw, 1);
+
+		sp810->timerclken[i].clk = clk_register(NULL,
+				&sp810->timerclken[i].hw);
+		WARN_ON(IS_ERR(sp810->timerclken[i].clk));
 	}
 
 	of_clk_add_provider(node, clk_sp810_timerclken_of_get, sp810);
diff --git a/include/linux/amba/sp810.h b/include/linux/amba/sp810.h
new file mode 100644
index 000000000000..5f24826b3eaa
--- /dev/null
+++ b/include/linux/amba/sp810.h
@@ -0,0 +1,58 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText:  2009 ST Microelectronics Viresh Kumar <vireshk@kernel.org> */
+/* SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/linux/amba/sp810.h?id=da89947b47a3a355f33a75d7672892c147ed880d */
+/*
+ * ARM PrimeXsys System Controller SP810 header file
+ */
+
+#ifndef __AMBA_SP810_H
+#define __AMBA_SP810_H
+
+#include <linux/io.h>
+
+/* sysctl registers offset */
+#define SCCTRL			0x000
+#define SCSYSSTAT		0x004
+#define SCIMCTRL		0x008
+#define SCIMSTAT		0x00C
+#define SCXTALCTRL		0x010
+#define SCPLLCTRL		0x014
+#define SCPLLFCTRL		0x018
+#define SCPERCTRL0		0x01C
+#define SCPERCTRL1		0x020
+#define SCPEREN			0x024
+#define SCPERDIS		0x028
+#define SCPERCLKEN		0x02C
+#define SCPERSTAT		0x030
+#define SCSYSID0		0xEE0
+#define SCSYSID1		0xEE4
+#define SCSYSID2		0xEE8
+#define SCSYSID3		0xEEC
+#define SCITCR			0xF00
+#define SCITIR0			0xF04
+#define SCITIR1			0xF08
+#define SCITOR			0xF0C
+#define SCCNTCTRL		0xF10
+#define SCCNTDATA		0xF14
+#define SCCNTSTEP		0xF18
+#define SCPERIPHID0		0xFE0
+#define SCPERIPHID1		0xFE4
+#define SCPERIPHID2		0xFE8
+#define SCPERIPHID3		0xFEC
+#define SCPCELLID0		0xFF0
+#define SCPCELLID1		0xFF4
+#define SCPCELLID2		0xFF8
+#define SCPCELLID3		0xFFC
+
+#define SCCTRL_TIMERENnSEL_SHIFT(n)	(15 + ((n) * 2))
+
+static inline void sysctl_soft_reset(void __iomem *base)
+{
+	/* switch to slow mode */
+	writel(0x2, base + SCCTRL);
+
+	/* writing any value to SCSYSSTAT reg will reset system */
+	writel(0, base + SCSYSSTAT);
+}
+
+#endif /* __AMBA_SP810_H */
-- 
2.47.3



