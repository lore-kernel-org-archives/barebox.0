Delivery-date: Mon, 19 Feb 2024 14:39:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rn-00Ea45-0A
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:39:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rl-0005tY-MO
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:39:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4QbuywmcuswNJU44Q9hEDLRkPXx+5QXWYM1e+RiVsBw=; b=eqYTBPol3JSsTcXv20+A+tnSic
	4PEtIr52pK0aeC+SjmbRuRKuTPM+yEbCHgZgAlL7LrHsp2lokWYqgwEELBo/wmI8H7dYIJNsa/rIh
	ywsG0Hua9woOOrB612g+8OKpwuOKFIpXI4dN+ALX2KZm1bZLToURpLlN1Z/riwYnG7YbvPiBy5Nu+
	b0yCLgsKIcapJEP6xA3lYfJbFZlUEKYQjgDKP9UPSgWJIGfyMxxKfEin5Wl9hJSDEQPBXoUHiT/yY
	1umgIUHwh0QaIcyXONZwlkdbtW85mwAJA0CdsmCKFX4mN5pUUOvsf4RRcP72W41SCDoNj+BizqdfF
	SxFVt/6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3rE-0000000Ag47-2yUp;
	Mon, 19 Feb 2024 13:38:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r2-0000000Afw3-2nfv
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:38:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-00051J-FS; Mon, 19 Feb 2024 14:38:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-001f3V-2k; Mon, 19 Feb 2024 14:38:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r0-00GySQ-31;
	Mon, 19 Feb 2024 14:38:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:38:24 +0100
Message-Id: <20240219133835.3886399-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_053844_912625_1DE397D9 
X-CRM114-Status: GOOD (  14.87  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/15] usb: xhci: use macros for formatting values
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have function-like macros for formatting various values that we stuff
into the descriptors instead of manually having to mask and shift.

Make use of these to make the code more concise.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-mem.c  | 18 ++++++------------
 drivers/usb/host/xhci-ring.c | 29 +++++++++++++----------------
 drivers/usb/host/xhci.c      |  9 +++------
 3 files changed, 22 insertions(+), 34 deletions(-)

diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
index db38fd43f65a..1a66bc6a61a4 100644
--- a/drivers/usb/host/xhci-mem.c
+++ b/drivers/usb/host/xhci-mem.c
@@ -249,8 +249,7 @@ static void xhci_link_segments(struct xhci_segment *prev,
 		 */
 		val = le32_to_cpu(prev->trbs[TRBS_PER_SEGMENT-1].link.control);
 		val &= ~TRB_TYPE_BITMASK;
-		val |= (TRB_LINK << TRB_TYPE_SHIFT);
-
+		val |= TRB_TYPE(TRB_LINK);
 		prev->trbs[TRBS_PER_SEGMENT-1].link.control = cpu_to_le32(val);
 	}
 }
