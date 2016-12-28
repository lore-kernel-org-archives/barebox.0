Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wj0-x243.google.com ([2a00:1450:400c:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cMGB6-0004P5-8s
 for barebox@lists.infradead.org; Wed, 28 Dec 2016 15:30:09 +0000
Received: by mail-wj0-x243.google.com with SMTP id qs7so17128092wjc.1
 for <barebox@lists.infradead.org>; Wed, 28 Dec 2016 07:29:47 -0800 (PST)
Received: from mars.fritz.box
 (HSI-KBW-109-193-021-110.hsi7.kabel-badenwuerttemberg.de. [109.193.21.110])
 by smtp.gmail.com with ESMTPSA id l67sm61004507wmf.20.2016.12.28.07.29.45
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Dec 2016 07:29:45 -0800 (PST)
Message-ID: <1482938984.1946.1.camel@googlemail.com>
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Wed, 28 Dec 2016 16:29:44 +0100
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: chf.fritz@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] USB: host: hub: increase delay after device removal
To: barebox@lists.infradead.org

This patch increases delay time for slow hubs after device removal.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 drivers/usb/core/hub.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index f44aea5..0854e3a 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -201,7 +201,7 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 	if (dev->children[port] && !(portstatus & USB_PORT_STAT_ENABLE))
 		usb_remove_device(dev->children[port]);
 
-	mdelay(200);
+	mdelay(500);
 
 	/* Reset the port */
 	if (hub_port_reset(dev, port, &portstatus) < 0) {
-- 
2.1.4



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
