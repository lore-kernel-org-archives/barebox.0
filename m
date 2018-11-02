Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gITqv-0004zX-BO
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 07:26:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  2 Nov 2018 08:26:32 +0100
Message-Id: <20181102072632.10654-4-s.hauer@pengutronix.de>
In-Reply-To: <20181102072632.10654-1-s.hauer@pengutronix.de>
References: <20181102072632.10654-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] net: macb: add remove callback
To: Barebox List <barebox@lists.infradead.org>

The macb driver does DMA and thus should be quiesced on shutdown. Add
the remove callback.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/macb.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index fe192f9bf4..b2957b7d29 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -719,6 +719,13 @@ static int macb_probe(struct device_d *dev)
 	return 0;
 }
 
+static void macb_remove(struct device_d *dev)
+{
+	struct macb_device *macb = dev->priv;
+
+	macb_halt(&macb->netdev);
+}
+
 static const struct of_device_id macb_dt_ids[] = {
 	{ .compatible = "cdns,at91sam9260-macb",},
 	{ /* sentinel */ }
@@ -727,6 +734,7 @@ static const struct of_device_id macb_dt_ids[] = {
 static struct driver_d macb_driver = {
 	.name  = "macb",
 	.probe = macb_probe,
+	.remove = macb_remove,
 	.of_compatible = DRV_OF_COMPAT(macb_dt_ids),
 };
 device_platform_driver(macb_driver);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
