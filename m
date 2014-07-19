Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X8Qkr-0003iw-Ai
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 09:16:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 19 Jul 2014 11:16:00 +0200
Message-Id: <1405761367-23724-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/12] USB: host: fixup USB device hierarchy
To: barebox@lists.infradead.org

Make all USB devices children to the hub device they are
attached to.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 1 +
 drivers/usb/core/usb.c | 3 +--
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 0f43955..26c2ca0 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -196,6 +196,7 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 
 	/* Allocate a new device struct for it */
 	usb = usb_alloc_new_device();
+	usb->dev.parent = &dev->dev;
 	usb->host = dev->host;
 
 	if (portstatus & USB_PORT_STAT_HIGH_SPEED)
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index c289bbb..7c69e10 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -424,8 +424,6 @@ int usb_new_device(struct usb_device *dev)
 
 	dev->dev.id = DEVICE_ID_SINGLE;
 
-	if (dev->host->hw_dev)
-		dev->dev.parent = dev->host->hw_dev;
 	print_usb_device(dev);
 
 	err = register_device(&dev->dev);
@@ -500,6 +498,7 @@ int usb_host_detect(struct usb_host *host, int force)
 		return ret;
 
 	dev = usb_alloc_new_device();
+	dev->dev.parent = host->hw_dev;
 	dev->host = host;
 	usb_new_device(dev);
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
