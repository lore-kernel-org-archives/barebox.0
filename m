Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XgHP8-0006si-1t
 for barebox@lists.infradead.org; Mon, 20 Oct 2014 18:10:02 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id A6C9726C2004
 for <barebox@lists.infradead.org>; Mon, 20 Oct 2014 20:09:10 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 20 Oct 2014 20:15:56 +0200
Message-Id: <1413828961-12605-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
References: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/7] dfu: fix possible usage of uninitialized var
To: barebox@lists.infradead.org

The error path would in fact use the status
variable without it being initialized first.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/usb/gadget/dfu.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 67a0703..351b584 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -207,6 +207,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 	dfu->dnreq = usb_ep_alloc_request(c->cdev->gadget->ep0);
 	if (!dfu->dnreq) {
 		printf("usb_ep_alloc_request failed\n");
+		status = -ENOMEM;
 		goto out;
 	}
 	dfu->dnreq->buf = dma_alloc(CONFIG_USBD_DFU_XFER_SIZE);
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
