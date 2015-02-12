Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM1Wz-0000Ob-VJ
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 21:42:42 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBCA.dip0.t-ipconnect.de
 [87.181.251.202]) by lynxeye.de (Postfix) with ESMTPA id 4522626C2015
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 22:40:15 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 12 Feb 2015 22:39:56 +0100
Message-Id: <1423777200-22965-21-git-send-email-dev@lynxeye.de>
In-Reply-To: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
References: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH RFT 20/24] usb: gadget: fsl_udc: convert to streaming DMA ops
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/usb/gadget/fsl_udc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index f9e58bb..9aa313a 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -568,8 +568,8 @@ static void done(struct fsl_ep *ep, struct fsl_req *req, int status)
 		dma_free_coherent(curr_td, sizeof(struct ep_td_struct));
 	}
 
-	dma_inv_range((unsigned long)req->req.buf,
-		(unsigned long)(req->req.buf + req->req.length));
+	dma_sync_single_for_cpu((unsigned long)req->req.buf, req->req.length,
+				DMA_BIDIRECTIONAL);
 
 	if (status && (status != -ESHUTDOWN))
 		VDBG("complete %s req %p stat %d len %u/%u",
@@ -1250,8 +1250,8 @@ fsl_ep_queue(struct usb_ep *_ep, struct usb_request *_req)
 
 	req->ep = ep;
 
-	dma_flush_range((unsigned long)req->req.buf,
-			(unsigned long)(req->req.buf + req->req.length));
+	dma_sync_single_for_device((unsigned long)req->req.buf, req->req.length,
+				   DMA_BIDIRECTIONAL);
 
 	req->req.status = -EINPROGRESS;
 	req->req.actual = 0;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
