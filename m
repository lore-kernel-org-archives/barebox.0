Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVLa-0004At-GX
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 21:03:45 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 0BF40FF966D
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 23:10:17 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 23:01:14 +0200
Message-Id: <1350248478-19359-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121014205929.GU13639@game.jcrosoft.org>
 <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 08/12] usb: add bus device
To: barebox@lists.infradead.org

automatically add usb_device to it if they do not have a parent already

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/usb/core/usb.c |   11 +++++++++++
 include/usb/usb.h      |    1 +
 2 files changed, 12 insertions(+)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 9dc931b..0d610d6 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -437,6 +437,11 @@ static int usb_new_device(struct usb_device *dev)
 
 	print_usb_device(dev);
 
+	if (!dev->dev.parent) {
+		dev->dev.parent = &usb_bus;
+		dev_add_child(dev->dev.parent, &dev->dev);
+	}
+
 	register_device(&dev->dev);
 	list_add_tail(&dev->list, &usb_device_list);
 
@@ -1411,6 +1416,11 @@ static void usb_remove(struct device_d *dev)
 	usbdrv->disconnect(usbdev);
 }
 
+struct device_d usb_bus = {
+	.name = "usb",
+	.id = DEVICE_ID_SINGLE,
+};
+
 struct bus_type usb_bus_type = {
 	.name	= "usb",
 	.match	= usb_match,
@@ -1420,6 +1430,7 @@ struct bus_type usb_bus_type = {
 
 static int usb_bus_init(void)
 {
+	register_device(&usb_bus);
 	return bus_register(&usb_bus_type);
 }
 pure_initcall(usb_bus_init);
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 4649ee2..a0c26c1 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -193,6 +193,7 @@ struct usb_driver {
 	struct driver_d driver;
 };
 
+extern struct device_d usb_bus;
 extern struct bus_type usb_bus_type;
 
 int usb_driver_register(struct usb_driver *);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
