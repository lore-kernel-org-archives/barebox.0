Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpfUl-0007uU-64
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 14:05:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 16:05:22 +0200
Message-Id: <1371737125-18820-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371737125-18820-1-git-send-email-s.hauer@pengutronix.de>
References: <1371737125-18820-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] usb: rename USB devices to reflect bus structure
To: barebox@lists.infradead.org

This renames the USB devices to reflect the bus structure.
The base name for a USB device is usb<devno>. For each child
device we add a -<parent-port-no>. This makes it more easy
to identify devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 9a0723a..e232111 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -431,14 +431,22 @@ static int usb_new_device(struct usb_device *dev)
 	if (dev->descriptor->iSerialNumber)
 		usb_string(dev, dev->descriptor->iSerialNumber,
 			   dev->serial, sizeof(dev->serial));
+
+	if (parent) {
+		sprintf(dev->dev.name, "%s-%d", parent->dev.name, port);
+	} else {
+		sprintf(dev->dev.name, "usb%d", dev->host->busnum);
+	}
+
+	dev->dev.id = DEVICE_ID_SINGLE;
+
+	register_device(&dev->dev);
+
 	/* now prode if the device is a hub */
 	usb_hub_probe(dev, 0);
 
-	sprintf(dev->dev.name, "usb%d-%d", dev->host->busnum, dev->devnum);
-
 	print_usb_device(dev);
 
-	register_device(&dev->dev);
 	dev_add_param_int_ro(&dev->dev, "iManufacturer",
 			dev->descriptor->iManufacturer, "%d");
 	dev_add_param_int_ro(&dev->dev, "iProduct",
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
