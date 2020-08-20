Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8f23-0004PH-Tt
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 07:30:44 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 20 Aug 2020 09:30:39 +0200
Message-Id: <20200820073039.3042-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2] serial: imx: set CTS if DT property "linux,
 rs485-enabled-at-boot-time" is present
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

If we have a "linux,rs485-enabled-at-boot-time" DT property, we should
set CTS flag as soon as possible to the active state. This will set an
RS485 transmitter to receive-enable mode. Otherwise the RS485 bus will
be blocked for entire system boot time and other bus participants will
not be able to communicate.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/serial/serial_imx.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index c0265fc2d7..056fa14c2a 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -60,6 +60,7 @@ struct imx_serial_priv {
 	void __iomem *regs;
 	struct clk *clk;
 	struct imx_serial_devtype_data *devtype;
+	bool rs485_mode;
 };
 
 static int imx_serial_reffreq(struct imx_serial_priv *priv)
@@ -107,6 +108,9 @@ static int imx_serial_init_port(struct console_device *cdev)
 
 	/* Enable FIFOs */
 	val = readl(regs + UCR2);
+	/* set CTS to not block RS485 bus */
+	if (priv->rs485_mode)
+		val |= UCR2_CTS;
 	val |= UCR2_SRST | UCR2_RXEN | UCR2_TXEN;
 	writel(val, regs + UCR2);
 
@@ -252,6 +256,10 @@ static int imx_serial_probe(struct device_d *dev)
 	if (of_property_read_bool(dev->device_node, "fsl,dte-mode"))
 		priv->dte_mode = 1;
 
+	if (of_property_read_bool(dev->device_node, "linux,rs485-enabled-at-boot-time") &&
+	    !of_property_read_bool(dev->device_node, "rs485-rts-active-low"))
+		priv->rs485_mode = 1;
+
 	imx_serial_init_port(cdev);
 
 	/* Enable UART */
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
