Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1Zu2-0005pI-CB
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 19:09:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1l1Zu0-0007Me-SF
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 20:09:24 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1l1Zu0-0000Ag-HZ
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 20:09:24 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 18 Jan 2021 20:09:23 +0100
Message-Id: <20210118190923.531-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] usb: hub: fix state change check for not powercycled ports
To: barebox@lists.infradead.org

Since we don't power cycle the ports on start since patch "19bb0b2a usb:
hub: Do not power-cycle usb devices on init" it is possible that the
device on this port is already active from a previous enumeration. This
way barebox will never get any change in USB_PORT_STAT_C_CONNECTION bit
change.

Although the device will probably still work fine after the following
port reset, the current code will always miss reenumerating these still
plugged devices. This patch fixes this by ignoring the check for
STAT_C_CONNECTION bit and only go for USB_PORT_STAT_CONNECTION which
should be enough.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/core/hub.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 01653d8c20..d1112248ee 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -336,8 +336,7 @@ static void usb_scan_port(struct usb_device_scan *usb_scan)
 	dev_dbg(&dev->dev, "port%d: Status 0x%04x Change 0x%04x\n",
 			port + 1, portstatus, portchange);
 
-	if (!(portchange & USB_PORT_STAT_C_CONNECTION) ||
-	    !(portstatus & USB_PORT_STAT_CONNECTION)) {
+	if (!(portstatus & USB_PORT_STAT_CONNECTION)) {
 		if (get_time_ns() >= hub->connect_timeout) {
 			dev_dbg(&dev->dev, "port%d: timeout\n", port + 1);
 			/* Remove this device from scanning list */
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
