Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RERoX-0002Gy-6J
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 20:23:38 +0000
Received: by mail-bw0-f49.google.com with SMTP id c12so2477964bkb.36
	for <barebox@lists.infradead.org>; Thu, 13 Oct 2011 13:23:36 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 13 Oct 2011 22:23:14 +0200
Message-Id: <1318537394-8555-8-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
References: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 8/8] serial_s3c24x0: Fix sparse warnings.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

warnings:
drivers/serial/serial_s3c24x0.c:47:26: warning: incorrect type in initializer (different address spaces)
drivers/serial/serial_s3c24x0.c:47:26:    expected void [noderef] <asn:2>*base
drivers/serial/serial_s3c24x0.c:47:26:    got void *priv
drivers/serial/serial_s3c24x0.c:60:26: warning: incorrect type in initializer (different address spaces)
drivers/serial/serial_s3c24x0.c:60:26:    expected void [noderef] <asn:2>*base
drivers/serial/serial_s3c24x0.c:60:26:    got void *priv
drivers/serial/serial_s3c24x0.c:84:26: warning: incorrect type in initializer (different address spaces)
drivers/serial/serial_s3c24x0.c:84:26:    expected void [noderef] <asn:2>*base
drivers/serial/serial_s3c24x0.c:84:26:    got void *priv
drivers/serial/serial_s3c24x0.c:96:26: warning: incorrect type in initializer (different address spaces)
drivers/serial/serial_s3c24x0.c:96:26:    expected void [noderef] <asn:2>*base
drivers/serial/serial_s3c24x0.c:96:26:    got void *priv
drivers/serial/serial_s3c24x0.c:108:26: warning: incorrect type in initializer (different address spaces)
drivers/serial/serial_s3c24x0.c:108:26:    expected void [noderef] <asn:2>*base
drivers/serial/serial_s3c24x0.c:108:26:    got void *priv
drivers/serial/serial_s3c24x0.c:120:26: warning: incorrect type in initializer (different address spaces)
drivers/serial/serial_s3c24x0.c:120:26:    expected void [noderef] <asn:2>*base
drivers/serial/serial_s3c24x0.c:120:26:    got void *priv

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 drivers/serial/serial_s3c24x0.c |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/serial/serial_s3c24x0.c b/drivers/serial/serial_s3c24x0.c
index 3a703b6..2fb2bb4 100644
--- a/drivers/serial/serial_s3c24x0.c
+++ b/drivers/serial/serial_s3c24x0.c
@@ -44,7 +44,7 @@
 static int s3c24x0_serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
 	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
+	void __iomem *base = IOMEM(dev->priv);
 	unsigned val;
 
 	/* value is calculated so : PCLK / (16 * baudrate) -1 */
@@ -57,7 +57,7 @@ static int s3c24x0_serial_setbaudrate(struct console_device *cdev, int baudrate)
 static int s3c24x0_serial_init_port(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
+	void __iomem *base = IOMEM(dev->priv);
 
 	/* FIFO enable, Tx/Rx FIFO clear */
 	writeb(0x07, base + UFCON);
@@ -81,7 +81,7 @@ static int s3c24x0_serial_init_port(struct console_device *cdev)
 static void s3c24x0_serial_putc(struct console_device *cdev, char c)
 {
 	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
+	void __iomem *base = IOMEM(dev->priv);
 
 	/* Wait for Tx FIFO not full */
 	while (!(readb(base + UTRSTAT) & 0x2))
@@ -93,7 +93,7 @@ static void s3c24x0_serial_putc(struct console_device *cdev, char c)
 static int s3c24x0_serial_tstc(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
+	void __iomem *base = IOMEM(dev->priv);
 
 	/* If receive fifo is empty, return false */
 	if (readb(base + UTRSTAT) & 0x1)
@@ -105,7 +105,7 @@ static int s3c24x0_serial_tstc(struct console_device *cdev)
 static int s3c24x0_serial_getc(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
+	void __iomem *base = IOMEM(dev->priv);
 
 	/* wait for a character */
 	while (!(readb(base + UTRSTAT) & 0x1))
@@ -117,7 +117,7 @@ static int s3c24x0_serial_getc(struct console_device *cdev)
 static void s3c24x0_serial_flush(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
+	void __iomem *base = IOMEM(dev->priv);
 
 	while (!(readb(base + UTRSTAT) & 0x4))
 		;
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
