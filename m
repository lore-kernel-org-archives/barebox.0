Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sgxfg-00056I-DF
 for barebox@lists.infradead.org; Tue, 19 Jun 2012 12:36:39 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 19 Jun 2012 14:36:31 +0200
Message-Id: <1340109391-22794-7-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1340109391-22794-1-git-send-email-mkl@pengutronix.de>
References: <1340109391-22794-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 6/6] USB gadget: Fix dma memory allocations
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

This is another variant of:

    USB gadget fsl: request cacheline aligned buffer

    The fsl udc driver allocates a buffer for small requests. The
    driver then calls dma_inv_range later on it. This buffer happens
    to be not cacheline aligned which means that a dma_inv_range can
    corrupt other memory around the buffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
[mkl: use dma_alloc]
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/usb/gadget/composite.c |    5 +++--
 drivers/usb/gadget/dfu.c       |    5 +++--
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index fd70e62..29848f7 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -24,6 +24,7 @@
 #include <errno.h>
 #include <usb/composite.h>
 #include <asm/byteorder.h>
+#include <asm/dma.h>
 
 #define CONFIG_USB_GADGET_VBUS_DRAW 2
 
@@ -867,7 +868,7 @@ composite_unbind(struct usb_gadget *gadget)
 		composite->unbind(cdev);
 
 	if (cdev->req) {
-		kfree(cdev->req->buf);
+		dma_free(cdev->req->buf);
 		usb_ep_free_request(gadget->ep0, cdev->req);
 	}
 	kfree(cdev);
@@ -911,7 +912,7 @@ static int __init composite_bind(struct usb_gadget *gadget)
 	cdev->req = usb_ep_alloc_request(gadget->ep0);
 	if (!cdev->req)
 		goto fail;
-	cdev->req->buf = malloc(USB_BUFSIZ);
+	cdev->req->buf = dma_alloc(USB_BUFSIZ);
 	if (!cdev->req->buf)
 		goto fail;
 	cdev->req->complete = composite_setup_complete;
diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index f26c1e4..987b51c 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -56,6 +56,7 @@
 #include <libbb.h>
 #include <init.h>
 #include <fs.h>
+#include <asm/dma.h>
 
 #define USB_DT_DFU_SIZE			9
 #define USB_DT_DFU			0x21
@@ -183,7 +184,7 @@ dfu_unbind(struct usb_configuration *c, struct usb_function *f)
 	if (gadget_is_dualspeed(c->cdev->gadget))
 		free(f->hs_descriptors);
 
-	free(dfu->dnreq->buf);
+	dma_free(dfu->dnreq->buf);
 	usb_ep_free_request(c->cdev->gadget->ep0, dfu->dnreq);
 	free(dfu);
 }
@@ -602,7 +603,7 @@ static int dfu_bind_config(struct usb_configuration *c)
 	dfu->dnreq = usb_ep_alloc_request(c->cdev->gadget->ep0);
 	if (!dfu->dnreq)
 		printf("usb_ep_alloc_request failed\n");
-	dfu->dnreq->buf = xmalloc(CONFIG_USBD_DFU_XFER_SIZE);
+	dfu->dnreq->buf = dma_alloc(CONFIG_USBD_DFU_XFER_SIZE);
 	dfu->dnreq->complete = dn_complete;
 	dfu->dnreq->zero = 0;
 
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
