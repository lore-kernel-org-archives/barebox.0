Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIGY-0007h5-Sx
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 15:50:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id F2E3827E1056
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2020 16:50:00 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 22 Jan 2020 16:49:44 +0100
Message-Id: <20200122154950.22746-4-jmaselbas@kalray.eu>
In-Reply-To: <20200122154950.22746-1-jmaselbas@kalray.eu>
References: <20200122154950.22746-1-jmaselbas@kalray.eu>
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
Subject: [RFC PATCH 3/9] usb: Update uses of usb_endpoint_maxp
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Now usb_endpoint_maxp only returns the 11 lowest bits, it does no
longer include the mult bits. And such functions that uses the mult
bits must be updated to uses the usb_endpoint_maxp_mult function.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/gadget/epautoconf.c |  2 +-
 drivers/usb/musb/musb_gadget.c  | 12 ++++--------
 drivers/usb/musb/musb_host.c    |  3 +--
 3 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/gadget/epautoconf.c b/drivers/usb/gadget/epautoconf.c
index ced568921..c4c4a5672 100644
--- a/drivers/usb/gadget/epautoconf.c
+++ b/drivers/usb/gadget/epautoconf.c
@@ -132,7 +132,7 @@ ep_matches (
 	 * where it's an output parameter representing the full speed limit.
 	 * the usb spec fixes high speed bulk maxpacket at 512 bytes.
 	 */
-	max = 0x7ff & usb_endpoint_maxp(desc);
+	max = usb_endpoint_maxp(desc);
 	switch (type) {
 	case USB_ENDPOINT_XFER_INT:
 		/* INT:  limit 64 bytes full speed, 1024 high/super speed */
diff --git a/drivers/usb/musb/musb_gadget.c b/drivers/usb/musb/musb_gadget.c
index fc5cfb13f..c5e46cfe0 100644
--- a/drivers/usb/musb/musb_gadget.c
+++ b/drivers/usb/musb/musb_gadget.c
@@ -443,8 +443,10 @@ static int musb_gadget_enable(struct usb_ep *ep,
 		goto fail;
 
 	/* REVISIT this rules out high bandwidth periodic transfers */
-	tmp = usb_endpoint_maxp(desc);
-	if (tmp & ~0x07ff) {
+	musb_ep->packet_sz = usb_endpoint_maxp(desc);
+	musb_ep->hb_mult = usb_endpoint_maxp_mult(desc);
+	tmp = musb_ep->packet_sz * musb_ep->hb_mult;
+	if (musb_ep->hb_mult > 1) {
 		int ok;
 
 		if (usb_endpoint_dir_in(desc))
@@ -456,14 +458,8 @@ static int musb_gadget_enable(struct usb_ep *ep,
 			dev_dbg(musb->controller, "no support for high bandwidth ISO\n");
 			goto fail;
 		}
-		musb_ep->hb_mult = (tmp >> 11) & 3;
-	} else {
-		musb_ep->hb_mult = 0;
 	}
 
-	musb_ep->packet_sz = tmp & 0x7ff;
-	tmp = musb_ep->packet_sz * (musb_ep->hb_mult + 1);
-
 	/* enable the interrupts for the endpoint, set the endpoint
 	 * packet size (or fail), set the mode, clear the fifo
 	 */
diff --git a/drivers/usb/musb/musb_host.c b/drivers/usb/musb/musb_host.c
index 68d819af2..11fde729a 100644
--- a/drivers/usb/musb/musb_host.c
+++ b/drivers/usb/musb/musb_host.c
@@ -1493,7 +1493,7 @@ int musb_urb_enqueue(
 	 * Some musb cores don't support high bandwidth ISO transfers; and
 	 * we don't (yet!) support high bandwidth interrupt transfers.
 	 */
-	qh->hb_mult = 1 + ((qh->maxpacket >> 11) & 0x03);
+	qh->hb_mult = usb_endpoint_maxp_mult(epd);
 	if (qh->hb_mult > 1) {
 		int ok = (qh->type == USB_ENDPOINT_XFER_ISOC);
 
@@ -1504,7 +1504,6 @@ int musb_urb_enqueue(
 			ret = -EMSGSIZE;
 			goto done;
 		}
-		qh->maxpacket &= 0x7ff;
 	}
 
 	qh->epnum = usb_endpoint_num(epd);
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
