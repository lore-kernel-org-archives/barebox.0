Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QogLh-0005mS-5L
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 18:39:22 +0000
Received: by fxd20 with SMTP id 20so1521074fxd.36
	for <barebox@lists.infradead.org>; Wed, 03 Aug 2011 11:39:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  3 Aug 2011 22:37:46 +0400
Message-Id: <1312396666-23348-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1312396666-23348-1-git-send-email-antonynpavlov@gmail.com>
References: <1312396666-23348-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] serial_ns16550: use 'struct device_d *' instead of
	'struct console_device *'
To: barebox@lists.infradead.org

ns16550_read() and ns16550_write() functions are private functions
of the driver so there is no need to pass them 'struct console_device *'
pointer to get private device data.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c |   56 +++++++++++++++++++++-----------------
 1 files changed, 31 insertions(+), 25 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index ec93750..4cbab5e 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -73,9 +73,8 @@ NS16550_READ_WRITE_UART_FUNC(32bit, readl, writel, )
  *
  * @return value
  */
-static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
+static uint32_t ns16550_read(struct device_d *dev, uint32_t off)
 {
-	struct device_d *dev = cdev->dev;
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
 
 	off <<= plat->shift;
@@ -90,10 +89,9 @@ static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
  * @param[in] offset
  * @param[in] val
  */
-static void ns16550_write(struct console_device *cdev, uint32_t val,
+static void ns16550_write(struct device_d *dev, uint32_t val,
 			  uint32_t off)
 {
-	struct device_d *dev = cdev->dev;
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
 
 	off <<= plat->shift;
@@ -128,23 +126,24 @@ static unsigned int ns16550_calc_divisor(struct console_device *cdev,
 static void ns16550_serial_init_port(struct console_device *cdev)
 {
 	unsigned int baud_divisor;
+	struct device_d *dev = cdev->dev;
 
 	/* Setup the serial port with the defaults first */
 	baud_divisor = ns16550_calc_divisor(cdev, CONFIG_BAUDRATE);
 
 	/* initializing the device for the first time */
-	ns16550_write(cdev, 0x00, ier);
+	ns16550_write(dev, 0x00, ier);
 #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
-	ns16550_write(cdev, 0x07, mdr1);	/* Disable */
+	ns16550_write(dev, 0x07, mdr1);	/* Disable */
 #endif
-	ns16550_write(cdev, LCR_BKSE | LCRVAL, lcr);
-	ns16550_write(cdev, baud_divisor & 0xFF, dll);
-	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
-	ns16550_write(cdev, LCRVAL, lcr);
-	ns16550_write(cdev, MCRVAL, mcr);
-	ns16550_write(cdev, FCRVAL, fcr);
+	ns16550_write(dev, LCR_BKSE | LCRVAL, lcr);
+	ns16550_write(dev, baud_divisor & 0xFF, dll);
+	ns16550_write(dev, (baud_divisor >> 8) & 0xff, dlm);
+	ns16550_write(dev, LCRVAL, lcr);
+	ns16550_write(dev, MCRVAL, mcr);
+	ns16550_write(dev, FCRVAL, fcr);
 #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
-	ns16550_write(cdev, 0x00,  mdr1);
+	ns16550_write(dev, 0x00,  mdr1);
 #endif
 }
 
@@ -158,9 +157,11 @@ static void ns16550_serial_init_port(struct console_device *cdev)
  */
 static void ns16550_putc(struct console_device *cdev, char c)
 {
+	struct device_d *dev = cdev->dev;
+
 	/* Loop Doing Nothing */
-	while ((ns16550_read(cdev, lsr) & LSR_THRE) == 0) ;
-	ns16550_write(cdev, c, thr);
+	while ((ns16550_read(dev, lsr) & LSR_THRE) == 0) ;
+	ns16550_write(dev, c, thr);
 }
 
 /**
@@ -172,9 +173,11 @@ static void ns16550_putc(struct console_device *cdev, char c)
  */
 static int ns16550_getc(struct console_device *cdev)
 {
+	struct device_d *dev = cdev->dev;
+
 	/* Loop Doing Nothing */
-	while ((ns16550_read(cdev, lsr) & LSR_DR) == 0) ;
-	return ns16550_read(cdev, rbr);
+	while ((ns16550_read(dev, lsr) & LSR_DR) == 0) ;
+	return ns16550_read(dev, rbr);
 }
 
 /**
@@ -186,7 +189,9 @@ static int ns16550_getc(struct console_device *cdev)
  */
 static int ns16550_tstc(struct console_device *cdev)
 {
-	return ((ns16550_read(cdev, lsr) & LSR_DR) != 0);
+	struct device_d *dev = cdev->dev;
+
+	return ((ns16550_read(dev, lsr) & LSR_DR) != 0);
 }
 
 /**
@@ -200,14 +205,15 @@ static int ns16550_tstc(struct console_device *cdev)
 static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
 {
 	unsigned int baud_divisor = ns16550_calc_divisor(cdev, baud_rate);
+	struct device_d *dev = cdev->dev;
 
-	ns16550_write(cdev, 0x00, ier);
-	ns16550_write(cdev, LCR_BKSE, lcr);
-	ns16550_write(cdev, baud_divisor & 0xff, dll);
-	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
-	ns16550_write(cdev, LCRVAL, lcr);
-	ns16550_write(cdev, MCRVAL, mcr);
-	ns16550_write(cdev, FCRVAL, fcr);
+	ns16550_write(dev, 0x00, ier);
+	ns16550_write(dev, LCR_BKSE, lcr);
+	ns16550_write(dev, baud_divisor & 0xff, dll);
+	ns16550_write(dev, (baud_divisor >> 8) & 0xff, dlm);
+	ns16550_write(dev, LCRVAL, lcr);
+	ns16550_write(dev, MCRVAL, mcr);
+	ns16550_write(dev, FCRVAL, fcr);
 	return 0;
 }
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
