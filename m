Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1WH0-0008GF-BJ
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 06:40:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jul 2013 08:40:10 +0200
Message-Id: <1374561610-686-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374561610-686-1-git-send-email-s.hauer@pengutronix.de>
References: <1374561610-686-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] serial: ns16550: Add devicetree probe support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 25 ++++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index b010785..ad3125a 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -231,6 +231,16 @@ static int ns16550_tstc(struct console_device *cdev)
 	return ((ns16550_read(cdev, lsr) & LSR_DR) != 0);
 }
 
+static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
+{
+	struct device_node *np = dev->device_node;
+
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return;
+
+	of_property_read_u32(np, "reg-shift", &priv->plat.shift);
+}
+
 /**
  * @brief Probe entry point -called on the first match for device
  *
@@ -251,8 +261,12 @@ static int ns16550_probe(struct device_d *dev)
 
 	priv = xzalloc(sizeof(*priv));
 
+	if (plat)
+		priv->plat = *plat;
+	else
+		ns16550_probe_dt(dev, priv);
+
 	cdev = &priv->cdev;
-	priv->plat = *plat;
 
 	if (!plat || !plat->clock) {
 		priv->clk = clk_get(dev, NULL);
@@ -288,11 +302,20 @@ err:
 	return ret;
 }
 
+static struct of_device_id ns16550_serial_dt_ids[] = {
+	{
+		.compatible = "ns16550a",
+	}, {
+		/* sentinel */
+	},
+};
+
 /**
  * @brief Driver registration structure
  */
 static struct driver_d ns16550_serial_driver = {
 	.name = "ns16550_serial",
 	.probe = ns16550_probe,
+	.of_compatible = DRV_OF_COMPAT(ns16550_serial_dt_ids),
 };
 console_platform_driver(ns16550_serial_driver);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
