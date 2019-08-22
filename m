Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0g0V-0002yO-5M
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 05:51:38 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 07:51:11 +0200
Message-Id: <20190822055114.931-9-ahmad@a3f.at>
In-Reply-To: <20190822055114.931-1-ahmad@a3f.at>
References: <20190822055114.931-1-ahmad@a3f.at>
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
Subject: [PATCH 08/11] usb: gadget: fsl_udc: remove always-true null pointer
 checks
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

struct fsl_ep's name member can never be NULL because it is a character
array. Remove these superfluous null pointer checks.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/usb/gadget/fsl_udc.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index a47ba20f469f..a44c7abc018b 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -1422,8 +1422,7 @@ static void udc_reset_ep_queue(struct fsl_udc *udc, u8 pipe)
 {
 	struct fsl_ep *ep = get_ep_by_pipe(udc, pipe);
 
-	if (ep->name)
-		nuke(ep, -ESHUTDOWN);
+	nuke(ep, -ESHUTDOWN);
 }
 
 /* Clear up all ep queues */
@@ -1914,12 +1913,6 @@ static void dtd_complete_irq(struct fsl_udc *udc)
 
 		curr_ep = get_ep_by_pipe(udc, i);
 
-		/* If the ep is configured */
-		if (curr_ep->name == NULL) {
-			WARNING("Invalid EP?");
-			continue;
-		}
-
 		/* process the req queue until an uncomplete request */
 		list_for_each_entry_safe(curr_req, temp_req, &curr_ep->queue,
 				queue) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
