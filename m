Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKM-0002sr-2l
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:30:01 +0000
Received: by mail-pf1-x441.google.com with SMTP id c123so11499833pfb.0
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:29:57 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:16 -0800
Message-Id: <20190220072930.14300-12-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/25] usb: xhci-hcd: Simplify TRB initialization code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Current TRB initialization code in xHCI driver is:

    a) Somewhat inconsistent in endianness correctness: LE is insured
       in some places whereas in some places it isn't

    b) Somewhat inconsistent in how DMA buffer address is being
       written: some places utilize xhci_write_64, whereas others just
       assing cmd_trb field directly

    c) A bit wasetful since in a number of codepaths where TRB is used
       it is memset to zero first only to have 80+% of its fields
       changed to something else right after.

To fix all of the above introduce xhci_init_event_cmd_trb(), that will
initialize all of the fileds to desired values only once as well as
taking care of endianness.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/xhci-hcd.c | 128 ++++++++++++++++++++++--------------
 1 file changed, 78 insertions(+), 50 deletions(-)

diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index 4e28e24c4..b0e9a0c56 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -569,6 +569,14 @@ static void xhci_virtdev_zero_in_ctx(struct xhci_virtual_device *vdev)
 	}
 }
 
+static void xhci_init_event_cmd_trb(union xhci_trb *trb,
+				    u64 cmd_trb, u32 status, u32 flags)
+{
+	xhci_write_64(cmd_trb, &trb->event_cmd.cmd_trb);
+	writel(status, &trb->event_cmd.status);
+	writel(flags, &trb->event_cmd.flags);
+}
+
 static int xhci_virtdev_disable_slot(struct xhci_virtual_device *vdev)
 {
 	struct xhci_hcd *xhci = to_xhci_hcd(vdev->udev->host);
@@ -576,9 +584,11 @@ static int xhci_virtdev_disable_slot(struct xhci_virtual_device *vdev)
 	int ret;
 
 	/* Issue Disable Slot Command */
-	memset(&trb, 0, sizeof(union xhci_trb));
-	trb.event_cmd.flags = TRB_TYPE(TRB_DISABLE_SLOT) |
-		SLOT_ID_FOR_TRB(vdev->slot_id);
+	xhci_init_event_cmd_trb(&trb,
+				0,
+				0,
+				TRB_TYPE(TRB_DISABLE_SLOT) |
+				SLOT_ID_FOR_TRB(vdev->slot_id));
 	xhci_print_trb(xhci, &trb, "Request  DisableSlot");
 	xhci_issue_command(xhci, &trb);
 	ret = xhci_wait_for_event(xhci, TRB_COMPLETION, &trb);
@@ -598,8 +608,10 @@ static int xhci_virtdev_enable_slot(struct xhci_virtual_device *vdev)
 	int ret;
 
 	/* Issue Enable Slot Command */
-	memset(&trb, 0, sizeof(union xhci_trb));
-	trb.event_cmd.flags = TRB_TYPE(TRB_ENABLE_SLOT);
+	xhci_init_event_cmd_trb(&trb,
+				0,
+				0,
+				TRB_TYPE(TRB_ENABLE_SLOT));
 	xhci_print_trb(xhci, &trb, "Request  EnableSlot");
 	xhci_issue_command(xhci, &trb);
 	ret = xhci_wait_for_event(xhci, TRB_COMPLETION, &trb);
@@ -632,9 +644,11 @@ int xhci_virtdev_reset(struct xhci_virtual_device *vdev)
 	    SLOT_STATE_DISABLED)
 		return 0;
 
