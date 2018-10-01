Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g6tOY-0008Rs-Fq
 for barebox@lists.infradead.org; Mon, 01 Oct 2018 08:17:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  1 Oct 2018 10:17:16 +0200
Message-Id: <20181001081716.26017-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: gadget: fastboot: fix downoading files of wMaxPacketSize
 bytes
To: Barebox List <barebox@lists.infradead.org>
Cc: G.Schenk@eckelmann.de, =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>

File transfers with sizes of exact multiples of wMaxPacketSize up to
EP_BUFFER_SIZE do not work. For a typical scenario that would be files
of 512, 1024 ... 3584 bytes.

This happens because we unconditionally put EP_BUFFER_SIZE into the
initial request length. For non wMaxPacketSize aligned legths this
works well because the transfer is completed with a short packet.
For wMaxPacketSize aligned lengths there is no short packet though,
so the transfer never completes. Instead we have to put the file
size into the initial request length.

Some controllers like the DWC3 do not work when the request length is
not aligned to wMaxPacketSize, so we align up to wMaxPacketSize like
done in U-Boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 40a78987e4..036365f67d 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -609,6 +609,16 @@ static void cb_getvar(struct f_fastboot *f_fb, const char *cmd)
 	fastboot_tx_print(f_fb, "OKAY");
 }
 
+static int rx_bytes_expected(struct f_fastboot *f_fb)
+{
+	int remaining = f_fb->download_size - f_fb->download_bytes;
+
+	if (remaining >= EP_BUFFER_SIZE)
+		return EP_BUFFER_SIZE;
+
+	return ALIGN(remaining, f_fb->out_ep->maxpacket);
+}
+
 static void rx_handler_dl_image(struct usb_ep *ep, struct usb_request *req)
 {
 	struct f_fastboot *f_fb = req->context;
@@ -632,9 +642,7 @@ static void rx_handler_dl_image(struct usb_ep *ep, struct usb_request *req)
 
 	f_fb->download_bytes += req->actual;
 
-	req->length = f_fb->download_size - f_fb->download_bytes;
-	if (req->length > EP_BUFFER_SIZE)
-		req->length = EP_BUFFER_SIZE;
+	req->length = rx_bytes_expected(f_fb);
 
 	show_progress(f_fb->download_bytes);
 
@@ -687,9 +695,7 @@ static void cb_download(struct f_fastboot *f_fb, const char *cmd)
 		struct usb_ep *ep = f_fb->out_ep;
 		fastboot_tx_print(f_fb, "DATA%08x", f_fb->download_size);
 		req->complete = rx_handler_dl_image;
-		req->length = EP_BUFFER_SIZE;
-		if (req->length < ep->maxpacket)
-			req->length = ep->maxpacket;
+		req->length = rx_bytes_expected(f_fb);
 	}
 }
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
