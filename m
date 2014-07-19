Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X8Qkr-0003j0-Ao
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 09:16:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 19 Jul 2014 11:16:04 +0200
Message-Id: <1405761367-23724-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405761367-23724-1-git-send-email-s.hauer@pengutronix.de>
References: <1405761367-23724-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] USB: host: hub: only configure hub once
To: barebox@lists.infradead.org

We had a single function which configures the hub and scans
the ports. Split this up and configure the hub only once and
scan the ports during detect() time. This allows to plug in
additional devices into a hub while continuing to use the
already existing devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 689a79c..39cadb5 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -405,6 +405,13 @@ static int usb_hub_configure(struct usb_device *dev)
 		"" : "no ");
 	usb_hub_power_on(hub);
 
+	return 0;
+}
+
+static int usb_hub_configure_ports(struct usb_device *dev)
+{
+	int i;
+
 	for (i = 0; i < dev->maxchild; i++)
 		usb_hub_configure_port(dev, i);
 
@@ -416,7 +423,7 @@ static int usb_hub_detect(struct device_d *dev)
 	struct usb_device *usbdev = container_of(dev, struct usb_device, dev);
 	int i;
 
-	usb_hub_configure(usbdev);
+	usb_hub_configure_ports(usbdev);
 
 	for (i = 0; i < usbdev->maxchild; i++) {
 		if (usbdev->children[i])
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
