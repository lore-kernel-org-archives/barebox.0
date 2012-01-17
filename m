Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rn6Rf-0006SA-76
 for barebox@lists.infradead.org; Tue, 17 Jan 2012 10:39:15 +0000
Received: by bkty8 with SMTP id y8so7402528bkt.36
 for <barebox@lists.infradead.org>; Tue, 17 Jan 2012 02:39:12 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 17 Jan 2012 14:39:06 +0400
Message-Id: <1326796746-8652-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC] ns16550: support for UART with broken FIFO
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c |   19 +++++++++++++++++--
 include/ns16550.h               |    2 ++
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 1217a5f..01de964 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -139,6 +139,8 @@ static unsigned int ns16550_calc_divisor(struct console_device *cdev,
 static void ns16550_serial_init_port(struct console_device *cdev)
 {
 	unsigned int baud_divisor;
+	struct NS16550_plat *plat = (struct NS16550_plat *)
+	    cdev->dev->platform_data;
 
 	/* Setup the serial port with the defaults first */
 	baud_divisor = ns16550_calc_divisor(cdev, CONFIG_BAUDRATE);
@@ -153,7 +155,13 @@ static void ns16550_serial_init_port(struct console_device *cdev)
 	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
 	ns16550_write(cdev, LCRVAL, lcr);
 	ns16550_write(cdev, MCRVAL, mcr);
-	ns16550_write(cdev, FCRVAL, fcr);
+
+	if (plat->flags & NS16650_FLAG_DISABLE_FIFO) {
+		ns16550_write(cdev, FCRVAL & ~FCR_FIFO_EN, fcr);
+	} else {
+		ns16550_write(cdev, FCRVAL, fcr);
+	}
+
 #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
 	ns16550_write(cdev, 0x00,  mdr1);
 #endif
@@ -211,6 +219,8 @@ static int ns16550_tstc(struct console_device *cdev)
 static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
 {
 	unsigned int baud_divisor = ns16550_calc_divisor(cdev, baud_rate);
+	struct NS16550_plat *plat = (struct NS16550_plat *)
+	    cdev->dev->platform_data;
 
 	ns16550_write(cdev, 0x00, ier);
 	ns16550_write(cdev, LCR_BKSE, lcr);
@@ -218,7 +228,12 @@ static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
 	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
 	ns16550_write(cdev, LCRVAL, lcr);
 	ns16550_write(cdev, MCRVAL, mcr);
-	ns16550_write(cdev, FCRVAL, fcr);
+	if (plat->flags & NS16650_FLAG_DISABLE_FIFO) {
+		ns16550_write(cdev, FCRVAL & ~FCR_FIFO_EN, fcr);
+	} else {
+		ns16550_write(cdev, FCRVAL, fcr);
+	}
+
 	return 0;
 }
 
diff --git a/include/ns16550.h b/include/ns16550.h
index 5fd52fa..4a41b93 100644
--- a/include/ns16550.h
+++ b/include/ns16550.h
@@ -52,6 +52,8 @@ struct NS16550_plat {
 				    unsigned char reg_offset);
 
 	int shift;
+	unsigned int flags;
+#define NS16650_FLAG_DISABLE_FIFO	1
 };
 
 #endif				/* __NS16650_PLATFORM_H_ */
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
