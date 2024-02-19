Delivery-date: Mon, 19 Feb 2024 14:39:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rx-00Ea6o-0H
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:39:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rv-00069U-GS
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:39:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rv8hyBRmO6Dpt5WOG6rjGr1vVoIYx9R/3kN6X4RQ5n8=; b=jRaVGTArOI6v0InkXyvgoJWWEe
	u5SKNiR2+IH2J5y9MDosOcpH6dc5HSeBREqx6cmT002cVrI9caD9h+Ohyd0msRtxON4CP1wxkw/UT
	+dl0iS8FrH45+MV2ISr74emv7fRxv3wN4Dsi+DBFfBZPPd/8zAMrM/kAe5M0pBqALdTEeFyOPWmYp
	ITBqieimlJu1iuSsYycq+THzyg3X8ykTrVv3Ktxf83vlcASSKDAhaeiuR8PPuKLkHGGxTosyIsM/e
	8z0j7yXLlxCePlHUT5MvxLQ9bRo45j1bANdzPwm5uusMXt1f2TekzAqiD87nRy7qJGeSh6+3l30HU
	Z6bj4O/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3rO-0000000AgDf-2V5i;
	Mon, 19 Feb 2024 13:39:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r9-0000000Ag0d-3PSQ
	for barebox@bombadil.infradead.org;
	Mon, 19 Feb 2024 13:38:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Rv8hyBRmO6Dpt5WOG6rjGr1vVoIYx9R/3kN6X4RQ5n8=; b=buoPy6ekOaZ/TcOtiUxUZ+wEJy
	RchQTGEVclUG+ofCaeip9u2tvN13lUr28D0bUZnhx30QY9bJZM7WWNfq0UlJ0z2UKlIWXNHBnEkqt
	qaOx7MIAfX0d9/GFYUyDOp+/VwcMJ8iFhyyFinrv3RVJm9E7Q5jAB/fSHbSGgOHyFZK6qlN7vrfiA
	bP2hA4vxZLn9h3yDbTqMGSXcPYJXXIIvfBcf1TQjKS3cKIb3CUQI2unzxWif56hjrYnpK3u1dV669
	JsBy/dIHZ9/T7lsEI1zda9l669h5m6CbkNFB5sCPMDXGccdSPztFGG68Hp+cc8LU2Qj93YC+Zm4Go
	397CsZlg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r4-00000001Gf7-3rVd
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:38:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-000520-NQ; Mon, 19 Feb 2024 14:38:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-001f3h-As; Mon, 19 Feb 2024 14:38:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-00GySQ-0c;
	Mon, 19 Feb 2024 14:38:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:38:28 +0100
Message-Id: <20240219133835.3886399-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_133847_468776_615988F6 
X-CRM114-Status: GOOD (  24.69  )
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
Subject: [PATCH 08/15] usb: xhci: support non-1:1 mapped xHCI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The code so far assumed 1:1 mapped xHCI, which would apparently fail for
the Raspberry Pi 4 (with its PCIe xHCI controller) and for Apple Silicon
(where xHCI sits behind an IOMMU).

The latter can't be fixed without having dma_alloc_coherent take a dev
pointer, but the former can be fixed with existing API if we would
just start using the DMA address return parameter instead of specifying
DMA_ADDRESS_BROKEN, so let's do just that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-mem.c  | 61 ++++++++++++++++++------------------
 drivers/usb/host/xhci-ring.c | 51 +++++++++++++++++++++---------
 drivers/usb/host/xhci.c      | 11 ++++---
 drivers/usb/host/xhci.h      | 13 ++++++--
 4 files changed, 83 insertions(+), 53 deletions(-)

diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
index cfd52566d772..e962bfde3f56 100644
--- a/drivers/usb/host/xhci-mem.c
+++ b/drivers/usb/host/xhci-mem.c
@@ -82,11 +82,11 @@ static void xhci_free(struct xhci_ctrl *ctrl, void *ptr)
  * @param size	size of memory to be allocated
  * @return allocates the memory and returns the aligned pointer
  */
