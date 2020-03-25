Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-0005AP-RU
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:31:07 +0100
Message-Id: <20200325123111.9612-21-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/24] usb: hub: Translate USB 3.0 hub port status into old
 version
To: Barebox List <barebox@lists.infradead.org>

Adoption of U-Boot commit:

| 1commit 74ffc7cbb1d2d1f218b1bd67d1bd3cc1cba8aa79
| Author: Bin Meng <bmeng.cn@gmail.com>
| Date:   Wed Jul 19 21:51:12 2017 +0800
|
|     usb: hub: Translate USB 3.0 hub port status into old version
|
|     USB 3.0 hub port status field has different bit positions from 2.0
|     hubs. Since U-Boot only understands the old version, translate the
|     new one into the old one.
|
|     Since we are going to add USB 3.0 hub support, this feature is only
|     available with driver model USB.
|
|     Signed-off-by: Bin Meng <bmeng.cn@gmail.com>
|     Reviewed-by: Simon Glass <sjg@chromium.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 21 ++++++++++++++++++++-
 include/usb/usb_defs.h |  2 ++
 2 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 2e702e5954..805b6b9027 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -100,9 +100,28 @@ static int usb_get_hub_status(struct usb_device *dev, void *data)
 
 static int usb_get_port_status(struct usb_device *dev, int port, void *data)
 {
-	return usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
+	int ret;
+
+	ret = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
 			USB_REQ_GET_STATUS, USB_DIR_IN | USB_RT_PORT, 0, port,
 			data, sizeof(struct usb_hub_status), USB_CNTL_TIMEOUT);
+	if (ret < 0)
+		return ret;
+
+	if (!usb_hub_is_root_hub(dev) && usb_hub_is_superspeed(dev)) {
+		struct usb_port_status *status = data;
+		u16 tmp = status->wPortStatus & USB_SS_PORT_STAT_MASK;
+
+		if (status->wPortStatus & USB_SS_PORT_STAT_POWER)
+			tmp |= USB_PORT_STAT_POWER;
+		if ((status->wPortStatus & USB_SS_PORT_STAT_SPEED) ==
+		    USB_PORT_STAT_SPEED_5GBPS)
+			tmp |= USB_PORT_STAT_SUPER_SPEED;
+
+		status->wPortStatus = tmp;
+	}
+
+	return ret;
 }
 
 
diff --git a/include/usb/usb_defs.h b/include/usb/usb_defs.h
index 8e32379c63..dcc4c71ba1 100644
--- a/include/usb/usb_defs.h
+++ b/include/usb/usb_defs.h
@@ -147,4 +147,6 @@
 #define SetHubFeature		(0x2000 | USB_REQ_SET_FEATURE)
 #define SetPortFeature		(0x2300 | USB_REQ_SET_FEATURE)
 
+#define USB_PORT_STAT_SUPER_SPEED   0x0600       /* faking support to XHCI */
+
 #endif /*_USB_DEFS_H_ */
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
