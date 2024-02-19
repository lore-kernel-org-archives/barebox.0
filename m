Delivery-date: Mon, 19 Feb 2024 14:39:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rn-00Ea4o-3B
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:39:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rn-0005xt-83
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:39:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OyFSo/Gfw0iDb0tdTCYoVnqmhmWWzwIQ9xvw+hFjNpI=; b=I2i6nz6pBaNSDtP03aI2Rwwc/P
	bAzlnsMSUcxL4wr2of1XhAiCKb7XdaOTgXWEoOCPD8xuQyfp5Y8anJ2kdFJaZeAANIrusRRBFCQeS
	1uVDPQ3pnekFLcU+5bUEPEuP7yS6EasbXWbSTBOgXrIvOpkGqgLCDJOhXh2BrqPW7tY5dgQTDLcZA
	GSVP/4T+7dKElEzk8RpEUIlvpKDsx3tAcZk//AbN/wT8koveYWTr0lUBe8rZWOg+hdFmeu/0WcoS5
	Ox+4wgSMObmHlveQVMrYAN+sJz9nmL2OmDwscV1A4zpYwmuIYW5jfh9O07V9xTL9RFhEuqNdXZl5T
	0q7ZeSwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3rH-0000000Ag6N-0VnR;
	Mon, 19 Feb 2024 13:38:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r8-0000000Afzh-2CKy
	for barebox@bombadil.infradead.org;
	Mon, 19 Feb 2024 13:38:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OyFSo/Gfw0iDb0tdTCYoVnqmhmWWzwIQ9xvw+hFjNpI=; b=hV77MtQPdofyckt4x/80Ct0yVL
	Iz2yz7jJE4gy/2qmlDKsgkKMVyzAEGK33taozHtSBWhgM22hOMXomdR9IJUQ+F36Jr+gVuXaSyIjk
	mLuZSYDC0QnoZN0ca0tP0KjTRV3z+RD1lu3A/a65ZQz9RKb4davknBMXQmmRWzEptelDeKe6aVVFe
	Vh+RnNHPUrIhfxdgr7szwM6FYtyInMhDqcZQ8qOyCZ1zU8RKrX6nAkQ87CNX9QPenYZAzBoxtISTN
	Xr9SNXrd7eYzGIacncpdvX9ElYpfGIGZ/WzbIDJAy/Y7nnOnTeAIZfUCFZc2BYP1LnJG530Z35Iy3
	snSB5MKw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r4-00000001Gf5-1DpT
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:38:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-000528-Os; Mon, 19 Feb 2024 14:38:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-001f3k-CA; Mon, 19 Feb 2024 14:38:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-00GySQ-0o;
	Mon, 19 Feb 2024 14:38:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:38:29 +0100
Message-Id: <20240219133835.3886399-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_133846_859996_E946C313 
X-CRM114-Status: GOOD (  15.03  )
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
Subject: [PATCH 09/15] usb: xhci: reset endpoint on USB stall
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This ports U-Boot commit d5daa02d8d9e7c403a3339db1966e8413e64e408:

| Author:     Stefan Agner <stefan@agner.ch>
| AuthorDate: Mon Sep 27 14:42:58 2021 +0200
|
| usb: xhci: reset endpoint on USB stall
|
| There are devices which cause a USB stall when trying to read strings.
| Specifically Arduino Mega R3 stalls when trying to read the product
| string.
|
| The stall currently remains unhandled, and subsequent retries submit new
| transfers on a stopped endpoint which ultimately cause a crash in
| abort_td():
| WARN halted endpoint, queueing URB anyway.
| XHCI control transfer timed out, aborting...
| Unexpected XHCI event TRB, skipping... (3affe040 00000000 13000000 02008401)
| BUG at drivers/usb/host/xhci-ring.c:505/abort_td()!
| BUG!
| resetting ...
|
| Linux seems to be able to recover from the stall by issuing a
| TRB_RESET_EP command.
|
| Introduce reset_ep() which issues a TRB_RESET_EP followed by setting the
| transfer ring dequeue pointer via TRB_SET_DEQ. This allows to properly
| recover from a USB stall error and continue communicating with the USB
| device.
|
| Signed-off-by: Stefan Agner <stefan@agner.ch>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-ring.c | 40 ++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index c645285da7fc..056613445330 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -500,6 +500,42 @@ union xhci_trb *xhci_wait_for_event(struct xhci_ctrl *ctrl, trb_type expected,
 	BUG();
 }
 
+/*
+ * Send reset endpoint command for given endpoint. This recovers from a
+ * halted endpoint (e.g. due to a stall error).
+ */
+static void reset_ep(struct usb_device *udev, int ep_index, unsigned int timeout_ms)
+{
+	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
+	struct xhci_ring *ring =  ctrl->devs[udev->slot_id]->eps[ep_index].ring;
+	union xhci_trb *event;
+	u64 addr;
+	u32 field;
+
+	dev_info(&udev->dev, "Resetting EP %d...\n", ep_index);
+
+	xhci_queue_command(ctrl, 0, udev->slot_id, ep_index, TRB_RESET_EP);
+	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, timeout_ms);
+	if (!event)
+		return;
+
+	field = le32_to_cpu(event->trans_event.flags);
+	BUG_ON(TRB_TO_SLOT_ID(field) != udev->slot_id);
+	xhci_acknowledge_event(ctrl);
+
+	addr = xhci_trb_virt_to_dma(ring->enq_seg,
+		(void *)((uintptr_t)ring->enqueue | ring->cycle_state));
+	xhci_queue_command(ctrl, addr, udev->slot_id, ep_index, TRB_SET_DEQ);
+	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, timeout_ms);
+	if (!event)
+		return;
+
+	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
+		!= udev->slot_id || GET_COMP_CODE(le32_to_cpu(
+		event->event_cmd.status)) != COMP_SUCCESS);
+	xhci_acknowledge_event(ctrl);
+}
+
 /*
  * Stops transfer processing for an endpoint and throws away all unprocessed
  * TRBs by setting the xHC's dequeue pointer to our enqueue pointer. The next
@@ -979,6 +1015,10 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
 
 	record_transfer_result(udev, event, length);
 	xhci_acknowledge_event(ctrl);
+	if (udev->status == USB_ST_STALLED) {
+		reset_ep(udev, ep_index, timeout_ms);
+		return -EPIPE;
+	}
 
 	/* Invalidate buffer to make it available to usb-core */
 	if (length > 0)
-- 
2.39.2



