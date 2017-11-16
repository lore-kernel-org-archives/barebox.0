Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1eFRab-0006vH-On
 for barebox@lists.infradead.org; Thu, 16 Nov 2017 21:20:52 +0000
Received: from antimon.fritz.box (a89-183-120-46.net-htp.de [89.183.120.46])
 by lynxeye.de (Postfix) with ESMTPA id 5F314E74028
 for <barebox@lists.infradead.org>; Thu, 16 Nov 2017 22:19:50 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 16 Nov 2017 22:19:46 +0100
Message-Id: <20171116211946.17902-1-l.stach@pengutronix.de>
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
Subject: [PATCH] clk: sp810: hardwire parent to 1MHz clock
To: barebox@lists.infradead.org

This works around a limitation in our handling of the vexpress
config bus. For now just hardcode the clock parent to the 1MHz
clock, which is the default as emulated by QEMU and also the
setting the Linux kernel will configure later.

This fixes the vexpress clocksource running at a wrong rate
leading to bogus delays and sleep times.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/clk/vexpress/clk-sp810.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/vexpress/clk-sp810.c b/drivers/clk/vexpress/clk-sp810.c
index af72c7402..959661e19 100644
--- a/drivers/clk/vexpress/clk-sp810.c
+++ b/drivers/clk/vexpress/clk-sp810.c
@@ -44,10 +44,7 @@ struct clk_sp810 {
 
 static int clk_sp810_timerclken_get_parent(struct clk *hw)
 {
-	struct clk_sp810_timerclken *timerclken = to_clk_sp810_timerclken(hw);
-	u32 val = readl(timerclken->sp810->base + SCCTRL);
-
-	return !!(val & (1 << SCCTRL_TIMERENnSEL_SHIFT(timerclken->channel)));
+	return 1;
 }
 
 static int clk_sp810_timerclken_set_parent(struct clk *hw, u8 index)
@@ -59,6 +56,9 @@ static int clk_sp810_timerclken_set_parent(struct clk *hw, u8 index)
 	if (WARN_ON(index > 1))
 		return -EINVAL;
 
+	if (index == 0)
+		return -EINVAL;
+
 	val = readl(sp810->base + SCCTRL);
 	val &= ~(1 << shift);
 	val |= index << shift;
@@ -92,7 +92,6 @@ static void clk_sp810_of_setup(struct device_node *node)
 	char name[12];
 	static int instance;
 	int i;
-	bool deprecated;
 
 	if (!sp810)
 		return;
@@ -106,8 +105,6 @@ static void clk_sp810_of_setup(struct device_node *node)
 	sp810->node = node;
 	sp810->base = of_iomap(node, 0);
 
-	deprecated = !of_find_property(node, "assigned-clock-parents", NULL);
-
 	for (i = 0; i < ARRAY_SIZE(sp810->timerclken); i++) {
 		snprintf(name, sizeof(name), "sp810_%d_%d", instance, i);
 
@@ -119,13 +116,10 @@ static void clk_sp810_of_setup(struct device_node *node)
 		sp810->timerclken[i].hw.ops = &clk_sp810_timerclken_ops;
 
 		/*
-		 * If DT isn't setting the parent, force it to be
-		 * the 1 MHz clock without going through the framework.
-		 * We do this before clk_register() so that it can determine
-		 * the parent and setup the tree properly.
+		 * Always set parent to 1MHz clock to match QEMU emulation
+		 * and satisfy requirements on real HW.
 		 */
-		if (deprecated)
-			clk_sp810_timerclken_set_parent(&sp810->timerclken[i].hw, 1);
+		clk_sp810_timerclken_set_parent(&sp810->timerclken[i].hw, 1);
 
 		clk_register(&sp810->timerclken[i].hw);
 	}
-- 
2.13.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
