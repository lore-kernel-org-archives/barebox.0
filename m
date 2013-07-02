Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x231.google.com ([2a00:1450:4008:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu5MI-000636-32
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:31:26 +0000
Received: by mail-bk0-f49.google.com with SMTP id mz10so2499016bkb.22
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:30:59 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:30:42 +0200
Message-Id: <1372789849-12194-4-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 03/10] clocksource: orion: add DT support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds device tree support to orion timer and also converts clk_get
to clk_lookup to find TCLK without device name reference.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- do not use clk_lookup (Suggested by Sascha Hauer)

Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 drivers/clocksource/orion.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
index 8817dfe..46932f1 100644
--- a/drivers/clocksource/orion.c
+++ b/drivers/clocksource/orion.c
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
