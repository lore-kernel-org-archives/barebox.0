Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzT8-00052K-Rj
 for barebox@lists.infradead.org; Tue, 20 Aug 2019 08:26:20 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Aug 2019 10:26:11 +0200
Message-Id: <20190820082611.21855-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] serial: stm32: set linux_console_name
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Linux names these UARTs ttySTM. Tell barebox about this, so it can be
used to correctly compose the console= kernel command line argument.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/serial_stm32.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/serial/serial_stm32.c b/drivers/serial/serial_stm32.c
index a84e64e974e7..4bbfb1eef72c 100644
--- a/drivers/serial/serial_stm32.c
+++ b/drivers/serial/serial_stm32.c
@@ -182,6 +182,7 @@ static int stm32_serial_probe(struct device_d *dev)
 	cdev->getc   = stm32_serial_getc;
 	cdev->flush  = stm32_serial_flush;
 	cdev->setbrg = stm32_serial_setbaudrate;
+	cdev->linux_console_name = "ttySTM";
 
 	if (dev->device_node) {
 		devname = of_alias_get(dev->device_node);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
