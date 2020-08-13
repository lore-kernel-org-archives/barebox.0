Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6DVV-0003mF-4X
 for barebox@lists.infradead.org; Thu, 13 Aug 2020 13:43:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Aug 2020 15:42:44 +0200
Message-Id: <20200813134257.24627-8-s.hauer@pengutronix.de>
In-Reply-To: <20200813134257.24627-1-s.hauer@pengutronix.de>
References: <20200813134257.24627-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/20] usbnet: Add slice
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Both the ethernet device and the mdio bus of a USB network controller
need the USB bus. Add dependencies to it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/usb/usbnet.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 7397034586..46ea73247f 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -233,6 +233,9 @@ int usbnet_probe(struct usb_device *usbdev, const struct usb_device_id *prod)
 
 	eth_register(edev);
 
+	slice_depends_on(eth_device_slice(edev), usb_device_slice(usbdev));
+	slice_depends_on(mdiobus_slice(&undev->miibus), usb_device_slice(usbdev));
+
 	return 0;
 out1:
 	dev_dbg(&edev->dev, "err: %d\n", status);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
