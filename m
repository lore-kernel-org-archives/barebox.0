Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmQqm-0004CX-LI
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 13:42:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 15:41:58 +0200
Message-Id: <1311860524-28566-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] serial mpc5xxx: get rid of map_base
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_mpc5xxx.c |   11 ++++++-----
 1 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index 2509708..fb580cf 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -64,7 +64,7 @@ static int __mpc5xxx_serial_setbaudrate(struct mpc5xxx_psc *psc, int baudrate)
 static int mpc5xxx_serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
 	struct device_d *dev = cdev->dev;
-	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)dev->map_base;
+	struct mpc5xxx_psc *psc = dev->priv;
 
 	__mpc5xxx_serial_setbaudrate(psc, baudrate);
 
@@ -108,7 +108,7 @@ static int __mpc5xxx_serial_init(struct mpc5xxx_psc *psc)
 static int mpc5xxx_serial_init(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
-	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)dev->map_base;
+	struct mpc5xxx_psc *psc = dev->priv;
 
 	__mpc5xxx_serial_init(psc);
 
@@ -118,7 +118,7 @@ static int mpc5xxx_serial_init(struct console_device *cdev)
 static void mpc5xxx_serial_putc (struct console_device *cdev, const char c)
 {
 	struct device_d *dev = cdev->dev;
-	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)dev->map_base;
+	struct mpc5xxx_psc *psc = dev->priv;
 
 	/* Wait for last character to go. */
 	while (!(psc->psc_status & PSC_SR_TXEMP))
@@ -130,7 +130,7 @@ static void mpc5xxx_serial_putc (struct console_device *cdev, const char c)
 static int mpc5xxx_serial_getc (struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
-	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)dev->map_base;
+	struct mpc5xxx_psc *psc = dev->priv;
 
 	/* Wait for a character to arrive. */
 	while (!(psc->psc_status & PSC_SR_RXRDY))
@@ -142,7 +142,7 @@ static int mpc5xxx_serial_getc (struct console_device *cdev)
 static int mpc5xxx_serial_tstc (struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
-	struct mpc5xxx_psc *psc = (struct mpc5xxx_psc *)dev->map_base;
+	struct mpc5xxx_psc *psc = dev->priv;
 
 	return (psc->psc_status & PSC_SR_RXRDY);
 }
@@ -153,6 +153,7 @@ static int mpc5xxx_serial_probe(struct device_d *dev)
 	
 	cdev = xzalloc(sizeof(struct console_device));
 	dev->type_data = cdev;
+	dev->priv = dev_request_mem_region(dev, 0);
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = mpc5xxx_serial_tstc;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
