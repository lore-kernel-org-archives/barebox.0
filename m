Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x231.google.com ([2a00:1450:4013:c00::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsdND-0003gu-E1
 for barebox@lists.infradead.org; Fri, 28 Jun 2013 18:26:20 +0000
Received: by mail-ee0-f49.google.com with SMTP id b57so1175825eek.36
 for <barebox@lists.infradead.org>; Fri, 28 Jun 2013 11:25:56 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 28 Jun 2013 20:25:44 +0200
Message-Id: <1372443947-12599-4-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 3/6] clocksource: mvebu: add DT support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds device tree support to mvebu timer and also converts clk_get
to clk_lookup to find TCLK without device name reference.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 drivers/clocksource/mvebu.c |    9 +++++++--
 1 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
index 8bedd99..93b0b61 100644
--- a/drivers/clocksource/mvebu.c
+++ b/drivers/clocksource/mvebu.c
@@ -57,8 +57,7 @@ static int mvebu_timer_probe(struct device_d *dev)
 	u32 val;
 
 	timer_base = dev_request_mem_region(dev, 0);
-
-	tclk = clk_get(dev, "tclk");
+	tclk = clk_lookup("tclk");
 
 	val = __raw_readl(timer_base + TIMER_CTRL_OFF);
 	val &= ~TIMER0_25MHZ;
@@ -78,9 +77,15 @@ static int mvebu_timer_probe(struct device_d *dev)
 	return 0;
 }
 
+static struct of_device_id mvebu_timer_dt_ids[] = {
+	{ .compatible = "marvell,armada-370-xp-timer", },
+	{ }
+};
+
 static struct driver_d mvebu_timer_driver = {
 	.name = "mvebu-timer",
 	.probe = mvebu_timer_probe,
+	.of_compatible = DRV_OF_COMPAT(mvebu_timer_dt_ids),
 };
 
 static int mvebu_timer_init(void)
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
