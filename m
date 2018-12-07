Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVDSe-0006Yz-Ht
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 10:34:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Dec 2018 11:34:00 +0100
Message-Id: <20181207103405.27365-3-s.hauer@pengutronix.de>
In-Reply-To: <20181207103405.27365-1-s.hauer@pengutronix.de>
References: <20181207103405.27365-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] usb: gadget: fastboot: drop unnecessary global variable
To: Barebox List <barebox@lists.infradead.org>

Polling for the status of a request does not require a global variable.
We can poll for the status directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index a5b2564814..61cc0b2e62 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -182,15 +182,8 @@ static struct usb_gadget_strings *fastboot_strings[] = {
 
 static void rx_handler_command(struct usb_ep *ep, struct usb_request *req);
 
-static int in_req_complete;
-
 static void fastboot_complete(struct usb_ep *ep, struct usb_request *req)
 {
-	int status = req->status;
-
-	in_req_complete = 1;
-
-	pr_debug("status: %d ep '%s' trans: %d\n", status, ep->name, req->actual);
 }
 
 static struct usb_request *fastboot_alloc_request(struct usb_ep *ep)
@@ -540,19 +533,22 @@ static int fastboot_tx_write(struct f_fastboot *f_fb, const char *buffer, unsign
 
 	memcpy(in_req->buf, buffer, buffer_size);
 	in_req->length = buffer_size;
-	in_req_complete = 0;
+
 	ret = usb_ep_queue(f_fb->in_ep, in_req);
 	if (ret)
 		pr_err("Error %d on queue\n", ret);
 
 	start = get_time_ns();
 
-	while (!in_req_complete) {
+	while (in_req->status == -EINPROGRESS) {
 		if (is_timeout(start, 2 * SECOND))
 			return -ETIMEDOUT;
 		usb_gadget_poll();
 	}
 
+	if (in_req->status)
+		pr_err("Failed to send answer: %d\n", in_req->status);
+
 	return 0;
 }
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
