Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5By-0008Lp-KM
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:30:53 +0100
Message-Id: <20200325123111.9612-7-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/24] usb: hub: Do not power-cycle usb devices on init
To: Barebox List <barebox@lists.infradead.org>

This is an adoption of U-Boot commit 0834bb2fb0 ("usb: Do not power-cycle
usb devices on init")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 59354895df..6d664e80bb 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -87,17 +87,6 @@ static void usb_hub_power_on(struct usb_hub_device *hub)
 
 	dev = hub->pusb_dev;
 
-	/*
-	 * Enable power to the ports:
-	 * Here we Power-cycle the ports: aka,
-	 * turning them off and turning on again.
-	 */
-	for (i = 0; i < dev->maxchild; i++) {
-		usb_clear_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
-		dev_dbg(&dev->dev, "port%d: usb_clear_port_feature returns 0x%08lx\n",
-			i + 1, dev->status);
-	}
-
 	/* Enable power to the ports */
 	dev_dbg(&dev->dev, "enabling power on all ports\n");
 
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