@@ -826,25 +825,22 @@ void xhci_setup_addressable_virt_dev(struct xhci_ctrl *ctrl,
 
 	/* Step 4 - ring already allocated */
 	/* Step 5 */
-	ep0_ctx->ep_info2 = cpu_to_le32(CTRL_EP << EP_TYPE_SHIFT);
+	ep0_ctx->ep_info2 = cpu_to_le32(EP_TYPE(CTRL_EP));
 	dev_dbg(&udev->dev, "SPEED = %d\n", speed);
 
 	switch (speed) {
 	case USB_SPEED_SUPER:
-		ep0_ctx->ep_info2 |= cpu_to_le32(((512 & MAX_PACKET_MASK) <<
-					MAX_PACKET_SHIFT));
+		ep0_ctx->ep_info2 |= cpu_to_le32(MAX_PACKET(512));
 		dev_dbg(&udev->dev, "Setting Packet size = 512bytes\n");
 		break;
 	case USB_SPEED_HIGH:
 	/* USB core guesses at a 64-byte max packet first for FS devices */
 	case USB_SPEED_FULL:
-		ep0_ctx->ep_info2 |= cpu_to_le32(((64 & MAX_PACKET_MASK) <<
-					MAX_PACKET_SHIFT));
+		ep0_ctx->ep_info2 |= cpu_to_le32(MAX_PACKET(64));
 		dev_dbg(&udev->dev, "Setting Packet size = 64bytes\n");
 		break;
 	case USB_SPEED_LOW:
-		ep0_ctx->ep_info2 |= cpu_to_le32(((8 & MAX_PACKET_MASK) <<
-					MAX_PACKET_SHIFT));
+		ep0_ctx->ep_info2 |= cpu_to_le32(MAX_PACKET(8));
 		dev_dbg(&udev->dev, "Setting Packet size = 8bytes\n");
 		break;
 	default:
@@ -853,9 +849,7 @@ void xhci_setup_addressable_virt_dev(struct xhci_ctrl *ctrl,
 	}
 
 	/* EP 0 can handle "burst" sizes of 1, so Max Burst Size field is 0 */
-	ep0_ctx->ep_info2 |=
-			cpu_to_le32(((0 & MAX_BURST_MASK) << MAX_BURST_SHIFT) |
-			((3 & ERROR_COUNT_MASK) << ERROR_COUNT_SHIFT));
+	ep0_ctx->ep_info2 |= cpu_to_le32(MAX_BURST(0) | ERROR_COUNT(3));
 
 	trb_64 = (uintptr_t)virt_dev->eps[0].ring->first_seg->trbs;
 	ep0_ctx->deq = cpu_to_le64(trb_64 | virt_dev->eps[0].ring->cycle_state);
diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index d725b71983cd..818b662e70d2 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -709,15 +709,14 @@ int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
 							   maxpacketsize,
 							   num_trbs - 1);
 
-		length_field = ((trb_buff_len & TRB_LEN_MASK) |
+		length_field = (TRB_LEN(trb_buff_len) |
 				remainder |
-				((0 & TRB_INTR_TARGET_MASK) <<
-				TRB_INTR_TARGET_SHIFT));
+				TRB_INTR_TARGET(0));
 
 		trb_fields[0] = lower_32_bits(addr);
 		trb_fields[1] = upper_32_bits(addr);
 		trb_fields[2] = length_field;
-		trb_fields[3] = field | (TRB_NORMAL << TRB_TYPE_SHIFT);
+		trb_fields[3] = field | TRB_TYPE(TRB_NORMAL);
 
 		queue_trb(ctrl, ring, (num_trbs > 1), trb_fields);
 
@@ -853,7 +852,7 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
 	/* Queue setup TRB - see section 6.4.1.2.1 */
 	/* FIXME better way to translate setup_packet into two u32 fields? */
 	field = 0;
-	field |= TRB_IDT | (TRB_SETUP << TRB_TYPE_SHIFT);
+	field |= TRB_IDT | TRB_TYPE(TRB_SETUP);
 	if (start_cycle == 0)
 		field |= 0x1;
 
@@ -861,9 +860,9 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
 	if (HC_VERSION(xhci_readl(&ctrl->hccr->cr_capbase)) >= 0x100) {
 		if (length > 0) {
 			if (req->requesttype & USB_DIR_IN)
-				field |= (TRB_DATA_IN << TRB_TX_TYPE_SHIFT);
+				field |= TRB_TX_TYPE(TRB_DATA_IN);
 			else
-				field |= (TRB_DATA_OUT << TRB_TX_TYPE_SHIFT);
+				field |= TRB_TX_TYPE(TRB_DATA_OUT);
 		}
 	}
 
@@ -879,8 +878,7 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
 	trb_fields[1] = le16_to_cpu(req->index) |
 			le16_to_cpu(req->length) << 16;
 	/* TRB_LEN | (TRB_INTR_TARGET) */
-	trb_fields[2] = (8 | ((0 & TRB_INTR_TARGET_MASK) <<
-			TRB_INTR_TARGET_SHIFT));
+	trb_fields[2] = (TRB_LEN(8) | TRB_INTR_TARGET(0));
 	/* Immediate data in pointer */
 	trb_fields[3] = field;
 	queue_trb(ctrl, ep_ring, true, trb_fields);
@@ -890,15 +888,15 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
 	/* If there's data, queue data TRBs */
 	/* Only set interrupt on short packet for IN endpoints */
 	if (usb_pipein(pipe))
-		field = TRB_ISP | (TRB_DATA << TRB_TYPE_SHIFT);
+		field = TRB_ISP | TRB_TYPE(TRB_DATA);
 	else
-		field = (TRB_DATA << TRB_TYPE_SHIFT);
+		field = TRB_TYPE(TRB_DATA);
 
-	length_field = (length & TRB_LEN_MASK) | xhci_td_remainder(length) |
+	length_field = TRB_LEN(length) | xhci_td_remainder(length) |
 			((0 & TRB_INTR_TARGET_MASK) << TRB_INTR_TARGET_SHIFT);
 	dev_dbg(&udev->dev, "length_field = %d, length = %d,"
 		"xhci_td_remainder(length) = %d , TRB_INTR_TARGET(0) = %d\n",
-		length_field, (length & TRB_LEN_MASK),
+		length_field, TRB_LEN(length),
 		xhci_td_remainder(length), 0);
 
 	if (req->requesttype & USB_DIR_IN)
@@ -934,11 +932,10 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
 
 	trb_fields[0] = 0;
 	trb_fields[1] = 0;
-	trb_fields[2] = ((0 & TRB_INTR_TARGET_MASK) << TRB_INTR_TARGET_SHIFT);
+	trb_fields[2] = TRB_INTR_TARGET(0);
 		/* Event on completion */
 	trb_fields[3] = field | TRB_IOC |
-			(TRB_STATUS << TRB_TYPE_SHIFT) |
-			ep_ring->cycle_state;
+			TRB_TYPE(TRB_STATUS) | ep_ring->cycle_state;
 
 	queue_trb(ctrl, ep_ring, false, trb_fields);
 
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index 01817d9c79cd..92101f8f67d9 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -568,8 +568,7 @@ static int xhci_set_configuration(struct usb_device *udev)
 			cpu_to_le32(EP_MAX_ESIT_PAYLOAD_HI(max_esit_payload) |
 			EP_INTERVAL(interval) | EP_MULT(mult));
 
-		ep_ctx[ep_index]->ep_info2 =
-			cpu_to_le32(ep_type << EP_TYPE_SHIFT);
+		ep_ctx[ep_index]->ep_info2 = cpu_to_le32(EP_TYPE(ep_type));
 		ep_ctx[ep_index]->ep_info2 |=
 			cpu_to_le32(MAX_PACKET
 			(get_unaligned(&endpt_desc->wMaxPacketSize)));
@@ -766,8 +765,7 @@ int xhci_check_maxpacket(struct usb_device *udev)
 				ctrl->devs[slot_id]->out_ctx, ep_index);
 		in_ctx = ctrl->devs[slot_id]->in_ctx;
 		ep_ctx = xhci_get_ep_ctx(ctrl, in_ctx, ep_index);
-		ep_ctx->ep_info2 &= cpu_to_le32(~((0xffff & MAX_PACKET_MASK)
-						<< MAX_PACKET_SHIFT));
+		ep_ctx->ep_info2 &= cpu_to_le32(~MAX_PACKET(MAX_PACKET_MASK));
 		ep_ctx->ep_info2 |= cpu_to_le32(MAX_PACKET(max_packet_size));
 
 		/*
@@ -1191,8 +1189,7 @@ static int xhci_lowlevel_init(struct xhci_ctrl *ctrl)
 		return -ENOMEM;
 
 	reg = xhci_readl(&hccr->cr_hcsparams1);
-	descriptor.hub.bNbrPorts = ((reg & HCS_MAX_PORTS_MASK) >>
-						HCS_MAX_PORTS_SHIFT);
+	descriptor.hub.bNbrPorts = HCS_MAX_PORTS(reg);
 
 	/* Port Indicators */
 	reg = xhci_readl(&hccr->cr_hccparams);
-- 
2.39.2