-	memset(&trb, 0, sizeof(union xhci_trb));
-	trb.event_cmd.flags = TRB_TYPE(TRB_RESET_DEV) |
-		SLOT_ID_FOR_TRB(vdev->slot_id);
+	xhci_init_event_cmd_trb(&trb,
+				0,
+				0,
+				TRB_TYPE(TRB_RESET_DEV) |
+				SLOT_ID_FOR_TRB(vdev->slot_id));
 	xhci_print_trb(xhci, &trb, "Request  Reset");
 	xhci_issue_command(xhci, &trb);
 	ret = xhci_wait_for_event(xhci, TRB_COMPLETION, &trb);
@@ -679,6 +693,7 @@ static int xhci_virtdev_update_hub_device(struct xhci_virtual_device *vdev,
 	u32 dev_info, dev_info2, tt_info;
 	u8 maxchild;
 	u16 hubchar;
+	u32 flags;
 	int ret;
 
 	out_slot = xhci_get_slot_ctx(xhci, vdev->out_ctx);
@@ -730,13 +745,15 @@ static int xhci_virtdev_update_hub_device(struct xhci_virtual_device *vdev,
 	in_slot->tt_info = cpu_to_le32(tt_info);
 
 	/* Issue Configure Endpoint or Evaluate Context Command */
-	memset(&trb, 0, sizeof(union xhci_trb));
-	xhci_write_64(vdev->in_ctx->dma, &trb.event_cmd.cmd_trb);
-	trb.event_cmd.flags = SLOT_ID_FOR_TRB(vdev->slot_id);
+	flags = SLOT_ID_FOR_TRB(vdev->slot_id);
 	if (xhci->hci_version > 0x95)
-		trb.event_cmd.flags |= TRB_TYPE(TRB_CONFIG_EP);
+		flags |= TRB_TYPE(TRB_CONFIG_EP);
 	else
-		trb.event_cmd.flags |= TRB_TYPE(TRB_EVAL_CONTEXT);
+		flags |= TRB_TYPE(TRB_EVAL_CONTEXT);
+	xhci_init_event_cmd_trb(&trb,
+				vdev->in_ctx->dma,
+				0,
+				flags);
 	xhci_print_trb(xhci, &trb, "Request  ConfigureEndpoint");
 	xhci_issue_command(xhci, &trb);
 	ret = xhci_wait_for_event(xhci, TRB_COMPLETION, &trb);
@@ -875,10 +892,11 @@ static int xhci_virtdev_configure(struct xhci_virtual_device *vdev, int config)
 	in_slot->dev_info |= cpu_to_le32(LAST_CTX(last_ctx));
 
 	/* Issue Configure Endpoint Command */
-	memset(&trb, 0, sizeof(union xhci_trb));
-	xhci_write_64(vdev->in_ctx->dma, &trb.event_cmd.cmd_trb);
-	trb.event_cmd.flags = TRB_TYPE(TRB_CONFIG_EP) |
-		SLOT_ID_FOR_TRB(vdev->slot_id);
+	xhci_init_event_cmd_trb(&trb,
+				vdev->in_ctx->dma,
+				0,
+				TRB_TYPE(TRB_CONFIG_EP) |
+				SLOT_ID_FOR_TRB(vdev->slot_id));
 	xhci_print_trb(xhci, &trb, "Request  ConfigureEndpoint");
 	xhci_issue_command(xhci, &trb);
 	ret = xhci_wait_for_event(xhci, TRB_COMPLETION, &trb);
@@ -895,10 +913,11 @@ static int xhci_virtdev_deconfigure(struct xhci_virtual_device *vdev)
 	int ret;
 
 	/* Issue Deconfigure Endpoint Command */
-	memset(&trb, 0, sizeof(union xhci_trb));
-	xhci_write_64(vdev->in_ctx->dma, &trb.event_cmd.cmd_trb);
-	trb.event_cmd.flags = TRB_TYPE(TRB_CONFIG_EP) | TRB_DC |
-		SLOT_ID_FOR_TRB(vdev->slot_id);
+	xhci_init_event_cmd_trb(&trb,
+				vdev->in_ctx->dma,
+				0,
+				TRB_TYPE(TRB_CONFIG_EP) | TRB_DC |
+				SLOT_ID_FOR_TRB(vdev->slot_id));
 	xhci_print_trb(xhci, &trb, "Request  DeconfigureEndpoint");
 	xhci_issue_command(xhci, &trb);
 	ret = xhci_wait_for_event(xhci, TRB_COMPLETION, &trb);
@@ -1009,6 +1028,7 @@ static int xhci_virtdev_setup(struct xhci_virtual_device *vdev,
 	struct xhci_slot_ctx *in_slot;
 	struct xhci_ep_ctx *in_ep;
 	union xhci_trb trb;
+	u32 flags;
 	int ret;
 
 	in_slot = xhci_get_slot_ctx(xhci, vdev->in_ctx);
@@ -1043,12 +1063,14 @@ static int xhci_virtdev_setup(struct xhci_virtual_device *vdev,
 	in_icc->drop_flags = 0;
 
 	/* Issue Address Device Command */
-	memset(&trb, 0, sizeof(union xhci_trb));
-	xhci_write_64(vdev->in_ctx->dma, &trb.event_cmd.cmd_trb);
-	trb.event_cmd.flags = TRB_TYPE(TRB_ADDR_DEV) |
+	flags = TRB_TYPE(TRB_ADDR_DEV) |
 		SLOT_ID_FOR_TRB(vdev->slot_id);
 	if (setup == SETUP_CONTEXT_ONLY)
-		trb.event_cmd.flags |= TRB_BSR;
+		flags |= TRB_BSR;
+	xhci_init_event_cmd_trb(&trb,
+				vdev->in_ctx->dma,
+				0,
+				flags);
 	xhci_print_trb(xhci, &trb, "Request  AddressDevice");
 	xhci_issue_command(xhci, &trb);
 	ret = xhci_wait_for_event(xhci, TRB_COMPLETION, &trb);
@@ -1105,6 +1127,7 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
 	u8 epaddr = (usb_pipein(pipe) ? USB_DIR_IN : USB_DIR_OUT) |
 		usb_pipeendpoint(pipe);
 	u8 epi = xhci_get_endpoint_index(epaddr, usb_pipetype(pipe));
+	u32 flags;
 	int ret;
 
 	vdev = xhci_find_virtdev(xhci, udev);
@@ -1126,13 +1149,14 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
 		return -EFAULT;
 
 	/* Normal TRB */
-	memset(&trb, 0, sizeof(union xhci_trb));
-	trb.event_cmd.cmd_trb = cpu_to_le64(buffer_dma);
 	/* FIXME: TD remainder */
-	trb.event_cmd.status = TRB_LEN(length) | TRB_INTR_TARGET(0);
-	trb.event_cmd.flags = TRB_TYPE(TRB_NORMAL) | TRB_IOC;
+	flags = TRB_TYPE(TRB_NORMAL) | TRB_IOC;
 	if (usb_pipein(pipe))
-		trb.event_cmd.flags |= TRB_ISP;
+		flags |= TRB_ISP;
+	xhci_init_event_cmd_trb(&trb,
+				buffer_dma,
+				TRB_LEN(length) | TRB_INTR_TARGET(0),
+				flags);
 	xhci_print_trb(xhci, &trb, "Request  Normal");
 	xhci_virtdev_issue_transfer(vdev, epi, &trb, true);
 	ret = xhci_wait_for_event(xhci, TRB_TRANSFER, &trb);
@@ -1170,6 +1194,8 @@ static int xhci_submit_control(struct usb_device *udev, unsigned long pipe,
 	dma_addr_t buffer_dma = 0;
 	union xhci_trb trb;
 	u16 typeReq = (req->requesttype << 8) | req->request;
+	u64 field[2];
+	u32 flags;
 	int ret;
 
 	dev_dbg(xhci->dev, "%s req %u (%#x), type %u (%#x), value %u (%#x), index %u (%#x), length %u (%#x)\n",
@@ -1212,45 +1238,47 @@ static int xhci_submit_control(struct usb_device *udev, unsigned long pipe,
 		if (dma_mapping_error(xhci->dev, buffer_dma))
 			return -EFAULT;
 	}
-
 	/* Setup TRB */
-	memset(&trb, 0, sizeof(union xhci_trb));
-	trb.generic.field[0] = le16_to_cpu(req->value) << 16 |
+	field[0] = le16_to_cpu(req->value) << 16 |
 		req->request << 8 | req->requesttype;
-	trb.generic.field[1] = le16_to_cpu(req->length) << 16 |
+	field[1] = le16_to_cpu(req->length) << 16 |
 		le16_to_cpu(req->index);
-	trb.event_cmd.status = TRB_LEN(8) | TRB_INTR_TARGET(0);
-	trb.event_cmd.flags = TRB_TYPE(TRB_SETUP) | TRB_IDT;
+	flags = TRB_TYPE(TRB_SETUP) | TRB_IDT;
 	if (xhci->hci_version == 0x100 && length > 0) {
 		if (req->requesttype & USB_DIR_IN)
-			trb.event_cmd.flags |= TRB_TX_TYPE(TRB_DATA_IN);
+			flags |= TRB_TX_TYPE(TRB_DATA_IN);
 		else
-			trb.event_cmd.flags |= TRB_TX_TYPE(TRB_DATA_OUT);
+			flags |= TRB_TX_TYPE(TRB_DATA_OUT);
 	}
+	xhci_init_event_cmd_trb(&trb,
+				field[1] << 32 | field[0],
+				TRB_LEN(8) | TRB_INTR_TARGET(0),
+				flags);
 	xhci_print_trb(xhci, &trb, "Request  Setup ");
 	xhci_virtdev_issue_transfer(vdev, 0, &trb, false);
 
 	/* Data TRB */
 	if (length > 0) {
-		memset(&trb, 0, sizeof(union xhci_trb));
-		trb.event_cmd.cmd_trb = cpu_to_le64(buffer_dma);
 		/* FIXME: TD remainder */
-		trb.event_cmd.status = TRB_LEN(length) | TRB_INTR_TARGET(0);
-		trb.event_cmd.flags = TRB_TYPE(TRB_DATA) | TRB_IOC;
+		flags = TRB_TYPE(TRB_DATA) | TRB_IOC;
 		if (req->requesttype & USB_DIR_IN)
-			trb.event_cmd.flags |= TRB_ISP | TRB_DIR_IN;
+			flags |= TRB_ISP | TRB_DIR_IN;
+		xhci_init_event_cmd_trb(&trb,
+					buffer_dma,
+					TRB_LEN(length) | TRB_INTR_TARGET(0),
+					flags);
 		xhci_print_trb(xhci, &trb, "Request  Data  ");
 		xhci_virtdev_issue_transfer(vdev, 0, &trb, false);
 	}
 
 	/* Status TRB */
-	memset(&trb, 0, sizeof(union xhci_trb));
-	trb.event_cmd.status = TRB_INTR_TARGET(0);
-	if (length > 0 && req->requesttype & USB_DIR_IN)
-		trb.event_cmd.flags = 0;
-	else
-		trb.event_cmd.flags = TRB_DIR_IN;
-	trb.event_cmd.flags |= TRB_TYPE(TRB_STATUS) | TRB_IOC;
+	flags = TRB_TYPE(TRB_STATUS) | TRB_IOC;
+	if (!(length > 0 && req->requesttype & USB_DIR_IN))
+		flags |= TRB_DIR_IN;
+	xhci_init_event_cmd_trb(&trb,
+				0,
+				TRB_INTR_TARGET(0),
+				flags);
 	xhci_print_trb(xhci, &trb, "Request  Status");
 	xhci_virtdev_issue_transfer(vdev, 0, &trb, true);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
