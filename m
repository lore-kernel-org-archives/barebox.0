Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKJ-0002pf-K6
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:29:57 +0000
Received: by mail-pg1-x543.google.com with SMTP id y4so11415801pgc.12
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:29:55 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:14 -0800
Message-Id: <20190220072930.14300-10-andrew.smirnov@gmail.com>
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/25] usb: xhci-hcd: Convert xhci_submit_normal() to use
 dma_map_single()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert xhci_submit_normal() to use dma_(un)map_single(). These
functions both allow us to handle potential physical/virtual address
differences as well as allowing to drop a number of typecasts.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/xhci-hcd.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index 8a00b8854..d0b73041d 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -1100,6 +1100,7 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
 	struct xhci_hcd *xhci = to_xhci_hcd(host);
 	struct xhci_virtual_device *vdev;
 	struct xhci_slot_ctx *out_slot;
+	dma_addr_t buffer_dma;
 	union xhci_trb trb;
 	u8 epaddr = (usb_pipein(pipe) ? USB_DIR_IN : USB_DIR_OUT) |
 		usb_pipeendpoint(pipe);
@@ -1118,13 +1119,15 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
 		vdev->in_ctx->bytes, vdev->out_ctx->bytes);
 
 	/* pass ownership of data buffer to device */
-	dma_sync_single_for_device((unsigned long)buffer, length,
-				   usb_pipein(pipe) ?
-				   DMA_FROM_DEVICE : DMA_TO_DEVICE);
+	buffer_dma = dma_map_single(xhci->dev, buffer, length,
+				    usb_pipein(pipe) ?
+				    DMA_FROM_DEVICE : DMA_TO_DEVICE);
+	if (dma_mapping_error(xhci->dev, buffer_dma))
+		return -EFAULT;
 
 	/* Normal TRB */
 	memset(&trb, 0, sizeof(union xhci_trb));
-	trb.event_cmd.cmd_trb = cpu_to_le64((dma_addr_t)buffer);
+	trb.event_cmd.cmd_trb = cpu_to_le64(buffer_dma);
 	/* FIXME: TD remainder */
 	trb.event_cmd.status = TRB_LEN(length) | TRB_INTR_TARGET(0);
 	trb.event_cmd.flags = TRB_TYPE(TRB_NORMAL) | TRB_IOC;
@@ -1136,9 +1139,9 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
 	xhci_print_trb(xhci, &trb, "Response Normal");
 
 	/* Regain ownership of data buffer from device */
-	dma_sync_single_for_cpu((unsigned long)buffer, length,
-				usb_pipein(pipe) ?
-				DMA_FROM_DEVICE : DMA_TO_DEVICE);
+	dma_unmap_single(xhci->dev, buffer_dma, length,
+			 usb_pipein(pipe) ?
+			 DMA_FROM_DEVICE : DMA_TO_DEVICE);
 
 	switch (ret) {
 	case -COMP_SHORT_TX:
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
