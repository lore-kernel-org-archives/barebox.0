Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNxTF-0005BD-3t
 for barebox@lists.infradead.org; Fri, 15 Jul 2016 07:23:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Jul 2016 09:23:05 +0200
Message-Id: <1468567389-28169-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] net: usb: use minimum timeout when polling for new packets
To: Barebox List <barebox@lists.infradead.org>

When no new packets have arrived we want to return to the caller
as soon as possible to give other network controllers the chance
to receive packets. With the current USB bulk message timeout of
one second other network controllers do not work properly whenever
the USB network controller is active.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/usb/usbnet.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index a51cfda..33d900b 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -125,7 +125,7 @@ static int usbnet_recv(struct eth_device *edev)
 
 	len = dev->rx_urb_size;
 
-	ret = usb_bulk_msg(dev->udev, dev->in, rx_buf, len, &alen, 1000);
+	ret = usb_bulk_msg(dev->udev, dev->in, rx_buf, len, &alen, 1);
 	if (ret)
 		return ret;
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
