Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj8-0000sW-Mj
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:08 +0200
Message-Id: <1287492930-15716-21-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/42] i.MX serial: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_imx.c |   89 ++++++++++++++++++++++--------------------
 1 files changed, 47 insertions(+), 42 deletions(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 25e6a0c..a7562f9 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -171,13 +171,14 @@ struct imx_serial_priv {
 	struct console_device cdev;
 	int baudrate;
 	struct notifier_block notify;
+	void __iomem *regs;
 };
 
-static int imx_serial_reffreq(ulong base)
+static int imx_serial_reffreq(void __iomem *regs)
 {
 	ulong rfdiv;
 
-	rfdiv = (readl(base + UFCR) >> 7) & 7;
+	rfdiv = (readl(regs + UFCR) >> 7) & 7;
 	rfdiv = rfdiv < 6 ? 6 - rfdiv : 7;
 
 	return imx_get_uartclk() / rfdiv;
@@ -190,108 +191,111 @@ static int imx_serial_reffreq(ulong base)
  */
 static int imx_serial_init_port(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
-	ulong base = dev->map_base;
+	struct imx_serial_priv *priv = container_of(cdev,
+					struct imx_serial_priv, cdev);
+	void __iomem *regs = priv->regs;
 	uint32_t val;
 
-	writel(UCR1_VAL, base + UCR1);
-	writel(UCR2_WS | UCR2_IRTS, base + UCR2);
-	writel(UCR3_VAL, base + UCR3);
-	writel(UCR4_VAL, base + UCR4);
-	writel(0x0000002B, base + UESC);
-	writel(0, base + UTIM);
-	writel(0, base + UBIR);
-	writel(0, base + UBMR);
-	writel(0, base + UTS);
+	writel(UCR1_VAL, regs + UCR1);
+	writel(UCR2_WS | UCR2_IRTS, regs + UCR2);
+	writel(UCR3_VAL, regs + UCR3);
+	writel(UCR4_VAL, regs + UCR4);
+	writel(0x0000002B, regs + UESC);
+	writel(0, regs + UTIM);
+	writel(0, regs + UBIR);
+	writel(0, regs + UBMR);
+	writel(0, regs + UTS);
 
 
 	/* Configure FIFOs */
-	writel(0xa81, base + UFCR);
+	writel(0xa81, regs + UFCR);
 
 #ifdef ONEMS
-	writel(imx_serial_reffreq(base) / 1000, base + ONEMS);
+	writel(imx_serial_reffreq(regs) / 1000, regs + ONEMS);
 #endif
 
 	/* Enable FIFOs */
-	val = readl(base + UCR2);
+	val = readl(regs + UCR2);
 	val |= UCR2_SRST | UCR2_RXEN | UCR2_TXEN;
-	writel(val, base + UCR2);
+	writel(val, regs + UCR2);
 
   	/* Clear status flags */
-	val = readl(base + USR2);
+	val = readl(regs + USR2);
 	val |= USR2_ADET | USR2_DTRF | USR2_IDLE | USR2_IRINT | USR2_WAKE |
 	       USR2_RTSF | USR2_BRCD | USR2_ORE | USR2_RDR;
-	writel(val, base + USR2);
+	writel(val, regs + USR2);
 
   	/* Clear status flags */
-	val = readl(base + USR2);
+	val = readl(regs + USR2);
 	val |= USR1_PARITYERR | USR1_RTSD | USR1_ESCF | USR1_FRAMERR | USR1_AIRINT |
 	       USR1_AWAKE;
-	writel(val, base + USR2);
+	writel(val, regs + USR2);
 
 	return 0;
 }
 
 static void imx_serial_putc(struct console_device *cdev, char c)
 {
-	struct device_d *dev = cdev->dev;
+	struct imx_serial_priv *priv = container_of(cdev,
+					struct imx_serial_priv, cdev);
 
 	/* Wait for Tx FIFO not full */
-	while (readl(dev->map_base + UTS) & UTS_TXFULL);
+	while (readl(priv->regs + UTS) & UTS_TXFULL);
 
-        writel(c, dev->map_base + URTX0);
+        writel(c, priv->regs + URTX0);
 }
 
 static int imx_serial_tstc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct imx_serial_priv *priv = container_of(cdev,
+					struct imx_serial_priv, cdev);
 
 	/* If receive fifo is empty, return false */
-	if (readl(dev->map_base + UTS) & UTS_RXEMPTY)
+	if (readl(priv->regs + UTS) & UTS_RXEMPTY)
 		return 0;
 	return 1;
 }
 
 static int imx_serial_getc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct imx_serial_priv *priv = container_of(cdev,
+					struct imx_serial_priv, cdev);
 	unsigned char ch;
 
-	while (readl(dev->map_base + UTS) & UTS_RXEMPTY);
+	while (readl(priv->regs + UTS) & UTS_RXEMPTY);
 
-	ch = readl(dev->map_base + URXD0);
+	ch = readl(priv->regs + URXD0);
 
 	return ch;
 }
 
 static void imx_serial_flush(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct imx_serial_priv *priv = container_of(cdev,
+					struct imx_serial_priv, cdev);
 
-	while (!(readl(dev->map_base + USR2) & USR2_TXDC));
+	while (!(readl(priv->regs + USR2) & USR2_TXDC));
 }
 
 static int imx_serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
-	struct device_d *dev = cdev->dev;
 	struct imx_serial_priv *priv = container_of(cdev,
 					struct imx_serial_priv, cdev);
+	void __iomem *regs = priv->regs;
 	uint32_t val;
-
-	ulong base = dev->map_base;
-	ulong ucr1 = readl(base + UCR1);
+	uint32_t ucr1 = readl(regs + UCR1);
 
 	/* disable UART */
-	val = readl(base + UCR1);
+	val = readl(regs + UCR1);
 	val &= ~UCR1_UARTEN;
-	writel(val, base + UCR1);
+	writel(val, regs + UCR1);
 
 	/* Set the numerator value minus one of the BRM ratio */
-	writel((baudrate / 100) - 1, base + UBIR);
+	writel((baudrate / 100) - 1, regs + UBIR);
 	/* Set the denominator value minus one of the BRM ratio    */
-	writel((imx_serial_reffreq(base) / 1600) - 1, base + UBMR);
+	writel((imx_serial_reffreq(regs) / 1600) - 1, regs + UBMR);
 
-	writel(ucr1, base + UCR1);
+	writel(ucr1, regs + UCR1);
 
 	priv->baudrate = baudrate;
 
@@ -318,6 +322,7 @@ static int imx_serial_probe(struct device_d *dev)
 	priv = malloc(sizeof(*priv));
 	cdev = &priv->cdev;
 
+	priv->regs = (void __force __iomem *)dev->map_base;
 	dev->type_data = cdev;
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
@@ -331,9 +336,9 @@ static int imx_serial_probe(struct device_d *dev)
 	imx_serial_setbaudrate(cdev, 115200);
 
 	/* Enable UART */
-	val = readl(cdev->dev->map_base + UCR1);
+	val = readl(priv->regs + UCR1);
 	val |= UCR1_UARTEN;
-	writel(val, cdev->dev->map_base + UCR1);
+	writel(val, priv->regs + UCR1);
 
 	console_register(cdev);
 	priv->notify.notifier_call = imx_clocksource_clock_change;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
