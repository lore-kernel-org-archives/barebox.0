Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghC3P-0005fd-RR
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 11:29:49 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23993973AbfAIL3rKWEsC (ORCPT
 <rfc822;barebox@lists.infradead.org>); Wed, 9 Jan 2019 12:29:47 +0100
Date: Wed, 9 Jan 2019 12:29:45 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20190109112945.GB918@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH 3/5] usbgadget: dfu: remove useless break in the switch
 statement
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/usb/gadget/dfu.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index d7bf92cdf..c2b3d481a 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -489,7 +489,6 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 			value = handle_dnload(f, ctrl);
 			dfu->dfu_state = DFU_STATE_dfuDNLOAD_IDLE;
 			return 0;
-			break;
 		case USB_REQ_DFU_UPLOAD:
 			dfu->dfu_state = DFU_STATE_dfuUPLOAD_IDLE;
 			debug("dfu: starting upload from %s\n", dfu_file_entry->filename);
@@ -505,7 +504,6 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 			}
 			handle_upload(f, ctrl);
 			return 0;
-			break;
 		case USB_REQ_DFU_ABORT:
 			dfu->dfu_status = DFU_STATUS_OK;
 			value = 0;
@@ -517,7 +515,6 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 		default:
 			dfu->dfu_state = DFU_STATE_dfuERROR;
 			value = -EINVAL;
-			goto out;
 			break;
 		}
 		break;
@@ -544,7 +541,6 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 		case USB_REQ_DFU_UPLOAD:
 			handle_upload(f, ctrl);
 			return 0;
-			break;
 		case USB_REQ_DFU_ABORT:
 			dfu_abort(dfu);
 			value = 0;
@@ -574,7 +570,6 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 	case DFU_STATE_dfuMANIFEST:
 		dfu->dfu_state = DFU_STATE_dfuERROR;
 		value = -EINVAL;
-		goto out;
 		break;
 	default:
 		break;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
