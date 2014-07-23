Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x235.google.com ([2a00:1450:400c:c05::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9wxq-0006J5-87
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 13:52:17 +0000
Received: by mail-wi0-f181.google.com with SMTP id bs8so2224222wib.14
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 06:51:50 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 15:51:48 +0200
Message-Id: <1406123512-26489-8-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 07/10] USB: EHCI: make use of defines for descriptors
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Now that we have a full set of defines for each descriptor field,
make use of it for the EHCI HCD descriptors.

This fixes endianess issues for .device.bcdUSB, .device.bcdDevice,
.config.wTotalLength, and .endpoint.wMaxPacketSize.

Also, .endpoint.bInterval was set to 0 instead of 255 due to a
copy-and-paste error while assigning u8[] to usb_endpoint_descriptor.

This also is a preparation for including ch11.h later, which has
a modified usb_hub_descriptor for USB 3.0.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 drivers/usb/host/ehci-hcd.c | 104 ++++++++++++++++++++++----------------------
 1 file changed, 52 insertions(+), 52 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 7857576738d7..a3063f988da0 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -61,62 +61,62 @@ static struct descriptor {
 	struct usb_interface_descriptor interface;
 	struct usb_endpoint_descriptor endpoint;
 }  __attribute__ ((packed)) descriptor = {
-	{
-		0x8,		/* bDescLength */
-		0x29,		/* bDescriptorType: hub descriptor */
-		2,		/* bNrPorts -- runtime modified */
-		0,		/* wHubCharacteristics */
-		10,		/* bPwrOn2PwrGood */
-		0,		/* bHubCntrCurrent */
-		{},		/* Device removable */
-		{}		/* at most 7 ports! XXX */
+	.hub = {
+		.bLength		= USB_DT_HUB_NONVAR_SIZE +
+					  ((USB_MAXCHILDREN + 1 + 7) / 8),
+		.bDescriptorType	= USB_DT_HUB,
+		.bNbrPorts		= 2,	/* runtime modified */
+		.wHubCharacteristics	= 0,
+		.bPwrOn2PwrGood		= 10,
+		.bHubContrCurrent	= 0,
+		.DeviceRemovable	= {},
+		.PortPowerCtrlMask	= {}
 	},
-	{
-		0x12,		/* bLength */
-		1,		/* bDescriptorType: UDESC_DEVICE */
-		0x0002,		/* bcdUSB: v2.0 */
-		9,		/* bDeviceClass: UDCLASS_HUB */
-		0,		/* bDeviceSubClass: UDSUBCLASS_HUB */
-		1,		/* bDeviceProtocol: UDPROTO_HSHUBSTT */
-		64,		/* bMaxPacketSize: 64 bytes */
-		0x0000,		/* idVendor */
-		0x0000,		/* idProduct */
-		0x0001,		/* bcdDevice */
-		1,		/* iManufacturer */
-		2,		/* iProduct */
-		0,		/* iSerialNumber */
-		1		/* bNumConfigurations: 1 */
+	.device = {
+		.bLength		= USB_DT_DEVICE_SIZE,
+		.bDescriptorType	= USB_DT_DEVICE,
+		.bcdUSB			= __constant_cpu_to_le16(0x0002), /* v2.0 */
+		.bDeviceClass		= USB_CLASS_HUB,
+		.bDeviceSubClass	= 0,
+		.bDeviceProtocol	= 1,	/* bDeviceProtocol: UDPROTO_HSHUBSTT */
+		.bMaxPacketSize0	= 64,
+		.idVendor		= 0x0000,
+		.idProduct		= 0x0000,
+		.bcdDevice		= __constant_cpu_to_le16(0x0001),
+		.iManufacturer		= 1,
+		.iProduct		= 2,
+		.iSerialNumber		= 0,
+		.bNumConfigurations	= 1
 	},
-	{
-		0x9,
-		2,		/* bDescriptorType: UDESC_CONFIG */
-		cpu_to_le16(0x19),
-		1,		/* bNumInterface */
-		1,		/* bConfigurationValue */
-		0,		/* iConfiguration */
-		0x40,		/* bmAttributes: UC_SELF_POWER */
-		0		/* bMaxPower */
+	.config = {
+		.bLength		= USB_DT_CONFIG_SIZE,
+		.bDescriptorType	= USB_DT_CONFIG,
+		.wTotalLength		= __constant_cpu_to_le16(USB_DT_CONFIG_SIZE +
+					 USB_DT_INTERFACE_SIZE + USB_DT_ENDPOINT_SIZE),
+		.bNumInterfaces		= 1,
+		.bConfigurationValue	= 1,
+		.iConfiguration		= 0,
+		.bmAttributes		= USB_CONFIG_ATT_SELFPOWER,
+		.bMaxPower		= 0
 	},
-	{
-		0x9,		/* bLength */
-		4,		/* bDescriptorType: UDESC_INTERFACE */
-		0,		/* bInterfaceNumber */
-		0,		/* bAlternateSetting */
-		1,		/* bNumEndpoints */
-		9,		/* bInterfaceClass: UICLASS_HUB */
-		0,		/* bInterfaceSubClass: UISUBCLASS_HUB */
-		0,		/* bInterfaceProtocol: UIPROTO_HSHUBSTT */
-		0		/* iInterface */
+	.interface = {
+		.bLength		= USB_DT_INTERFACE_SIZE,
+		.bDescriptorType	= USB_DT_INTERFACE,
+		.bInterfaceNumber	= 0,
+		.bAlternateSetting	= 0,
+		.bNumEndpoints		= 1,
+		.bInterfaceClass	= USB_CLASS_HUB,
+		.bInterfaceSubClass	= 0,
+		.bInterfaceProtocol	= 0,	/* bInterfaceProtocol: UIPROTO_HSHUBSTT */
+		.iInterface		= 0
 	},
-	{
-		0x7,		/* bLength */
-		5,		/* bDescriptorType: UDESC_ENDPOINT */
-		0x81,		/* bEndpointAddress:
-				 * UE_DIR_IN | EHCI_INTR_ENDPT
-				 */
-		3,		/* bmAttributes: UE_INTERRUPT */
-		8, 0,		/* wMaxPacketSize */
-		255		/* bInterval */
+	.endpoint = {
+		.bLength		= USB_DT_ENDPOINT_SIZE,
+		.bDescriptorType	= USB_DT_ENDPOINT,
+		.bEndpointAddress	= 0x81,	/* UE_DIR_IN | EHCI_INTR_ENDPT */
+		.bmAttributes		= USB_ENDPOINT_XFER_INT,
+		.wMaxPacketSize		= __constant_cpu_to_le16((USB_MAXCHILDREN + 1 + 7) / 8),
+		.bInterval		= 255
 	},
 };
 
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
