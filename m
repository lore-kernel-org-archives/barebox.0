Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKA-0002jK-Qc
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:29:48 +0000
Received: by mail-pg1-x543.google.com with SMTP id r11so11420679pgp.6
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:29:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:06 -0800
Message-Id: <20190220072930.14300-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/25] usb: xhci-hcd: Tabify the file
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Replace occasional all-whiltespace indentation with tabs for
consistency.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/xhci-hcd.c | 136 ++++++++++++++++++------------------
 1 file changed, 68 insertions(+), 68 deletions(-)

diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index 2b808cc87..7cfd74de4 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -29,10 +29,10 @@
 
 static int xhci_ring_is_last_trb(struct xhci_ring *ring, union xhci_trb *trb)
 {
-        if (ring->type == TYPE_EVENT)
-                return trb == &ring->trbs[NUM_EVENT_TRBS];
-        else
-                return TRB_TYPE_LINK(le32_to_cpu(trb->link.control));
+	if (ring->type == TYPE_EVENT)
+		return trb == &ring->trbs[NUM_EVENT_TRBS];
+	else
+		return TRB_TYPE_LINK(le32_to_cpu(trb->link.control));
 }
 
 static int xhci_ring_increment(struct xhci_ring *ring, bool enqueue)
@@ -41,7 +41,7 @@ static int xhci_ring_increment(struct xhci_ring *ring, bool enqueue)
 
 	(*queue)++;
 
