Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qME-0006uM-KN
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 12:43:57 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 16 Sep 2019 14:43:44 +0200
Message-Id: <20190916124345.24244-5-s.trumtrar@pengutronix.de>
In-Reply-To: <20190916124345.24244-1-s.trumtrar@pengutronix.de>
References: <20190916124345.24244-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 5/6] usb: gadget: composite: conditionally dequeue setup
 requests
To: Barebox List <barebox@lists.infradead.org>

From: Sascha Hauer <s.hauer@pengutronix.de>

This is an adoption of Kernel commit a7c12eaf2 ("usb: gadget: composite:
conditionally dequeue os_desc and setup requests"). Basically we only
want to dequeue ep0 requests when they are actually queued. Drivers like
dwc3 warn when unqueued requests are being tried to unqueued.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/composite.c | 43 +++++++++++++++++++++++++++++++---
 include/usb/composite.h        |  3 +++
 2 files changed, 43 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index 1cfc49d1c5de..b66aa6be9770 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -1194,10 +1194,45 @@ EXPORT_SYMBOL_GPL(usb_string_ids_n);
 
 static void composite_setup_complete(struct usb_ep *ep, struct usb_request *req)
 {
+	struct usb_composite_dev *cdev;
+
 	if (req->status || req->actual != req->length)
 		DBG((struct usb_composite_dev *) ep->driver_data,
 				"setup complete --> %d, %d/%d\n",
 				req->status, req->actual, req->length);
+
+	/*
+	 * REVIST The same ep0 requests are shared with function drivers
+	 * so they don't have to maintain the same ->complete() stubs.
+	 *
+	 * Because of that, we need to check for the validity of ->context
+	 * here, even though we know we've set it to something useful.
+	 */
+	if (!req->context)
+		return;
+
+	cdev = req->context;
+
+	if (cdev->req == req)
+		cdev->setup_pending = false;
+	else
+		WARN(1, "unknown request %p\n", req);
+}
+
+static int composite_ep0_queue(struct usb_composite_dev *cdev,
+		struct usb_request *req)
+{
+	int ret;
+
+	ret = usb_ep_queue(cdev->gadget->ep0, req);
+	if (ret == 0) {
+		if (cdev->req == req)
+			cdev->setup_pending = true;
+		else
+			WARN(1, "unknown request %p\n", req);
+	}
+
+	return ret;
 }
 
 /*
@@ -1226,6 +1261,7 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 	 * when we delegate to it.
 	 */
 	req->zero = 0;
+	req->context = cdev;
 	req->complete = composite_setup_complete;
 	req->length = 0;
 	gadget->ep0->driver_data = cdev;
@@ -1469,7 +1505,7 @@ unknown:
 	if (value >= 0 && value != USB_GADGET_DELAYED_STATUS) {
 		req->length = value;
 		req->zero = value < w_length;
-		value = usb_ep_queue(gadget->ep0, req);
+		value = composite_ep0_queue(cdev, req);
 		if (value < 0) {
 			DBG(cdev, "ep_queue --> %d\n", value);
 			req->status = 0;
@@ -1621,7 +1657,8 @@ void composite_dev_cleanup(struct usb_composite_dev *cdev)
 		kfree(uc);
 	}
 	if (cdev->req) {
-		usb_ep_dequeue(cdev->gadget->ep0, cdev->req);
+		if (cdev->setup_pending)
+			usb_ep_dequeue(cdev->gadget->ep0, cdev->req);
 		kfree(cdev->req->buf);
 		usb_ep_free_request(cdev->gadget->ep0, cdev->req);
 	}
@@ -1753,7 +1790,7 @@ void usb_composite_setup_continue(struct usb_composite_dev *cdev)
 	} else if (--cdev->delayed_status == 0) {
 		DBG(cdev, "%s: Completing delayed status\n", __func__);
 		req->length = 0;
-		value = usb_ep_queue(cdev->gadget->ep0, req);
+		value = composite_ep0_queue(cdev, req);
 		if (value < 0) {
 			DBG(cdev, "ep_queue --> %d\n", value);
 			req->status = 0;
diff --git a/include/usb/composite.h b/include/usb/composite.h
index f30568a54f32..ec9abe74472a 100644
--- a/include/usb/composite.h
+++ b/include/usb/composite.h
@@ -395,6 +395,9 @@ struct usb_composite_dev {
 	spinlock_t			lock;
 
 	int in_reset_config;
+
+	/* public: */
+	unsigned int			setup_pending:1;
 };
 
 extern int usb_string_id(struct usb_composite_dev *c);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
