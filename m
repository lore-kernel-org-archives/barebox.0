Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmQqm-0004CU-GJ
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 13:42:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 15:41:55 +0200
Message-Id: <1311860524-28566-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/11] serial s3c: get rid of map_base
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_s3c24x0.c |   31 +++++++++++++++++++------------
 1 files changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/serial/serial_s3c24x0.c b/drivers/serial/serial_s3c24x0.c
index 0a17967..21bca12 100644
--- a/drivers/serial/serial_s3c24x0.c
+++ b/drivers/serial/serial_s3c24x0.c
@@ -44,11 +44,12 @@
 static int s3c24x0_serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
 	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
 	unsigned val;
 
 	/* value is calculated so : PCLK / (16 * baudrate) -1 */
 	val = s3c24xx_get_pclk() / (16 * baudrate) - 1;
-	writew(val, dev->map_base + UBRDIV);
+	writew(val, base + UBRDIV);
 
 	return 0;
 }
@@ -56,21 +57,22 @@ static int s3c24x0_serial_setbaudrate(struct console_device *cdev, int baudrate)
 static int s3c24x0_serial_init_port(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
 
 	/* FIFO enable, Tx/Rx FIFO clear */
-	writeb(0x07, dev->map_base + UFCON);
-	writeb(0x00, dev->map_base + UMCON);
+	writeb(0x07, base + UFCON);
+	writeb(0x00, base + UMCON);
 
 	/* Normal,No parity,1 stop,8 bit */
-	writeb(0x03, dev->map_base + ULCON);
+	writeb(0x03, base + ULCON);
 	/*
 	 * tx=level,rx=edge,disable timeout int.,enable rx error int.,
 	 * normal,interrupt or polling
 	 */
-	writew(0x0245, dev->map_base + UCON);
+	writew(0x0245, base + UCON);
 
 #ifdef CONFIG_DRIVER_SERIAL_S3C24X0_AUTOSYNC
-	writeb(0x01, dev->map_base + UMCON); /* RTS up */
+	writeb(0x01, base + UMCON); /* RTS up */
 #endif
 
 	return 0;
@@ -79,20 +81,22 @@ static int s3c24x0_serial_init_port(struct console_device *cdev)
 static void s3c24x0_serial_putc(struct console_device *cdev, char c)
 {
 	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
 
 	/* Wait for Tx FIFO not full */
-	while (!(readb(dev->map_base + UTRSTAT) & 0x2))
+	while (!(readb(base + UTRSTAT) & 0x2))
 		;
 
-	writeb(c, dev->map_base + UTXH);
+	writeb(c, base + UTXH);
 }
 
 static int s3c24x0_serial_tstc(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
 
 	/* If receive fifo is empty, return false */
-	if (readb(dev->map_base + UTRSTAT) & 0x1)
+	if (readb(base + UTRSTAT) & 0x1)
 		return 1;
 
 	return 0;
@@ -101,19 +105,21 @@ static int s3c24x0_serial_tstc(struct console_device *cdev)
 static int s3c24x0_serial_getc(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
 
 	/* wait for a character */
-	while (!(readb(dev->map_base + UTRSTAT) & 0x1))
+	while (!(readb(base + UTRSTAT) & 0x1))
 		;
 
-	return readb(dev->map_base + URXH);
+	return readb(base + URXH);
 }
 
 static void s3c24x0_serial_flush(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
 
-	while (!(readb(dev->map_base + UTRSTAT) & 0x4))
+	while (!(readb(base + UTRSTAT) & 0x4))
 		;
 }
 
@@ -123,6 +129,7 @@ static int s3c24x0_serial_probe(struct device_d *dev)
 
 	cdev = xmalloc(sizeof(struct console_device));
 	dev->type_data = cdev;
+	dev->priv = dev_request_mem_region(dev, 0);
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = s3c24x0_serial_tstc;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
