Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out-2.mail.amis.net ([212.18.32.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDMI-0002JN-Gu
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 08:18:12 +0000
Received: from in-4.mail.amis.net (in-4.mail.amis.net [212.18.32.23])
 by out-2.mail.amis.net (Postfix) with ESMTP id D86AD80F3B
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
Received: from in-4.mail.amis.net (localhost [127.0.0.1])
 by in-4.mail.amis.net (Postfix) with ESMTP id D686217054
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
Received: from in-4.mail.amis.net ([127.0.0.1])
 by in-4.mail.amis.net (in-4.mail.amis.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id 58NRS1LOc3DZ for <barebox@lists.infradead.org>;
 Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
Received: from smtp2.amis.net (smtp2.amis.net [212.18.32.44])
 by in-4.mail.amis.net (Postfix) with ESMTP id 493DB17057
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
Received: from localhost.localdomain (89-212-21-243.static.t-2.net
 [89.212.21.243])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtp2.amis.net (Postfix) with ESMTPSA id 209337FFA2
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
From: Primoz Fiser <primoz.fiser@norik.com>
Date: Tue,  1 Oct 2019 10:17:58 +0200
Message-Id: <20191001081800.19128-2-primoz.fiser@norik.com>
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
Subject: [PATCH 1/3] usb: hub_port_reset(): Speedup hub reset handling
To: barebox@lists.infradead.org

Start with a short USB hub reset delay of 20ms. This can be enough for
some configurations. Switch to longer reset delay only if the short
delay hasn't been long enough.

This USB hub reset handling strategy is also used in the Linux kernel
USB hub driver, function hub_port_reset().

Without patch:

    $ time usb
    usb: USB: scanning bus for devices...
    usb: 17 USB Device(s) found
    time: 21750ms

With patch:

    $ time usb
    usb: USB: scanning bus for devices...
    usb: 17 USB Device(s) found
    time: 16355ms

Delta: ~5.5 seconds

Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
---
 drivers/usb/core/hub.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index d01a01607..91604e1ef 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -30,6 +30,9 @@
 
 #define USB_BUFSIZ  512
 
+#define HUB_SHORT_RESET_TIME	20
+#define HUB_LONG_RESET_TIME	200
+
 static int usb_get_hub_descriptor(struct usb_device *dev, void *data, int size)
 {
 	return usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
@@ -116,12 +119,13 @@ int hub_port_reset(struct usb_device *hub, int port, struct usb_device *usb)
 	int tries;
 	struct usb_port_status portsts;
 	unsigned short portstatus, portchange;
+	int delay = HUB_SHORT_RESET_TIME; /* start with short reset delay */
 
 	dev_dbg(&hub->dev, "hub_port_reset: resetting port %d...\n", port);
 	for (tries = 0; tries < MAX_TRIES; tries++) {
 
 		usb_set_port_feature(hub, port + 1, USB_PORT_FEAT_RESET);
-		mdelay(200);
+		mdelay(delay);
 
 		if (usb_get_port_status(hub, port + 1, &portsts) < 0) {
 			dev_dbg(&hub->dev, "get_port_status failed status %lX\n",
@@ -148,7 +152,8 @@ int hub_port_reset(struct usb_device *hub, int port, struct usb_device *usb)
 		if (portstatus & USB_PORT_STAT_ENABLE)
 			break;
 
-		mdelay(200);
+		/* Switch to long reset delay for the next round */
+		delay = HUB_LONG_RESET_TIME;
 	}
 
 	if (tries == MAX_TRIES) {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
