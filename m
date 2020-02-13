Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2C8n-0003t4-SL
 for barebox@lists.infradead.org; Thu, 13 Feb 2020 10:54:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2020 11:54:39 +0100
Message-Id: <20200213105439.29181-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: gadget: fsl_udc: remove unnessary argument
To: Barebox List <barebox@lists.infradead.org>

fsl_build_dtd() returns the length of the dTD, but it is never used.
Remove the length argument from the function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/fsl_udc.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index a44c7abc01..c7160cdbc7 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -1128,18 +1128,18 @@ out:
 
 /* Fill in the dTD structure
  * @req: request that the transfer belongs to
- * @length: return actually data length of the dTD
  * @dma: return dma address of the dTD
  * @is_last: return flag if it is the last dTD of the request
  * return: pointer to the built dTD */
-static struct ep_td_struct *fsl_build_dtd(struct fsl_req *req, unsigned *length,
+static struct ep_td_struct *fsl_build_dtd(struct fsl_req *req,
 		dma_addr_t *dma, int *is_last)
 {
+	unsigned length;
 	u32 swap_temp;
 	struct ep_td_struct *dtd;
 
 	/* how big will this transfer be? */
-	*length = min(req->req.length - req->req.actual,
+	length = min(req->req.length - req->req.actual,
 			(unsigned)EP_MAX_LENGTH_TRANSFER);
 
 	dtd = dma_alloc_coherent(sizeof(struct ep_td_struct),
@@ -1161,11 +1161,11 @@ static struct ep_td_struct *fsl_build_dtd(struct fsl_req *req, unsigned *length,
 	dtd->buff_ptr3 = cpu_to_le32(swap_temp + 0x3000);
 	dtd->buff_ptr4 = cpu_to_le32(swap_temp + 0x4000);
 
-	req->req.actual += *length;
+	req->req.actual += length;
 
 	/* zlp is needed if req->req.zero is set */
 	if (req->req.zero) {
-		if (*length == 0 || (*length % req->ep->ep.maxpacket) != 0)
+		if (length == 0 || (length % req->ep->ep.maxpacket) != 0)
 			*is_last = 1;
 		else
 			*is_last = 0;
@@ -1177,7 +1177,7 @@ static struct ep_td_struct *fsl_build_dtd(struct fsl_req *req, unsigned *length,
 	if ((*is_last) == 0)
 		VDBG("multi-dtd request!");
 	/* Fill in the transfer size; set active bit */
-	swap_temp = ((*length << DTD_LENGTH_BIT_POS) | DTD_STATUS_ACTIVE);
+	swap_temp = ((length << DTD_LENGTH_BIT_POS) | DTD_STATUS_ACTIVE);
 
 	/* Enable interrupt for the last dtd of a request */
 	if (*is_last && !req->req.no_interrupt)
@@ -1193,14 +1193,13 @@ static struct ep_td_struct *fsl_build_dtd(struct fsl_req *req, unsigned *length,
 /* Generate dtd chain for a request */
 static int fsl_req_to_dtd(struct fsl_req *req)
 {
-	unsigned	count;
 	int		is_last;
 	int		is_first =1;
 	struct ep_td_struct	*last_dtd = NULL, *dtd;
 	dma_addr_t dma;
 
 	do {
-		dtd = fsl_build_dtd(req, &count, &dma, &is_last);
+		dtd = fsl_build_dtd(req, &dma, &is_last);
 		if (dtd == NULL)
 			return -ENOMEM;
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
