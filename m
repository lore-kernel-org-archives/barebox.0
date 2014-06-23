Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAa0-000137-8E
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:10 +0000
Received: by mail-wi0-f175.google.com with SMTP id r20so4867122wiv.2
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:10:42 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:35 +0200
Message-Id: <1403554235-12674-8-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 7/7] clocksource: mvebu: split initialization for Armada 370/XP
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Timers found on Marvell Armada 370 and XP require different setup.
While timer clock on Armada 370 can be derived from a divided
reference clocks, Armada XP always uses a 25MHz reference.

This also updates compatibles to destinguish timers for both SoCs
and fixes some whitespace issues on defines.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/clocksource/mvebu.c | 65 ++++++++++++++++++++++++++++-----------------
 1 file changed, 40 insertions(+), 25 deletions(-)

diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
index e0c85edaa6b2..e5cb921d922b 100644
--- a/drivers/clocksource/mvebu.c
+++ b/drivers/clocksource/mvebu.c
@@ -19,24 +19,27 @@
 #include <linux/clk.h>
 #include <io.h>
 
-#define TIMER_CTRL_OFF          0x0000
-#define  TIMER0_EN               0x0001
-#define  TIMER0_RELOAD_EN        0x0002
-#define  TIMER0_25MHZ            0x0800
-#define  TIMER0_DIV(div)         ((div) << 19)
-#define  TIMER1_EN               0x0004
-#define  TIMER1_RELOAD_EN        0x0008
-#define  TIMER1_25MHZ            0x1000
-#define  TIMER1_DIV(div)         ((div) << 22)
-#define TIMER_EVENTS_STATUS     0x0004
-#define  TIMER0_CLR_MASK         (~0x1)
-#define  TIMER1_CLR_MASK         (~0x100)
-#define TIMER0_RELOAD_OFF       0x0010
-#define TIMER0_VAL_OFF          0x0014
-#define TIMER1_RELOAD_OFF       0x0018
-#define TIMER1_VAL_OFF          0x001c
-
-#define TIMER_DIVIDER_SHIFT     5
+#define TIMER_CTRL_OFF		0x0000
+#define  TIMER0_EN		BIT(0)
+#define  TIMER0_RELOAD_EN	BIT(1)
+#define  TIMER0_25MHZ		BIT(11)
+#define  TIMER0_DIV(div)	((div) << 19)
+#define  TIMER0_DIV_MASK	TIMER0_DIV(0x7)
+#define  TIMER1_EN		BIT(2)
+#define  TIMER1_RELOAD_EN	BIT(3)
+#define  TIMER1_25MHZ		BIT(12)
+#define  TIMER1_DIV(div)	((div) << 22)
+#define  TIMER1_DIV_MASK	TIMER1_DIV(0x7)
+#define TIMER_EVENTS_STATUS	0x0004
+#define  TIMER0_CLR_MASK	(~BIT(0))
+#define  TIMER1_CLR_MASK	(~BIT(9))
+#define TIMER0_RELOAD_OFF	0x0010
+#define TIMER0_VAL_OFF		0x0014
+#define TIMER1_RELOAD_OFF	0x0018
+#define TIMER1_VAL_OFF		0x001c
+
+#define TIMER_DIVIDER_SHIFT	5
+#define TIMER_DIVIDER		BIT(TIMER_DIVIDER_SHIFT)
 
 static __iomem void *timer_base;
 
@@ -53,24 +56,35 @@ static struct clocksource cs = {
 
 static int mvebu_timer_probe(struct device_d *dev)
 {
-	struct clk *tclk;
-	u32 val;
+	struct clk *clk;
+	u32 rate, div, val;
 
 	timer_base = dev_request_mem_region(dev, 0);
-	tclk = clk_get(dev, NULL);
 
 	val = __raw_readl(timer_base + TIMER_CTRL_OFF);
-	val &= ~TIMER0_25MHZ;
+	val &= ~(TIMER0_25MHZ | TIMER0_DIV_MASK);
+	if (of_device_is_compatible(dev->device_node,
+				    "marvell,armada-370-timer")) {
+		clk = clk_get(dev, NULL);
+		div = TIMER_DIVIDER;
+		val |= TIMER0_DIV(TIMER_DIVIDER_SHIFT);
+		rate = clk_get_rate(clk) / TIMER_DIVIDER;
+	} else {
+		clk = clk_get(dev, "fixed");
+		div = 1;
+		val |= TIMER0_25MHZ;
+		rate = clk_get_rate(clk);
+	}
 	__raw_writel(val, timer_base + TIMER_CTRL_OFF);
 
 	__raw_writel(0xffffffff, timer_base + TIMER0_VAL_OFF);
 	__raw_writel(0xffffffff, timer_base + TIMER0_RELOAD_OFF);
 
 	val = __raw_readl(timer_base + TIMER_CTRL_OFF);
-	val |= TIMER0_EN | TIMER0_RELOAD_EN | TIMER0_DIV(TIMER_DIVIDER_SHIFT);
+	val |= TIMER0_EN | TIMER0_RELOAD_EN;
 	__raw_writel(val, timer_base + TIMER_CTRL_OFF);
 
-	cs.mult = clocksource_hz2mult(clk_get_rate(tclk), cs.shift);
+	cs.mult = clocksource_hz2mult(rate, cs.shift);
 
 	init_clock(&cs);
 
@@ -78,7 +92,8 @@ static int mvebu_timer_probe(struct device_d *dev)
 }
 
 static struct of_device_id mvebu_timer_dt_ids[] = {
-	{ .compatible = "marvell,armada-370-xp-timer", },
+	{ .compatible = "marvell,armada-370-timer", },
+	{ .compatible = "marvell,armada-xp-timer", },
 	{ }
 };
 
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
