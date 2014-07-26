Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x236.google.com ([2a00:1450:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XB3qT-0000bE-Mg
 for barebox@lists.infradead.org; Sat, 26 Jul 2014 15:25:14 +0000
Received: by mail-wi0-f182.google.com with SMTP id d1so2333824wiv.15
 for <barebox@lists.infradead.org>; Sat, 26 Jul 2014 08:24:51 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat, 26 Jul 2014 17:24:41 +0200
Message-Id: <1406388285-1666-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406388285-1666-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406388285-1666-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 3/7] USB: improve error paths and tear-down
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

USB core isn't too strict about allocation/deallocation and
add/remove sequences of usb devices. Especially, error paths
and device tear-down are kind of broken and cause hangs on
failing usb device detect.

This patch improves the situation by introducing a
usb_free_device() that tears down allocated resources by
usb_alloc_new_device(). usb_remove_device() now only deals
with resources that have been added by usb_new_device().
Also, error handling is fixed or improved to ensure that no
devices are unregistered that have not been previously
registered.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 drivers/usb/core/hub.c | 19 ++++++++++++-------
 drivers/usb/core/usb.c | 48 ++++++++++++++++++++++++++++--------------------
 drivers/usb/core/usb.h |  1 +
 3 files changed, 41 insertions(+), 27 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index c1f743cbed12..d42b47cbe0b8 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -186,19 +186,21 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 	usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_C_CONNECTION);
 
 	/* Disconnect any existing devices under this port */
-	if (((!(portstatus & USB_PORT_STAT_CONNECTION)) &&
-	     (!(portstatus & USB_PORT_STAT_ENABLE))) || (dev->children[port])) {
-		dev_dbg(&dev->dev, "usb_disconnect(&hub->children[port]);\n");
+	if (dev->children[port] && !(portstatus & USB_PORT_STAT_CONNECTION)) {
+		dev_dbg(&dev->dev, "disconnect detected on port %d\n", port + 1);
 		usb_remove_device(dev->children[port]);
-		/* Return now if nothing is connected */
-		if (!(portstatus & USB_PORT_STAT_CONNECTION))
-			return;
+		return;
 	}
+
+	/* Remove disabled but connected devices */
+	if (dev->children[port] && !(portstatus & USB_PORT_STAT_ENABLE))
+		usb_remove_device(dev->children[port]);
+
 	wait_ms(200);
 
 	/* Reset the port */
 	if (hub_port_reset(dev, port, &portstatus) < 0) {
-		printf("cannot reset port %i!?\n", port + 1);
+		dev_warn(&dev->dev, "cannot reset port %i!?\n", port + 1);
 		return;
 	}
 
@@ -225,7 +227,10 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 		/* Woops, disable the port */
 		dev_dbg(&dev->dev, "hub: disabling port %d\n", port + 1);
 		usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_ENABLE);
+		usb_free_device(usb);
+		return;
 	}
+
 	device_detect(&usb->dev);
 }
 
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index d3bd19be706d..3f3d59577ca4 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -431,7 +431,7 @@ int usb_new_device(struct usb_device *dev)
 	err = register_device(&dev->dev);
 	if (err) {
 		printf("Failed to register device: %s\n", strerror(-err));
-		return err;
+		goto err_out;
 	}
 
 	dev_add_param_int_ro(&dev->dev, "iManufacturer",
@@ -458,42 +458,45 @@ err_out:
 	return err;
 }
 
+void usb_free_device(struct usb_device *usbdev)
+{
+	dma_free(usbdev->descriptor);
+	dma_free(usbdev->setup_packet);
+	free(usbdev);
+}
+
 void usb_remove_device(struct usb_device *usbdev)
 {
-	int i, ret;
+	int i;
 
-	for (i = 0; i < usbdev->maxchild; i++) {
-		if (usbdev->children[i])
-			usb_remove_device(usbdev->children[i]);
-	}
+	if (!usbdev)
+		return;
 
-	dev_info(&usbdev->dev, "removing\n");
+	for (i = 0; i < usbdev->maxchild; i++)
+		usb_remove_device(usbdev->children[i]);
+	if (usbdev->parent && usbdev->portnr)
+		usbdev->parent->children[usbdev->portnr - 1] = NULL;
+	list_del(&usbdev->list);
+	dev_count--;
 
-	ret = unregister_device(&usbdev->dev);
-	if (ret)
+	if (unregister_device(&usbdev->dev))
 		dev_err(&usbdev->dev, "failed to unregister\n");
+	else
+		dev_info(&usbdev->dev, "removed\n");
 
-	usbdev->parent->children[usbdev->portnr - 1] = NULL;
-	list_del(&usbdev->list);
-	free(usbdev);
-	dev_count--;
+	usb_free_device(usbdev);
 }
 
 struct usb_device *usb_alloc_new_device(void)
 {
 	struct usb_device *usbdev = xzalloc(sizeof (*usbdev));
 
-	if (!usbdev)
-		return NULL;
-
-	usbdev->devnum = dev_index + 1;
+	usbdev->devnum = ++dev_index;
 	usbdev->maxchild = 0;
 	usbdev->dev.bus = &usb_bus_type;
 	usbdev->setup_packet = dma_alloc(sizeof(*usbdev->setup_packet));
 	usbdev->descriptor = dma_alloc(sizeof(*usbdev->descriptor));
 
-	dev_index++;
-
 	return usbdev;
 }
 
@@ -509,7 +512,12 @@ int usb_host_detect(struct usb_host *host)
 		host->root_dev = usb_alloc_new_device();
 		host->root_dev->dev.parent = host->hw_dev;
 		host->root_dev->host = host;
-		usb_new_device(host->root_dev);
+
+		ret = usb_new_device(host->root_dev);
+		if (ret) {
+			usb_free_device(host->root_dev);
+			return ret;
+		}
 	}
 
 	device_detect(&host->root_dev->dev);
diff --git a/drivers/usb/core/usb.h b/drivers/usb/core/usb.h
index a0c05506dde8..a5bb255121b2 100644
--- a/drivers/usb/core/usb.h
+++ b/drivers/usb/core/usb.h
@@ -2,6 +2,7 @@
 #define __CORE_USB_H
 
 struct usb_device *usb_alloc_new_device(void);
+void usb_free_device(struct usb_device *dev);
 int usb_new_device(struct usb_device *dev);
 void usb_remove_device(struct usb_device *dev);
 
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
