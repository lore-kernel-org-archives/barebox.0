Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-000535-Fl
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:30:50 +0100
Message-Id: <20200325123111.9612-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/24] usb: hub: let usb_scan_port() return void
To: Barebox List <barebox@lists.infradead.org>

usb_scan_port() never returns anything else but 0, so let it return
void.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 25 +++++++++----------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 4c2e568066..cc0c4c04d5 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -270,7 +270,7 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 	device_detect(&usb->dev);
 }
 
-static int usb_scan_port(struct usb_device_scan *usb_scan)
+static void usb_scan_port(struct usb_device_scan *usb_scan)
 {
 	struct usb_port_status portsts;
 	unsigned short portstatus, portchange;
@@ -287,7 +287,7 @@ static int usb_scan_port(struct usb_device_scan *usb_scan)
 	 * This is needed for voltages to stabilize.
 	 */
 	if (get_time_ns() < hub->query_delay)
-		return 0;
+		return;
 
 	if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
 		dev_dbg(&dev->dev, "port%d: get_port_status failed\n", port + 1);
@@ -296,7 +296,7 @@ static int usb_scan_port(struct usb_device_scan *usb_scan)
 			/* Remove this device from scanning list */
 			goto remove;
 		}
-		return 0;
+		return;
 	}
 
 	portstatus = le16_to_cpu(portsts.wPortStatus);
@@ -310,12 +310,12 @@ static int usb_scan_port(struct usb_device_scan *usb_scan)
 			/* Remove this device from scanning list */
 			goto remove;
 		}
-		return 0;
+		return;
 	}
 
 	/* Test if the connection came up, and if not exit */
 	if(!(portstatus & USB_PORT_STAT_CONNECTION))
-		return 0;
+		return;
 
 	/* A new USB device is ready at this point */
 	dev_dbg(&dev->dev, "port%d: USB dev found\n", port + 1);
@@ -361,7 +361,7 @@ static int usb_scan_port(struct usb_device_scan *usb_scan)
 		 */
 		if (hub->overcurrent_count[port] <=
 				PORT_OVERCURRENT_MAX_SCAN_COUNT)
-			return 0;
+			return;
 
 		/* Otherwise the device will get removed */
 		dev_dbg(&dev->dev,"port%d: over-current occurred %d times\n",
@@ -381,8 +381,6 @@ remove:
 	 */
 	list_del(&usb_scan->list);
 	free(usb_scan);
-
-	return 0;
 }
 
 static int usb_device_list_scan(void)
@@ -390,7 +388,6 @@ static int usb_device_list_scan(void)
 	struct usb_device_scan *usb_scan;
 	struct usb_device_scan *tmp;
 	static int running;
-	int ret = 0;
 
 	/* Only run this loop once for each controller */
 	if (running)
@@ -403,12 +400,8 @@ static int usb_device_list_scan(void)
 		if (list_empty(&usb_scan_list))
 			goto out;
 
-		list_for_each_entry_safe(usb_scan, tmp, &usb_scan_list, list) {
-			/* Scan this port */
-			ret = usb_scan_port(usb_scan);
-			if (ret)
-				goto out;
-		}
+		list_for_each_entry_safe(usb_scan, tmp, &usb_scan_list, list)
+			usb_scan_port(usb_scan);
 
 		/* Avoid hammering the HUB with port scans */
 		mdelay(25);
@@ -422,7 +415,7 @@ out:
 	 */
 	running = 0;
 
-	return ret;
+	return 0;
 }
 
 static int usb_hub_configure(struct usb_device *dev)
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
