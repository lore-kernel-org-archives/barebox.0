Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bm-0008Kv-Pj
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:31:09 +0100
Message-Id: <20200325123111.9612-23-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/24] usb: hub: When no connection came up remove from
 scanning list
To: Barebox List <barebox@lists.infradead.org>

When after a timeout no connection came up then we have not only bail
out, but also remove the device from the scanning list. Otherwise it
can happen that the list never becomes empty and we probe forever.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 9954c0568f..2ac4184969 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -339,8 +339,9 @@ static void usb_scan_port(struct usb_device_scan *usb_scan)
 	dev_dbg(&dev->dev, "port%d: Status 0x%04x Change 0x%04x\n",
 			port + 1, portstatus, portchange);
 
-	if (!(portchange & USB_PORT_STAT_C_CONNECTION)) {
-		if(get_time_ns() >= hub->connect_timeout) {
+	if (!(portchange & USB_PORT_STAT_C_CONNECTION) ||
+	    !(portstatus & USB_PORT_STAT_CONNECTION)) {
+		if (get_time_ns() >= hub->connect_timeout) {
 			dev_dbg(&dev->dev, "port%d: timeout\n", port + 1);
 			/* Remove this device from scanning list */
 			goto remove;
@@ -348,10 +349,6 @@ static void usb_scan_port(struct usb_device_scan *usb_scan)
 		return;
 	}
 
-	/* Test if the connection came up, and if not exit */
-	if(!(portstatus & USB_PORT_STAT_CONNECTION))
-		return;
-
 	if (portchange & USB_PORT_STAT_C_RESET) {
 		dev_dbg(&dev->dev, "port%d: reset change\n", port + 1);
 		usb_clear_port_feature(dev, port + 1,
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
