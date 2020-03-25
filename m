Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Br-0004P0-Gw
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:31:08 +0100
Message-Id: <20200325123111.9612-22-s.hauer@pengutronix.de>
In-Reply-To: <20200325123111.9612-1-s.hauer@pengutronix.de>
References: <20200325123111.9612-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 21/24] usb: Add super speed support
To: Barebox List <barebox@lists.infradead.org>

This adds the missing bits and pieces to add super speed support to the
USB stack. It is based on the corresponding U-Boot code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 50 ++++++++++++++++++++++++++++++++----------
 drivers/usb/core/usb.c | 25 ++++++++++++++++-----
 include/usb/ch9.h      | 20 +++++++++++++++++
 include/usb/usb.h      | 18 +++++++++++++++
 include/usb/usb_defs.h |  1 +
 5 files changed, 97 insertions(+), 17 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 805b6b9027..9954c0568f 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -165,12 +165,16 @@ static void usb_hub_power_on(struct usb_hub_device *hub)
 
 static inline char *portspeed(int portstatus)
 {
-	if (portstatus & (1 << USB_PORT_FEAT_HIGHSPEED))
+	switch (portstatus & USB_PORT_STAT_SPEED_MASK) {
+	case USB_PORT_STAT_SUPER_SPEED:
+		return "5 Gb/s";
+	case USB_PORT_STAT_HIGH_SPEED:
 		return "480 Mb/s";
-	else if (portstatus & (1 << USB_PORT_FEAT_LOWSPEED))
+	case USB_PORT_STAT_LOW_SPEED:
 		return "1.5 Mb/s";
-	else
+	default:
 		return "12 Mb/s";
+	}
 }
 
 static int hub_port_reset(struct usb_device *hub, int port,
@@ -227,12 +231,20 @@ static int hub_port_reset(struct usb_device *hub, int port,
 
 	usb_clear_port_feature(hub, port + 1, USB_PORT_FEAT_C_RESET);
 
-	if (portstatus & USB_PORT_STAT_HIGH_SPEED)
+	switch (portstatus & USB_PORT_STAT_SPEED_MASK) {
+	case USB_PORT_STAT_SUPER_SPEED:
+		usb->speed = USB_SPEED_SUPER;
+		break;
+	case USB_PORT_STAT_HIGH_SPEED:
 		usb->speed = USB_SPEED_HIGH;
-	else if (portstatus & USB_PORT_STAT_LOW_SPEED)
+		break;
+	case USB_PORT_STAT_LOW_SPEED:
 		usb->speed = USB_SPEED_LOW;
-	else
+		break;
+	default:
 		usb->speed = USB_SPEED_FULL;
+		break;
+	}
 
 	return 0;
 }
@@ -340,6 +352,18 @@ static void usb_scan_port(struct usb_device_scan *usb_scan)
 	if(!(portstatus & USB_PORT_STAT_CONNECTION))
 		return;
 
+	if (portchange & USB_PORT_STAT_C_RESET) {
+		dev_dbg(&dev->dev, "port%d: reset change\n", port + 1);
+		usb_clear_port_feature(dev, port + 1,
+					USB_PORT_FEAT_C_RESET);
+	}
+
+	if ((portchange & USB_PORT_STAT_C_BH_RESET) &&
+	    usb_hub_is_superspeed(dev)) {
+		dev_dbg(&dev->dev, "port%d: BH reset change\n", port + 1);
+		usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_C_BH_PORT_RESET);
+	}
+
 	/* A new USB device is ready at this point */
 	dev_dbg(&dev->dev, "port%d: USB dev found\n", port + 1);
 
@@ -379,12 +403,6 @@ static void usb_scan_port(struct usb_device_scan *usb_scan)
 				port + 1, hub->overcurrent_count[port]);
 	}
 
