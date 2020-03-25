Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bq-0004Ox-KX
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:30:52 +0100
Message-Id: <20200325123111.9612-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/24] usb: Pass portstatus/portchange to
 usb_hub_port_connect_change()
To: Barebox List <barebox@lists.infradead.org>

portstatus/portchange have just been read in usb_scan_port(), there
shouldn't be any need to read them again in
usb_hub_port_connect_change().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 0569d0f94b..59354895df 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -203,22 +203,10 @@ static int hub_port_reset(struct usb_device *hub, int port,
 }
 
 
-static void usb_hub_port_connect_change(struct usb_device *dev, int port)
+static void usb_hub_port_connect_change(struct usb_device *dev, int port,
+					uint16_t portstatus, uint16_t portchange)
 {
 	struct usb_device *usb;
-	struct usb_port_status portsts;
-	unsigned short portstatus, portchange;
-
-	/* Check status */
-	if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
-		dev_dbg(&dev->dev, "port%d: get_port_status failed\n", port + 1);
-		return;
-	}
-
-	portstatus = le16_to_cpu(portsts.wPortStatus);
-	portchange = le16_to_cpu(portsts.wPortChange);
-	dev_dbg(&dev->dev, "port%d: status 0x%04x, change 0x%04x, %s\n",
-			port + 1, portstatus, portchange, portspeed(portstatus));
 
 	/* Clear the connection change status */
 	usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_C_CONNECTION);
@@ -320,7 +308,7 @@ static void usb_scan_port(struct usb_device_scan *usb_scan)
 	/* A new USB device is ready at this point */
 	dev_dbg(&dev->dev, "port%d: USB dev found\n", port + 1);
 
-	usb_hub_port_connect_change(dev, port);
+	usb_hub_port_connect_change(dev, port, portstatus, portchange);
 
 	if (portchange & USB_PORT_STAT_C_ENABLE) {
 		dev_dbg(&dev->dev, "port%d: enable change, status 0x%04x\n",
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
