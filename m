Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rm53Z-0003xh-Gc
 for barebox@lists.infradead.org; Sat, 14 Jan 2012 14:58:10 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 5AF4D1008F0B
 for <barebox@lists.infradead.org>; Sat, 14 Jan 2012 15:50:59 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Jan 2012 15:48:47 +0100
Message-Id: <1326552527-8359-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] usb: fix driver name
To: barebox@lists.infradead.org

use the usb_driver name

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/usb/core/usb.c    |    1 +
 drivers/usb/storage/usb.c |    1 -
 2 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 7039a2c..f10bcad 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -1275,6 +1275,7 @@ static int usb_hub_probe(struct usb_device *dev, int ifnum)
 
 int usb_driver_register(struct usb_driver *drv)
 {
+	drv->driver.name = drv->name;
 	drv->driver.bus = &usb_bus_type;
 	return register_driver(&drv->driver);
 }
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 865ba8e..5b8923f 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -632,7 +632,6 @@ static struct usb_driver usb_storage_driver = {
 
 static int __init usb_stor_init(void)
 {
-	usb_storage_driver.name = usb_storage_driver.driver.name;
 	return usb_driver_register(&usb_storage_driver);
 }
 device_initcall(usb_stor_init);
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
