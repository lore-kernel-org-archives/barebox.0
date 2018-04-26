Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x242.google.com ([2a00:1450:400c:c0c::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBgYB-0000ft-Dd
 for barebox@lists.infradead.org; Thu, 26 Apr 2018 13:03:09 +0000
Received: by mail-wr0-x242.google.com with SMTP id o15-v6so56700692wro.11
 for <barebox@lists.infradead.org>; Thu, 26 Apr 2018 06:02:52 -0700 (PDT)
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Message-ID: <216a62f9-5450-5ed6-945f-b3d26d65ae3e@cogentembedded.com>
Date: Thu, 26 Apr 2018 16:02:48 +0300
MIME-Version: 1.0
Content-Language: en-US
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
Subject: [PATCH] usbnet: increase bulk message timeout
To: Sascha Hauer <sha@pengutronix.de>
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>, Andrew Lunn <andrew@lunn.ch>, Chris Healy <cphealy@gmail.com>, barebox@lists.infradead.org

Timeout of 1ms is too low for case when device operates in Full Speed
mode. This causes most incoming frames to be lost.

Since timeout is only used to get out of polling loop in case of no
response from hardware, increasing it should be safe for all platforms.

Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Tested-By: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/usb/usbnet.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 33d900b70..60e67ff1a 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -125,7 +125,7 @@ static int usbnet_recv(struct eth_device *edev)
  	len = dev->rx_urb_size;
 -	ret = usb_bulk_msg(dev->udev, dev->in, rx_buf, len, &alen, 1);
+	ret = usb_bulk_msg(dev->udev, dev->in, rx_buf, len, &alen, 100);
 	if (ret)
 		return ret;
 -- 2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
