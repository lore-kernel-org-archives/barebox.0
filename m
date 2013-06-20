Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpfUl-0007uV-5y
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 14:05:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 16:05:24 +0200
Message-Id: <1371737125-18820-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371737125-18820-1-git-send-email-s.hauer@pengutronix.de>
References: <1371737125-18820-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] usb: implement a usb_host_detect to scan individual USB
 hosts
To: barebox@lists.infradead.org

Currently we can only (re)scan all USB hosts. Add a function to
scan individual hosts. This is useful for implementing the detect
callback in the next patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 38 +++++++++++++++++++++++++-------------
 include/usb/usb.h      |  3 +++
 2 files changed, 28 insertions(+), 13 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 07175dc..36fc736 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -488,20 +488,18 @@ static struct usb_device *usb_alloc_new_device(void)
 	return usbdev;
 }
 
-static int scanned;
-
-void usb_rescan(int force)
+int usb_host_detect(struct usb_host *host, int force)
 {
 	struct usb_device *dev, *tmp;
-	struct usb_host *host;
 	int ret;
 
-	if (scanned && !force)
-		return;
-
-	scanned = 1;
+	if (host->scanned && !force)
+		return -EBUSY;
 
 	list_for_each_entry_safe(dev, tmp, &usb_device_list, list) {
+		if (dev->host != host)
+			continue;
+
 		list_del(&dev->list);
 		unregister_device(&dev->dev);
 		if (dev->hub)
@@ -511,17 +509,31 @@ void usb_rescan(int force)
 		free(dev);
 	}
 
+	ret = host->init(host);
+	if (ret)
+		return ret;
+
+	dev = usb_alloc_new_device();
+	dev->host = host;
+	usb_new_device(dev);
+
+	host->scanned = 1;
+
+	return 0;
+}
+
+void usb_rescan(int force)
+{
+	struct usb_host *host;
+	int ret;
+
 	printf("USB: scanning bus for devices...\n");
 	dev_index = 0;
 
 	list_for_each_entry(host, &host_list, list) {
-		ret = host->init(host);
+		ret = usb_host_detect(host, force);
 		if (ret)
 			continue;
-
-		dev = usb_alloc_new_device();
-		dev->host = host;
-		usb_new_device(dev);
 	}
 
 	printf("%d USB Device(s) found\n", dev_index);
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 2e1498c..95fb6f3 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -211,10 +211,13 @@ struct usb_host {
 	struct list_head list;
 
 	int busnum;
+	int scanned;
 };
 
 int usb_register_host(struct usb_host *);
 
+int usb_host_detect(struct usb_host *host, int force);
+
 /* Defines */
 #define USB_UHCI_VEND_ID	0x8086
 #define USB_UHCI_DEV_ID		0x7112
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
