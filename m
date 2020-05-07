Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWaol-0005Ci-Ch
 for barebox@lists.infradead.org; Thu, 07 May 2020 07:19:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  7 May 2020 09:19:33 +0200
Message-Id: <20200507071933.29024-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] serial: mxs auart: Set Linux console name
To: Barebox List <barebox@lists.infradead.org>

The MXS AUART is in the kernel known as "ttyAPP". Set the Linux console
name to make automatic setting of the console= Kernel parameter work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_auart.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index 05cc757970..ee64f2f8db 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -193,6 +193,7 @@ static int auart_serial_probe(struct device_d *dev)
 	cdev->flush = auart_serial_flush;
 	cdev->setbrg = auart_serial_setbaudrate;
 	cdev->dev = dev;
+	cdev->linux_console_name = "ttyAPP";
 
 	dev->priv = priv;
 	iores = dev_request_mem_resource(dev, 0);
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
