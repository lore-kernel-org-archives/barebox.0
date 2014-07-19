Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X8Qkr-0003iy-Ae
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 09:16:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 19 Jul 2014 11:16:02 +0200
Message-Id: <1405761367-23724-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/12] USB: host: hub: Use usb_hub_power_on from U-Boot
To: barebox@lists.infradead.org

U-Boots power good delay function is more conservative than
ours. Use it to be on the safe side. The U-Boot guys have
discussed a lot about it, let's hope they got it right.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 6d5e3b9..9c87037 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -70,16 +70,33 @@ static void usb_hub_power_on(struct usb_hub_device *hub)
 {
 	int i;
 	struct usb_device *dev;
+	unsigned pgood_delay = hub->desc.bPwrOn2PwrGood * 2;
 
 	dev = hub->pusb_dev;
+
+	/*
+	 * Enable power to the ports:
+	 * Here we Power-cycle the ports: aka,
+	 * turning them off and turning on again.
+	 */
+	for (i = 0; i < dev->maxchild; i++) {
+		usb_clear_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
+		dev_dbg(&dev->dev, "port %d returns %lX\n", i + 1, dev->status);
+	}
+
+	/* Wait at least 2 * bPwrOn2PwrGood for PP to change */
+	mdelay(pgood_delay);
+
 	/* Enable power to the ports */
 	dev_dbg(&dev->dev, "enabling power on all ports\n");
+
 	for (i = 0; i < dev->maxchild; i++) {
 		usb_set_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
 		dev_dbg(&dev->dev, "port %d returns %lX\n", i + 1, dev->status);
 	}
+
 	/* power on is encoded in 2ms increments -> times 2 for the actual delay */
-	mdelay(hub->desc.bPwrOn2PwrGood*2);
+	mdelay(pgood_delay + 1000);
 }
 
 #define MAX_TRIES 5
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
