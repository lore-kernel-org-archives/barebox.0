Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1WGv-0008GB-KD
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 06:40:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jul 2013 08:40:06 +0200
Message-Id: <1374561610-686-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] serial: ns16550: reorder functions to avoid forward
 declaration
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 59 +++++++++++++++++++----------------------
 1 file changed, 28 insertions(+), 31 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index b7913aa..b792ba5 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -42,9 +42,6 @@
 #include "serial_ns16550.h"
 #include <ns16550.h>
 
-/*********** Private Functions **********************************/
-static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate);
-
 /**
  * @brief read register
  *
@@ -129,6 +126,34 @@ static inline unsigned int ns16550_calc_divisor(struct console_device *cdev,
 }
 
 /**
+ * @brief Set the baudrate for the uart port
+ *
+ * @param[in] cdev  console device
+ * @param[in] baud_rate baud rate to set
+ *
+ * @return  0-implied to support the baudrate
+ */
+static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
+{
+	unsigned int baud_divisor = ns16550_calc_divisor(cdev, baud_rate);
+	struct NS16550_plat *plat = (struct NS16550_plat *)
+	    cdev->dev->platform_data;
+
+	ns16550_write(cdev, LCR_BKSE, lcr);
+	ns16550_write(cdev, baud_divisor & 0xff, dll);
+	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
+	ns16550_write(cdev, LCRVAL, lcr);
+	ns16550_write(cdev, MCRVAL, mcr);
+
+	if (plat->flags & NS16650_FLAG_DISABLE_FIFO)
+		ns16550_write(cdev, FCRVAL & ~FCR_FIFO_EN, fcr);
+	else
+		ns16550_write(cdev, FCRVAL, fcr);
+
+	return 0;
+}
+
+/**
  * @brief Initialize the device
  *
  * @param[in] cdev pointer to console device
@@ -192,34 +217,6 @@ static int ns16550_tstc(struct console_device *cdev)
 }
 
 /**
- * @brief Set the baudrate for the uart port
- *
- * @param[in] cdev  console device
- * @param[in] baud_rate baud rate to set
- *
- * @return  0-implied to support the baudrate
- */
-static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
-{
-	unsigned int baud_divisor = ns16550_calc_divisor(cdev, baud_rate);
-	struct NS16550_plat *plat = (struct NS16550_plat *)
-	    cdev->dev->platform_data;
-
-	ns16550_write(cdev, LCR_BKSE, lcr);
-	ns16550_write(cdev, baud_divisor & 0xff, dll);
-	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
-	ns16550_write(cdev, LCRVAL, lcr);
-	ns16550_write(cdev, MCRVAL, mcr);
-
-	if (plat->flags & NS16650_FLAG_DISABLE_FIFO)
-		ns16550_write(cdev, FCRVAL & ~FCR_FIFO_EN, fcr);
-	else
-		ns16550_write(cdev, FCRVAL, fcr);
-
-	return 0;
-}
-
-/**
  * @brief Probe entry point -called on the first match for device
  *
  * @param[in] dev matched device
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
