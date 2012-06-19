Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sgxfg-00056H-1z
 for barebox@lists.infradead.org; Tue, 19 Jun 2012 12:36:37 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 19 Jun 2012 14:36:30 +0200
Message-Id: <1340109391-22794-6-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 5/6] USB gadget fsl: request cacheline aligned buffer
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

The fsl udc driver allocates a buffer for small requests. The
driver then calls dma_inv_range later on it. This buffer happens
to be not cacheline aligned which means that a dma_inv_range can
corrupt other memory around the buffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
[mkl: use dma_alloc]
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/usb/gadget/fsl_udc.c |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 5b64ec2..2765b41 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -8,7 +8,7 @@
 #include <io.h>
 #include <poller.h>
 #include <asm/byteorder.h>
-#include <asm/mmu.h>
+#include <asm/dma.h>
 
 /* ### define USB registers here
  */
@@ -2109,7 +2109,8 @@ static int struct_udc_setup(struct fsl_udc *udc,
 	udc->status_req = container_of(fsl_alloc_request(NULL),
 			struct fsl_req, req);
 	/* allocate a small amount of memory to get valid address */
-	udc->status_req->req.buf = xmalloc(8);
+	udc->status_req->req.buf = dma_alloc(8);
+	udc->status_req->req.length = 8;
 	udc->resume_state = USB_STATE_NOTATTACHED;
 	udc->usb_state = USB_STATE_POWERED;
 	udc->ep0_dir = 0;
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
