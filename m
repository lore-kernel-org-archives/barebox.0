Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X8Qkr-0003j1-An
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 09:16:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 19 Jul 2014 11:16:05 +0200
Message-Id: <1405761367-23724-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405761367-23724-1-git-send-email-s.hauer@pengutronix.de>
References: <1405761367-23724-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] USB: host: implement usb_remove_device
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c |  1 +
 drivers/usb/core/usb.c | 19 +++++++++++++++++++
 drivers/usb/core/usb.h |  1 +
 3 files changed, 21 insertions(+)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 39cadb5..144442a 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -189,6 +189,7 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 	if (((!(portstatus & USB_PORT_STAT_CONNECTION)) &&
 	     (!(portstatus & USB_PORT_STAT_ENABLE))) || (dev->children[port])) {
 		dev_dbg(&dev->dev, "usb_disconnect(&hub->children[port]);\n");
+		usb_remove_device(dev->children[port]);
 		/* Return now if nothing is connected */
 		if (!(portstatus & USB_PORT_STAT_CONNECTION))
 			return;
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 7c69e10..faf509e 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -455,6 +455,25 @@ err_out:
 	return err;
 }
 
+void usb_remove_device(struct usb_device *usbdev)
+{
+	int i, ret;
+
+	for (i = 0; i < usbdev->maxchild; i++) {
+		if (usbdev->children[i])
+			usb_remove_device(usbdev->children[i]);
+	}
+
+	dev_info(&usbdev->dev, "removing\n");
+
+	ret = unregister_device(&usbdev->dev);
+	if (ret)
+		dev_err(&usbdev->dev, "failed to unregister\n");
+
+	usbdev->parent->children[usbdev->portnr - 1] = NULL;
+	free(usbdev);
+}
+
 struct usb_device *usb_alloc_new_device(void)
 {
 	struct usb_device *usbdev = xzalloc(sizeof (*usbdev));
diff --git a/drivers/usb/core/usb.h b/drivers/usb/core/usb.h
index 3e79407..a0c0550 100644
--- a/drivers/usb/core/usb.h
+++ b/drivers/usb/core/usb.h
@@ -3,5 +3,6 @@
 
 struct usb_device *usb_alloc_new_device(void);
 int usb_new_device(struct usb_device *dev);
+void usb_remove_device(struct usb_device *dev);
 
 #endif /* __CORE_USB_H */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
