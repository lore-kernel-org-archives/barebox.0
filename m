Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKG-0002nA-NN
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:29:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id n22so11488941pfa.3
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:29:52 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:11 -0800
Message-Id: <20190220072930.14300-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/25] usb: xhci-hcd: Add support for 64-byte context size
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

xHCI spec allows for various context to be either 32 or 64 bytes in
size, so we can't rely on struct definitions to correctly reflect data
layout. Port varios context accessors from Linux kernel and convert
the rest of the code to use them in order to be able to support both
context sizes.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/xhci-hcd.c | 233 +++++++++++++++++++++++++-----------
 drivers/usb/host/xhci.h     |  36 ++++--
 2 files changed, 188 insertions(+), 81 deletions(-)

diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index f97a334f0..91ddcbb30 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -23,6 +23,39 @@
 
 #include "xhci.h"
 
+
+static struct xhci_input_control_ctx *
+xhci_get_input_control_ctx(struct xhci_container_ctx *ctx)
+{
+	if (ctx->type != XHCI_CTX_TYPE_INPUT)
+		return NULL;
+
+	return (struct xhci_input_control_ctx *)ctx->bytes;
+}
+
+static struct xhci_slot_ctx *xhci_get_slot_ctx(struct xhci_hcd *xhci,
+					       struct xhci_container_ctx *ctx)
+{
+	if (ctx->type == XHCI_CTX_TYPE_DEVICE)
+		return (struct xhci_slot_ctx *)ctx->bytes;
+
+	return (struct xhci_slot_ctx *)
+		(ctx->bytes + HCC_CTX_SIZE(xhci->hcc_params));
+}
+
+static struct xhci_ep_ctx *xhci_get_ep_ctx(struct xhci_hcd *xhci,
+					   struct xhci_container_ctx *ctx,
+					   unsigned int ep_index)
+{
+	/* increment ep index by offset of start of ep ctx array */
+	ep_index++;
+	if (ctx->type == XHCI_CTX_TYPE_INPUT)
+		ep_index++;
+
+	return (struct xhci_ep_ctx *)
+		(ctx->bytes + (ep_index * HCC_CTX_SIZE(xhci->hcc_params)));
+}
+
 /*
  * xHCI ring handling
  */
@@ -426,28 +459,48 @@ static struct xhci_virtual_device *xhci_find_virtdev(struct xhci_hcd *xhci,
 	return NULL;
 }
 
+static struct xhci_container_ctx *
+xhci_alloc_container_ctx(struct xhci_hcd *xhci, int type)
+{
+	struct xhci_container_ctx *ctx;
+
+	if ((type != XHCI_CTX_TYPE_DEVICE) && (type != XHCI_CTX_TYPE_INPUT))
+		return NULL;
+
+	ctx = xzalloc(sizeof(*ctx));
+	ctx->type = type;
+	ctx->size = HCC_64BYTE_CONTEXT(xhci->hcc_params) ? 2048 : 1024;
+	if (type == XHCI_CTX_TYPE_INPUT)
+		ctx->size += HCC_CTX_SIZE(xhci->hcc_params);
+
+	ctx->bytes = dma_alloc_coherent(ctx->size, &ctx->dma);
+	if (WARN_ON(!ctx->bytes)) {
+		kfree(ctx);
+		return NULL;
+	}
+	return ctx;
+}
+
+static void xhci_free_container_ctx(struct xhci_hcd *xhci,
+				    struct xhci_container_ctx *ctx)
+{
+	if (!ctx)
+		return;
+	dma_free_coherent(ctx->bytes, ctx->dma, ctx->size);
+	kfree(ctx);
+}
+
 static struct xhci_virtual_device *xhci_alloc_virtdev(struct xhci_hcd *xhci,
 						      struct usb_device *udev)
 {
 	struct xhci_virtual_device *vdev;
-	size_t sz_ctx, sz_ictx, sz_dctx;
-	void *p;
 
 	vdev = xzalloc(sizeof(*vdev));
 	vdev->udev = udev;
 	list_add_tail(&vdev->list, &xhci->vdev_list);
 
-	sz_ctx = HCC_64BYTE_CONTEXT(xhci->hcc_params) ? 2048 : 1024;
-	/* Device Context: 64B aligned */
-	sz_dctx = ALIGN(sz_ctx, 64);
-	/* Input Control Context: 64B aligned */
-	sz_ictx = ALIGN(sz_ctx + HCC_CTX_SIZE(xhci->hcc_params), 64);
-
-	vdev->dma_size = sz_ictx + sz_dctx;
-	p = vdev->dma = dma_alloc_coherent(vdev->dma_size, DMA_ADDRESS_BROKEN);
-
-	vdev->out_ctx = p; p += sz_dctx;
-	vdev->in_ctx = p; p += sz_ictx;
+	vdev->out_ctx = xhci_alloc_container_ctx(xhci, XHCI_CTX_TYPE_DEVICE);
+	vdev->in_ctx = xhci_alloc_container_ctx(xhci, XHCI_CTX_TYPE_INPUT);
 
 	return vdev;
 }
