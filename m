Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZWq8-00050s-0k
 for barebox@lists.infradead.org; Wed, 19 Dec 2018 08:04:27 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 19 Dec 2018 11:04:01 +0300
Message-Id: <20181219080403.13737-8-shc_work@mail.ru>
In-Reply-To: <20181219080403.13737-1-shc_work@mail.ru>
References: <20181219080403.13737-1-shc_work@mail.ru>
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
Subject: [PATCH 08/10] clocksource: clps711x: Add devicetree support
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/clocksource/clps711x.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clocksource/clps711x.c b/drivers/clocksource/clps711x.c
index f6399e930..d9e0f795e 100644
--- a/drivers/clocksource/clps711x.c
+++ b/drivers/clocksource/clps711x.c
@@ -51,9 +51,15 @@ static int clps711x_cs_probe(struct device_d *dev)
 	return init_clock(&clps711x_cs);
 }
 
+static __maybe_unused struct of_device_id clps711x_timer_dt_ids[] = {
+	{ .compatible = "cirrus,ep7209-timer", },
+	{ }
+};
+
 static struct driver_d clps711x_cs_driver = {
 	.name = "clps711x-cs",
 	.probe = clps711x_cs_probe,
+	.of_compatible = DRV_OF_COMPAT(clps711x_timer_dt_ids),
 };
 
 static __init int clps711x_cs_init(void)
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
