Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x234.google.com ([2a00:1450:4013:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsdNC-0003gt-Fb
 for barebox@lists.infradead.org; Fri, 28 Jun 2013 18:26:19 +0000
Received: by mail-ea0-f180.google.com with SMTP id k10so1206069eaj.39
 for <barebox@lists.infradead.org>; Fri, 28 Jun 2013 11:25:56 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 28 Jun 2013 20:25:43 +0200
Message-Id: <1372443947-12599-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/6] clocksource: orion: add DT support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds device tree support to orion timer and also converts clk_get
to clk_lookup to find TCLK without device name reference.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 drivers/clocksource/orion.c |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
index e3db845..ed71fa4 100644
--- a/drivers/clocksource/orion.c
+++ b/drivers/clocksource/orion.c
@@ -49,7 +49,7 @@ static int orion_timer_probe(struct device_d *dev)
 	uint32_t val;
 
 	timer_base = dev_request_mem_region(dev, 0);
-	tclk = clk_get(dev, "tclk");
+	tclk = clk_lookup("tclk");
 
 	/* setup TIMER0 as free-running clock source */
 	__raw_writel(~0, timer_base + TIMER0_VAL);
@@ -64,9 +64,15 @@ static int orion_timer_probe(struct device_d *dev)
 	return 0;
 }
 
+static struct of_device_id orion_timer_dt_ids[] = {
+	{ .compatible = "marvell,orion-timer", },
+	{ }
+};
+
 static struct driver_d orion_timer_driver = {
 	.name = "orion-timer",
 	.probe = orion_timer_probe,
+	.of_compatible = DRV_OF_COMPAT(orion_timer_dt_ids),
 };
 
 static int orion_timer_init(void)
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
