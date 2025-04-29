Delivery-date: Tue, 29 Apr 2025 16:32:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9m0c-000WNE-31
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 16:32:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9m0b-0003AM-RD
	for lore@pengutronix.de; Tue, 29 Apr 2025 16:32:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gsmcrjnvklTL8J/jWxav5/8FbgRsRIKSnZQyyDhJXvc=; b=yywzInKP1zl1JOgVjvrmKZTCVO
	zkzoL0oDFhxzxugFFQ04QF0wLkZYfhBW/K2BRKp1jCpF8RGYI+UsRJ6SGXpbVtbXuoapN4Tpgy8If
	wWhHc8blPqZfYInTp4Dr/rpirAznROXy/j4QqFMNnq+yWeEsV94Q8qHBku88NYhWAg7XNS/+cWOov
	d0bS0VcA1hL+NW86LGBkhO2NijJFGmeagCnpPIC7wSoaykmIj3wn36aPENlIEPDlrVpWeMGi6mc8x
	ApuSI7IR4o/18tfMyBCE9fsK+SXkuIbxk1KCUBKyF4GBbUgfGmhfKmthYmXqrDMEWjrVWxhSG1iw7
	jOY0hxTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9m03-00000009xmY-43jb;
	Tue, 29 Apr 2025 14:31:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ljG-00000009uNZ-2tGW
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 14:14:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=gsmcrjnvklTL8J/jWxav5/8FbgRsRIKSnZQyyDhJXvc=; b=jW8ixad67o4wUuQ5AGb5Wml2nO
	xmmPJ/48oxqxvaicA3lyFZLrvlnGi1QnjQnV4mjnN9mCNpvQGeAgCRPihSCbL2PJ3gUVYercFjm+W
	AiHCGq7GLBj+8iUNrC50aHhT6P2GIjCntriSDnxTFX2o/1GETHTLlaR46tZmMPeh926F3hlxvYevi
	WywkfZ4yH18GkyQi4KO/Clo6EG4RAVz1VDw/nI+B/pOvf+swDX7LAyYwv/FE1abmIQgLXuNtfgY7O
	uwPXylrPwF2tq6i5VsMFYz1jUoUZnSlJhfgjexS51xKLFp12vmghKMsm+Ogh5sSRbqwfrc/Rot/Oy
	mzyLJZOw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9ljD-0000000DNPK-1PmV
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 14:14:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-00084c-Nt; Tue, 29 Apr 2025 16:14:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-000HEo-1S;
	Tue, 29 Apr 2025 16:14:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-00Cqw2-1C;
	Tue, 29 Apr 2025 16:14:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Apr 2025 16:14:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250429-k3-asel-v1-4-6f39afaa2dfe@pengutronix.de>
References: <20250429-k3-asel-v1-0-6f39afaa2dfe@pengutronix.de>
In-Reply-To: <20250429-k3-asel-v1-0-6f39afaa2dfe@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745936062; l=4876;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RcyHmEkfmAdfzugdzBlb1Fcktrnzp46B5jgesFkwdXU=;
 b=6ejJYhbrWRSO3dmZdRSSg0zU0DLQ1tCsOjFxCvkT2uYMYCbqAa0eXCsfAOMktX56VFPYzEI4s
 fRNwj9QkMlfBOECvqLmA117YzCmKuZ2sDp7j01+bK+S+3/tt891eZwY
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_151431_530294_072BB3E7 
X-CRM114-Status: GOOD (  16.54  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] dma: k3-udma: Handle Asel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the Asel aka "Address selection" bits to the
k3-udma driver.

These bits become important when the DDR firewalls are enabled. With DDR
firewalls the buffer addresses used by the PKTDMA engine need to be
tagged with the correct Asel value, otherwise they will be blocked by
the firewall.

The Asel values are read from the device tree and need to be placed in
bits 48-51 of the physical DMA addresses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/ti/k3-udma.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
index dfec9f91e3..b9af13dcc0 100644
--- a/drivers/dma/ti/k3-udma.c
+++ b/drivers/dma/ti/k3-udma.c
@@ -26,6 +26,7 @@
 #include "k3-psil-priv.h"
 
 #define K3_UDMA_MAX_RFLOWS 1024
+#define K3_ADDRESS_ASEL_SHIFT     48
 
 struct udma_chan;
 
