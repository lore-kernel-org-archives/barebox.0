Delivery-date: Mon, 14 Oct 2024 15:57:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZJ-004HX7-0y
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:57:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZG-0006RP-RQ
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:57:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ol0Y8f9TlZIBSMVcIBRKrI094M4zBiG9raE85Wm2bpI=; b=IHghvrnYJUR1XX/swJ3LkJxX3A
	LAPIBqEMrk5IiYM3UMk+q0ZH1o0TdREZ/+q23cYzK8CZMBda+LukKsoE7bfdCJIJbSS9oxbwBStqm
	RcFH+APt3gjY0t2Hf0HgQfsz3IO1P0X2VsrjCK7+NNrARhWmGET6ilGkwF5IRoTUAPVpVTG2n4n1B
	N8ORQ2lJrL9mymrm6ykJTboknUvII61Z5WoIV4v1RzYkw/hgEhJlxDHvtmhkrCd3PQAyu5C9+lc5G
	MMnq/BHZ1mLJE/ozXOnP3Gp2Z8jSJN0P/XY2qVZBbnNJS6xxLCussYUNIWb769kA3P54OO1e78HRY
	qbZYOy+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LYh-00000005NPC-0Cqn;
	Mon, 14 Oct 2024 13:56:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Kes-00000005AcU-1ltm
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:58:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Ker-0007LA-54; Mon, 14 Oct 2024 14:58:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Keq-001nNg-OD; Mon, 14 Oct 2024 14:58:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Keq-00A8vm-26;
	Mon, 14 Oct 2024 14:58:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Denis Orlov <denorl2009@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 14:58:42 +0200
Message-Id: <20241014125843.2064532-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
References: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_055846_521918_868ABBB9 
X-CRM114-Status: GOOD (  12.58  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] net: macb: fix DMA_ADDRESS_BROKEN in the coherent ring allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver already has defines struct macb_device::{rx_ring_phys,tx_ring_phys},
but never bothers to populate them. Let's make use of them and while at
it fix DMA_ADDRESS_BROKEN for the gem_q1_descs allocation as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/macb.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index c473525ecdaa..03fad3f20bd3 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -71,6 +71,7 @@ struct macb_device {
 	struct macb_dma_desc	*tx_ring;
 	dma_addr_t		tx_ring_phys;
 	struct macb_dma_desc	*gem_q1_descs;
+	dma_addr_t		gem_q1_descs_phys;
 
 	int			rx_buffer_size;
 	int			rx_ring_size;
@@ -367,7 +368,7 @@ static int gmac_init_dummy_tx_queues(struct macb_device *macb)
 	       &macb->gem_q1_descs[0].ctrl);
 
 	for (i = 1; i < num_queues; i++)
-		gem_writel_queue_TBQP(macb, (ulong)macb->gem_q1_descs, i - 1);
+		gem_writel_queue_TBQP(macb, macb->gem_q1_descs_phys, i - 1);
 
 	return 0;
 }
@@ -388,7 +389,7 @@ static int macb_init(struct macb_device *macb)
 		return -EFAULT;
 
 	/* initialize DMA descriptors */
-	paddr = (ulong)macb->rx_buffer;
+	paddr = macb->rx_buffer_phys;
 	for (i = 0; i < macb->rx_ring_size; i++) {
 		writel(paddr, &macb->rx_ring[i].addr);
 		writel(0, &macb->rx_ring[i].ctrl);
@@ -406,8 +407,8 @@ static int macb_init(struct macb_device *macb)
 
 	macb_configure_dma(macb);
 
-	macb_writel(macb, RBQP, (ulong)macb->rx_ring);
-	macb_writel(macb, TBQP, (ulong)macb->tx_ring);
+	macb_writel(macb, RBQP, macb->rx_ring_phys);
+	macb_writel(macb, TBQP, macb->tx_ring_phys);
 
 	if (macb->is_gem && macb->gem_q1_descs) {
 		gmac_init_dummy_tx_queues(macb);
@@ -903,8 +904,8 @@ static int macb_probe(struct device *dev)
 	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES, &macb->tx_ring_phys);
 
 	if (macb->is_gem)
-		macb->gem_q1_descs = dma_alloc_coherent(GEM_Q1_DESC_BYTES,
-				DMA_ADDRESS_BROKEN);
+		macb->gem_q1_descs = dma_alloc_coherent(
+				GEM_Q1_DESC_BYTES, &macb->gem_q1_descs_phys);
 
 	macb->rx_packet_buf = net_alloc_packet();
 
-- 
2.39.5



