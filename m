Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9FJ1-0003YI-BM
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:33 +0200
Message-Id: <1405955687-27433-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/23] USB: gadget: DFU: Use
 usb_assign_descriptors/usb_free_all_descriptors
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/dfu.c | 22 +++++++---------------
 1 file changed, 7 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index a685cc1..5252703 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -132,19 +132,13 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 	header[i] = (struct usb_descriptor_header *) &usb_dfu_func;
 	header[i + 1] = NULL;
 
-	/* copy descriptors, and track endpoint copies */
-	f->fs_descriptors = usb_copy_descriptors(header);
-	if (!f->fs_descriptors)
-		goto out;
+	status = usb_assign_descriptors(f, header, header, NULL);
 
-	/* support all relevant hardware speeds... we expect that when
-	 * hardware is dual speed, all bulk-capable endpoints work at
-	 * both speeds
-	 */
-	if (gadget_is_dualspeed(c->cdev->gadget)) {
-		/* copy descriptors, and track endpoint copies */
-		f->hs_descriptors = usb_copy_descriptors(header);
-	}
+	free(desc);
+	free(header);
+
+	if (status)
+		goto out;
 
 	for (i = 0; i < dfu_num_alt; i++)
 		printf("dfu: register alt%d(%s) with device %s\n",
@@ -164,9 +158,7 @@ dfu_unbind(struct usb_configuration *c, struct usb_function *f)
 {
 	struct f_dfu		*dfu = func_to_dfu(f);
 
-	free(f->fs_descriptors);
-	if (gadget_is_dualspeed(c->cdev->gadget))
-		free(f->hs_descriptors);
+	usb_free_all_descriptors(f);
 
 	dma_free(dfu->dnreq->buf);
 	usb_ep_free_request(c->cdev->gadget->ep0, dfu->dnreq);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