-	if (portchange & USB_PORT_STAT_C_RESET) {
-		dev_dbg(&dev->dev, "port%d: reset change\n", port + 1);
-		usb_clear_port_feature(dev, port + 1,
-					USB_PORT_FEAT_C_RESET);
-	}
-
 remove:
 	/*
 	 * We're done with this device, so let's remove this device from
@@ -597,6 +615,14 @@ static int usb_hub_configure(struct usb_device *dev)
 		(le16_to_cpu(hubsts->wHubStatus) & HUB_STATUS_OVERCURRENT) ? \
 		"" : "no ");
 
+	if (dev->host->update_hub_device) {
+		int ret;
+
+		ret = dev->host->update_hub_device(dev);
+		if (ret)
+			return ret;
+	}
+
 	if (!usb_hub_is_root_hub(dev) && usb_hub_is_superspeed(dev)) {
 		int ret;
 
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 0ed897fa49..d0a91b9e9f 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -40,7 +40,6 @@
  *
  * For each transfer (except "Interrupt") we wait for completion.
  */
-
 #define pr_fmt(fmt) "usb: " fmt
 
 #include <common.h>
@@ -192,6 +191,7 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
 	int index, ifno, epno, curr_if_num;
 	int i;
 	unsigned char *ch;
+	struct usb_interface *if_desc;
 
 	ifno = -1;
 	epno = -1;
@@ -251,6 +251,11 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
 							       wMaxPacketSize));
 			dev_dbg(&dev->dev, "if %d, ep %d\n", ifno, epno);
 			break;
+		case USB_DT_SS_ENDPOINT_COMP:
+			if_desc = &dev->config.interface[ifno];
+			memcpy(&if_desc->ss_ep_comp_desc[epno],
+				&buffer[index], buffer[index]);
+			break;
 		default:
 			if (head->bLength == 0)
 				return 1;
