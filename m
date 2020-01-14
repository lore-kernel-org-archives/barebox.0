Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irM8w-0002Mq-95
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 13:22:07 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 14 Jan 2020 14:21:09 +0100
Message-Id: <20200114132112.4119-5-jmaselbas@kalray.eu>
In-Reply-To: <20200114132112.4119-1-jmaselbas@kalray.eu>
References: <20191220143232.28354-10-s.hauer@pengutronix.de>
 <20200114132112.4119-1-jmaselbas@kalray.eu>
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
Subject: [RFC PATCH 4/7] usb: dwc2: Rework roothub interface
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Jules Maselbas <jmaselbas@kalray.eu>

Roothub requests are now decoded in one place.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/dwc2.h |   2 +-
 drivers/usb/dwc2/host.c |   4 +-
 drivers/usb/dwc2/rhub.c | 520 +++++++++++++++++++---------------------
 3 files changed, 246 insertions(+), 280 deletions(-)

diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
index 0ac4b40fc..0a4323ab4 100644
--- a/drivers/usb/dwc2/dwc2.h
+++ b/drivers/usb/dwc2/dwc2.h
@@ -35,7 +35,7 @@ int dwc2_submit_int_msg(struct usb_device *dev, unsigned long pipe,
 			void *buffer, int transfer_len, int interval);
 int dwc2_host_init(struct usb_host *host);
 
