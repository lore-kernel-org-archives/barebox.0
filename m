Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x230.google.com ([2a00:1450:400c:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9wxp-0006Ip-IN
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 13:52:16 +0000
Received: by mail-wi0-f176.google.com with SMTP id bs8so7886009wib.3
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 06:51:51 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 15:51:50 +0200
Message-Id: <1406123512-26489-10-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 09/10] USB: Use descriptors from ch11.h
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Use the descriptors from ch11.h instead of duplicating them
in usb.h. usb_hub_descriptor now contains a union .u to differentiate
HS hub descriptor from SS hub descriptor.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 drivers/usb/core/hub.c      | 10 +++++-----
 drivers/usb/host/ehci-hcd.c |  4 ++--
 include/usb/usb.h           | 27 +--------------------------
 3 files changed, 8 insertions(+), 33 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 7553bcdd5ef3..c1f743cbed12 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -332,17 +332,17 @@ static int usb_hub_configure(struct usb_device *dev)
 	hub->desc.wHubCharacteristics =
 				le16_to_cpu(descriptor->wHubCharacteristics);
 	/* set the bitmap */
-	bitmap = (unsigned char *)&hub->desc.DeviceRemovable[0];
+	bitmap = (unsigned char *)&hub->desc.u.hs.DeviceRemovable[0];
 	/* devices not removable by default */
 	memset(bitmap, 0xff, (USB_MAXCHILDREN+1+7)/8);
-	bitmap = (unsigned char *)&hub->desc.PortPowerCtrlMask[0];
+	bitmap = (unsigned char *)&hub->desc.u.hs.PortPwrCtrlMask[0];
 	memset(bitmap, 0xff, (USB_MAXCHILDREN+1+7)/8); /* PowerMask = 1B */
 
 	for (i = 0; i < ((hub->desc.bNbrPorts + 1 + 7)/8); i++)
-		hub->desc.DeviceRemovable[i] = descriptor->DeviceRemovable[i];
+		hub->desc.u.hs.DeviceRemovable[i] = descriptor->u.hs.DeviceRemovable[i];
 
 	for (i = 0; i < ((hub->desc.bNbrPorts + 1 + 7)/8); i++)
-		hub->desc.PortPowerCtrlMask[i] = descriptor->PortPowerCtrlMask[i];
+		hub->desc.u.hs.PortPwrCtrlMask[i] = descriptor->u.hs.PortPwrCtrlMask[i];
 
 	dev->maxchild = descriptor->bNbrPorts;
 	dev_dbg(&dev->dev, "%d ports detected\n", dev->maxchild);
@@ -385,7 +385,7 @@ static int usb_hub_configure(struct usb_device *dev)
 
 	for (i = 0; i < dev->maxchild; i++)
 		dev_dbg(&dev->dev, "port %d is%s removable\n", i + 1,
-			hub->desc.DeviceRemovable[(i + 1) / 8] & \
+			hub->desc.u.hs.DeviceRemovable[(i + 1) / 8] & \
 					   (1 << ((i + 1) % 8)) ? " not" : "");
 
 	if (sizeof(struct usb_hub_status) > USB_BUFSIZ) {
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index ab1bc0331ba1..a76e06bd565f 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -69,8 +69,8 @@ static struct descriptor {
 		.wHubCharacteristics	= 0,
 		.bPwrOn2PwrGood		= 10,
 		.bHubContrCurrent	= 0,
-		.DeviceRemovable	= {},
-		.PortPowerCtrlMask	= {}
+		.u.hs.DeviceRemovable	= {},
+		.u.hs.PortPwrCtrlMask	= {}
 	},
 	.device = {
 		.bLength		= USB_DT_DEVICE_SIZE,
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 41f92c2df0ce..82acf20b1298 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -24,6 +24,7 @@
 
 #include <driver.h>
 #include <usb/ch9.h>
+#include <usb/ch11.h>
 #include <usb/usb_defs.h>
 #include <asm/byteorder.h>
 
@@ -311,32 +312,6 @@ void usb_rescan(void);
 /*************************************************************************
  * Hub Stuff
  */
-struct usb_port_status {
-	unsigned short wPortStatus;
-	unsigned short wPortChange;
-} __attribute__ ((packed));
-
-struct usb_hub_status {
-	unsigned short wHubStatus;
-	unsigned short wHubChange;
-} __attribute__ ((packed));
-
-
-/* Hub descriptor */
-struct usb_hub_descriptor {
-	unsigned char  bLength;
-	unsigned char  bDescriptorType;
-	unsigned char  bNbrPorts;
-	unsigned short wHubCharacteristics;
-	unsigned char  bPwrOn2PwrGood;
-	unsigned char  bHubContrCurrent;
-	unsigned char  DeviceRemovable[(USB_MAXCHILDREN+1+7)/8];
-	unsigned char  PortPowerCtrlMask[(USB_MAXCHILDREN+1+7)/8];
-	/* DeviceRemovable and PortPwrCtrlMask want to be variable-length
-	   bitmaps that hold max 255 entries. (bit0 is ignored) */
-} __attribute__ ((packed));
-
-
 struct usb_hub_device {
 	struct usb_device *pusb_dev;
 	struct usb_hub_descriptor desc;
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
