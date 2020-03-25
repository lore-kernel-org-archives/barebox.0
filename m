Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-00054Y-EL
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:30:59 +0100
Message-Id: <20200325123111.9612-13-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/24] usb: support set hub depth request for USB 3.0 hubs
To: Barebox List <barebox@lists.infradead.org>

This is an adoption of U-Boot commit bbc6f06c0031249bf1983b875e54cb7549bafe60:

| commit bbc6f06c0031249bf1983b875e54cb7549bafe60
| Author: Bin Meng <bmeng.cn@gmail.com>
| Date:   Wed Jul 19 21:51:13 2017 +0800
|
|     usb: hub: Support 'set hub depth' request for USB 3.0 hubs
|
|     USB 3.0 hub uses a hub depth value multiplied by four as an offset
|     into the 'route string' to locate the bits it uses to determine the
|     downstream port number. We shall set the hub depth value of a USB
|     3.0 hub after it is configured.
|
|     Signed-off-by: Bin Meng <bmeng.cn@gmail.com>
|     Reviewed-by: Simon Glass <sjg@chromium.org>

In this patch we also support recording the depth of a hub in
struct usb_device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 46 +++++++++++++++++++++++++++++++++++++++++-
 drivers/usb/core/usb.c |  3 +++
 include/usb/usb.h      |  3 +++
 3 files changed, 51 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 7c7a325291..2e702e5954 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -43,11 +43,38 @@ struct usb_device_scan {
 
 static LIST_HEAD(usb_scan_list);
 
+static bool usb_hub_is_superspeed(struct usb_device *hdev)
+{
+	return hdev->descriptor->bDeviceProtocol == 3;
+}
+
+bool usb_hub_is_root_hub(struct usb_device *hdev)
+{
+	return hdev->level == 0;
+}
+
+static int usb_set_hub_depth(struct usb_device *dev, int depth)
+{
+	dev_dbg(&dev->dev, "set hub depth to %d\n", dev->level);
+
+	if (depth < 0 || depth > 4)
+		return -EINVAL;
+
+	return usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
+		HUB_SET_DEPTH, USB_DIR_OUT | USB_RT_HUB,
+		depth, 0, NULL, 0, USB_CNTL_TIMEOUT);
+}
+
 static int usb_get_hub_descriptor(struct usb_device *dev, void *data, int size)
 {
+	unsigned short dtype = USB_DT_HUB;
+
+	if (usb_hub_is_superspeed(dev))
+		dtype = USB_DT_SS_HUB;
+
 	return usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
 		USB_REQ_GET_DESCRIPTOR, USB_DIR_IN | USB_RT_HUB,
-		USB_DT_HUB << 8, 0, data, size, USB_CNTL_TIMEOUT);
+		dtype << 8, 0, data, size, USB_CNTL_TIMEOUT);
 }
 
 static int usb_clear_port_feature(struct usb_device *dev, int port, int feature)
@@ -550,6 +577,23 @@ static int usb_hub_configure(struct usb_device *dev)
 	dev_dbg(&dev->dev, "%sover-current condition exists\n",
 		(le16_to_cpu(hubsts->wHubStatus) & HUB_STATUS_OVERCURRENT) ? \
 		"" : "no ");
+
+	if (!usb_hub_is_root_hub(dev) && usb_hub_is_superspeed(dev)) {
+		int ret;
+
+		/*
+		* This request sets the value that the hub uses to
+		* determine the index into the 'route string index'
+		* for this hub.
+		*/
+		ret = usb_set_hub_depth(dev, dev->level - 1);
+		if (ret < 0) {
+			dev_dbg(&dev->dev, "failed to set hub depth (0x%08lx)\n",
+				dev->status);
+			return ret;
+		}
+	}
+
 	usb_hub_power_on(hub);
 
 	return 0;
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 06087d2df6..b94f7978a3 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -350,6 +350,9 @@ int usb_new_device(struct usb_device *dev)
 	dev->epmaxpacketin[0] = 64;
 	dev->epmaxpacketout[0] = 64;
 
+	if (parent)
+		dev->level = parent->level + 1;
+
 	err = usb_get_descriptor(dev, USB_DT_DEVICE, 0, desc, 64);
 	if (err < 0) {
 		dev_dbg(&dev->dev, "%s: usb_get_descriptor() failed with %d\n", __func__, err);
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 94506fa525..5de9e25863 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -108,6 +108,7 @@ struct usb_device {
 	int act_len;			/* transfered bytes */
 	int maxchild;			/* Number of ports if hub */
 	int portnr;
+	int level;
 	struct usb_device *parent;
 	struct usb_device *children[USB_MAXCHILDREN];
 
@@ -460,4 +461,6 @@ int usb_register_otg_device(struct device_d *parent,
 
 extern struct list_head usb_device_list;
 
+bool usb_hub_is_root_hub(struct usb_device *hdev);
+
 #endif /*_USB_H_ */
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
