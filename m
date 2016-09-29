Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpacY-00034L-8r
 for barebox@lists.infradead.org; Thu, 29 Sep 2016 12:39:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Sep 2016 14:38:53 +0200
Message-Id: <20160929123900.24853-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] usb: Add usb phy to usb host
To: Barebox List <barebox@lists.infradead.org>

Add a struct usb_phy * member to struct usb_host. Also, call
usb_phy_notify_connect() / usb_phy_notify_disconnect() when there
are connection changes on the root hub.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 8 ++++++++
 include/usb/usb.h      | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index dd3c10e..f44aea5 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -22,6 +22,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <scsi.h>
+#include <usb/phy.h>
 #include <usb/usb.h>
 #include <usb/usb_defs.h>
 
@@ -189,6 +190,10 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 	if (dev->children[port] && !(portstatus & USB_PORT_STAT_CONNECTION)) {
 		dev_dbg(&dev->dev, "disconnect detected on port %d\n", port + 1);
 		usb_remove_device(dev->children[port]);
+
+		if (!dev->parent && dev->host->usbphy)
+			usb_phy_notify_disconnect(dev->host->usbphy, dev->speed);
+
 		return;
 	}
 
@@ -231,6 +236,9 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 		return;
 	}
 
+	if (!dev->parent && dev->host->usbphy)
+		usb_phy_notify_connect(dev->host->usbphy, usb->speed);
+
 	device_detect(&usb->dev);
 }
 
diff --git a/include/usb/usb.h b/include/usb/usb.h
index aedc527..93308ce 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -153,6 +153,7 @@ struct usb_host {
 	int busnum;
 	struct usb_device *root_dev;
 	int sem;
+	struct usb_phy *usbphy;
 };
 
 int usb_register_host(struct usb_host *);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
