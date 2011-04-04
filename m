Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jXQ-00025q-KW
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:09:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:09:44 +0200
Message-Id: <1301922585-8144-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301922585-8144-1-git-send-email-s.hauer@pengutronix.de>
References: <1301922585-8144-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/7] usbnet: do not initialize ethernet device from usb device
To: barebox@lists.infradead.org

The network layer will initialize this correctly for us.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/usb/usbnet.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 983d464..cd658ed 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -206,7 +206,6 @@ int usbnet_probe(struct usb_device *usbdev, const struct usb_device_id *prod)
 	edev->recv = usbnet_recv,
 	edev->halt = usbnet_halt,
 	edev->priv = undev;
-	edev->dev = usbdev->dev; /* will be overwritten by eth_register */
 
 	info = (struct driver_info *)prod->driver_info;
 	undev->driver_info = info;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
