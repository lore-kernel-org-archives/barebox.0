Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X87X4-0006ik-4V
 for barebox@lists.infradead.org; Fri, 18 Jul 2014 12:45:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Jul 2014 14:44:37 +0200
Message-Id: <1405687479-3507-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405687479-3507-1-git-send-email-s.hauer@pengutronix.de>
References: <1405687479-3507-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] USB: introduce usb_interface/usb_configuration structs
To: barebox@lists.infradead.org

Currently we have two conflicting definitions of struct usb_config_descriptor
and struct usb_interface_descriptor in the tree. This is because the USB code
uses additional fields in the structs for internal housekeeping. Add
struct usb_interface and struct struct usb_configuration with the housekeeping
data and embed the corresponding hardware structs into them. This frees the
way to use the definitions from ch9.h in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/usb/usbnet.c  | 12 +++++------
 drivers/usb/core/usb.c    | 52 +++++++++++++++++++++++------------------------
 drivers/usb/storage/usb.c | 24 +++++++++++-----------
 include/usb/usb.h         | 35 +++++++++++++++----------------
 4 files changed, 62 insertions(+), 61 deletions(-)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 13f58e3..e9edf40 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -16,7 +16,7 @@ int usbnet_get_endpoints(struct usbnet *dev)
 {
 	struct usb_device	*udev = dev->udev;
 	int				tmp;
-	struct usb_interface_descriptor	*alt = NULL;
+	struct usb_interface		*alt = NULL;
 	struct usb_endpoint_descriptor	*in = NULL, *out = NULL;
 	struct usb_endpoint_descriptor	*status = NULL;
 
@@ -24,13 +24,13 @@ int usbnet_get_endpoints(struct usbnet *dev)
 		unsigned	ep;
 
 		in = out = status = NULL;
-		alt = &udev->config.if_desc[tmp];
+		alt = &udev->config.interface[tmp];
 
 		/* take the first altsetting with in-bulk + out-bulk;
 		 * remember any status endpoint, just in case;
 		 * ignore other endpoints and altsetttings.
 		 */
-		for (ep = 0; ep < alt->bNumEndpoints; ep++) {
+		for (ep = 0; ep < alt->desc.bNumEndpoints; ep++) {
 			struct usb_endpoint_descriptor	*e;
 			int				intr = 0;
 
@@ -63,10 +63,10 @@ int usbnet_get_endpoints(struct usbnet *dev)
 	if (!alt || !in || !out)
 		return -EINVAL;
 
-	if (alt->bAlternateSetting != 0
+	if (alt->desc.bAlternateSetting != 0
 			|| !(dev->driver_info->flags & FLAG_NO_SETINT)) {
-		tmp = usb_set_interface (dev->udev, alt->bInterfaceNumber,
-				alt->bAlternateSetting);
+		tmp = usb_set_interface(dev->udev, alt->desc.bInterfaceNumber,
+				alt->desc.bAlternateSetting);
 		if (tmp < 0)
 			return tmp;
 	}
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 9c1571d..f572432 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -159,10 +159,10 @@ static int usb_set_maxpacket(struct usb_device *dev)
 {
 	int i, ii;
 
-	for (i = 0; i < dev->config.bNumInterfaces; i++)
-		for (ii = 0; ii < dev->config.if_desc[i].bNumEndpoints; ii++)
+	for (i = 0; i < dev->config.desc.bNumInterfaces; i++)
+		for (ii = 0; ii < dev->config.interface[i].desc.bNumEndpoints; ii++)
 			usb_set_maxpacket_ep(dev,
-					  &dev->config.if_desc[i].ep_desc[ii]);
+					  &dev->config.interface[i].ep_desc[ii]);
 
 	return 0;
 }
@@ -193,11 +193,11 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
 	le16_to_cpus(&(dev->config.wTotalLength));
 	dev->config.no_of_if = 0;
 
-	index = dev->config.bLength;
+	index = dev->config.desc.bLength;
 	/* Ok the first entry must be a configuration entry,
 	 * now process the others */
 	head = (struct usb_descriptor_header *) &buffer[index];
-	while (index + 1 < dev->config.wTotalLength) {
+	while (index + 1 < dev->config.desc.wTotalLength) {
 		switch (head->bDescriptorType) {
 		case USB_DT_INTERFACE:
 			if (((struct usb_interface_descriptor *) \
@@ -215,24 +215,24 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
 					break;
 				}
 				dev->config.no_of_if++;
-				memcpy(&dev->config.if_desc[ifno],
+				memcpy(&dev->config.interface[ifno].desc,
 					&buffer[index], buffer[index]);
-				dev->config.if_desc[ifno].no_of_ep = 0;
-				dev->config.if_desc[ifno].num_altsetting = 1;
+				dev->config.interface[ifno].no_of_ep = 0;
+				dev->config.interface[ifno].num_altsetting = 1;
 				curr_if_num =
-				     dev->config.if_desc[ifno].bInterfaceNumber;
+				     dev->config.interface[ifno].desc.bInterfaceNumber;
 			} else {
 				/* found alternate setting for the interface */
-				dev->config.if_desc[ifno].num_altsetting++;
+				dev->config.interface[ifno].num_altsetting++;
 			}
 			break;
 		case USB_DT_ENDPOINT:
-			epno = dev->config.if_desc[ifno].no_of_ep;
+			epno = dev->config.interface[ifno].no_of_ep;
 			/* found an endpoint */
-			dev->config.if_desc[ifno].no_of_ep++;
-			memcpy(&dev->config.if_desc[ifno].ep_desc[epno],
+			dev->config.interface[ifno].no_of_ep++;
+			memcpy(&dev->config.interface[ifno].ep_desc[epno],
 				&buffer[index], buffer[index]);
-			le16_to_cpus(&(dev->config.if_desc[ifno].ep_desc[epno].\
+			le16_to_cpus(&(dev->config.interface[ifno].ep_desc[epno].\
 							       wMaxPacketSize));
 			USB_PRINTF("if %d, ep %d\n", ifno, epno);
 			break;
@@ -411,7 +411,7 @@ static int usb_new_device(struct usb_device *dev)
 	usb_parse_config(dev, buf, 0);
 	usb_set_maxpacket(dev);
 	/* we set the default configuration here */
-	if (usb_set_configuration(dev, dev->config.bConfigurationValue)) {
+	if (usb_set_configuration(dev, dev->config.desc.bConfigurationValue)) {
 		printf("failed to set default configuration " \
 			"len %d, status %lX\n", dev->act_len, dev->status);
 		goto err_out;
@@ -721,12 +721,12 @@ int usb_get_configuration_no(struct usb_device *dev,
  */
 int usb_set_interface(struct usb_device *dev, int interface, int alternate)
 {
-	struct usb_interface_descriptor *if_face = NULL;
+	struct usb_interface *if_face = NULL;
 	int ret, i;
 
-	for (i = 0; i < dev->config.bNumInterfaces; i++) {
-		if (dev->config.if_desc[i].bInterfaceNumber == interface) {
-			if_face = &dev->config.if_desc[i];
+	for (i = 0; i < dev->config.desc.bNumInterfaces; i++) {
+		if (dev->config.interface[i].desc.bInterfaceNumber == interface) {
+			if_face = &dev->config.interface[i];
 			break;
 		}
 	}
@@ -1297,21 +1297,21 @@ static int usb_hub_configure(struct usb_device *dev)
 
 static int usb_hub_probe(struct usb_device *dev, int ifnum)
 {
-	struct usb_interface_descriptor *iface;
+	struct usb_interface *iface;
 	struct usb_endpoint_descriptor *ep;
 	int ret;
 
-	iface = &dev->config.if_desc[ifnum];
+	iface = &dev->config.interface[ifnum];
 	/* Is it a hub? */
-	if (iface->bInterfaceClass != USB_CLASS_HUB)
+	if (iface->desc.bInterfaceClass != USB_CLASS_HUB)
 		return 0;
 	/* Some hubs have a subclass of 1, which AFAICT according to the */
 	/*  specs is not defined, but it works */
-	if ((iface->bInterfaceSubClass != 0) &&
-	    (iface->bInterfaceSubClass != 1))
+	if ((iface->desc.bInterfaceSubClass != 0) &&
+	    (iface->desc.bInterfaceSubClass != 1))
 		return 0;
 	/* Multiple endpoints? What kind of mutant ninja-hub is this? */
-	if (iface->bNumEndpoints != 1)
+	if (iface->desc.bNumEndpoints != 1)
 		return 0;
 	ep = &iface->ep_desc[0];
 	/* Output endpoint? Curiousier and curiousier.. */
@@ -1373,7 +1373,7 @@ static int usb_match_one_id(struct usb_device *usbdev,
 		/* match any interface */
 		for (ifno=0; ifno<usbdev->config.no_of_if; ifno++) {
 			struct usb_interface_descriptor *intf;
-			intf = &usbdev->config.if_desc[ifno];
+			intf = &usbdev->config.interface[ifno].desc;
 
 			if ((id->match_flags & USB_DEVICE_ID_MATCH_INT_CLASS) &&
 			    (id->bInterfaceClass != intf->bInterfaceClass))
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index e4b08b9..5149761 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -441,7 +441,7 @@ static void get_transport(struct us_data *us)
 }
 
 /* Get the endpoint settings */
-static int get_pipes(struct us_data *us, struct usb_interface_descriptor *intf)
+static int get_pipes(struct us_data *us, struct usb_interface *intf)
 {
 	unsigned int i;
 	struct usb_endpoint_descriptor *ep;
@@ -455,7 +455,7 @@ static int get_pipes(struct us_data *us, struct usb_interface_descriptor *intf)
 	 * An optional interrupt-in is OK (necessary for CBI protocol).
 	 * We will ignore any others.
 	 */
-	for (i = 0; i < intf->bNumEndpoints; i++) {
+	for (i = 0; i < intf->desc.bNumEndpoints; i++) {
 		ep = &intf->ep_desc[i];
 
 		if (USB_EP_IS_XFER_BULK(ep)) {
@@ -517,28 +517,28 @@ static int usb_stor_probe(struct usb_device *usbdev,
 	struct us_data *us;
 	int result;
 	int ifno;
-	struct usb_interface_descriptor *intf;
+	struct usb_interface *intf;
 
 	US_DEBUGP("Supported USB Mass Storage device detected\n");
 
 	/* scan usbdev interfaces again to find one that we can handle */
 	for (ifno=0; ifno<usbdev->config.no_of_if; ifno++) {
-		intf = &usbdev->config.if_desc[ifno];
+		intf = &usbdev->config.interface[ifno];
 
-		if (intf->bInterfaceClass    == USB_CLASS_MASS_STORAGE &&
-		    intf->bInterfaceSubClass == US_SC_SCSI &&
-		    intf->bInterfaceProtocol == US_PR_BULK)
+		if (intf->desc.bInterfaceClass    == USB_CLASS_MASS_STORAGE &&
+		    intf->desc.bInterfaceSubClass == US_SC_SCSI &&
+		    intf->desc.bInterfaceProtocol == US_PR_BULK)
 			break;
 	}
 	if (ifno >= usbdev->config.no_of_if)
 		return -ENXIO;
 
 	/* select the right interface */
-	result = usb_set_interface(usbdev, intf->bInterfaceNumber, 0);
+	result = usb_set_interface(usbdev, intf->desc.bInterfaceNumber, 0);
 	if (result)
 		return result;
 
-	US_DEBUGP("Selected interface %d\n", (int)intf->bInterfaceNumber);
+	US_DEBUGP("Selected interface %d\n", (int)intf->desc.bInterfaceNumber);
 
 	/* allocate us_data structure */
 	us = (struct us_data *)malloc(sizeof(struct us_data));
@@ -549,9 +549,9 @@ static int usb_stor_probe(struct usb_device *usbdev,
 	/* initialize the us_data structure */
 	us->pusb_dev = usbdev;
 	us->flags = 0;
-	us->ifnum = intf->bInterfaceNumber;
-	us->subclass = intf->bInterfaceSubClass;
-	us->protocol = intf->bInterfaceProtocol;
+	us->ifnum = intf->desc.bInterfaceNumber;
+	us->subclass = intf->desc.bInterfaceSubClass;
+	us->protocol = intf->desc.bInterfaceProtocol;
 	INIT_LIST_HEAD(&us->blk_dev_list);
 
 	/* get standard transport and protocol settings */
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 4877e32..74b97a9 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -39,13 +39,6 @@
 
 #define USB_CNTL_TIMEOUT 100 /* 100ms timeout */
 
-/* String descriptor */
-struct usb_string_descriptor {
-	unsigned char	bLength;
-	unsigned char	bDescriptorType;
-	unsigned short	wData[1];
-} __attribute__ ((packed));
-
 /* device request (setup) */
 struct devrequest {
 	unsigned char	requesttype;
@@ -102,12 +95,6 @@ struct usb_interface_descriptor {
 	unsigned char	bInterfaceSubClass;
 	unsigned char	bInterfaceProtocol;
 	unsigned char	iInterface;
-
-	unsigned char	no_of_ep;
-	unsigned char	num_altsetting;
-	unsigned char	act_altsetting;
-
-	struct usb_endpoint_descriptor ep_desc[USB_MAXENDPOINTS];
 } __attribute__ ((packed));
 
 
@@ -121,9 +108,6 @@ struct usb_config_descriptor {
 	unsigned char	iConfiguration;
 	unsigned char	bmAttributes;
 	unsigned char	MaxPower;
-
-	unsigned char	no_of_if;	/* number of interfaces */
-	struct usb_interface_descriptor if_desc[USB_MAXINTERFACES];
 } __attribute__ ((packed));
 
 enum {
@@ -134,6 +118,23 @@ enum {
 	PACKET_SIZE_64  = 3,
 };
 
+struct usb_interface {
+	struct usb_interface_descriptor desc;
+
+	unsigned char	no_of_ep;
+	unsigned char	num_altsetting;
+	unsigned char	act_altsetting;
+
+	struct usb_endpoint_descriptor ep_desc[USB_MAXENDPOINTS];
+};
+
+struct usb_configuration {
+	struct usb_config_descriptor desc;
+
+	unsigned char	no_of_if;	/* number of interfaces */
+	struct usb_interface interface[USB_MAXINTERFACES];
+};
+
 struct usb_device {
 	int	devnum;			/* Device number on USB bus */
 	int	speed;			/* full/low/high */
@@ -154,7 +155,7 @@ struct usb_device {
 
 	int configno;			/* selected config number */
 	struct usb_device_descriptor *descriptor; /* Device Descriptor */
-	struct usb_config_descriptor config; /* config descriptor */
+	struct usb_configuration config; /* config descriptor */
 	struct devrequest *setup_packet;
 
 	int have_langid;		/* whether string_langid is valid yet */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
