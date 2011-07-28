Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmQqm-0004CV-Hu
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 13:42:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 15:41:56 +0200
Message-Id: <1311860524-28566-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] serial pl010: get rid of map_base
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_pl010.c |   11 ++++++-----
 1 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/serial/serial_pl010.c b/drivers/serial/serial_pl010.c
index 7923ebb..9f7b7d3 100644
--- a/drivers/serial/serial_pl010.c
+++ b/drivers/serial/serial_pl010.c
@@ -37,7 +37,7 @@
 
 static int pl010_setbaudrate(struct console_device *cdev, int baudrate)
 {
-	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+	struct pl010_struct *pl010 = cdev->dev->priv;
 	unsigned int divisor;
 
 	switch (baudrate) {
@@ -76,7 +76,7 @@ static int pl010_setbaudrate(struct console_device *cdev, int baudrate)
 
 static int pl010_init_port(struct console_device *cdev)
 {
-	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+	struct pl010_struct *pl010 = cdev->dev->priv;
 
 	/*
 	 * First, disable everything.
@@ -99,7 +99,7 @@ static int pl010_init_port(struct console_device *cdev)
 
 static void pl010_putc(struct console_device *cdev, char c)
 {
-	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+	struct pl010_struct *pl010 = cdev->dev->priv;
 
 	/* Wait until there is space in the FIFO */
 	while (readl(&pl010->flag) & UART_PL010_FR_TXFF)
@@ -111,7 +111,7 @@ static void pl010_putc(struct console_device *cdev, char c)
 
 static int pl010_getc(struct console_device *cdev)
 {
-	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+	struct pl010_struct *pl010 = cdev->dev->priv;
 	unsigned int data;
 
 	/* Wait until there is data in the FIFO */
@@ -132,7 +132,7 @@ static int pl010_getc(struct console_device *cdev)
 
 static int pl010_tstc(struct console_device *cdev)
 {
-	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+	struct pl010_struct *pl010 = cdev->dev->priv;
 
 	return !(readl(&pl010->flag) & UART_PL010_FR_RXFE);
 }
@@ -143,6 +143,7 @@ static int pl010_probe(struct device_d *dev)
 
 	cdev = xmalloc(sizeof(struct console_device));
 	dev->type_data = cdev;
+	dev->priv = dev_request_mem_region(dev, 0);
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = pl010_tstc;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
