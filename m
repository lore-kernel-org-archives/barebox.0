Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bq-0008LR-G6
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:30:55 +0100
Message-Id: <20200325123111.9612-9-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/24] usb: Set new USB device name earlier
To: Barebox List <barebox@lists.infradead.org>

in usb_new_device() set the device name as early as possible to let
dev_* functions print a meaningful name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 8a144c9447..e1ff443d29 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -316,6 +316,14 @@ int usb_new_device(struct usb_device *dev)
 	struct usb_device *parent = dev->parent;
 	char str[16];
 
+	if (parent)
+		dev_set_name(&dev->dev, "%s-%d", parent->dev.name,
+			     dev->portnr - 1);
+	else
+		dev_set_name(&dev->dev, "usb%d", dev->host->busnum);
+
+	dev->dev.id = DEVICE_ID_SINGLE;
+
 	buf = dma_alloc(USB_BUFSIZ);
 
 	/* We still haven't set the Address yet */
@@ -424,15 +432,6 @@ int usb_new_device(struct usb_device *dev)
 		usb_string(dev, dev->descriptor->iSerialNumber,
 			   dev->serial, sizeof(dev->serial));
 
-	if (parent) {
-		dev_set_name(&dev->dev, "%s-%d", parent->dev.name,
-			     dev->portnr - 1);
-	} else {
-		dev_set_name(&dev->dev, "usb%d", dev->host->busnum);
-	}
-
-	dev->dev.id = DEVICE_ID_SINGLE;
-
 	print_usb_device(dev);
 
 	err = register_device(&dev->dev);
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
