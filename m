Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RnP42-0000sk-Go
 for barebox@lists.infradead.org; Wed, 18 Jan 2012 06:32:09 +0000
Received: by bkty8 with SMTP id y8so8659426bkt.36
 for <barebox@lists.infradead.org>; Tue, 17 Jan 2012 22:32:04 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 18 Jan 2012 10:31:54 +0400
Message-Id: <1326868316-29385-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1326868316-29385-1-git-send-email-antonynpavlov@gmail.com>
References: <1326868316-29385-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v4 2/4] ns16550: make ns16550_serial_init_port() shorter
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c |   20 +++-----------------
 1 files changed, 3 insertions(+), 17 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 4cef469..3382acd 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -47,6 +47,7 @@
 #include <ns16550.h>
 
 /*********** Private Functions **********************************/
+static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate);
 
 /**
  * @brief read register
@@ -120,7 +121,7 @@ static void ns16550_write(struct console_device *cdev, uint32_t val,
  *
  * @return divisor to be set
  */
-static unsigned int ns16550_calc_divisor(struct console_device *cdev,
+static inline unsigned int ns16550_calc_divisor(struct console_device *cdev,
 					 unsigned int baudrate)
 {
 	struct NS16550_plat *plat = (struct NS16550_plat *)
@@ -138,28 +139,13 @@ static unsigned int ns16550_calc_divisor(struct console_device *cdev,
  */
 static void ns16550_serial_init_port(struct console_device *cdev)
 {
-	unsigned int baud_divisor;
-	struct NS16550_plat *plat = (struct NS16550_plat *)
-	    cdev->dev->platform_data;
-
-	/* Setup the serial port with the defaults first */
-	baud_divisor = ns16550_calc_divisor(cdev, CONFIG_BAUDRATE);
-
 	/* initializing the device for the first time */
 	ns16550_write(cdev, 0x00, ier);
 #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
 	ns16550_write(cdev, 0x07, mdr1);	/* Disable */
 #endif
-	ns16550_write(cdev, LCR_BKSE | LCRVAL, lcr);
-	ns16550_write(cdev, baud_divisor & 0xFF, dll);
-	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
-	ns16550_write(cdev, LCRVAL, lcr);
-	ns16550_write(cdev, MCRVAL, mcr);
 
-	if (plat->flags & NS16650_FLAG_DISABLE_FIFO)
-		ns16550_write(cdev, FCRVAL & ~FCR_FIFO_EN, fcr);
-	else
-		ns16550_write(cdev, FCRVAL, fcr);
+	ns16550_setbaudrate(cdev, CONFIG_BAUDRATE);
 
 #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
 	ns16550_write(cdev, 0x00,  mdr1);
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
