Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gX5EE-00042x-L0
 for barebox@lists.infradead.org; Wed, 12 Dec 2018 14:11:13 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 12 Dec 2018 15:10:50 +0100
Message-Id: <20181212141054.7513-3-r.czerwinski@pengutronix.de>
In-Reply-To: <20181212141054.7513-1-r.czerwinski@pengutronix.de>
References: <20181212141054.7513-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 2/6] serial_ns16550: handle default reg-io-width
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

According to the device tree bindings for 8250, width is an optional property.
Default to 1 which is the same default value as used by the kernel.
Before this change the driver would not work for device trees which do not
include the optional binding.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 46 ++++++++++++++++++++---------------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 4d73ea8b8..8ddcfdbef 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -297,36 +297,36 @@ static int ns16550_tstc(struct console_device *cdev)
 static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
 {
 	struct device_node *np = dev->device_node;
-	u32 width;
+	u32 width = 1;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
 		return;
 
 	of_property_read_u32(np, "clock-frequency", &priv->plat.clock);
 	of_property_read_u32(np, "reg-shift", &priv->plat.shift);
-	if (!of_property_read_u32(np, "reg-io-width", &width))
-		switch (width) {
-		case 1:
-			priv->read_reg = ns16550_read_reg_mmio_8;
-			priv->write_reg = ns16550_write_reg_mmio_8;
-			break;
-		case 2:
-			priv->read_reg = ns16550_read_reg_mmio_16;
-			priv->write_reg = ns16550_write_reg_mmio_16;
-			break;
-		case 4:
-			if (of_device_is_big_endian(np)) {
-				priv->read_reg = ns16550_read_reg_mmio_32be;
-				priv->write_reg = ns16550_write_reg_mmio_32be;
-			} else {
-				priv->read_reg = ns16550_read_reg_mmio_32;
-				priv->write_reg = ns16550_write_reg_mmio_32;
-			}
-			break;
-		default:
-			dev_err(dev, "unsupported reg-io-width (%d)\n",
-				width);
+	of_property_read_u32(np, "reg-io-width", &width);
+	switch (width) {
+	case 1:
+		priv->read_reg = ns16550_read_reg_mmio_8;
+		priv->write_reg = ns16550_write_reg_mmio_8;
+		break;
+	case 2:
+		priv->read_reg = ns16550_read_reg_mmio_16;
+		priv->write_reg = ns16550_write_reg_mmio_16;
+		break;
+	case 4:
+		if (of_device_is_big_endian(np)) {
+			priv->read_reg = ns16550_read_reg_mmio_32be;
+			priv->write_reg = ns16550_write_reg_mmio_32be;
+		} else {
+			priv->read_reg = ns16550_read_reg_mmio_32;
+			priv->write_reg = ns16550_write_reg_mmio_32;
 		}
+		break;
+	default:
+		dev_err(dev, "unsupported reg-io-width (%d)\n",
+			width);
+	}
 }
 
 static struct ns16550_drvdata ns16450_drvdata = {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
