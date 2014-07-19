Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X8Qku-0003kz-59
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 09:16:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 19 Jul 2014 11:16:06 +0200
Message-Id: <1405761367-23724-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] USB: host: detect port change only once in
 usb_hub_configure_port
To: barebox@lists.infradead.org

Otherwise a device may be registered/unregistered multiple times
during scanning the hub ports.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 144442a..f90a927 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -226,12 +226,14 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 		dev_dbg(&dev->dev, "hub: disabling port %d\n", port + 1);
 		usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_ENABLE);
 	}
+	device_detect(&usb->dev);
 }
 
 static int usb_hub_configure_port(struct usb_device *dev, int port)
 {
 	struct usb_port_status portsts;
 	unsigned short portstatus, portchange;
+	int connect_change = 0;
 
 	if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
 		dev_dbg(&dev->dev, "get_port_status failed\n");
@@ -245,7 +247,7 @@ static int usb_hub_configure_port(struct usb_device *dev, int port)
 
 	if (portchange & USB_PORT_STAT_C_CONNECTION) {
 		dev_dbg(&dev->dev, "port %d connection change\n", port + 1);
-		usb_hub_port_connect_change(dev, port);
+		connect_change = 1;
 	}
 	if (portchange & USB_PORT_STAT_C_ENABLE) {
 		dev_dbg(&dev->dev, "port %d enable change, status %x\n",
@@ -262,9 +264,13 @@ static int usb_hub_configure_port(struct usb_device *dev, int port)
 			dev_dbg(&dev->dev, "already running port %i "  \
 					"disabled by hub (EMI?), " \
 					"re-enabling...\n", port + 1);
-				usb_hub_port_connect_change(dev, port);
+				connect_change = 1;
 		}
 	}
+
+	if (connect_change)
+		usb_hub_port_connect_change(dev, port);
+
 	if (portstatus & USB_PORT_STAT_SUSPEND) {
 		dev_dbg(&dev->dev, "port %d suspend change\n", port + 1);
 		usb_clear_port_feature(dev, port + 1,
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