-static void *xhci_malloc(struct xhci_ctrl *ctrl, unsigned int size)
+static void *xhci_malloc(struct xhci_ctrl *ctrl, unsigned int size, dma_addr_t *dma_addr)
 {
 	void *ptr;
 
-	ptr = dma_alloc_coherent(size, DMA_ADDRESS_BROKEN);
+	ptr = dma_alloc_coherent(size, dma_addr);
 	if (!ptr)
 		return NULL;
 
@@ -145,7 +145,7 @@ static void xhci_scratchpad_free(struct xhci_ctrl *ctrl)
 
 	ctrl->dcbaa->dev_context_ptrs[0] = 0;
 
-	xhci_free(ctrl, (void *)(uintptr_t)ctrl->scratchpad->sp_array[0]);
+	xhci_free(ctrl, ctrl->scratchpad->scratchpad);
 	xhci_free(ctrl, ctrl->scratchpad->sp_array);
 	free(ctrl->scratchpad);
 	ctrl->scratchpad = NULL;
@@ -234,14 +234,13 @@ static void xhci_link_segments(struct xhci_segment *prev,
 				struct xhci_segment *next, bool link_trbs)
 {
 	u32 val;
-	u64 val_64 = 0;
 
 	if (!prev || !next)
 		return;
 	prev->next = next;
 	if (link_trbs) {
-		val_64 = (uintptr_t)next->trbs;
-		prev->trbs[TRBS_PER_SEGMENT-1].link.segment_ptr = val_64;
+		prev->trbs[TRBS_PER_SEGMENT-1].link.segment_ptr =
+			cpu_to_le64(next->dma);
 
 		/*
 		 * Set the last TRB in the segment to
@@ -294,7 +293,7 @@ static struct xhci_segment *xhci_segment_alloc(struct xhci_ctrl *ctrl)
 
 	seg = xzalloc(sizeof(*seg));
 
-	seg->trbs = xhci_malloc(ctrl, SEGMENT_SIZE);
+	seg->trbs = xhci_malloc(ctrl, SEGMENT_SIZE, &seg->dma);
 
 	return seg;
 }
@@ -364,6 +363,7 @@ static int xhci_scratchpad_alloc(struct xhci_ctrl *ctrl)
 	struct xhci_hccr *hccr = ctrl->hccr;
 	struct xhci_hcor *hcor = ctrl->hcor;
 	struct xhci_scratchpad *scratchpad;
+	dma_addr_t val_64;
 	int num_sp;
 	uint32_t page_size;
 	void *buf;
@@ -378,11 +378,11 @@ static int xhci_scratchpad_alloc(struct xhci_ctrl *ctrl)
 		goto fail_sp;
 	ctrl->scratchpad = scratchpad;
 
-	scratchpad->sp_array = xhci_malloc(ctrl, num_sp * sizeof(u64));
+	scratchpad->sp_array = xhci_malloc(ctrl, num_sp * sizeof(u64), &val_64);
 	if (!scratchpad->sp_array)
 		goto fail_sp2;
-	ctrl->dcbaa->dev_context_ptrs[0] =
-		cpu_to_le64((uintptr_t)scratchpad->sp_array);
+
+	ctrl->dcbaa->dev_context_ptrs[0] = cpu_to_le64(val_64);
 
 	xhci_flush_cache((uintptr_t)&ctrl->dcbaa->dev_context_ptrs[0],
 		sizeof(ctrl->dcbaa->dev_context_ptrs[0]));
@@ -396,15 +396,16 @@ static int xhci_scratchpad_alloc(struct xhci_ctrl *ctrl)
 	BUG_ON(i == 16);
 
 	page_size = 1 << (i + 12);
-	buf = xhci_malloc(ctrl, num_sp * page_size);
+	buf = xhci_malloc(ctrl, num_sp * page_size, &val_64);
 	if (!buf)
 		goto fail_sp3;
 
 	xhci_flush_cache((uintptr_t)buf, num_sp * page_size);
 
+	scratchpad->scratchpad = buf;
 	for (i = 0; i < num_sp; i++) {
-		uintptr_t ptr = (uintptr_t)buf + i * page_size;
-		scratchpad->sp_array[i] = cpu_to_le64(ptr);
+		scratchpad->sp_array[i] = cpu_to_le64(val_64);
+		val_64 += page_size;
 	}
 
 	xhci_flush_cache((uintptr_t)scratchpad->sp_array,
@@ -444,7 +445,7 @@ static struct xhci_container_ctx
 	if (type == XHCI_CTX_TYPE_INPUT)
 		ctx->size += CTX_SIZE(xhci_readl(&ctrl->hccr->cr_hccparams));
 
-	ctx->bytes = xhci_malloc(ctrl, ctx->size);
+	ctx->bytes = xhci_malloc(ctrl, ctx->size, &ctx->dma);
 
 	return ctx;
 }
@@ -495,7 +496,7 @@ int xhci_alloc_virt_device(struct xhci_ctrl *ctrl, unsigned int slot_id)
 	/* Allocate endpoint 0 ring */
 	virt_dev->eps[0].ring = xhci_ring_alloc(ctrl, 1, true);
 
-	byte_64 = (uintptr_t)(virt_dev->out_ctx->bytes);
+	byte_64 = virt_dev->out_ctx->dma;
 
 	/* Point to output device context in dcbaa. */
 	ctrl->dcbaa->dev_context_ptrs[slot_id] = cpu_to_le64(byte_64);
@@ -517,29 +518,27 @@ int xhci_alloc_virt_device(struct xhci_ctrl *ctrl, unsigned int slot_id)
 int xhci_mem_init(struct xhci_ctrl *ctrl, struct xhci_hccr *hccr,
 					struct xhci_hcor *hcor)
 {
+	dma_addr_t dma;
 	uint64_t val_64;
 	uint64_t trb_64;
 	uint32_t val;
-	unsigned long deq;
+	uint64_t deq;
 	int i;
 	struct xhci_segment *seg;
 
 	/* DCBAA initialization */
-	ctrl->dcbaa = xhci_malloc(ctrl, sizeof(*ctrl->dcbaa));
-	if (!ctrl->dcbaa) {
-		dev_err(ctrl->dev, "unable to allocate DCBA\n");
-		return -ENOMEM;
-	}
+	ctrl->dcbaa = xhci_malloc(ctrl, sizeof(struct xhci_device_context_array),
+				  &dma);
+	ctrl->dcbaa->dma = dma;
 
-	val_64 = (uintptr_t)ctrl->dcbaa;
 	/* Set the pointer in DCBAA register */
-	xhci_writeq(&hcor->or_dcbaap, val_64);
+	xhci_writeq(&hcor->or_dcbaap, dma);
 
 	/* Command ring control pointer register initialization */
 	ctrl->cmd_ring = xhci_ring_alloc(ctrl, 1, true);
 
 	/* Set the address in the Command Ring Control register */
-	trb_64 = (uintptr_t)ctrl->cmd_ring->first_seg->trbs;
+	trb_64 = ctrl->cmd_ring->first_seg->dma;
 	val_64 = xhci_readq(&hcor->or_crcr);
 	val_64 = (val_64 & (u64) CMD_RING_RSVD_BITS) |
 		(trb_64 & (u64) ~CMD_RING_RSVD_BITS) |
@@ -561,8 +560,8 @@ int xhci_mem_init(struct xhci_ctrl *ctrl, struct xhci_hccr *hccr,
 
 	/* Event ring does not maintain link TRB */
 	ctrl->event_ring = xhci_ring_alloc(ctrl, ERST_NUM_SEGS, false);
-	ctrl->erst.entries =
-		xhci_malloc(ctrl, sizeof(struct xhci_erst_entry) * ERST_NUM_SEGS);
+	ctrl->erst.entries = xhci_malloc(ctrl, sizeof(struct xhci_erst_entry) *
+					 ERST_NUM_SEGS, &ctrl->erst.erst_dma_addr);
 
 	ctrl->erst.num_entries = ERST_NUM_SEGS;
 
@@ -571,8 +570,7 @@ int xhci_mem_init(struct xhci_ctrl *ctrl, struct xhci_hccr *hccr,
 			val++) {
 		struct xhci_erst_entry *entry = &ctrl->erst.entries[val];
 
-		trb_64 = 0;
-		trb_64 = (uintptr_t)seg->trbs;
+		trb_64 = seg->dma;
 		entry->seg_addr = cpu_to_le64(trb_64);
 		entry->seg_size = cpu_to_le32(TRBS_PER_SEGMENT);
 		entry->rsvd = 0;
@@ -581,7 +579,8 @@ int xhci_mem_init(struct xhci_ctrl *ctrl, struct xhci_hccr *hccr,
 	xhci_flush_cache((uintptr_t)ctrl->erst.entries,
 			 ERST_NUM_SEGS * sizeof(struct xhci_erst_entry));
 
-	deq = (unsigned long)ctrl->event_ring->dequeue;
+	deq = xhci_trb_virt_to_dma(ctrl->event_ring->deq_seg,
+				   ctrl->event_ring->dequeue);
 
 	/* Update HC event ring dequeue pointer */
 	xhci_writeq(&ctrl->ir_set->erst_dequeue,
@@ -596,7 +595,7 @@ int xhci_mem_init(struct xhci_ctrl *ctrl, struct xhci_hccr *hccr,
 	/* this is the event ring segment table pointer */
 	val_64 = xhci_readq(&ctrl->ir_set->erst_base);
 	val_64 &= ERST_PTR_MASK;
-	val_64 |= ((uintptr_t)(ctrl->erst.entries) & ~ERST_PTR_MASK);
+	val_64 |= ctrl->erst.erst_dma_addr & ~ERST_PTR_MASK;
 
 	xhci_writeq(&ctrl->ir_set->erst_base, val_64);
 
@@ -851,7 +850,7 @@ void xhci_setup_addressable_virt_dev(struct xhci_ctrl *ctrl,
 	/* EP 0 can handle "burst" sizes of 1, so Max Burst Size field is 0 */
 	ep0_ctx->ep_info2 |= cpu_to_le32(MAX_BURST(0) | ERROR_COUNT(3));
 
-	trb_64 = (uintptr_t)virt_dev->eps[0].ring->first_seg->trbs;
+	trb_64 = virt_dev->eps[0].ring->first_seg->dma;
 	ep0_ctx->deq = cpu_to_le64(trb_64 | virt_dev->eps[0].ring->cycle_state);
 
 	/*
diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 818b662e70d2..c645285da7fc 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -25,6 +25,24 @@
 
 #include "xhci.h"
 
+/*
+ * Returns zero if the TRB isn't in this segment, otherwise it returns the DMA
+ * address of the TRB.
+ */
+dma_addr_t xhci_trb_virt_to_dma(struct xhci_segment *seg,
+				union xhci_trb *trb)
+{
+	unsigned long segment_offset;
+
+	BUG_ON(!seg || !trb || trb < seg->trbs);
+
+	/* offset in TRBs */
+	segment_offset = trb - seg->trbs;
+	BUG_ON(segment_offset >= TRBS_PER_SEGMENT);
+
+	return seg->dma + (segment_offset * sizeof(*trb));
+}
+
 /**
  * Is this TRB a link TRB or was the last TRB the last TRB in this event ring
  * segment?  I.e. would the updated event TRB pointer step off the end of the
@@ -181,12 +199,11 @@ static void inc_deq(struct xhci_ctrl *ctrl, struct xhci_ring *ring)
  * @param trb_fields	pointer to trb field array containing TRB contents
  * @return pointer to the enqueued trb
  */
-static struct xhci_generic_trb *queue_trb(struct xhci_ctrl *ctrl,
-					  struct xhci_ring *ring,
-					  bool more_trbs_coming,
-					  unsigned int *trb_fields)
+static dma_addr_t queue_trb(struct xhci_ctrl *ctrl, struct xhci_ring *ring,
+			    bool more_trbs_coming, unsigned int *trb_fields)
 {
 	struct xhci_generic_trb *trb;
+	dma_addr_t addr;
 	int i;
 
 	trb = &ring->enqueue->generic;
@@ -196,9 +213,11 @@ static struct xhci_generic_trb *queue_trb(struct xhci_ctrl *ctrl,
 
 	xhci_flush_cache((uintptr_t)trb, sizeof(struct xhci_generic_trb));
 
+	addr = xhci_trb_virt_to_dma(ring->enq_seg, (union xhci_trb *)trb);
+
 	inc_enq(ctrl, ring, more_trbs_coming);
 
-	return trb;
+	return addr;
 }
 
 /**
@@ -273,16 +292,15 @@ static int prepare_ring(struct xhci_ctrl *ctrl, struct xhci_ring *ep_ring,
  * @param cmd		Command type to enqueue
  * @return none
  */
-void xhci_queue_command(struct xhci_ctrl *ctrl, u8 *ptr, u32 slot_id,
+void xhci_queue_command(struct xhci_ctrl *ctrl, dma_addr_t addr, u32 slot_id,
 			u32 ep_index, trb_type cmd)
 {
 	u32 fields[4];
-	u64 val_64 = (uintptr_t)ptr;
 
 	BUG_ON(prepare_ring(ctrl, ctrl->cmd_ring, EP_STATE_RUNNING));
 
-	fields[0] = lower_32_bits(val_64);
-	fields[1] = upper_32_bits(val_64);
+	fields[0] = lower_32_bits(addr);
+	fields[1] = upper_32_bits(addr);
 	fields[2] = 0;
 	fields[3] = TRB_TYPE(cmd) | SLOT_ID_FOR_TRB(slot_id) |
 		    ctrl->cmd_ring->cycle_state;
@@ -396,12 +414,15 @@ static void giveback_first_trb(struct usb_device *udev, int ep_index,
  */
 void xhci_acknowledge_event(struct xhci_ctrl *ctrl)
 {
+	dma_addr_t deq;
+
 	/* Advance our dequeue pointer to the next event */
 	inc_deq(ctrl, ctrl->event_ring);
 
 	/* Inform the hardware */
-	xhci_writeq(&ctrl->ir_set->erst_dequeue,
-		(uintptr_t)ctrl->event_ring->dequeue | ERST_EHB);
+	deq = xhci_trb_virt_to_dma(ctrl->event_ring->deq_seg,
+				   ctrl->event_ring->dequeue);
+	xhci_writeq(&ctrl->ir_set->erst_dequeue, deq | ERST_EHB);
 }
 
 /**
@@ -492,9 +513,10 @@ static void abort_td(struct usb_device *udev, int ep_index)
 	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
 	struct xhci_ring *ring =  ctrl->devs[udev->slot_id]->eps[ep_index].ring;
 	union xhci_trb *event;
+	dma_addr_t addr;
 	u32 field;
 
-	xhci_queue_command(ctrl, NULL, udev->slot_id, ep_index, TRB_STOP_RING);
+	xhci_queue_command(ctrl, 0, udev->slot_id, ep_index, TRB_STOP_RING);
 
 	event = xhci_wait_for_event(ctrl, TRB_TRANSFER, XHCI_TIMEOUT_DEFAULT);
 	field = le32_to_cpu(event->trans_event.flags);
@@ -510,8 +532,9 @@ static void abort_td(struct usb_device *udev, int ep_index)
 		event->event_cmd.status)) != COMP_SUCCESS);
 	xhci_acknowledge_event(ctrl);
 
-	xhci_queue_command(ctrl, (void *)((uintptr_t)ring->enqueue |
-		ring->cycle_state), udev->slot_id, ep_index, TRB_SET_DEQ);
+	addr = xhci_trb_virt_to_dma(ring->enq_seg, ring->enqueue);
+	addr |= ring->cycle_state;
+	xhci_queue_command(ctrl, addr, udev->slot_id, ep_index, TRB_SET_DEQ);
 	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
 	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
 		!= udev->slot_id || GET_COMP_CODE(le32_to_cpu(
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index 92101f8f67d9..2c923b9869ae 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -443,7 +443,7 @@ static int xhci_configure_endpoints(struct usb_device *udev, bool ctx_change)
 	in_ctx = virt_dev->in_ctx;
 
 	xhci_flush_cache((uintptr_t)in_ctx->bytes, in_ctx->size);
-	xhci_queue_command(ctrl, in_ctx->bytes, udev->slot_id, 0,
+	xhci_queue_command(ctrl, in_ctx->dma, udev->slot_id, 0,
 			   ctx_change ? TRB_EVAL_CONTEXT : TRB_CONFIG_EP);
 	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
 	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
@@ -580,8 +580,8 @@ static int xhci_set_configuration(struct usb_device *udev)
 			cpu_to_le32(MAX_BURST(max_burst) |
 			ERROR_COUNT(err_count));
 
-		trb_64 = (uintptr_t)
-				virt_dev->eps[ep_index].ring->enqueue;
+		trb_64 = xhci_trb_virt_to_dma(virt_dev->eps[ep_index].ring->enq_seg,
+				virt_dev->eps[ep_index].ring->enqueue);
 		ep_ctx[ep_index]->deq = cpu_to_le64(trb_64 |
 				virt_dev->eps[ep_index].ring->cycle_state);
 
@@ -629,7 +629,8 @@ static int xhci_address_device(struct usb_device *udev, int root_portnr)
 	ctrl_ctx->add_flags = cpu_to_le32(SLOT_FLAG | EP0_FLAG);
 	ctrl_ctx->drop_flags = 0;
 
-	xhci_queue_command(ctrl, (void *)ctrl_ctx, slot_id, 0, TRB_ADDR_DEV);
+	xhci_queue_command(ctrl, virt_dev->in_ctx->dma,
+			   slot_id, 0, TRB_ADDR_DEV);
 	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
 	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags)) != slot_id);
 
@@ -704,7 +705,7 @@ static int _xhci_alloc_device(struct usb_device *udev)
 		return 0;
 	}
 
-	xhci_queue_command(ctrl, NULL, 0, 0, TRB_ENABLE_SLOT);
+	xhci_queue_command(ctrl, 0, 0, 0, TRB_ENABLE_SLOT);
 	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
 	BUG_ON(GET_COMP_CODE(le32_to_cpu(event->event_cmd.status))
 		!= COMP_SUCCESS);
diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index 5c72f62402c5..e676116f4266 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -16,7 +16,7 @@
 #ifndef HOST_XHCI_H_
 #define HOST_XHCI_H_
 
-#include <asm/types.h>
+#include <linux/types.h>
 #include <io.h>
 #include <io-64-nonatomic-lo-hi.h>
 #include <linux/list.h>
@@ -490,6 +490,7 @@ struct xhci_container_ctx {
 
 	int size;
 	u8 *bytes;
+	dma_addr_t dma;
 };
 
 /**
@@ -691,6 +692,8 @@ struct xhci_input_control_ctx {
 struct xhci_device_context_array {
 	/* 64-bit device addresses; we only write 32-bit addresses */
 	__le64			dev_context_ptrs[MAX_HC_SLOTS];
+	/* private xHCD pointers */
+	dma_addr_t	dma;
 };
 /* TODO: write function to set the 64-bit device DMA address */
 /*
@@ -1003,6 +1006,7 @@ struct xhci_segment {
 	union xhci_trb		*trbs;
 	/* private to HCD */
 	struct xhci_segment	*next;
+	dma_addr_t		dma;
 };
 
 struct xhci_ring {
@@ -1031,11 +1035,14 @@ struct xhci_erst_entry {
 struct xhci_erst {
 	struct xhci_erst_entry	*entries;
 	unsigned int		num_entries;
+	/* xhci->event_ring keeps track of segment dma addresses */
+	dma_addr_t		erst_dma_addr;
 	/* Num entries the ERST can contain */
 	unsigned int		erst_size;
 };
 
 struct xhci_scratchpad {
+	void *scratchpad;
 	u64 *sp_array;
 };
 
@@ -1225,7 +1232,7 @@ static inline struct xhci_ctrl *to_xhci(struct usb_host *host)
 	return container_of(host, struct xhci_ctrl, host);
 }
 
-unsigned long trb_addr(struct xhci_segment *seg, union xhci_trb *trb);
+dma_addr_t xhci_trb_virt_to_dma(struct xhci_segment *seg, union xhci_trb *trb);
 struct xhci_input_control_ctx
 		*xhci_get_input_control_ctx(struct xhci_container_ctx *ctx);
 struct xhci_slot_ctx *xhci_get_slot_ctx(struct xhci_ctrl *ctrl,
@@ -1242,7 +1249,7 @@ void xhci_slot_copy(struct xhci_ctrl *ctrl,
 		    struct xhci_container_ctx *out_ctx);
 void xhci_setup_addressable_virt_dev(struct xhci_ctrl *ctrl,
 				     struct usb_device *udev, int hop_portnr);
-void xhci_queue_command(struct xhci_ctrl *ctrl, u8 *ptr,
+void xhci_queue_command(struct xhci_ctrl *ctrl, dma_addr_t addr,
 			u32 slot_id, u32 ep_index, trb_type cmd);
 void xhci_acknowledge_event(struct xhci_ctrl *ctrl);
 #define XHCI_TIMEOUT_DEFAULT 5000
-- 
2.39.2



