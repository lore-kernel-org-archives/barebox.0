Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9FJ1-0003YQ-DP
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:41 +0200
Message-Id: <1405955687-27433-18-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
References: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/23] USB: gadget: DFU: drop app idle state
To: barebox@lists.infradead.org

The app idle state hasn't been correctly implemented. It isn't useful
for barebox anyway since in barebox there is no app running we have
to stop first. We can just start in DFU mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/dfu.c | 42 ++----------------------------------------
 1 file changed, 2 insertions(+), 40 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 3684edd..88a78ec 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -200,7 +200,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 	dfu_string_defs[i + 1].s = NULL;
 	dfu_string_table.strings = dfu_string_defs;
 
-	dfu->dfu_state = DFU_STATE_appIDLE;
+	dfu->dfu_state = DFU_STATE_dfuIDLE;
 	dfu->dfu_status = DFU_STATUS_OK;
 
 	dfu->dnreq = usb_ep_alloc_request(c->cdev->gadget->ep0);
@@ -451,26 +451,6 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 	}
 
 	switch (dfu->dfu_state) {
-	case DFU_STATE_appIDLE:
-		switch (ctrl->bRequest) {
-		case USB_REQ_DFU_DETACH:
-			dfu->dfu_state = DFU_STATE_appDETACH;
-			value = 0;
-			goto out;
-			break;
-		default:
-			value = -EINVAL;
-		}
-		break;
-	case DFU_STATE_appDETACH:
-		switch (ctrl->bRequest) {
-		default:
-			dfu->dfu_state = DFU_STATE_appIDLE;
-			value = -EINVAL;
-			goto out;
-			break;
-		}
-		break;
 	case DFU_STATE_dfuIDLE:
 		switch (ctrl->bRequest) {
 		case USB_REQ_DFU_DNLOAD:
@@ -529,13 +509,6 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 			value = 0;
 			break;
 		case USB_REQ_DFU_DETACH:
-			/* Proprietary extension: 'detach' from idle mode and
-			 * get back to runtime mode in case of USB Reset.  As
-			 * much as I dislike this, we just can't use every USB
-			 * bus reset to switch back to runtime mode, since at
-			 * least the Linux USB stack likes to send a number of resets
-			 * in a row :( */
-			dfu->dfu_state = DFU_STATE_dfuMANIFEST_WAIT_RST;
 			value = 0;
 			dfudetach = 1;
 			break;
@@ -597,7 +570,6 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 	case DFU_STATE_dfuDNBUSY:
 	case DFU_STATE_dfuMANIFEST_SYNC:
 	case DFU_STATE_dfuMANIFEST:
-	case DFU_STATE_dfuMANIFEST_WAIT_RST:
 		dfu->dfu_state = DFU_STATE_dfuERROR;
 		value = -EINVAL;
 		goto out;
@@ -623,17 +595,7 @@ static void dfu_disable(struct usb_function *f)
 {
 	struct f_dfu		*dfu = func_to_dfu(f);
 
-	switch (dfu->dfu_state) {
-	case DFU_STATE_appDETACH:
-		dfu->dfu_state = DFU_STATE_dfuIDLE;
-		break;
-	case DFU_STATE_dfuMANIFEST_WAIT_RST:
-		dfu->dfu_state = DFU_STATE_appIDLE;
-		break;
-	default:
-		dfu->dfu_state = DFU_STATE_appDETACH;
-		break;
-	}
+	dfu->dfu_state = DFU_STATE_dfuIDLE;
 
 	dfu_cleanup(dfu);
 }
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
