Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-00052Q-EM
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:30:51 +0100
Message-Id: <20200325123111.9612-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/24] usb: Remove hack from the early days
To: Barebox List <barebox@lists.infradead.org>

The weird hack about "bad shielded USB devices" goes back to the initial
U-Boot git commmit. Let's be bold and remove it 18 years later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index cc0c4c04d5..0569d0f94b 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -327,18 +327,6 @@ static void usb_scan_port(struct usb_device_scan *usb_scan)
 				port + 1, portstatus);
 		usb_clear_port_feature(dev, port + 1,
 					USB_PORT_FEAT_C_ENABLE);
-
-		/* EM interference sometimes causes bad shielded USB
-		 * devices to be shutdown by the hub, this hack enables
-		 * them again. Works at least with mouse driver */
-		if (!(portstatus & USB_PORT_STAT_ENABLE) &&
-		     (portstatus & USB_PORT_STAT_CONNECTION) &&
-		     ((dev->children[port]))) {
-			dev_dbg(&dev->dev, "port%d: already running, "
-					"disabled by hub (EMI?), "
-					"re-enabling...\n", port + 1);
-				usb_hub_port_connect_change(dev, port);
-		}
 	}
 
 	if (portstatus & USB_PORT_STAT_SUSPEND) {
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
