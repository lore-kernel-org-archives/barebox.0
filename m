Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1She6j-0002rC-KK
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:55:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Jun 2012 11:55:09 +0200
Message-Id: <1340272517-8972-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340272517-8972-1-git-send-email-s.hauer@pengutronix.de>
References: <1340272517-8972-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] USB core: allocate setup_packet using dma_alloc
To: barebox@lists.infradead.org

The setup packet needs to be dma save.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c |   18 +++++++++++-------
 include/usb/usb.h      |    1 +
 2 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index bd2938d..7333c0e 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -52,6 +52,7 @@
 #include <asm/byteorder.h>
 #include <xfuncs.h>
 #include <init.h>
+#include <dma.h>
 
 #include <usb/usb.h>
 
@@ -67,7 +68,6 @@
 
 static int dev_index;
 static int asynch_allowed;
-static struct devrequest setup_packet;
 
 static int usb_hub_probe(struct usb_device *dev, int ifnum);
 static int hub_port_reset(struct usb_device *dev, int port,
@@ -454,6 +454,7 @@ static struct usb_device *usb_alloc_new_device(void)
 	usbdev->devnum = dev_index + 1;
 	usbdev->maxchild = 0;
 	usbdev->dev.bus = &usb_bus_type;
+	usbdev->setup_packet = dma_alloc(sizeof(*usbdev->setup_packet));
 
 	dev_index++;
 
@@ -471,6 +472,7 @@ void usb_rescan(void)
 		unregister_device(&dev->dev);
 		if (dev->hub)
 			free(dev->hub);
+		dma_free(dev->setup_packet);
 		free(dev);
 	}
 
@@ -532,6 +534,7 @@ int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 {
 	struct usb_host *host = dev->host;
 	int ret;
+	struct devrequest *setup_packet = dev->setup_packet;
 
 	if ((timeout == 0) && (!asynch_allowed)) {
 		/* request for a asynch control pipe is not allowed */
@@ -539,17 +542,18 @@ int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 	}
 
 	/* set setup command */
-	setup_packet.requesttype = requesttype;
-	setup_packet.request = request;
-	setup_packet.value = cpu_to_le16(value);
-	setup_packet.index = cpu_to_le16(index);
-	setup_packet.length = cpu_to_le16(size);
+	setup_packet->requesttype = requesttype;
+	setup_packet->request = request;
+	setup_packet->value = cpu_to_le16(value);
+	setup_packet->index = cpu_to_le16(index);
+	setup_packet->length = cpu_to_le16(size);
 	USB_PRINTF("usb_control_msg: request: 0x%X, requesttype: 0x%X, " \
 		   "value 0x%X index 0x%X length 0x%X\n",
 		   request, requesttype, value, index, size);
 	dev->status = USB_ST_NOT_PROC; /*not yet processed */
 
-	ret = host->submit_control_msg(dev, pipe, data, size, &setup_packet, timeout);
+	ret = host->submit_control_msg(dev, pipe, data, size, setup_packet,
+			timeout);
 	if (ret)
 		return ret;
 
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 296e4e8..f836593 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -161,6 +161,7 @@ struct usb_device {
 	int configno;			/* selected config number */
 	struct usb_device_descriptor descriptor; /* Device Descriptor */
 	struct usb_config_descriptor config; /* config descriptor */
+	struct devrequest *setup_packet;
 
 	int have_langid;		/* whether string_langid is valid yet */
 	int string_langid;		/* language ID for strings */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
