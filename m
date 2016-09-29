Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpacb-00034r-3W
 for barebox@lists.infradead.org; Thu, 29 Sep 2016 12:39:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Sep 2016 14:39:00 +0200
Message-Id: <20160929123900.24853-9-s.hauer@pengutronix.de>
In-Reply-To: <20160929123900.24853-1-s.hauer@pengutronix.de>
References: <20160929123900.24853-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] usb: imx-us-phy: implement notify_(dis)concect
To: Barebox List <barebox@lists.infradead.org>

The i.MX6 USB phy does not recognize disconnects of high speed
devices when the USBPHY_CTRL_ENHOSTDISCONDETECT is not set. The
phy does not work properly though when this bit is always set, so
implement the notify_(dis)concect() callbacks to set this bit
whenever a high speed device is connected and to clear it again
when the device is disconnected.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/imx-usb-phy.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 2829ffc..9f46f8d 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -33,6 +33,7 @@
 #define USBPHY_CTRL_CLKGATE		(1 << 30)
 #define USBPHY_CTRL_ENUTMILEVEL3	(1 << 15)
 #define USBPHY_CTRL_ENUTMILEVEL2	(1 << 14)
+#define USBPHY_CTRL_ENHOSTDISCONDETECT	(1 << 1)
 
 struct imx_usbphy {
 	struct usb_phy usb_phy;
@@ -67,6 +68,30 @@ static int imx_usbphy_phy_init(struct phy *phy)
 	return 0;
 }
 
+static int imx_usbphy_notify_connect(struct usb_phy *phy,
+				     enum usb_device_speed speed)
+{
+	struct imx_usbphy *imxphy = container_of(phy, struct imx_usbphy, usb_phy);
+
+	if (speed == USB_SPEED_HIGH) {
+		writel(USBPHY_CTRL_ENHOSTDISCONDETECT,
+		       imxphy->base + USBPHY_CTRL + SET);
+	}
+
+	return 0;
+}
+
+static int imx_usbphy_notify_disconnect(struct usb_phy *phy,
+					enum usb_device_speed speed)
+{
+	struct imx_usbphy *imxphy = container_of(phy, struct imx_usbphy, usb_phy);
+
+	writel(USBPHY_CTRL_ENHOSTDISCONDETECT,
+	       imxphy->base + USBPHY_CTRL + CLR);
+
+	return 0;
+}
+
 static struct phy *imx_usbphy_xlate(struct device_d *dev,
 				    struct of_phandle_args *args)
 {
@@ -112,6 +137,8 @@ static int imx_usbphy_probe(struct device_d *dev)
 	dev->priv = imxphy;
 
 	imxphy->usb_phy.dev = dev;
+	imxphy->usb_phy.notify_connect = imx_usbphy_notify_connect;
+	imxphy->usb_phy.notify_disconnect = imx_usbphy_notify_disconnect;
 	imxphy->phy = phy_create(dev, NULL, &imx_phy_ops, NULL);
 	if (IS_ERR(imxphy->phy)) {
 		ret = PTR_ERR(imxphy->phy);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