-        if (!xhci_ring_is_last_trb(ring, *queue))
+	if (!xhci_ring_is_last_trb(ring, *queue))
 		return 0;
 
 	if (ring->type == TYPE_EVENT) {
@@ -139,15 +139,15 @@ static unsigned int xhci_get_endpoint_index(u8 epaddress, u8 epattributes)
 {
 	u8 epnum = epaddress & USB_ENDPOINT_NUMBER_MASK;
 	u8 xfer = epattributes & USB_ENDPOINT_XFERTYPE_MASK;
-        unsigned int index;
+	unsigned int index;
 
-        if (xfer == USB_ENDPOINT_XFER_CONTROL)
-                index = (unsigned int)(epnum * 2);
-        else
-                index = (unsigned int)(epnum * 2) +
-                        ((epaddress & USB_DIR_IN) ? 1 : 0) - 1;
+	if (xfer == USB_ENDPOINT_XFER_CONTROL)
+		index = (unsigned int)(epnum * 2);
+	else
+		index = (unsigned int)(epnum * 2) +
+			((epaddress & USB_DIR_IN) ? 1 : 0) - 1;
 
-        return index;
+	return index;
 }
 
 static u8 xhci_get_endpoint_type(u8 epaddress, u8 epattributes)
@@ -341,15 +341,15 @@ int xhci_issue_command(struct xhci_hcd *xhci, union xhci_trb *trb)
 
 static void xhci_set_event_dequeue(struct xhci_hcd *xhci)
 {
-        u64 reg64;
+	u64 reg64;
 
-        reg64 = xhci_read_64(&xhci->ir_set->erst_dequeue);
-        reg64 &= ERST_PTR_MASK;
-        /*
+	reg64 = xhci_read_64(&xhci->ir_set->erst_dequeue);
+	reg64 &= ERST_PTR_MASK;
+	/*
 	 * Don't clear the EHB bit (which is RW1C) because
-         * there might be more events to service.
-         */
-        reg64 &= ~ERST_EHB;
+	 * there might be more events to service.
+	 */
+	reg64 &= ~ERST_EHB;
 	reg64 |= (dma_addr_t)xhci->event_ring.dequeue &
 		~(dma_addr_t)ERST_PTR_MASK;
 
@@ -489,16 +489,16 @@ static void xhci_virtdev_zero_in_ctx(struct xhci_virtual_device *vdev)
 {
 	int i;
 
-        /* When a device's add flag and drop flag are zero, any subsequent
-         * configure endpoint command will leave that endpoint's state
-         * untouched.  Make sure we don't leave any old state in the input
-         * endpoint contexts.
-         */
-        vdev->in_ctx->icc.drop_flags = 0;
-        vdev->in_ctx->icc.add_flags = 0;
-        vdev->in_ctx->slot.dev_info &= cpu_to_le32(~LAST_CTX_MASK);
-        /* Endpoint 0 is always valid */
-        vdev->in_ctx->slot.dev_info |= cpu_to_le32(LAST_CTX(1));
+	/* When a device's add flag and drop flag are zero, any subsequent
+	 * configure endpoint command will leave that endpoint's state
+	 * untouched.  Make sure we don't leave any old state in the input
+	 * endpoint contexts.
+	 */
+	vdev->in_ctx->icc.drop_flags = 0;
+	vdev->in_ctx->icc.add_flags = 0;
+	vdev->in_ctx->slot.dev_info &= cpu_to_le32(~LAST_CTX_MASK);
+	/* Endpoint 0 is always valid */
+	vdev->in_ctx->slot.dev_info |= cpu_to_le32(LAST_CTX(1));
 	for (i = 1; i < 31; i++) {
 		vdev->in_ctx->ep[i].ep_info = 0;
 		vdev->in_ctx->ep[i].ep_info2 = 0;
@@ -522,7 +522,7 @@ static int xhci_virtdev_disable_slot(struct xhci_virtual_device *vdev)
 	ret = xhci_wait_for_event(xhci, TRB_COMPLETION, &trb);
 	xhci_print_trb(xhci, &trb, "Response DisableSlot");
 
-        /* Clear Device Context Base Address Array */
+	/* Clear Device Context Base Address Array */
 	xhci->dcbaa[vdev->slot_id] = 0;
 
 	return ret;
@@ -565,7 +565,7 @@ int xhci_virtdev_reset(struct xhci_virtual_device *vdev)
 	/* If device is not setup, there is no point in resetting it */
 	if (GET_SLOT_STATE(le32_to_cpu(vdev->out_ctx->slot.dev_state)) ==
 	    SLOT_STATE_DISABLED)
-                return 0;
+		return 0;
 
 	memset(&trb, 0, sizeof(union xhci_trb));
 	trb.event_cmd.flags = TRB_TYPE(TRB_RESET_DEV) |
@@ -575,26 +575,26 @@ int xhci_virtdev_reset(struct xhci_virtual_device *vdev)
 	ret = xhci_wait_for_event(xhci, TRB_COMPLETION, &trb);
 	xhci_print_trb(xhci, &trb, "Response Reset");
 
-        /*
+	/*
 	 * The Reset Device command can't fail, according to the 0.95/0.96 spec,
-         * unless we tried to reset a slot ID that wasn't enabled,
-         * or the device wasn't in the addressed or configured state.
-         */
-        switch (GET_COMP_CODE(trb.event_cmd.status)) {
-        case COMP_CMD_ABORT:
-        case COMP_CMD_STOP:
-                dev_warn(xhci->dev, "Timeout waiting for reset device command\n");
-                ret = -ETIMEDOUT;
+	 * unless we tried to reset a slot ID that wasn't enabled,
+	 * or the device wasn't in the addressed or configured state.
+	 */
+	switch (GET_COMP_CODE(trb.event_cmd.status)) {
+	case COMP_CMD_ABORT:
+	case COMP_CMD_STOP:
+		dev_warn(xhci->dev, "Timeout waiting for reset device command\n");
+		ret = -ETIMEDOUT;
+		break;
+	case COMP_EBADSLT: /* 0.95 completion code for bad slot ID */
+	case COMP_CTX_STATE: /* 0.96 completion code for same thing */
+		/* Don't treat this as an error.  May change my mind later. */
+		ret = 0;
+	case COMP_SUCCESS:
 		break;
-        case COMP_EBADSLT: /* 0.95 completion code for bad slot ID */
-        case COMP_CTX_STATE: /* 0.96 completion code for same thing */
-                /* Don't treat this as an error.  May change my mind later. */
-                ret = 0;
-        case COMP_SUCCESS:
-                break;
-        default:
-                ret = -EINVAL;
-        }
+	default:
+		ret = -EINVAL;
+	}
 
 	return ret;
 }
@@ -651,14 +651,14 @@ static int xhci_virtdev_update_hub_device(struct xhci_virtual_device *vdev,
 		if (xhci->hci_version < 0x100 ||
 		    vdev->udev->speed == USB_SPEED_HIGH) {
 			u32 think_time = (hubchar & HUB_CHAR_TTTT) >> 5;
-                        tt_info |= TT_THINK_TIME(think_time);
+			tt_info |= TT_THINK_TIME(think_time);
 		}
-        }
+	}
 	vdev->in_ctx->slot.dev_info = cpu_to_le32(dev_info);
 	vdev->in_ctx->slot.dev_info2 = cpu_to_le32(dev_info2);
 	vdev->in_ctx->slot.tt_info = cpu_to_le32(tt_info);
 
-        /* Issue Configure Endpoint or Evaluate Context Command */
+	/* Issue Configure Endpoint or Evaluate Context Command */
 	memset(&trb, 0, sizeof(union xhci_trb));
 	xhci_write_64((dma_addr_t)vdev->in_ctx, &trb.event_cmd.cmd_trb);
 	trb.event_cmd.flags = SLOT_ID_FOR_TRB(vdev->slot_id);
@@ -782,21 +782,21 @@ static int xhci_virtdev_configure(struct xhci_virtual_device *vdev, int config)
 
 	last_ctx = fls(add_flags) - 1;
 
-        /* See section 4.6.6 - A0 = 1; A1 = D0 = D1 = 0 */
+	/* See section 4.6.6 - A0 = 1; A1 = D0 = D1 = 0 */
 	vdev->in_ctx->icc.add_flags = cpu_to_le32(add_flags);
-        vdev->in_ctx->icc.add_flags |= cpu_to_le32(SLOT_FLAG);
-        vdev->in_ctx->icc.add_flags &= cpu_to_le32(~EP0_FLAG);
-        vdev->in_ctx->icc.drop_flags &= cpu_to_le32(~(SLOT_FLAG | EP0_FLAG));
+	vdev->in_ctx->icc.add_flags |= cpu_to_le32(SLOT_FLAG);
+	vdev->in_ctx->icc.add_flags &= cpu_to_le32(~EP0_FLAG);
+	vdev->in_ctx->icc.drop_flags &= cpu_to_le32(~(SLOT_FLAG | EP0_FLAG));
 
 	/* Don't issue the command if there's no endpoints to update. */
-        if (vdev->in_ctx->icc.add_flags == cpu_to_le32(SLOT_FLAG) &&
-            vdev->in_ctx->icc.drop_flags == 0)
+	if (vdev->in_ctx->icc.add_flags == cpu_to_le32(SLOT_FLAG) &&
+	    vdev->in_ctx->icc.drop_flags == 0)
 		return 0;
 
 	vdev->in_ctx->slot.dev_info &= cpu_to_le32(~LAST_CTX_MASK);
 	vdev->in_ctx->slot.dev_info |= cpu_to_le32(LAST_CTX(last_ctx));
 
-        /* Issue Configure Endpoint Command */
+	/* Issue Configure Endpoint Command */
 	memset(&trb, 0, sizeof(union xhci_trb));
 	xhci_write_64((dma_addr_t)vdev->in_ctx, &trb.event_cmd.cmd_trb);
 	trb.event_cmd.flags = TRB_TYPE(TRB_CONFIG_EP) |
@@ -816,7 +816,7 @@ static int xhci_virtdev_deconfigure(struct xhci_virtual_device *vdev)
 	union xhci_trb trb;
 	int ret;
 
-        /* Issue Deconfigure Endpoint Command */
+	/* Issue Deconfigure Endpoint Command */
 	memset(&trb, 0, sizeof(union xhci_trb));
 	xhci_write_64((dma_addr_t)vdev->in_ctx, &trb.event_cmd.cmd_trb);
 	trb.event_cmd.flags = TRB_TYPE(TRB_CONFIG_EP) | TRB_DC |
@@ -912,7 +912,7 @@ static int xhci_virtdev_init(struct xhci_virtual_device *vdev)
 	vdev->in_ctx->ep[0].deq = cpu_to_le64((dma_addr_t)vdev->ep[0]->enqueue |
 					      vdev->ep[0]->cycle_state);
 
-        /* 4.3.3 6+7) Initalize and Set Device Context Base Address Array */
+	/* 4.3.3 6+7) Initalize and Set Device Context Base Address Array */
 	xhci->dcbaa[vdev->slot_id] = cpu_to_le64((dma_addr_t)vdev->out_ctx);
 
 	return 0;
@@ -952,7 +952,7 @@ static int xhci_virtdev_setup(struct xhci_virtual_device *vdev,
 	vdev->in_ctx->icc.add_flags = cpu_to_le32(SLOT_FLAG | EP0_FLAG);
 	vdev->in_ctx->icc.drop_flags = 0;
 
-        /* Issue Address Device Command */
+	/* Issue Address Device Command */
 	memset(&trb, 0, sizeof(union xhci_trb));
 	xhci_write_64((dma_addr_t)vdev->in_ctx, &trb.event_cmd.cmd_trb);
 	trb.event_cmd.flags = TRB_TYPE(TRB_ADDR_DEV) |
@@ -970,12 +970,12 @@ static int xhci_virtdev_setup(struct xhci_virtual_device *vdev,
 
 static int xhci_virtdev_set_address(struct xhci_virtual_device *vdev)
 {
-        return xhci_virtdev_setup(vdev, SETUP_CONTEXT_ADDRESS);
+	return xhci_virtdev_setup(vdev, SETUP_CONTEXT_ADDRESS);
 }
 
 static int xhci_virtdev_enable(struct xhci_virtual_device *vdev)
 {
-        return xhci_virtdev_setup(vdev, SETUP_CONTEXT_ONLY);
+	return xhci_virtdev_setup(vdev, SETUP_CONTEXT_ONLY);
 }
 
 static int xhci_virtdev_attach(struct xhci_hcd *xhci, struct usb_device *udev)
@@ -1291,7 +1291,7 @@ static int xhci_reset(struct xhci_hcd *xhci)
 		return ret;
 	}
 
-        return 0;
+	return 0;
 }
 
 static int xhci_start(struct xhci_hcd *xhci)
@@ -1305,8 +1305,8 @@ static int xhci_start(struct xhci_hcd *xhci)
 
 	ret = xhci_handshake(&xhci->op_regs->status,
 			     STS_HALT, 0, XHCI_MAX_HALT_USEC);
-        if (ret) {
-                dev_err(xhci->dev, "failed to start\n");
+	if (ret) {
+		dev_err(xhci->dev, "failed to start\n");
 		return ret;
 	}
 
@@ -1314,7 +1314,7 @@ static int xhci_start(struct xhci_hcd *xhci)
 	for (i = 0; i < xhci->num_usb_ports; i++)
 		xhci_hub_port_power(xhci, i, false);
 
-        return 0;
+	return 0;
 }
 
 static int xhci_init(struct usb_host *host)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