@@ -401,7 +406,7 @@ int usb_new_device(struct usb_device *dev)
 {
 	int err;
 	void *buf;
-	struct usb_device_descriptor *desc;
+	struct usb_host *host = dev->host;
 	struct usb_device *parent = dev->parent;
 	char str[16];
 
@@ -415,12 +420,16 @@ int usb_new_device(struct usb_device *dev)
 
 	buf = dma_alloc(USB_BUFSIZ);
 
-	desc = buf;
-
 	if (parent)
 		dev->level = parent->level + 1;
 
-	usb_setup_descriptor(dev, true);
+	if (host->alloc_device) {
+		err = host->alloc_device(dev);
+		if (err)
+			goto err_out;
+	}
+
+	usb_setup_descriptor(dev, !host->no_desc_before_addr);
 
 	dev->devnum = ++dev_index;
 
@@ -434,6 +443,12 @@ int usb_new_device(struct usb_device *dev)
 
 	mdelay(10);	/* Let the SET_ADDRESS settle */
 
+	if (host->no_desc_before_addr) {
+		err = usb_setup_descriptor(dev, true);
+		if (err)
+			goto err_out;
+	}
+
 	err = usb_get_descriptor(dev, USB_DT_DEVICE, 0,
 				 dev->descriptor, sizeof(*dev->descriptor));
 	if (err < sizeof(*dev->descriptor)) {
diff --git a/include/usb/ch9.h b/include/usb/ch9.h
index 85f3e64cac..2e06dd89fd 100644
--- a/include/usb/ch9.h
+++ b/include/usb/ch9.h
@@ -400,6 +400,12 @@ struct usb_endpoint_descriptor {
 #define USB_ENDPOINT_XFER_INT		3
 #define USB_ENDPOINT_MAX_ADJUSTABLE	0x80
 
+#define USB_ENDPOINT_MAXP_MASK          0x07ff
+#define USB_EP_MAXP_MULT_SHIFT          11
+#define USB_EP_MAXP_MULT_MASK           (3 << USB_EP_MAXP_MULT_SHIFT)
+#define USB_EP_MAXP_MULT(m)             \
+	(((m) & USB_EP_MAXP_MULT_MASK) >> USB_EP_MAXP_MULT_SHIFT)
+
 /* The USB 3.0 spec redefines bits 5:4 of bmAttributes as interrupt ep type. */
 #define USB_ENDPOINT_INTRTYPE		0x30
 #define USB_ENDPOINT_INTR_PERIODIC	(0 << 4)
@@ -607,6 +613,20 @@ static inline int usb_endpoint_maxp(const struct usb_endpoint_descriptor *epd)
 	return __le16_to_cpu(epd->wMaxPacketSize);
 }
 
+/**
+ * usb_endpoint_maxp_mult - get endpoint's transactional opportunities
+ * @epd: endpoint to be checked
+ *
+ * Return @epd's wMaxPacketSize[12:11] + 1
+ */
+static inline int
+usb_endpoint_maxp_mult(const struct usb_endpoint_descriptor *epd)
+{
+	int maxp = __le16_to_cpu(epd->wMaxPacketSize);
+
+	return USB_EP_MAXP_MULT(maxp) + 1;
+}
+
 static inline int usb_endpoint_interrupt_type(
 		const struct usb_endpoint_descriptor *epd)
 {
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 5de9e25863..393118db7b 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -66,6 +66,12 @@ struct usb_interface {
 	unsigned char	act_altsetting;
 
 	struct usb_endpoint_descriptor ep_desc[USB_MAXENDPOINTS];
+	/*
+	 * Super Speed Device will have Super Speed Endpoint
+	 * Companion Descriptor  (section 9.6.7 of usb 3.0 spec)
+	 * Revision 1.0 June 6th 2011
+	 */
+	struct usb_ss_ep_comp_descriptor ss_ep_comp_desc[USB_MAXENDPOINTS];
 };
 
 struct usb_configuration {
@@ -119,6 +125,9 @@ struct usb_device {
 	struct list_head list;
 	void *drv_data;
 	struct usb_hub_device *hub;
+
+	/* slot_id - for xHCI enabled devices */
+	unsigned int slot_id;
 };
 
 struct usb_device_id;
@@ -147,6 +156,10 @@ struct usb_host {
 	int (*submit_int_msg)(struct usb_device *dev, unsigned long pipe, void *buffer,
 			int transfer_len, int interval);
 	void (*usb_event_poll)(void);
+	int (*alloc_device)(struct usb_device *dev);
+	int (*update_hub_device)(struct usb_device *dev);
+
+	bool no_desc_before_addr;
 
 	struct list_head list;
 
@@ -307,6 +320,11 @@ void usb_rescan(void);
 #define usb_pipecontrol(pipe)	(usb_pipetype((pipe)) == PIPE_CONTROL)
 #define usb_pipebulk(pipe)	(usb_pipetype((pipe)) == PIPE_BULK)
 
+#define usb_pipe_ep_index(pipe) \
+		usb_pipecontrol(pipe) ? (usb_pipeendpoint(pipe) * 2) : \
+			((usb_pipeendpoint(pipe) * 2) - \
+			(usb_pipein(pipe) ? 0 : 1))
+
 /*
  * As of USB 2.0, full/low speed devices are segregated into trees.
  * One type grows from USB 1.1 host controllers (OHCI, UHCI etc).
diff --git a/include/usb/usb_defs.h b/include/usb/usb_defs.h
index dcc4c71ba1..cfde278a33 100644
--- a/include/usb/usb_defs.h
+++ b/include/usb/usb_defs.h
@@ -148,5 +148,6 @@
 #define SetPortFeature		(0x2300 | USB_REQ_SET_FEATURE)
 
 #define USB_PORT_STAT_SUPER_SPEED   0x0600       /* faking support to XHCI */
+#define USB_PORT_STAT_SPEED_MASK (USB_PORT_STAT_LOW_SPEED | USB_PORT_STAT_HIGH_SPEED)
 
 #endif /*_USB_DEFS_H_ */
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
