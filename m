Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYJbF-0000jO-03
 for barebox@lists.infradead.org; Mon, 21 Oct 2013 17:49:06 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 21 Oct 2013 21:48:24 +0400
Message-Id: <1382377705-15040-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1382377705-15040-1-git-send-email-shc_work@mail.ru>
References: <1382377705-15040-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] gadget: at91: Fix uninitialized variable
To: barebox@lists.infradead.org

Variable udc is used unitialized for DBG(xxx).

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/usb/gadget/at91_udc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index a11379c..acd9e44 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -414,6 +414,8 @@ static int at91_ep_queue(struct usb_ep *_ep,
 	req = container_of(_req, struct at91_request, req);
 	ep = container_of(_ep, struct at91_ep, ep);
 
+	udc = ep->udc;
+
 	if (!_req || !_req->complete
 			|| !_req->buf || !list_empty(&req->queue)) {
 		DBG(udc, "invalid request\n");
@@ -425,8 +427,6 @@ static int at91_ep_queue(struct usb_ep *_ep,
 		return -EINVAL;
 	}
 
-	udc = ep->udc;
-
 	if (!udc || !udc->driver || udc->gadget.speed == USB_SPEED_UNKNOWN) {
 		DBG(udc, "invalid device\n");
 		return -EINVAL;
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
