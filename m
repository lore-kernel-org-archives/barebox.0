Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O7OXj-0008Dh-QR
	for barebox@lists.infradead.org; Thu, 29 Apr 2010 07:52:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Apr 2010 09:52:01 +0200
Message-Id: <1272527535-17527-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
References: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/17] fsl_udc: make it work with MMU on
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/fsl_udc.c |   11 ++++++-----
 1 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 95f3bdd..119afcb 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -560,7 +560,7 @@ static void done(struct fsl_ep *ep, struct fsl_req *req, int status)
 		if (j != req->dtd_count - 1) {
 			next_td = curr_td->next_td_virt;
 		}
-		free(curr_td);
+		dma_free_coherent(curr_td);
 	}
 
 	dma_inv_range(req->req.buf, req->req.buf + req->req.length);
@@ -1112,11 +1112,11 @@ static struct ep_td_struct *fsl_build_dtd(struct fsl_req *req, unsigned *length,
 	*length = min(req->req.length - req->req.actual,
 			(unsigned)EP_MAX_LENGTH_TRANSFER);
 
-	dtd = memalign(32, sizeof(struct ep_td_struct));
+	dtd = dma_alloc_coherent(sizeof(struct ep_td_struct));
 	if (dtd == NULL)
 		return dtd;
-	*dma = (dma_addr_t)dtd;
 
+	*dma = (dma_addr_t)virt_to_phys(dtd);
 	dtd->td_dma = *dma;
 	/* Clear reserved field */
 	swap_temp = cpu_to_le32(dtd->size_ioc_sts);
@@ -2078,13 +2078,14 @@ static int struct_udc_setup(struct fsl_udc *udc,
 		size += QH_ALIGNMENT + 1;
 		size &= ~(QH_ALIGNMENT - 1);
 	}
-	udc->ep_qh = memalign(2048, size);
+
+	udc->ep_qh = dma_alloc_coherent(size);
 	if (!udc->ep_qh) {
 		ERR("malloc QHs for udc failed\n");
 		kfree(udc->eps);
 		return -1;
 	}
-	udc->ep_qh_dma = (dma_addr_t)udc->ep_qh;
+	udc->ep_qh_dma = (dma_addr_t)virt_to_phys(udc->ep_qh);
 
 	udc->ep_qh_size = size;
 
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
