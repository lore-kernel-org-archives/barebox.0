Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-0005B0-UM
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:31:04 +0100
Message-Id: <20200325123111.9612-18-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/24] net: usb: add hook for link changes
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/usb/usbnet.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 83e2c7a9e2..9ddbc50c0a 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -158,13 +158,22 @@ static int usbnet_init(struct eth_device *edev)
 	return 0;
 }
 
+static void usbnet_adjust_link(struct eth_device *edev)
+{
+	struct usbnet		*dev = (struct usbnet*)edev->priv;
+	struct driver_info      *info = dev->driver_info;
+
+	if (info->link_reset)
+		info->link_reset(dev);
+}
+
 static int usbnet_open(struct eth_device *edev)
 {
 	struct usbnet		*dev = (struct usbnet*)edev->priv;
 
 	dev_dbg(&edev->dev, "%s\n",__func__);
 
-	return phy_device_connect(edev, &dev->miibus, dev->phy_addr, NULL,
+	return phy_device_connect(edev, &dev->miibus, dev->phy_addr, usbnet_adjust_link,
 				0, PHY_INTERFACE_MODE_NA);
 }
 
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
