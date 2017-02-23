Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgtn6-0006Y8-1S
 for barebox@lists.infradead.org; Thu, 23 Feb 2017 13:50:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Feb 2017 14:50:07 +0100
Message-Id: <20170223135007.24317-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: gadget: fastboot: close fd after download
To: Barebox List <barebox@lists.infradead.org>

The fd for the downloaded file is never closed. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index a6192b9ebd..974b0b32eb 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -597,6 +597,7 @@ static void rx_handler_dl_image(struct usb_ep *ep, struct usb_request *req)
 	if (f_fb->download_bytes >= f_fb->download_size) {
 		req->complete = rx_handler_command;
 		req->length = EP_BUFFER_SIZE;
+		close(f_fb->download_fd);
 
 		fastboot_tx_print(f_fb, "INFODownloading %d bytes finished",
 				f_fb->download_bytes);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