@@ -195,6 +196,8 @@ struct udma_chan_config {
 	unsigned int enable_acc32:1;
 	unsigned int enable_burst:1;
 	unsigned int notdpkt:1; /* Suppress sending TDC packet */
+
+	u8 asel;
 };
 
 struct udma_chan {
@@ -958,6 +961,7 @@ static int udma_alloc_tx_resources(struct udma_chan *uc)
 
 	memset(&ring_cfg, 0, sizeof(ring_cfg));
 	ring_cfg.size = 16;
+	ring_cfg.asel = uc->config.asel;
 	ring_cfg.elm_size = K3_RINGACC_RING_ELSIZE_8;
 	ring_cfg.mode = K3_RINGACC_RING_MODE_RING;
 
@@ -1042,6 +1046,7 @@ static int udma_alloc_rx_resources(struct udma_chan *uc)
 	ring_cfg.size = 16;
 	ring_cfg.elm_size = K3_RINGACC_RING_ELSIZE_8;
 	ring_cfg.mode = K3_RINGACC_RING_MODE_RING;
+	ring_cfg.asel = uc->config.asel;
 
 	ret = k3_ringacc_ring_cfg(rflow->fd_ring, &ring_cfg);
 	ret |= k3_ringacc_ring_cfg(rflow->r_ring, &ring_cfg);
@@ -1751,6 +1756,7 @@ static int *udma_prep_dma_memcpy(struct udma_chan *uc, dma_addr_t dest,
 	u16 tr0_cnt0, tr0_cnt1, tr1_cnt0;
 	void *tr_desc;
 	size_t desc_size;
+	u64 asel = (u64)uc->config.asel << K3_ADDRESS_ASEL_SHIFT;
 
 	if (len < SZ_64K) {
 		num_tr = 1;
@@ -1792,6 +1798,9 @@ static int *udma_prep_dma_memcpy(struct udma_chan *uc, dma_addr_t dest,
 		      CPPI5_TR_EVENT_SIZE_COMPLETION, 1);
 	cppi5_tr_csf_set(&tr_req[0].flags, CPPI5_TR_CSF_SUPR_EVT);
 
+	src |= asel;
+	dest |= asel;
+
 	tr_req[0].addr = src;
 	tr_req[0].icnt0 = tr0_cnt0;
 	tr_req[0].icnt1 = tr0_cnt1;
@@ -2339,6 +2348,7 @@ static int udma_send(struct dma *dma, dma_addr_t src, size_t len, void *metadata
 	struct udma_chan *uc;
 	u32 tc_ring_id;
 	int ret;
+	u64 asel;
 
 	if (metadata)
 		packet_data = *((struct ti_udma_drv_packet_data *)metadata);
@@ -2349,6 +2359,8 @@ static int udma_send(struct dma *dma, dma_addr_t src, size_t len, void *metadata
 	}
 	uc = &ud->channels[dma->id];
 
+	asel = (u64)uc->config.asel << K3_ADDRESS_ASEL_SHIFT;
+
 	if (uc->config.dir != DMA_MEM_TO_DEV)
 		return -EINVAL;
 
@@ -2358,6 +2370,8 @@ static int udma_send(struct dma *dma, dma_addr_t src, size_t len, void *metadata
 
 	cppi5_hdesc_reset_hbdesc(desc_tx);
 
+	src |= asel;
+
 	cppi5_hdesc_init(desc_tx,
 			 uc->config.needs_epib ? CPPI5_INFO0_HDESC_EPIB_PRESENT : 0,
 			 uc->config.psd_size);
@@ -2421,7 +2435,8 @@ static int udma_receive(struct dma *dma, dma_addr_t *dst, void *metadata)
 		packet_data->src_tag = port_id;
 	}
 
-	*dst = buf_dma;
+	*dst = buf_dma & GENMASK_ULL(K3_ADDRESS_ASEL_SHIFT - 1, 0);
+
 	uc->num_rx_bufs--;
 
 	return pkt_len;
@@ -2470,6 +2485,8 @@ static int udma_of_xlate(struct dma *dma, struct of_phandle_args *args)
 	    ep_config->mapped_channel_id >= 0) {
 		ucc->mapped_channel_id = ep_config->mapped_channel_id;
 		ucc->default_flow_id = ep_config->default_flow_id;
+		if (args->args_count == 2)
+			ucc->asel = args->args[1];
 	} else {
 		ucc->mapped_channel_id = -1;
 		ucc->default_flow_id = -1;
@@ -2498,6 +2515,7 @@ static int udma_prepare_rcv_buf(struct dma *dma, dma_addr_t dst, size_t size)
 	struct cppi5_host_desc_t *desc_rx;
 	struct udma_chan *uc;
 	u32 desc_num;
+	u64 asel;
 
 	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
 		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
@@ -2511,6 +2529,7 @@ static int udma_prepare_rcv_buf(struct dma *dma, dma_addr_t dst, size_t size)
 	if (uc->num_rx_bufs >= UDMA_RX_DESC_NUM)
 		return -EINVAL;
 
+	asel = (u64)uc->config.asel << K3_ADDRESS_ASEL_SHIFT;
 	desc_num = uc->desc_rx_cur % UDMA_RX_DESC_NUM;
 	desc_rx = uc->desc_rx + (desc_num * uc->config.hdesc_size);
 
@@ -2520,6 +2539,7 @@ static int udma_prepare_rcv_buf(struct dma *dma, dma_addr_t dst, size_t size)
 			 uc->config.needs_epib ? CPPI5_INFO0_HDESC_EPIB_PRESENT : 0,
 			 uc->config.psd_size);
 	cppi5_hdesc_set_pktlen(desc_rx, size);
+	dst |= asel;
 	cppi5_hdesc_attach_buf(desc_rx, dst, size, dst, size);
 
 	udma_push_to_ring(uc->rflow->fd_ring, desc_rx);

-- 
2.39.5



