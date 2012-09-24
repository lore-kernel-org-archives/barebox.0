Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TC-0000ek-DK
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:46 +0200
Message-Id: <1348484692-24993-18-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 17/23] ARM i.MX: Switch clocksource to clk_get
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clocksource.c |   17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 2c6f6a0..df018e6 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -29,6 +29,8 @@
 #include <init.h>
 #include <clock.h>
 #include <errno.h>
+#include <linux/clk.h>
+#include <linux/err.h>
 #include <notifier.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
@@ -46,6 +48,8 @@
 #define IMX31_TCTL_CLKSOURCE_IPG	(1 << 6)	/* Clock source bit position */
 #define TCTL_TEN			(1 << 0)	/* Timer enable */
 
+static struct clk *clk_gpt;
+
 struct imx_gpt_regs {
 	unsigned int tcn;
 	uint32_t tctl_val;
@@ -77,7 +81,7 @@ static struct clocksource cs = {
 
 static int imx_clocksource_clock_change(struct notifier_block *nb, unsigned long event, void *data)
 {
-	cs.mult = clocksource_hz2mult(imx_get_gptclk(), cs.shift);
+	cs.mult = clocksource_hz2mult(clk_get_rate(clk_gpt), cs.shift);
 	return 0;
 }
 
@@ -89,6 +93,7 @@ static int imx_gpt_probe(struct device_d *dev)
 {
 	int i;
 	int ret;
+	unsigned long rate;
 
 	/* one timer is enough */
 	if (timer_base)
@@ -118,10 +123,18 @@ static int imx_gpt_probe(struct device_d *dev)
 	for (i = 0; i < 100; i++)
 		writel(0, timer_base + GPT_TCTL); /* We have no udelay by now */
 
+	clk_gpt = clk_get(dev, NULL);
+	if (IS_ERR(clk_gpt)) {
+		rate = 20000000;
+		dev_err(dev, "failed to get clock\n");
+	} else {
+		rate = clk_get_rate(clk_gpt);
+	}
+
 	writel(0, timer_base + GPT_TPRER);
 	writel(regs->tctl_val, timer_base + GPT_TCTL);
 
-	cs.mult = clocksource_hz2mult(imx_get_gptclk(), cs.shift);
+	cs.mult = clocksource_hz2mult(rate, cs.shift);
 
 	init_clock(&cs);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