-int dwc2_submit_rh_msg(struct dwc2 *dwc2, struct usb_device *dev,
+int dwc2_submit_roothub(struct dwc2 *dwc2, struct usb_device *dev,
 		unsigned long pipe, void *buf, int len,
 		struct devrequest *setup);
 
diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index 84eb9b627..2cde5977b 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -332,9 +332,9 @@ int dwc2_submit_control_msg(struct usb_device *udev,
 	int status_direction;
 
 	if (devnum == dwc2->root_hub_devnum) {
-		udev->status = 0;
 		udev->speed = USB_SPEED_HIGH;
-		return dwc2_submit_rh_msg(dwc2, udev, pipe, buffer, len, setup);
+		ret = dwc2_submit_roothub(dwc2, udev, pipe, buffer, len, setup);
+		return ret;
 	}
 
 	/* SETUP stage */
diff --git a/drivers/usb/dwc2/rhub.c b/drivers/usb/dwc2/rhub.c
index b94723d7b..cc733f34e 100644
--- a/drivers/usb/dwc2/rhub.c
+++ b/drivers/usb/dwc2/rhub.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 #include "dwc2.h"
 
 static struct descriptor {
@@ -6,7 +7,7 @@ static struct descriptor {
 	struct usb_config_descriptor config;
 	struct usb_interface_descriptor interface;
 	struct usb_endpoint_descriptor endpoint;
-}  __attribute__ ((packed)) descriptor = {
+}  __packed descriptor = {
 	.hub = {
 		.bLength		= USB_DT_HUB_NONVAR_SIZE +
 					  ((USB_MAXCHILDREN + 1 + 7) / 8),
@@ -21,7 +22,7 @@ static struct descriptor {
 	.device = {
 		.bLength		= USB_DT_DEVICE_SIZE,
 		.bDescriptorType	= USB_DT_DEVICE,
-		.bcdUSB			= __constant_cpu_to_le16(2), /* v2.0 */
+		.bcdUSB			= cpu_to_le16(2), /* v2.0 */
 		.bDeviceClass		= USB_CLASS_HUB,
 		.bDeviceSubClass	= 0,
 		.bDeviceProtocol	= USB_HUB_PR_HS_NO_TT,
@@ -37,7 +38,7 @@ static struct descriptor {
 	.config = {
 		.bLength		= USB_DT_CONFIG_SIZE,
 		.bDescriptorType	= USB_DT_CONFIG,
-		.wTotalLength		= __constant_cpu_to_le16(
+		.wTotalLength		= cpu_to_le16(
 						USB_DT_CONFIG_SIZE +
 						USB_DT_INTERFACE_SIZE +
 						USB_DT_ENDPOINT_SIZE),
@@ -63,356 +64,321 @@ static struct descriptor {
 		.bDescriptorType	= USB_DT_ENDPOINT,
 		.bEndpointAddress	= 1 | USB_DIR_IN, /* 0x81 */
 		.bmAttributes		= USB_ENDPOINT_XFER_INT,
-		.wMaxPacketSize		= __constant_cpu_to_le16(
+		.wMaxPacketSize		= cpu_to_le16(
 						(USB_MAXCHILDREN + 1 + 7) / 8),
 		.bInterval		= 255
 	},
 };
 
-static char *language_string = "\x09\x04";
-static char *vendor_string = "u-boot";
-static char *product_string = "DWC2 root hub";
-
-/*
- * DWC2 to USB API interface
- */
-static int dwc2_submit_rh_msg_in_status(struct dwc2 *dwc2,
-					   struct usb_device *dev, void *buffer,
-					   int txlen, struct devrequest *cmd)
+static int dwc2_get_port_status(struct dwc2 *dwc2, struct usb_device *dev,
+		void *buf, int len)
 {
 	struct usb_port_status *portsts;
-	uint32_t hprt0 = 0;
-	uint32_t port_status = 0;
-	uint32_t port_change = 0;
-	int len = 0;
+	uint32_t hprt0;
+	uint32_t status = 0;
+	uint32_t change = 0;
 	int speed;
 
-	switch (cmd->requesttype & (USB_TYPE_MASK | USB_RECIP_MASK)) {
-	case USB_TYPE_STANDARD | USB_RECIP_DEVICE:
-		*(uint16_t *)buffer = cpu_to_le16(1);
-		len = 2;
-		break;
-	case USB_TYPE_STANDARD | USB_RECIP_INTERFACE:
-	case USB_TYPE_STANDARD | USB_RECIP_ENDPOINT:
-		*(uint16_t *)buffer = cpu_to_le16(0);
-		len = 2;
-		break;
-	case USB_RT_HUB:	/* USB_TYPE_CLASS | USB_RECIP_DEVICE */
-		*(uint32_t *)buffer = cpu_to_le32(0);
-		len = 4;
-		break;
-	case USB_RT_PORT:	/* USB_TYPE_CLASS | USB_RECIP_OTHER */
-		hprt0 = dwc2_readl(dwc2, HPRT0);
+	if (!buf || len < sizeof(*portsts))
+		return -1;
 
-		if (hprt0 & HPRT0_CONNSTS)
-			port_status |= USB_PORT_STAT_CONNECTION;
-		if (hprt0 & HPRT0_ENA)
-			port_status |= USB_PORT_STAT_ENABLE;
-		if (hprt0 & HPRT0_SUSP)
-			port_status |= USB_PORT_STAT_SUSPEND;
-		if (hprt0 & HPRT0_OVRCURRACT)
-			port_status |= USB_PORT_STAT_OVERCURRENT;
-		if (hprt0 & HPRT0_RST)
-			port_status |= USB_PORT_STAT_RESET;
-		if (hprt0 & HPRT0_PWR)
-			port_status |= USB_PORT_STAT_POWER;
-
-		speed = (hprt0 & HPRT0_SPD_MASK) >> HPRT0_SPD_SHIFT;
-		if (speed == HPRT0_SPD_HIGH_SPEED)
-			port_status |= USB_PORT_STAT_HIGH_SPEED;
-		else if (speed == HPRT0_SPD_LOW_SPEED)
-			port_status |= USB_PORT_STAT_LOW_SPEED;
-
-		if (hprt0 & HPRT0_ENACHG)
-			port_change |= USB_PORT_STAT_C_ENABLE;
-		if (hprt0 & HPRT0_CONNDET)
-			port_change |= USB_PORT_STAT_C_CONNECTION;
-		if (hprt0 & HPRT0_OVRCURRCHG)
-			port_change |= USB_PORT_STAT_C_OVERCURRENT;
-
-		portsts = buffer;
-		portsts->wPortStatus = cpu_to_le16(port_status);
-		portsts->wPortChange = cpu_to_le16(port_change);
-		len = sizeof(*portsts);
+	hprt0 = dwc2_readl(dwc2, HPRT0);
+
+	if (hprt0 & HPRT0_CONNSTS)
+		status |= USB_PORT_STAT_CONNECTION;
+	if (hprt0 & HPRT0_ENA)
+		status |= USB_PORT_STAT_ENABLE;
+	if (hprt0 & HPRT0_SUSP)
+		status |= USB_PORT_STAT_SUSPEND;
+	if (hprt0 & HPRT0_OVRCURRACT)
+		status |= USB_PORT_STAT_OVERCURRENT;
+	if (hprt0 & HPRT0_RST)
+		status |= USB_PORT_STAT_RESET;
+	if (hprt0 & HPRT0_PWR)
+		status |= USB_PORT_STAT_POWER;
+
+	speed = (hprt0 & HPRT0_SPD_MASK) >> HPRT0_SPD_SHIFT;
+	if (speed == HPRT0_SPD_HIGH_SPEED)
+		status |= USB_PORT_STAT_HIGH_SPEED;
+	else if (speed == HPRT0_SPD_LOW_SPEED)
+		status |= USB_PORT_STAT_LOW_SPEED;
+
+	if (hprt0 & HPRT0_ENACHG)
+		change |= USB_PORT_STAT_C_ENABLE;
+	if (hprt0 & HPRT0_CONNDET)
+		change |= USB_PORT_STAT_C_CONNECTION;
+	if (hprt0 & HPRT0_OVRCURRCHG)
+		change |= USB_PORT_STAT_C_OVERCURRENT;
+
+	portsts = buf;
+	portsts->wPortStatus = cpu_to_le16(status);
+	portsts->wPortChange = cpu_to_le16(change);
+
+	dev->act_len = sizeof(*portsts);
+	dev->status = 0;
 
-		break;
-	default:
-		goto unknown;
-	}
+	return 0;
+}
 
-	dev->act_len = min(len, txlen);
-	dev->status = 0;
+static int dwc2_get_hub_status(struct dwc2 *dwc2, struct usb_device *dev,
+		void *buf, int len)
+{
+	if (!buf || len < 4)
+		return -1;
+
+	*(uint32_t *)buf = 0;
+	dev->act_len = 4;
+	dev->status  = 0;
 
 	return 0;
+}
 
-unknown:
-	dev->act_len = 0;
-	dev->status = USB_ST_STALLED;
+static int dwc2_get_hub_descriptor(struct dwc2 *dwc2, struct usb_device *dev,
+		void *buf, int len)
+{
+	if (!buf)
+		return -1;
+
+	dev->act_len = min_t(int, len, descriptor.hub.bLength);
+	dev->status = 0;
+	memcpy(buf, &descriptor.hub, dev->act_len);
 
-	return -1;
+	return 0;
 }
 
-static void strtodesc(char *dest, char *src, size_t n)
+static void strle16(__le16 *dest, char *src, size_t n)
 {
 	unsigned int i;
 
-	dest[0] = n;
-	dest[1] = 0x3;
-	for (i = 2; i < n && *src != '\0'; i += 2) {
-		dest[i] = *(src++);
-		dest[i + 1] = 0;
-	}
+	for (i = 0; i < n && *src != '\0'; i++, src++)
+		dest[i] = cpu_to_le16(*src);
 }
 
-/* Direction: In ; Request: Descriptor */
-static int dwc2_submit_rh_msg_in_descriptor(struct usb_device *dev,
-					       void *buffer, int txlen,
-					       struct devrequest *cmd)
+static int dwc2_get_string_descriptor(struct dwc2 *dwc2, struct usb_device *dev,
+			       void *buf, int len, int index)
 {
-	int len = 0;
-	char *src;
-	uint16_t wValue = le16_to_cpu(cmd->value);
-	uint16_t wLength = le16_to_cpu(cmd->length);
-
-	switch (cmd->requesttype & (USB_TYPE_MASK | USB_RECIP_MASK)) {
-	case USB_TYPE_STANDARD | USB_RECIP_DEVICE:
-		switch (wValue >> 8) {
-		case USB_DT_DEVICE:
-			debug("USB_DT_DEVICE request\n");
-			len = min3(txlen, (int)descriptor.device.bLength, (int)wLength);
-			memcpy(buffer, &descriptor.device, len);
-			break;
-		case USB_DT_CONFIG:
-			debug("USB_DT_CONFIG config\n");
-			len = min3(txlen, (int)descriptor.config.wTotalLength, (int)wLength);
-			memcpy(buffer, &descriptor.config, len);
-			break;
-		case USB_DT_STRING:
-			debug("USB_DT_STRING: %#x\n", wValue);
-			switch (wValue & 0xff) {
-			case 0: /* Language */
-				src = language_string;
-				len = strlen(src) + 2;
-				((char *)buffer)[0] = len;
-				((char *)buffer)[1] = 0x03;
-				memcpy(buffer + 2, src, strlen(src));
-				break;
-			case 1: /* Vendor */
-				src = vendor_string;
-				len = 2 * strlen(src) + 2;
-				strtodesc(buffer, src, len);
-				break;
-			case 2: /* Product */
-				src = product_string;
-				len = 2 * strlen(src) + 2;
-				strtodesc(buffer, src, len);
-				break;
-			default:
-				debug("%s(): unknown string index 0x%x\n", __func__, wValue & 0xff);
-				goto unknown;
-			}
-			len = min3(txlen, len, (int)wLength);
-			break;
-		default:
-			debug("%s(): unknown requesttype: 0x%x\n", __func__,
-			       cmd->requesttype & (USB_TYPE_MASK | USB_RECIP_MASK));
-			goto unknown;
-		}
-		break;
+	char *src, *str = buf;
+	__le16 *le16 = (__le16 *)(str + 2);
+	int size;
+
+	if (!buf || len < 2)
+		return -1;
 
-	case USB_RT_HUB:	/* USB_TYPE_CLASS | USB_RECIP_DEVICE */
-		debug("USB_RT_HUB\n");
+	switch (index) {
+	case 0: /* Language */
+		src = "\x09\x04";
+		size = strlen(src) + 2;
+		len = min_t(int, len, size);
 
-		len = min3(txlen, (int)descriptor.hub.bLength, (int)wLength);
-		memcpy(buffer, &descriptor.hub, len);
+		str[0] = size;
+		str[1] = 0x03;
+		memcpy(str + 2, src, len - 2);
+		break;
+	case 1: /* Vendor */
+		src = "u-boot";
+		size = 2 * strlen(src) + 2;
+		len = min_t(int, len, size);
+
+		str[0] = size;
+		str[1] = 0x03;
+		strle16(le16, src, (len - 2) / 2);
+		break;
+	case 2: /* Product */
+		src = "DWC2 root hub";
+		size = 2 * strlen(src) + 2;
+		len = min_t(int, len, size);
+
+		str[0] = size;
+		str[1] = 0x03;
+		strle16(le16, src, (len - 2) / 2);
 		break;
 	default:
-		goto unknown;
+		dwc2_err(dwc2, "roothub: unknown string descriptor: 0x%x\n",
+				index);
+		return -1;
 	}
 
 	dev->act_len = len;
 	dev->status = 0;
 
 	return 0;
-
-unknown:
-	dev->act_len = 0;
-	dev->status = USB_ST_STALLED;
-
-	return -1;
 }
 
-/* Direction: In ; Request: Configuration */
-static int dwc2_submit_rh_msg_in_configuration(struct usb_device *dev,
-					       void *buffer, int txlen,
-					       struct devrequest *cmd)
+static int dwc2_get_descriptor(struct dwc2 *dwc2, struct usb_device *dev,
+			       void *buf, int len, int value)
 {
-	int len = 0;
+	int index = value >> 8;
+
+	if (!buf || len < 0)
+		return -1;
 
-	switch (cmd->requesttype & (USB_TYPE_MASK | USB_RECIP_MASK)) {
-	case USB_TYPE_STANDARD | USB_RECIP_DEVICE:
-		*(uint8_t *)buffer = 0x01;
-		len = min(txlen, 1);
+	switch (index) {
+	case USB_DT_DEVICE:
+		len = min(len, (int)descriptor.device.bLength);
+		memcpy(buf, &descriptor.device, len);
 		break;
+	case USB_DT_CONFIG:
+		len = min(len, (int)descriptor.config.wTotalLength);
+		memcpy(buf, &descriptor.config, len);
+		break;
+	case USB_DT_STRING:
+		value &= 0xff;
+		return dwc2_get_string_descriptor(dwc2, dev, buf, len, value);
 	default:
-		goto unknown;
+		dwc2_err(dwc2, "roothub: unknown descriptor: 0x%x\n", index);
+		return -1;
 	}
 
 	dev->act_len = len;
 	dev->status = 0;
 
 	return 0;
-
-unknown:
-	dev->act_len = 0;
-	dev->status = USB_ST_STALLED;
-
-	return -1;
 }
 
-/* Direction: In */
-static int dwc2_submit_rh_msg_in(struct dwc2 *dwc2,
-				 struct usb_device *dev, void *buffer,
-				 int txlen, struct devrequest *cmd)
+static int dwc2_set_port_feature(struct dwc2 *dwc2, struct usb_device *dev,
+		int feature)
 {
-	switch (cmd->request) {
-	case USB_REQ_GET_STATUS:
-		return dwc2_submit_rh_msg_in_status(dwc2, dev, buffer,
-						       txlen, cmd);
-	case USB_REQ_GET_DESCRIPTOR:
-		return dwc2_submit_rh_msg_in_descriptor(dev, buffer,
-							   txlen, cmd);
-	case USB_REQ_GET_CONFIGURATION:
-		return dwc2_submit_rh_msg_in_configuration(dev, buffer,
-							      txlen, cmd);
-	default:
-		dev->act_len = 0;
-		dev->status = USB_ST_STALLED;
+	uint32_t hprt0;
+
+	hprt0 = dwc2_readl(dwc2, HPRT0);
+	hprt0 &= ~(HPRT0_ENA | HPRT0_CONNDET | HPRT0_ENACHG | HPRT0_OVRCURRCHG);
+
+	switch (feature) {
+	case USB_PORT_FEAT_SUSPEND:
+		break;
+	case USB_PORT_FEAT_RESET:
+		hprt0 |= HPRT0_RST;
+		dwc2_writel(dwc2, hprt0, HPRT0);
+
+		mdelay(60);
 
+		hprt0 = dwc2_readl(dwc2, HPRT0);
+		hprt0 &= ~HPRT0_RST;
+		dwc2_writel(dwc2, hprt0, HPRT0);
+		break;
+	case USB_PORT_FEAT_POWER:
+		break;
+	case USB_PORT_FEAT_ENABLE:
+		/* Set by the core after a reset */
+		break;
+	default:
+		dwc2_dbg(dwc2, "roothub: unsupported set port feature 0x%x\n",
+				feature);
 		return -1;
 	}
+
+	dev->act_len = 0;
+	dev->status = 0;
+
+	return 0;
 }
 
-/* Direction: Out */
-static int dwc2_submit_rh_msg_out(struct dwc2 *dwc2,
-				  struct usb_device *dev,
-				  void *buffer, int txlen,
-				  struct devrequest *cmd)
+static int dwc2_clear_port_feature(struct dwc2 *dwc2, struct usb_device *dev,
+		int feature)
 {
-	uint16_t wValue = le16_to_cpu(cmd->value);
 	uint32_t hprt0;
 
-	switch (cmd->requesttype & (USB_TYPE_MASK | USB_RECIP_MASK)) {
-	case USB_TYPE_STANDARD | USB_RECIP_DEVICE:
-		switch (cmd->request) {
-		case USB_REQ_SET_ADDRESS:
-			dwc2_dbg(dwc2, "set root hub addr %d\n", wValue);
-			dwc2->root_hub_devnum = wValue;
-			break;
-		case USB_REQ_SET_CONFIGURATION:
-			break;
-		default:
-			goto unknown;
-		}
+	hprt0 = dwc2_readl(dwc2, HPRT0);
+	hprt0 &= ~(HPRT0_ENA | HPRT0_CONNDET | HPRT0_ENACHG | HPRT0_OVRCURRCHG);
+
+	switch (feature) {
+	case USB_PORT_FEAT_ENABLE:
+		hprt0 |= HPRT0_ENA;
+		break;
+	case USB_PORT_FEAT_SUSPEND:
+		break;
+	case USB_PORT_FEAT_POWER:
 		break;
-	case USB_TYPE_STANDARD | USB_RECIP_ENDPOINT:
-	case USB_RT_HUB:	/* USB_TYPE_CLASS | USB_RECIP_DEVICE */
-		switch (cmd->request) {
-		case USB_REQ_CLEAR_FEATURE:
-			break;
-		}
+	case USB_PORT_FEAT_C_CONNECTION:
+		hprt0 |= HPRT0_CONNDET;
 		break;
-	case USB_RT_PORT:	/* USB_TYPE_CLASS | USB_RECIP_OTHER */
-		switch (cmd->request) {
-		case USB_REQ_CLEAR_FEATURE:
-			hprt0 = dwc2_readl(dwc2, HPRT0);
-			hprt0 &= ~(HPRT0_ENA | HPRT0_CONNDET
-				   | HPRT0_ENACHG | HPRT0_OVRCURRCHG);
-			switch (wValue) {
-			case USB_PORT_FEAT_ENABLE:
-				hprt0 |= HPRT0_ENA;
-				break;
-			case USB_PORT_FEAT_SUSPEND:
-				break;
-			case USB_PORT_FEAT_POWER:
-				break;
-			case USB_PORT_FEAT_C_CONNECTION:
-				hprt0 |= HPRT0_CONNDET;
-				break;
-			case USB_PORT_FEAT_C_ENABLE:
-				hprt0 |= HPRT0_ENACHG;
-				break;
-			case USB_PORT_FEAT_C_OVER_CURRENT:
-				hprt0 |= HPRT0_OVRCURRCHG;
-				break;
-			default:
-				dwc2_dbg(dwc2, "unknown feature 0x%x\n", wValue);
-				goto unknown;
-			}
-			dwc2_writel(dwc2, hprt0, HPRT0);
-			break;
-		case USB_REQ_SET_FEATURE:
-			hprt0 = dwc2_readl(dwc2, HPRT0);
-			hprt0 &= ~(HPRT0_ENA | HPRT0_CONNDET
-				   | HPRT0_ENACHG | HPRT0_OVRCURRCHG);
-			switch (wValue) {
-			case USB_PORT_FEAT_SUSPEND:
-				break;
-			case USB_PORT_FEAT_RESET:
-				hprt0 |= HPRT0_RST;
-				dwc2_writel(dwc2, hprt0, HPRT0);
-
-				mdelay(60);
-
-				hprt0 = dwc2_readl(dwc2, HPRT0);
-				hprt0 &= ~HPRT0_RST;
-				dwc2_writel(dwc2, hprt0, HPRT0);
-				break;
-			case USB_PORT_FEAT_POWER:
-				break;
-			case USB_PORT_FEAT_ENABLE:
-				/* Set by the core after a reset */
-				break;
-			default:
-				dwc2_dbg(dwc2, "unknown feature 0x%x\n", wValue);
-				goto unknown;
-			}
-			break;
-		default: goto unknown;
-		}
+	case USB_PORT_FEAT_C_ENABLE:
+		hprt0 |= HPRT0_ENACHG;
+		break;
+	case USB_PORT_FEAT_C_OVER_CURRENT:
+		hprt0 |= HPRT0_OVRCURRCHG;
 		break;
 	default:
-		goto unknown;
+		dwc2_dbg(dwc2, "roothub: unsupported clear port feature 0x%x\n",
+				feature);
+		return -1;
 	}
 
+	dwc2_writel(dwc2, hprt0, HPRT0);
+
 	dev->act_len = 0;
 	dev->status = 0;
 
 	return 0;
+}
+
+static int dwc2_set_address(struct dwc2 *dwc2, struct usb_device *dev, int addr)
+{
+	dwc2_dbg(dwc2, "roothub: set address to %d\n", addr);
+	dwc2->root_hub_devnum = addr;
 
-unknown:
 	dev->act_len = 0;
-	dev->status = USB_ST_STALLED;
-	return -1;
+	dev->status = 0;
+
+	return 0;
 }
 
-int
-dwc2_submit_rh_msg(struct dwc2 *dwc2, struct usb_device *dev,
-				 unsigned long pipe, void *buffer, int txlen,
-				 struct devrequest *cmd)
+int dwc2_submit_roothub(struct dwc2 *dwc2, struct usb_device *dev,
+		unsigned long pipe, void *buf, int len,
+		struct devrequest *setup)
 {
-	int stat = 0;
+	unsigned char reqtype = setup->requesttype;
+	unsigned char request = setup->request;
+	unsigned short value = le16_to_cpu(setup->value);
+	unsigned short size  = le16_to_cpu(setup->length);
+	int minlen = min_t(int, len, size);
 
 	if (usb_pipeint(pipe)) {
-		dwc2_err(dwc2, "Root-Hub submit IRQ: NOT implemented\n");
+		dwc2_err(dwc2, "roothub: submit IRQ NOT implemented\n");
 		return 0;
 	}
 
-	if (cmd->requesttype & USB_DIR_IN)
-		stat = dwc2_submit_rh_msg_in(dwc2, dev, buffer, txlen, cmd);
-	else
-		stat = dwc2_submit_rh_msg_out(dwc2, dev, buffer, txlen, cmd);
+	dev->act_len = 0;
+	dev->status = USB_ST_STALLED;
+
+#define REQ(l, u) ((l) | ((u) << 8))
+
+	switch (REQ(request, reqtype)) {
+	case REQ(USB_REQ_GET_DESCRIPTOR, USB_DIR_IN | USB_RT_HUB):
+		return dwc2_get_hub_descriptor(dwc2, dev, buf, minlen);
+
+	case REQ(USB_REQ_GET_DESCRIPTOR, USB_DIR_IN):
+		return dwc2_get_descriptor(dwc2, dev, buf, minlen, value);
+
+	case REQ(USB_REQ_GET_STATUS, USB_DIR_IN | USB_RT_HUB):
+		return dwc2_get_hub_status(dwc2, dev, buf, len);
+
+	case REQ(USB_REQ_GET_STATUS, USB_DIR_IN | USB_RT_PORT):
+		return dwc2_get_port_status(dwc2, dev, buf, len);
 
-	mdelay(1);
-	return stat;
+	case REQ(USB_REQ_SET_FEATURE, USB_DIR_OUT | USB_RT_PORT):
+		return dwc2_set_port_feature(dwc2, dev, value);
+
+	case REQ(USB_REQ_CLEAR_FEATURE, USB_DIR_OUT | USB_RT_PORT):
+		return dwc2_clear_port_feature(dwc2, dev, value);
+
+	case REQ(USB_REQ_SET_ADDRESS, USB_DIR_OUT):
+		return dwc2_set_address(dwc2, dev, value);
+
+	case REQ(USB_REQ_SET_CONFIGURATION, USB_DIR_OUT):
+		dev->act_len = 0;
+		dev->status = 0;
+		return 0;
+
+	case REQ(USB_REQ_GET_CONFIGURATION, USB_DIR_IN):
+		*(char *)buf = 1;
+		dev->act_len = 1;
+		dev->status = 0;
+		return 0;
+	}
+
+	dwc2_err(dwc2, "roothub: unsupported request 0x%x requesttype 0x%x\n",
+		 request, reqtype);
+
+	return 0;
 }
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
