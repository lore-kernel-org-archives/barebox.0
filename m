Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out-1.mail.amis.net ([212.18.32.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDMG-0002JI-2G
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 08:18:09 +0000
Received: from in-2.mail.amis.net (in-2.mail.amis.net [212.18.32.19])
 by out-1.mail.amis.net (Postfix) with ESMTP id A736681F9C
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
Received: from in-2.mail.amis.net (localhost [127.0.0.1])
 by in-2.mail.amis.net (Postfix) with ESMTP id A5926C9476
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
Received: from in-2.mail.amis.net ([127.0.0.1])
 by in-2.mail.amis.net (in-2.mail.amis.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id ZaAcrBNIvfJH for <barebox@lists.infradead.org>;
 Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
Received: from smtp2.amis.net (smtp2.amis.net [IPv6:2001:15c0:ffff:f::44])
 by in-2.mail.amis.net (Postfix) with ESMTP id 3FBC9C9406
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
Received: from localhost.localdomain (89-212-21-243.static.t-2.net
 [89.212.21.243])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtp2.amis.net (Postfix) with ESMTPSA id 314F880BA8
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
From: Primoz Fiser <primoz.fiser@norik.com>
Date: Tue,  1 Oct 2019 10:17:59 +0200
Message-Id: <20191001081800.19128-3-primoz.fiser@norik.com>
In-Reply-To: <20191001081800.19128-1-primoz.fiser@norik.com>
References: <20191001081800.19128-1-primoz.fiser@norik.com>
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
Subject: [PATCH 2/3] usb: usb_hub_port_connect_change(): Remove unnecessary
 delays
To: barebox@lists.infradead.org

Remove two mdelay(200) calls from usb_hub_port_connect_change() before
and after calling hub_port_reset().

These delays don't seem to be necessary since hub_port_reset() already
incorporates delays on its own.

Without patch:

    $ time usb
    usb: USB: scanning bus for devices...
    usb: 17 USB Device(s) found
    time: 16355ms

With patch:

    $ time usb
    usb: USB: scanning bus for devices...
    usb: 17 USB Device(s) found
    time: 10344ms

Delta: ~6 seconds

Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
---
 drivers/usb/core/hub.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 91604e1ef..7de6aedc4 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -211,8 +211,6 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 	if (dev->children[port] && !(portstatus & USB_PORT_STAT_ENABLE))
 		usb_remove_device(dev->children[port]);
 
-	mdelay(200);
-
 	/* Allocate a new device struct for the port */
 	usb = usb_alloc_new_device();
 	usb->dev.parent = &dev->dev;
@@ -225,8 +223,6 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 		return;
 	}
 
-	mdelay(200);
-
 	dev->children[port] = usb;
 	usb->parent = dev;
 	usb->portnr = port + 1;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
