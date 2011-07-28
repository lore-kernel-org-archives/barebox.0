Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmQqm-0004CW-JW
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 13:42:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 15:41:57 +0200
Message-Id: <1311860524-28566-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311860524-28566-1-git-send-email-s.hauer@pengutronix.de>
References: <1311860524-28566-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/11] serial stm: get rid of map_base
To: barebox@lists.infradead.org

While at it, dynamically allocate private driver struct.
There might be only a single instance of this driver,
but don't be a bad example for others.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/stm-serial.c |   94 ++++++++++++++++++++++---------------------
 1 files changed, 48 insertions(+), 46 deletions(-)

diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index a225e30..4264345 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -52,123 +52,125 @@
 # define RXE (1 << 9)
 #define UARTDBGIMSC 0x38
 
-struct stm_serial_local {
+struct stm_priv {
 	struct console_device cdev;
 	int baudrate;
 	struct notifier_block notify;
+	void __iomem *base;
 };
 
 static void stm_serial_putc(struct console_device *cdev, char c)
 {
-	struct device_d *dev = cdev->dev;
+	struct stm_priv *priv = container_of(cdev, struct stm_priv, cdev);
 
 	/* Wait for room in TX FIFO */
-	while (readl(dev->map_base + UARTDBGFR) & TXFF)
+	while (readl(priv->base + UARTDBGFR) & TXFF)
 		;
 
-	writel(c, dev->map_base + UARTDBGDR);
+	writel(c, priv->base + UARTDBGDR);
 }
 
 static int stm_serial_tstc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct stm_priv *priv = container_of(cdev, struct stm_priv, cdev);
 
 	/* Check if RX FIFO is not empty */
-	return !(readl(dev->map_base + UARTDBGFR) & RXFE);
+	return !(readl(priv->base + UARTDBGFR) & RXFE);
 }
 
 static int stm_serial_getc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct stm_priv *priv = container_of(cdev, struct stm_priv, cdev);
 
 	/* Wait while TX FIFO is empty */
-	while (readl(dev->map_base + UARTDBGFR) & RXFE)
+	while (readl(priv->base + UARTDBGFR) & RXFE)
 		;
 
-	return readl(dev->map_base + UARTDBGDR) & 0xff;
+	return readl(priv->base + UARTDBGDR) & 0xff;
 }
 
 static void stm_serial_flush(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct stm_priv *priv = container_of(cdev, struct stm_priv, cdev);
 
 	/* Wait for TX FIFO empty */
-	while (readl(dev->map_base + UARTDBGFR) & TXFF)
+	while (readl(priv->base + UARTDBGFR) & TXFF)
 		;
 }
 
 static int stm_serial_setbaudrate(struct console_device *cdev, int new_baudrate)
 {
-	struct device_d *dev = cdev->dev;
-	struct stm_serial_local *local = container_of(cdev, struct stm_serial_local, cdev);
+	struct stm_priv *priv = container_of(cdev, struct stm_priv, cdev);
 	uint32_t cr, lcr_h, quot;
 
 	/* Disable everything */
-	cr = readl(dev->map_base + UARTDBGCR);
-	writel(0, dev->map_base + UARTDBGCR);
+	cr = readl(priv->base + UARTDBGCR);
+	writel(0, priv->base + UARTDBGCR);
 
 	/* Calculate and set baudrate */
 	quot = (imx_get_xclk() * 4) / new_baudrate;
-	writel(quot & 0x3f, dev->map_base + UARTDBGFBRD);
-	writel(quot >> 6, dev->map_base + UARTDBGIBRD);
+	writel(quot & 0x3f, priv->base + UARTDBGFBRD);
+	writel(quot >> 6, priv->base + UARTDBGIBRD);
 
 	/* Set 8n1 mode, enable FIFOs */
 	lcr_h = WLEN8 | FEN;
-	writel(lcr_h, dev->map_base + UARTDBGLCR_H);
+	writel(lcr_h, priv->base + UARTDBGLCR_H);
 
 	/* Re-enable debug UART */
-	writel(cr, dev->map_base + UARTDBGCR);
+	writel(cr, priv->base + UARTDBGCR);
 
-	local->baudrate = new_baudrate;
+	priv->baudrate = new_baudrate;
 
 	return 0;
 }
 
 static int stm_clocksource_clock_change(struct notifier_block *nb, unsigned long event, void *data)
 {
-	struct stm_serial_local *local = container_of(nb, struct stm_serial_local, notify);
+	struct stm_priv *priv = container_of(nb, struct stm_priv, notify);
 
-	return stm_serial_setbaudrate(&local->cdev, local->baudrate);
+	return stm_serial_setbaudrate(&priv->cdev, priv->baudrate);
 }
 
-static int stm_serial_init_port(struct console_device *cdev)
+static int stm_serial_init_port(struct stm_priv *priv)
 {
-	struct device_d *dev = cdev->dev;
-
 	/* Disable UART */
-	writel(0, dev->map_base + UARTDBGCR);
+	writel(0, priv->base + UARTDBGCR);
 
 	/* Mask interrupts */
-	writel(0, dev->map_base + UARTDBGIMSC);
+	writel(0, priv->base + UARTDBGIMSC);
 
 	return 0;
 }
 
-static struct stm_serial_local stm_device = {
-	.cdev = {
-		.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
-		.tstc = stm_serial_tstc,
-		.putc = stm_serial_putc,
-		.getc = stm_serial_getc,
-		.flush = stm_serial_flush,
-		.setbrg = stm_serial_setbaudrate,
-	},
-};
-
 static int stm_serial_probe(struct device_d *dev)
 {
-	stm_device.cdev.dev = dev;
-	dev->type_data = &stm_device.cdev;
+	struct stm_priv *priv;
+	struct console_device *cdev;
+
+	priv = xzalloc(sizeof *priv);
+
+	cdev = &priv->cdev;
+
+	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	cdev->tstc = stm_serial_tstc;
+	cdev->putc = stm_serial_putc;
+	cdev->getc = stm_serial_getc;
+	cdev->flush = stm_serial_flush;
+	cdev->setbrg = stm_serial_setbaudrate;
+	cdev->dev = dev;
+
+	dev->type_data = cdev;
+	priv->base = dev_request_mem_region(dev, 0);
 
-	stm_serial_init_port(&stm_device.cdev);
-	stm_serial_setbaudrate(&stm_device.cdev, CONFIG_BAUDRATE);
+	stm_serial_init_port(priv);
+	stm_serial_setbaudrate(cdev, CONFIG_BAUDRATE);
 
 	/* Enable UART */
-	writel(TXE | RXE | UARTEN, dev->map_base + UARTDBGCR);
+	writel(TXE | RXE | UARTEN, priv->base + UARTDBGCR);
 
-	console_register(&stm_device.cdev);
-	stm_device.notify.notifier_call = stm_clocksource_clock_change;
-	clock_register_client(&stm_device.notify);
+	console_register(cdev);
+	priv->notify.notifier_call = stm_clocksource_clock_change;
+	clock_register_client(&priv->notify);
 
 	return 0;
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
