Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z6xPb-0005Yv-Jg
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 08:49:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 10:48:40 +0200
Message-Id: <1434962920-5868-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] serial: ns16550: Fix reading clock-frequency property
To: Barebox List <barebox@lists.infradead.org>

The clock-frequency property is never read because the driver
bails out earlier when it is unable to clk_get the clk. Move
the clock-frequency read out to the dt setup code which is
executed before the driver bails out due to the missing clk.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 4d636c1..c186ad4 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -291,6 +291,7 @@ static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
 		return;
 
+	of_property_read_u32(np, "clock-frequency", &priv->plat.clock);
 	of_property_read_u32(np, "reg-shift", &priv->plat.shift);
 }
 
@@ -417,7 +418,7 @@ static int ns16550_probe(struct device_d *dev)
 	else
 		ns16550_probe_dt(dev, priv);
 
-	if (!plat || !plat->clock) {
+	if (!priv->plat.clock) {
 		priv->clk = clk_get(dev, NULL);
 		if (IS_ERR(priv->clk)) {
 			ret = PTR_ERR(priv->clk);
@@ -427,12 +428,6 @@ static int ns16550_probe(struct device_d *dev)
 		priv->plat.clock = clk_get_rate(priv->clk);
 	}
 
-	if (priv->plat.clock == 0 && IS_ENABLED(CONFIG_OFDEVICE)) {
-		struct device_node *np = dev->device_node;
-
-		of_property_read_u32(np, "clock-frequency", &priv->plat.clock);
-	}
-
 	if (priv->plat.clock == 0) {
 		dev_err(dev, "no valid clockrate\n");
 		ret = -EINVAL;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
