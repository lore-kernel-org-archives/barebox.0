Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnA-0007sf-U7
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:59 +0100
Message-Id: <20200217124623.14520-19-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/42] usb: gadget: fsl_udc: Fix warnings on 64bit compilation
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/fsl_udc.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index dadc6aa375..cffe9bdab7 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -762,6 +762,7 @@ static struct ep_td_struct *fsl_build_dtd(struct fsl_req *req,
 	unsigned length;
 	u32 swap_temp;
 	struct ep_td_struct *dtd;
+	unsigned long buf;
 
 	/* how big will this transfer be? */
 	length = min(req->req.length - req->req.actual,
@@ -779,7 +780,13 @@ static struct ep_td_struct *fsl_build_dtd(struct fsl_req *req,
 	dtd->size_ioc_sts = cpu_to_le32(swap_temp);
 
 	/* Init all of buffer page pointers */
-	swap_temp = (u32) (req->req.buf + req->req.actual);
+	buf = (unsigned long)req->req.buf;
+	if (buf > 0xffffffff) {
+		pr_err("Only 32bit supported\n");
+		return NULL;
+	}
+
+	swap_temp = (u32)(buf + req->req.actual);
 	dtd->buff_ptr0 = cpu_to_le32(swap_temp);
 	dtd->buff_ptr1 = cpu_to_le32(swap_temp + 0x1000);
 	dtd->buff_ptr2 = cpu_to_le32(swap_temp + 0x2000);
@@ -945,13 +952,19 @@ static int fsl_ep_dequeue(struct usb_ep *_ep, struct usb_request *_req)
 		if (req->queue.next != &ep->queue) {
 			struct ep_queue_head *qh;
 			struct fsl_req *next_req;
+			unsigned long next_req_head;
 
 			qh = ep->qh;
 			next_req = list_entry(req->queue.next, struct fsl_req,
 					queue);
 
 			/* Point the QH to the first TD of next request */
-			writel((u32) next_req->head, &qh->curr_dtd_ptr);
+			next_req_head = (unsigned long)next_req->head;
+			if (next_req_head > 0xffffffff) {
+				pr_err("Only 32bit supported\n");
+				goto out;
+			}
+			writel((u32)next_req_head, &qh->curr_dtd_ptr);
 		}
 
 		/* The request hasn't been processed, patch up the TD chain */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
