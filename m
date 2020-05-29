Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeeTq-0000zS-1S
 for barebox@lists.infradead.org; Fri, 29 May 2020 12:51:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jeeTo-0000N4-UG
 for barebox@lists.infradead.org; Fri, 29 May 2020 14:51:20 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jeeTo-0002Dx-LK
 for barebox@lists.infradead.org; Fri, 29 May 2020 14:51:20 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 29 May 2020 14:51:12 +0200
Message-Id: <20200529125112.8360-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] serial: stm: set linux_console_name
To: barebox@lists.infradead.org

We set the linux_console_name so for this uart the
linux.bootargs.console will be properly set.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/serial/stm-serial.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index ea482415ce..a2c3dcf56e 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -159,6 +159,7 @@ static int stm_serial_probe(struct device_d *dev)
 	cdev->flush = stm_serial_flush;
 	cdev->setbrg = stm_serial_setbaudrate;
 	cdev->dev = dev;
+	cdev->linux_console_name = "ttyAMA";
 
 	dev->priv = priv;
 	iores = dev_request_mem_resource(dev, 0);
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