@@ -462,7 +515,8 @@ static void xhci_free_virtdev(struct xhci_virtual_device *vdev)
 			xhci_put_endpoint_ring(xhci, vdev->ep[i]);
 
 	list_del(&vdev->list);
-	dma_free_coherent(vdev->dma, 0, vdev->dma_size);
+	xhci_free_container_ctx(xhci, vdev->out_ctx);
+	xhci_free_container_ctx(xhci, vdev->in_ctx);
 	free(vdev);
 }
 
@@ -486,23 +540,32 @@ static int xhci_virtdev_issue_transfer(struct xhci_virtual_device *vdev,
 
 static void xhci_virtdev_zero_in_ctx(struct xhci_virtual_device *vdev)
 {
+	struct xhci_hcd *xhci = to_xhci_hcd(vdev->udev->host);
+	struct xhci_input_control_ctx *in_icc;
+	struct xhci_slot_ctx *in_slot;
+	struct xhci_ep_ctx *in_ep;
 	int i;
 
+	in_icc = xhci_get_input_control_ctx(vdev->in_ctx);
+	in_slot = xhci_get_slot_ctx(xhci, vdev->in_ctx);
+
 	/* When a device's add flag and drop flag are zero, any subsequent
 	 * configure endpoint command will leave that endpoint's state
 	 * untouched.  Make sure we don't leave any old state in the input
 	 * endpoint contexts.
 	 */
-	vdev->in_ctx->icc.drop_flags = 0;
-	vdev->in_ctx->icc.add_flags = 0;
-	vdev->in_ctx->slot.dev_info &= cpu_to_le32(~LAST_CTX_MASK);
+	in_icc->drop_flags = 0;
+	in_icc->add_flags = 0;
+	in_slot->dev_info &= cpu_to_le32(~LAST_CTX_MASK);
 	/* Endpoint 0 is always valid */
-	vdev->in_ctx->slot.dev_info |= cpu_to_le32(LAST_CTX(1));
+	in_slot->dev_info |= cpu_to_le32(LAST_CTX(1));
 	for (i = 1; i < 31; i++) {
-		vdev->in_ctx->ep[i].ep_info = 0;
-		vdev->in_ctx->ep[i].ep_info2 = 0;
-		vdev->in_ctx->ep[i].deq = 0;
-		vdev->in_ctx->ep[i].tx_info = 0;
+		in_ep = xhci_get_ep_ctx(xhci, vdev->in_ctx, i);
+
+		in_ep->ep_info = 0;
+		in_ep->ep_info2 = 0;
+		in_ep->deq = 0;
+		in_ep->tx_info = 0;
 	}
 }
 
@@ -558,11 +621,14 @@ static int xhci_virtdev_enable_slot(struct xhci_virtual_device *vdev)
 int xhci_virtdev_reset(struct xhci_virtual_device *vdev)
 {
 	struct xhci_hcd *xhci = to_xhci_hcd(vdev->udev->host);
+	struct xhci_slot_ctx *out_slot;
 	union xhci_trb trb;
 	int ret;
 
+	out_slot = xhci_get_slot_ctx(xhci, vdev->out_ctx);
+
 	/* If device is not setup, there is no point in resetting it */
-	if (GET_SLOT_STATE(le32_to_cpu(vdev->out_ctx->slot.dev_state)) ==
+	if (GET_SLOT_STATE(le32_to_cpu(out_slot->dev_state)) ==
 	    SLOT_STATE_DISABLED)
 		return 0;
 
@@ -607,31 +673,37 @@ static int xhci_virtdev_update_hub_device(struct xhci_virtual_device *vdev,
 {
 	struct xhci_hcd *xhci = to_xhci_hcd(vdev->udev->host);
 	struct usb_hub_descriptor *desc = buffer;
+	struct xhci_input_control_ctx *in_icc;
+	struct xhci_slot_ctx *in_slot, *out_slot;
 	union xhci_trb trb;
 	u32 dev_info, dev_info2, tt_info;
 	u8 maxchild;
 	u16 hubchar;
 	int ret;
 
+	out_slot = xhci_get_slot_ctx(xhci, vdev->out_ctx);
+
 	/* Need at least first byte of wHubCharacteristics */
 	if (length < 4)
 		return 0;
 	/* Skip already configured hub device */
-	if (vdev->out_ctx->slot.dev_info & DEV_HUB)
+	if (out_slot->dev_info & DEV_HUB)
 		return 0;
 
 	maxchild = desc->bNbrPorts;
 	hubchar = le16_to_cpu(desc->wHubCharacteristics);
 
+	in_slot = xhci_get_slot_ctx(xhci, vdev->in_ctx);
+	in_icc = xhci_get_input_control_ctx(vdev->in_ctx);
+
 	/* update slot context */
-	memcpy(&vdev->in_ctx->slot, &vdev->out_ctx->slot,
-	       sizeof(struct xhci_slot_ctx));
-	vdev->in_ctx->icc.add_flags |= cpu_to_le32(SLOT_FLAG);
-	vdev->in_ctx->icc.drop_flags = 0;
-	vdev->in_ctx->slot.dev_state = 0;
-	dev_info = le32_to_cpu(vdev->in_ctx->slot.dev_info);
-	dev_info2 = le32_to_cpu(vdev->in_ctx->slot.dev_info2);
-	tt_info = le32_to_cpu(vdev->in_ctx->slot.tt_info);
+	memcpy(in_slot, out_slot, sizeof(struct xhci_slot_ctx));
+	in_icc->add_flags |= cpu_to_le32(SLOT_FLAG);
+	in_icc->drop_flags = 0;
+	in_slot->dev_state = 0;
+	dev_info = le32_to_cpu(in_slot->dev_info);
+	dev_info2 = le32_to_cpu(in_slot->dev_info2);
+	tt_info = le32_to_cpu(in_slot->tt_info);
 
 	dev_info |= DEV_HUB;
 	/* HS Multi-TT in bDeviceProtocol */
@@ -653,13 +725,13 @@ static int xhci_virtdev_update_hub_device(struct xhci_virtual_device *vdev,
 			tt_info |= TT_THINK_TIME(think_time);
 		}
 	}
-	vdev->in_ctx->slot.dev_info = cpu_to_le32(dev_info);
-	vdev->in_ctx->slot.dev_info2 = cpu_to_le32(dev_info2);
-	vdev->in_ctx->slot.tt_info = cpu_to_le32(tt_info);
+	in_slot->dev_info = cpu_to_le32(dev_info);
+	in_slot->dev_info2 = cpu_to_le32(dev_info2);
+	in_slot->tt_info = cpu_to_le32(tt_info);
 
 	/* Issue Configure Endpoint or Evaluate Context Command */
 	memset(&trb, 0, sizeof(union xhci_trb));
-	xhci_write_64((dma_addr_t)vdev->in_ctx, &trb.event_cmd.cmd_trb);
+	xhci_write_64(vdev->in_ctx->dma, &trb.event_cmd.cmd_trb);
 	trb.event_cmd.flags = SLOT_ID_FOR_TRB(vdev->slot_id);
 	if (xhci->hci_version > 0x95)
 		trb.event_cmd.flags |= TRB_TYPE(TRB_CONFIG_EP);
@@ -695,6 +767,8 @@ static int xhci_virtdev_update_hub_status(struct xhci_virtual_device *vhub,
 static int xhci_virtdev_configure(struct xhci_virtual_device *vdev, int config)
 {
 	struct xhci_hcd *xhci = to_xhci_hcd(vdev->udev->host);
+	struct xhci_input_control_ctx *in_icc;
+	struct xhci_slot_ctx *in_slot;
 	struct usb_device *udev = vdev->udev;
 	union xhci_trb trb;
 	u32 add_flags = 0, last_ctx;
@@ -711,10 +785,12 @@ static int xhci_virtdev_configure(struct xhci_virtual_device *vdev, int config)
 							   ep->bmAttributes);
 			u8 epi = xhci_get_endpoint_index(ep->bEndpointAddress,
 							 ep->bmAttributes);
-			struct xhci_ep_ctx *ctx = &vdev->in_ctx->ep[epi];
+			struct xhci_ep_ctx *ctx;
 			u32 mps, interval, mult, esit, max_packet, max_burst;
 			u32 ep_info, ep_info2, tx_info;
 
+			ctx = xhci_get_ep_ctx(xhci, vdev->in_ctx, epi);
+
 			vdev->ep[epi] = xhci_get_endpoint_ring(xhci);
 			if (!vdev->ep[epi])
 				return -ENOMEM;
@@ -781,23 +857,26 @@ static int xhci_virtdev_configure(struct xhci_virtual_device *vdev, int config)
 
 	last_ctx = fls(add_flags) - 1;
 
+	in_slot = xhci_get_slot_ctx(xhci, vdev->in_ctx);
+	in_icc = xhci_get_input_control_ctx(vdev->in_ctx);
+
 	/* See section 4.6.6 - A0 = 1; A1 = D0 = D1 = 0 */
-	vdev->in_ctx->icc.add_flags = cpu_to_le32(add_flags);
-	vdev->in_ctx->icc.add_flags |= cpu_to_le32(SLOT_FLAG);
-	vdev->in_ctx->icc.add_flags &= cpu_to_le32(~EP0_FLAG);
-	vdev->in_ctx->icc.drop_flags &= cpu_to_le32(~(SLOT_FLAG | EP0_FLAG));
+	in_icc->add_flags = cpu_to_le32(add_flags);
+	in_icc->add_flags |= cpu_to_le32(SLOT_FLAG);
+	in_icc->add_flags &= cpu_to_le32(~EP0_FLAG);
+	in_icc->drop_flags &= cpu_to_le32(~(SLOT_FLAG | EP0_FLAG));
 
 	/* Don't issue the command if there's no endpoints to update. */
-	if (vdev->in_ctx->icc.add_flags == cpu_to_le32(SLOT_FLAG) &&
-	    vdev->in_ctx->icc.drop_flags == 0)
+	if (in_icc->add_flags == cpu_to_le32(SLOT_FLAG) &&
+	    in_icc->drop_flags == 0)
 		return 0;
 
-	vdev->in_ctx->slot.dev_info &= cpu_to_le32(~LAST_CTX_MASK);
-	vdev->in_ctx->slot.dev_info |= cpu_to_le32(LAST_CTX(last_ctx));
+	in_slot->dev_info &= cpu_to_le32(~LAST_CTX_MASK);
+	in_slot->dev_info |= cpu_to_le32(LAST_CTX(last_ctx));
 
 	/* Issue Configure Endpoint Command */
 	memset(&trb, 0, sizeof(union xhci_trb));
-	xhci_write_64((dma_addr_t)vdev->in_ctx, &trb.event_cmd.cmd_trb);
+	xhci_write_64(vdev->in_ctx->dma, &trb.event_cmd.cmd_trb);
 	trb.event_cmd.flags = TRB_TYPE(TRB_CONFIG_EP) |
 		SLOT_ID_FOR_TRB(vdev->slot_id);
 	xhci_print_trb(xhci, &trb, "Request  ConfigureEndpoint");
@@ -817,7 +896,7 @@ static int xhci_virtdev_deconfigure(struct xhci_virtual_device *vdev)
 
 	/* Issue Deconfigure Endpoint Command */
 	memset(&trb, 0, sizeof(union xhci_trb));
-	xhci_write_64((dma_addr_t)vdev->in_ctx, &trb.event_cmd.cmd_trb);
+	xhci_write_64(vdev->in_ctx->dma, &trb.event_cmd.cmd_trb);
 	trb.event_cmd.flags = TRB_TYPE(TRB_CONFIG_EP) | TRB_DC |
 		SLOT_ID_FOR_TRB(vdev->slot_id);
 	xhci_print_trb(xhci, &trb, "Request  DeconfigureEndpoint");
@@ -833,11 +912,16 @@ static int xhci_virtdev_init(struct xhci_virtual_device *vdev)
 {
 	struct xhci_hcd *xhci = to_xhci_hcd(vdev->udev->host);
 	struct usb_device *top_dev;
+	struct xhci_slot_ctx *in_slot;
+	struct xhci_ep_ctx *in_ep;
 	int max_packets;
 	u32 route = 0, dev_info, dev_info2, tt_info, ep_info2, tx_info;
 	bool on_hs_hub = false;
 	int hs_slot_id = 0;
 
+	in_ep = xhci_get_ep_ctx(xhci, vdev->in_ctx, 0);
+	in_slot = xhci_get_slot_ctx(xhci, vdev->in_ctx);
+
 	/*
 	 * Find the root hub port this device is under, also determine SlotID
 	 * of possible external HS hub a LS/FS device could be connected to.
@@ -892,9 +976,9 @@ static int xhci_virtdev_init(struct xhci_virtual_device *vdev)
 		tt_info |= (top_dev->portnr << 8) | hs_slot_id;
 	}
 
-	vdev->in_ctx->slot.dev_info = cpu_to_le32(dev_info);
-	vdev->in_ctx->slot.dev_info2 = cpu_to_le32(dev_info2);
-	vdev->in_ctx->slot.tt_info = cpu_to_le32(tt_info);
+	in_slot->dev_info = cpu_to_le32(dev_info);
+	in_slot->dev_info2 = cpu_to_le32(dev_info2);
+	in_slot->tt_info = cpu_to_le32(tt_info);
 
 	/* 4.3.3 4) Initalize Transfer Ring */
 	vdev->ep[0] = xhci_get_endpoint_ring(xhci);
@@ -906,13 +990,13 @@ static int xhci_virtdev_init(struct xhci_virtual_device *vdev)
 	ep_info2 = EP_TYPE(CTRL_EP) | MAX_BURST(0) | ERROR_COUNT(3);
 	ep_info2 |= MAX_PACKET(max_packets);
 	tx_info = AVG_TRB_LENGTH_FOR_EP(8);
-	vdev->in_ctx->ep[0].ep_info2 = cpu_to_le32(ep_info2);
-	vdev->in_ctx->ep[0].tx_info = cpu_to_le32(tx_info);
-	vdev->in_ctx->ep[0].deq = cpu_to_le64((dma_addr_t)vdev->ep[0]->enqueue |
-					      vdev->ep[0]->cycle_state);
+	in_ep->ep_info2 = cpu_to_le32(ep_info2);
+	in_ep->tx_info = cpu_to_le32(tx_info);
+	in_ep->deq = cpu_to_le64((dma_addr_t)vdev->ep[0]->enqueue |
+				 vdev->ep[0]->cycle_state);
 
 	/* 4.3.3 6+7) Initalize and Set Device Context Base Address Array */
-	xhci->dcbaa[vdev->slot_id] = cpu_to_le64((dma_addr_t)vdev->out_ctx);
+	xhci->dcbaa[vdev->slot_id] = cpu_to_le64(vdev->out_ctx->dma);
 
 	return 0;
 }
@@ -921,39 +1005,46 @@ static int xhci_virtdev_setup(struct xhci_virtual_device *vdev,
 			      enum xhci_setup_dev setup)
 {
 	struct xhci_hcd *xhci = to_xhci_hcd(vdev->udev->host);
+	static struct xhci_input_control_ctx *in_icc;
+	struct xhci_slot_ctx *in_slot;
+	struct xhci_ep_ctx *in_ep;
 	union xhci_trb trb;
 	int ret;
 
+	in_slot = xhci_get_slot_ctx(xhci, vdev->in_ctx);
+	in_icc = xhci_get_input_control_ctx(vdev->in_ctx);
+
 	/*
 	 * If this is the first Set Address since device
 	 * plug-in then initialize Slot Context
 	 */
-	if (!vdev->in_ctx->slot.dev_info)
+	if (!in_slot->dev_info)
 		xhci_virtdev_init(vdev);
 	else {
+		in_ep = xhci_get_ep_ctx(xhci, vdev->in_ctx, 0);
+
 		/* Otherwise, update Control Ring Dequeue pointer */
-		vdev->in_ctx->ep[0].deq =
-			cpu_to_le64((dma_addr_t)vdev->ep[0]->enqueue |
-				    vdev->ep[0]->cycle_state);
+		in_ep->deq = cpu_to_le64((dma_addr_t)vdev->ep[0]->enqueue |
+					 vdev->ep[0]->cycle_state);
 		/*
 		 * FS devices have MaxPacketSize0 of 8 or 64, we start
 		 * with 64. If assumtion was wrong, fix it up here.
 		 */
 		if (vdev->udev->speed == USB_SPEED_FULL &&
 		    vdev->udev->maxpacketsize == PACKET_SIZE_8) {
-			u32 info = le32_to_cpu(vdev->in_ctx->ep[0].ep_info2);
+			u32 info = le32_to_cpu(in_ep->ep_info2);
 			info &= ~MAX_PACKET_MASK;
 			info |= MAX_PACKET(8);
-			vdev->in_ctx->ep[0].ep_info2 = cpu_to_le32(info);
+			in_ep->ep_info2 = cpu_to_le32(info);
 		}
 	}
 
-	vdev->in_ctx->icc.add_flags = cpu_to_le32(SLOT_FLAG | EP0_FLAG);
-	vdev->in_ctx->icc.drop_flags = 0;
+	in_icc->add_flags = cpu_to_le32(SLOT_FLAG | EP0_FLAG);
+	in_icc->drop_flags = 0;
 
 	/* Issue Address Device Command */
 	memset(&trb, 0, sizeof(union xhci_trb));
-	xhci_write_64((dma_addr_t)vdev->in_ctx, &trb.event_cmd.cmd_trb);
+	xhci_write_64(vdev->in_ctx->dma, &trb.event_cmd.cmd_trb);
 	trb.event_cmd.flags = TRB_TYPE(TRB_ADDR_DEV) |
 		SLOT_ID_FOR_TRB(vdev->slot_id);
 	if (setup == SETUP_CONTEXT_ONLY)
@@ -1008,6 +1099,7 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
 	struct usb_host *host = udev->host;
 	struct xhci_hcd *xhci = to_xhci_hcd(host);
 	struct xhci_virtual_device *vdev;
+	struct xhci_slot_ctx *out_slot;
 	union xhci_trb trb;
 	u8 epaddr = (usb_pipein(pipe) ? USB_DIR_IN : USB_DIR_OUT) |
 		usb_pipeendpoint(pipe);
@@ -1018,10 +1110,12 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
 	if (!vdev)
 		return -ENODEV;
 
+	out_slot = xhci_get_slot_ctx(xhci, vdev->out_ctx);
+
 	dev_dbg(xhci->dev, "%s udev %p vdev %p slot %u state %u epi %u in_ctx %p out_ctx %p\n",
 		__func__, udev, vdev, vdev->slot_id,
-		GET_SLOT_STATE(le32_to_cpu(vdev->out_ctx->slot.dev_state)), epi,
-		vdev->in_ctx, vdev->out_ctx);
+		GET_SLOT_STATE(le32_to_cpu(out_slot->dev_state)), epi,
+		vdev->in_ctx->bytes, vdev->out_ctx->bytes);
 
 	/* pass ownership of data buffer to device */
 	dma_sync_single_for_device((unsigned long)buffer, length,
@@ -1069,6 +1163,7 @@ static int xhci_submit_control(struct usb_device *udev, unsigned long pipe,
 	struct usb_host *host = udev->host;
 	struct xhci_hcd *xhci = to_xhci_hcd(host);
 	struct xhci_virtual_device *vdev;
+	struct xhci_slot_ctx *out_slot;
 	union xhci_trb trb;
 	u16 typeReq = (req->requesttype << 8) | req->request;
 	int ret;
@@ -1090,10 +1185,12 @@ static int xhci_submit_control(struct usb_device *udev, unsigned long pipe,
 	if (!vdev)
 		return -ENODEV;
 
+	out_slot = xhci_get_slot_ctx(xhci, vdev->out_ctx);
+
 	dev_dbg(xhci->dev, "%s udev %p vdev %p slot %u state %u epi %u in_ctx %p out_ctx %p\n",
 		__func__, udev, vdev, vdev->slot_id,
-		GET_SLOT_STATE(le32_to_cpu(vdev->out_ctx->slot.dev_state)), 0,
-		vdev->in_ctx, vdev->out_ctx);
+		GET_SLOT_STATE(le32_to_cpu(out_slot->dev_state)), 0,
+		vdev->in_ctx->bytes, vdev->out_ctx->bytes);
 
 	if (req->request == USB_REQ_SET_ADDRESS)
 		return xhci_virtdev_set_address(vdev);
diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index 078f88118..9f2d57675 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -503,6 +503,27 @@ struct xhci_doorbell_array {
 #define DB_VALUE(ep, stream)	((((ep) + 1) & 0xff) | ((stream) << 16))
 #define DB_VALUE_HOST		0x00000000
 
+/**
+ * struct xhci_container_ctx
+ * @type: Type of context.  Used to calculated offsets to contained contexts.
+ * @size: Size of the context data
+ * @bytes: The raw context data given to HW
+ * @dma: dma address of the bytes
+ *
+ * Represents either a Device or Input context.  Holds a pointer to the raw
+ * memory used for the context (bytes) and dma address of it (dma).
+ */
+struct xhci_container_ctx {
+	unsigned type;
+#define XHCI_CTX_TYPE_DEVICE  0x1
+#define XHCI_CTX_TYPE_INPUT   0x2
+
+	int size;
+
+	u8 *bytes;
+	dma_addr_t dma;
+};
+
 /**
  * struct xhci_slot_ctx
  * @dev_info:	Route string, device speed, hub info, and last valid endpoint
@@ -1183,17 +1204,6 @@ struct xhci_ring {
 	int cycle_state;
 };
 
-struct xhci_device_context {
-	struct xhci_slot_ctx slot;
-	struct xhci_ep_ctx ep[31];
-};
-
-struct xhci_input_context {
-	struct xhci_input_control_ctx icc;
-	struct xhci_slot_ctx slot;
-	struct xhci_ep_ctx ep[31];
-};
-
 struct xhci_virtual_device {
 	struct list_head list;
 	struct usb_device *udev;
@@ -1201,8 +1211,8 @@ struct xhci_virtual_device {
 	size_t dma_size;
 	int slot_id;
 	struct xhci_ring *ep[USB_MAXENDPOINTS];
-	struct xhci_input_context *in_ctx;
-	struct xhci_device_context *out_ctx;
+	struct xhci_container_ctx *in_ctx;
+	struct xhci_container_ctx *out_ctx;
 };
 
 struct usb_root_hub_info {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
