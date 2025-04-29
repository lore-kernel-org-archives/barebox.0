Delivery-date: Tue, 29 Apr 2025 16:32:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9m0q-000WNr-1G
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 16:32:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9m0l-0003Kx-EE
	for lore@pengutronix.de; Tue, 29 Apr 2025 16:32:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=igF2cB/ueBnV8fcDh+XKMgJHaZ+AZSEWkgavWWeb7Ow=; b=ODcaUYoJi3pOduvtREHbVbS9hr
	0of+RuNZvAhlqQ/lsel7aUfPTvFlqSm6vjb2SMlyl8zIH/fCXhlqmHfEQ3nxcYTpWYLEhlPj78YbK
	qwxAoKEfNiZZvhMU1Lmo8Pdq3P23utxs/MhSZRMgrZqF2PKxo3j55IRPbpEliP67t148yz7DVMAIm
	6h1HCsQo5uLJ7Z+xOI0Lze6jl/Ok3loFSXukXu+ryTabj5GB7tr8j75ccm66GFm+rwFfv64Uq9EZ0
	Tbf8YQ9lcVnRoqebYyRA1EgNmms4EMJ1OY2px59g/K+fa20yhXJ7ZwQgNJRBUbq9tC0MZoGoXsCnl
	/lVU1Zsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9m04-00000009xnJ-2uvu;
	Tue, 29 Apr 2025 14:31:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ljE-00000009uKC-2gL7
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 14:14:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=igF2cB/ueBnV8fcDh+XKMgJHaZ+AZSEWkgavWWeb7Ow=; b=IqcXLElMsXtNIUZj+Ia6TfYZRW
	126fxxlL9ZRNZMkkpo/sd68SH8BAEJmypDlhmICSQrJGsD+MTuKkf6sld/Upe7GL2qfEuEpcizySU
	jx1cy6pmg/qhBE1hFeT9fRX2vbPUE6Tw+NUjdZ8457kkR5SP2AekUyVX4IG7+s0nGoilSU0XPZBaW
	smMqzvDI23LQJXZHBqVLqfYKZLXYhxtqrLr2/0/qls15rB9dIKR9aGoQUvNc97NyXZbt/lPd3+vOu
	KecAjrr/UIvfn8k2ZOnaaoehk4iM4g6PY/K2nONWJoYvR0PJBWOA51zA1o+jYlTDGokl01hfBEoRD
	EsJziphQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9lj7-0000000DNLj-3C4O
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 14:14:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-00084a-PT; Tue, 29 Apr 2025 16:14:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-000HEl-1P;
	Tue, 29 Apr 2025 16:14:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-00Cqw2-19;
	Tue, 29 Apr 2025 16:14:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Apr 2025 16:14:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250429-k3-asel-v1-1-6f39afaa2dfe@pengutronix.de>
References: <20250429-k3-asel-v1-0-6f39afaa2dfe@pengutronix.de>
In-Reply-To: <20250429-k3-asel-v1-0-6f39afaa2dfe@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745936062; l=85456;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=zWZSp0Y5nas11uaDCu/AIiPXaco43Y1FB7Dprrf+AdU=;
 b=bhLGgdjMT2flpBJIWUv+23y+dcc+QDW14RFPGZgU+6tUDLmwcEQEQDkQ0t/EGwVePKUUWnVk8
 UdzNjeswy2oC6Dt4bc65rfxnYx+4tGwC33fWUkjEAxT1IVP8AwQrVIN
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_151426_257956_C572CD82 
X-CRM114-Status: GOOD (  18.54  )
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
Subject: [PATCH 1/4] ti/k3-navss-ringacc: switch to Linux code base
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The k3-navss-ringacc code was based on U-Boot code. This switches the
driver to the corresponding code based on Linux-6.15-rc3.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/ti/k3-udma.c          |  103 +--
 drivers/soc/ti/k3-navss-ringacc.c | 1240 ++++++++++++++++++++++++-------------
 include/soc/ti/k3-navss-ringacc.h |  211 ++++---
 3 files changed, 984 insertions(+), 570 deletions(-)

diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
index 7e6a08348a..dfec9f91e3 100644
--- a/drivers/dma/ti/k3-udma.c
+++ b/drivers/dma/ti/k3-udma.c
@@ -61,8 +61,8 @@ struct udma_tchan {
 	void __iomem *reg_rt;
 
 	int id;
-	struct k3_nav_ring *t_ring; /* Transmit ring */
-	struct k3_nav_ring *tc_ring; /* Transmit Completion ring */
+	struct k3_ring *t_ring; /* Transmit ring */
+	struct k3_ring *tc_ring; /* Transmit Completion ring */
 	int tflow_id; /* applicable only for PKTDMA */
 };
 
@@ -71,8 +71,8 @@ struct udma_tchan {
 struct udma_rflow {
 	void __iomem *reg_rflow;
 	int id;
-	struct k3_nav_ring *fd_ring; /* Free Descriptor ring */
-	struct k3_nav_ring *r_ring; /* Receive ring */
+	struct k3_ring *fd_ring; /* Free Descriptor ring */
+	struct k3_ring *r_ring; /* Receive ring */
 };
 
 struct udma_rchan {
@@ -142,7 +142,7 @@ struct udma_dev {
 	void __iomem *mmrs[MMR_LAST];
 
 	struct udma_tisci_rm tisci_rm;
-	struct k3_nav_ringacc *ringacc;
+	struct k3_ringacc *ringacc;
 
 	u32 features;
 
@@ -447,7 +447,7 @@ static inline bool udma_is_chan_running(struct udma_chan *uc)
 
 static int udma_pop_from_ring(struct udma_chan *uc, dma_addr_t *addr)
 {
-	struct k3_nav_ring *ring = NULL;
+	struct k3_ring *ring = NULL;
 	int ret = -ENOENT;
 
 	switch (uc->config.dir) {
@@ -464,16 +464,16 @@ static int udma_pop_from_ring(struct udma_chan *uc, dma_addr_t *addr)
 		break;
 	}
 
-	if (ring && k3_nav_ringacc_ring_get_occ(ring))
-		ret = k3_nav_ringacc_ring_pop(ring, addr);
+	if (ring && k3_ringacc_ring_get_occ(ring))
+		ret = k3_ringacc_ring_pop(ring, addr);
 
 	return ret;
 }
 
 static void udma_reset_rings(struct udma_chan *uc)
 {
-	struct k3_nav_ring *ring1 = NULL;
-	struct k3_nav_ring *ring2 = NULL;
+	struct k3_ring *ring1 = NULL;
+	struct k3_ring *ring2 = NULL;
 
 	switch (uc->config.dir) {
 	case DMA_DEV_TO_MEM:
@@ -493,9 +493,9 @@ static void udma_reset_rings(struct udma_chan *uc)
 	}
 
 	if (ring1)
-		k3_nav_ringacc_ring_reset_dma(ring1, k3_nav_ringacc_ring_get_occ(ring1));
+		k3_ringacc_ring_reset_dma(ring1, k3_ringacc_ring_get_occ(ring1));
 	if (ring2)
-		k3_nav_ringacc_ring_reset(ring2);
+		k3_ringacc_ring_reset(ring2);
 }
 
 static void udma_reset_counters(struct udma_chan *uc)
@@ -923,8 +923,8 @@ static void udma_free_tx_resources(struct udma_chan *uc)
 	if (!uc->tchan)
 		return;
 
-	k3_nav_ringacc_ring_free(uc->tchan->t_ring);
-	k3_nav_ringacc_ring_free(uc->tchan->tc_ring);
+	k3_ringacc_ring_free(uc->tchan->t_ring);
+	k3_ringacc_ring_free(uc->tchan->tc_ring);
 	uc->tchan->t_ring = NULL;
 	uc->tchan->tc_ring = NULL;
 
@@ -933,7 +933,7 @@ static void udma_free_tx_resources(struct udma_chan *uc)
 
 static int udma_alloc_tx_resources(struct udma_chan *uc)
 {
-	struct k3_nav_ring_cfg ring_cfg;
+	struct k3_ring_cfg ring_cfg;
 	struct udma_dev *ud = uc->ud;
 	struct udma_tchan *tchan;
 	int ring_idx, ret;
@@ -948,7 +948,7 @@ static int udma_alloc_tx_resources(struct udma_chan *uc)
 	else
 		ring_idx = tchan->id;
 
-	ret = k3_nav_ringacc_request_rings_pair(ud->ringacc, ring_idx, -1,
+	ret = k3_ringacc_request_rings_pair(ud->ringacc, ring_idx, -1,
 						&uc->tchan->t_ring,
 						&uc->tchan->tc_ring);
 	if (ret) {
@@ -958,11 +958,11 @@ static int udma_alloc_tx_resources(struct udma_chan *uc)
 
 	memset(&ring_cfg, 0, sizeof(ring_cfg));
 	ring_cfg.size = 16;
-	ring_cfg.elm_size = K3_NAV_RINGACC_RING_ELSIZE_8;
-	ring_cfg.mode = K3_NAV_RINGACC_RING_MODE_RING;
+	ring_cfg.elm_size = K3_RINGACC_RING_ELSIZE_8;
+	ring_cfg.mode = K3_RINGACC_RING_MODE_RING;
 
-	ret = k3_nav_ringacc_ring_cfg(uc->tchan->t_ring, &ring_cfg);
-	ret |= k3_nav_ringacc_ring_cfg(uc->tchan->tc_ring, &ring_cfg);
+	ret = k3_ringacc_ring_cfg(uc->tchan->t_ring, &ring_cfg);
+	ret |= k3_ringacc_ring_cfg(uc->tchan->tc_ring, &ring_cfg);
 
 	if (ret)
 		goto err_ringcfg;
@@ -970,9 +970,9 @@ static int udma_alloc_tx_resources(struct udma_chan *uc)
 	return 0;
 
 err_ringcfg:
-	k3_nav_ringacc_ring_free(uc->tchan->tc_ring);
+	k3_ringacc_ring_free(uc->tchan->tc_ring);
 	uc->tchan->tc_ring = NULL;
-	k3_nav_ringacc_ring_free(uc->tchan->t_ring);
+	k3_ringacc_ring_free(uc->tchan->t_ring);
 	uc->tchan->t_ring = NULL;
 err_tx_ring:
 	udma_put_tchan(uc);
@@ -986,8 +986,8 @@ static void udma_free_rx_resources(struct udma_chan *uc)
 		return;
 
         if (uc->rflow) {
-		k3_nav_ringacc_ring_free(uc->rflow->fd_ring);
-		k3_nav_ringacc_ring_free(uc->rflow->r_ring);
+		k3_ringacc_ring_free(uc->rflow->fd_ring);
+		k3_ringacc_ring_free(uc->rflow->r_ring);
 		uc->rflow->fd_ring = NULL;
 		uc->rflow->r_ring = NULL;
 
@@ -999,7 +999,7 @@ static void udma_free_rx_resources(struct udma_chan *uc)
 
 static int udma_alloc_rx_resources(struct udma_chan *uc)
 {
-	struct k3_nav_ring_cfg ring_cfg;
+	struct k3_ring_cfg ring_cfg;
 	struct udma_dev *ud = uc->ud;
 	struct udma_rflow *rflow;
 	int fd_ring_id;
@@ -1031,7 +1031,7 @@ static int udma_alloc_rx_resources(struct udma_chan *uc)
 			uc->rchan->id;
 	}
 
-	ret = k3_nav_ringacc_request_rings_pair(ud->ringacc, fd_ring_id, -1,
+	ret = k3_ringacc_request_rings_pair(ud->ringacc, fd_ring_id, -1,
 						&rflow->fd_ring, &rflow->r_ring);
 	if (ret) {
 		ret = -EBUSY;
@@ -1040,20 +1040,20 @@ static int udma_alloc_rx_resources(struct udma_chan *uc)
 
 	memset(&ring_cfg, 0, sizeof(ring_cfg));
 	ring_cfg.size = 16;
-	ring_cfg.elm_size = K3_NAV_RINGACC_RING_ELSIZE_8;
-	ring_cfg.mode = K3_NAV_RINGACC_RING_MODE_RING;
+	ring_cfg.elm_size = K3_RINGACC_RING_ELSIZE_8;
+	ring_cfg.mode = K3_RINGACC_RING_MODE_RING;
 
-	ret = k3_nav_ringacc_ring_cfg(rflow->fd_ring, &ring_cfg);
-	ret |= k3_nav_ringacc_ring_cfg(rflow->r_ring, &ring_cfg);
+	ret = k3_ringacc_ring_cfg(rflow->fd_ring, &ring_cfg);
+	ret |= k3_ringacc_ring_cfg(rflow->r_ring, &ring_cfg);
 	if (ret)
 		goto err_ringcfg;
 
 	return 0;
 
 err_ringcfg:
-	k3_nav_ringacc_ring_free(rflow->r_ring);
+	k3_ringacc_ring_free(rflow->r_ring);
 	rflow->r_ring = NULL;
-	k3_nav_ringacc_ring_free(rflow->fd_ring);
+	k3_ringacc_ring_free(rflow->fd_ring);
 	rflow->fd_ring = NULL;
 err_rx_ring:
 	udma_put_rflow(uc);
@@ -1066,7 +1066,7 @@ static int udma_alloc_rx_resources(struct udma_chan *uc)
 static int udma_alloc_tchan_sci_req(struct udma_chan *uc)
 {
 	struct udma_dev *ud = uc->ud;
-	int tc_ring = k3_nav_ringacc_get_ring_id(uc->tchan->tc_ring);
+	int tc_ring = k3_ringacc_get_ring_id(uc->tchan->tc_ring);
 	struct ti_sci_msg_rm_udmap_tx_ch_cfg req;
 	struct udma_tisci_rm *tisci_rm = &ud->tisci_rm;
 	u32 mode;
@@ -1103,9 +1103,9 @@ static int udma_alloc_tchan_sci_req(struct udma_chan *uc)
 static int udma_alloc_rchan_sci_req(struct udma_chan *uc)
 {
 	struct udma_dev *ud = uc->ud;
-	int fd_ring = k3_nav_ringacc_get_ring_id(uc->rflow->fd_ring);
-	int rx_ring = k3_nav_ringacc_get_ring_id(uc->rflow->r_ring);
-	int tc_ring = k3_nav_ringacc_get_ring_id(uc->tchan->tc_ring);
+	int fd_ring = k3_ringacc_get_ring_id(uc->rflow->fd_ring);
+	int rx_ring = k3_ringacc_get_ring_id(uc->rflow->r_ring);
+	int tc_ring = k3_ringacc_get_ring_id(uc->tchan->tc_ring);
 	struct ti_sci_msg_rm_udmap_rx_ch_cfg req = { 0 };
 	struct ti_sci_msg_rm_udmap_flow_cfg flow_req = { 0 };
 	struct udma_tisci_rm *tisci_rm = &ud->tisci_rm;
@@ -1733,18 +1733,18 @@ static int setup_resources(struct udma_dev *ud)
 	return ch_count;
 }
 
-static int udma_push_to_ring(struct k3_nav_ring *ring, void *elem)
+static int udma_push_to_ring(struct k3_ring *ring, void *elem)
 {
 	u64 addr = 0;
 
 	memcpy(&addr, &elem, sizeof(elem));
-	return k3_nav_ringacc_ring_push(ring, &addr);
+	return k3_ringacc_ring_push(ring, &addr);
 }
 
 static int *udma_prep_dma_memcpy(struct udma_chan *uc, dma_addr_t dest,
 				 dma_addr_t src, size_t len)
 {
-	u32 tc_ring_id = k3_nav_ringacc_get_ring_id(uc->tchan->tc_ring);
+	u32 tc_ring_id = k3_ringacc_get_ring_id(uc->tchan->tc_ring);
 	struct cppi5_tr_type15_t *tr_req;
 	int num_tr;
 	size_t tr_size = sizeof(struct cppi5_tr_type15_t);
@@ -1937,8 +1937,8 @@ static void bcdma_free_bchan_resources(struct udma_chan *uc)
 	if (!uc->bchan)
 		return;
 
-	k3_nav_ringacc_ring_free(uc->bchan->tc_ring);
-	k3_nav_ringacc_ring_free(uc->bchan->t_ring);
+	k3_ringacc_ring_free(uc->bchan->tc_ring);
+	k3_ringacc_ring_free(uc->bchan->t_ring);
 	uc->bchan->tc_ring = NULL;
 	uc->bchan->t_ring = NULL;
 
@@ -1947,7 +1947,7 @@ static void bcdma_free_bchan_resources(struct udma_chan *uc)
 
 static int bcdma_alloc_bchan_resources(struct udma_chan *uc)
 {
-	struct k3_nav_ring_cfg ring_cfg;
+	struct k3_ring_cfg ring_cfg;
 	struct udma_dev *ud = uc->ud;
 	int ret;
 
@@ -1955,7 +1955,7 @@ static int bcdma_alloc_bchan_resources(struct udma_chan *uc)
 	if (ret)
 		return ret;
 
-	ret = k3_nav_ringacc_request_rings_pair(ud->ringacc, uc->bchan->id, -1,
+	ret = k3_ringacc_request_rings_pair(ud->ringacc, uc->bchan->id, -1,
 						&uc->bchan->t_ring,
 						&uc->bchan->tc_ring);
 	if (ret) {
@@ -1965,19 +1965,19 @@ static int bcdma_alloc_bchan_resources(struct udma_chan *uc)
 
 	memset(&ring_cfg, 0, sizeof(ring_cfg));
 	ring_cfg.size = 16;
-	ring_cfg.elm_size = K3_NAV_RINGACC_RING_ELSIZE_8;
-	ring_cfg.mode = K3_NAV_RINGACC_RING_MODE_RING;
+	ring_cfg.elm_size = K3_RINGACC_RING_ELSIZE_8;
+	ring_cfg.mode = K3_RINGACC_RING_MODE_RING;
 
-	ret = k3_nav_ringacc_ring_cfg(uc->bchan->t_ring, &ring_cfg);
+	ret = k3_ringacc_ring_cfg(uc->bchan->t_ring, &ring_cfg);
 	if (ret)
 		goto err_ringcfg;
 
 	return 0;
 
 err_ringcfg:
-	k3_nav_ringacc_ring_free(uc->bchan->tc_ring);
+	k3_ringacc_ring_free(uc->bchan->tc_ring);
 	uc->bchan->tc_ring = NULL;
-	k3_nav_ringacc_ring_free(uc->bchan->t_ring);
+	k3_ringacc_ring_free(uc->bchan->t_ring);
 	uc->bchan->t_ring = NULL;
 err_ring:
 	bcdma_put_bchan(uc);
@@ -2352,7 +2352,7 @@ static int udma_send(struct dma *dma, dma_addr_t src, size_t len, void *metadata
 	if (uc->config.dir != DMA_MEM_TO_DEV)
 		return -EINVAL;
 
-	tc_ring_id = k3_nav_ringacc_get_ring_id(uc->tchan->tc_ring);
+	tc_ring_id = k3_ringacc_get_ring_id(uc->tchan->tc_ring);
 
 	desc_tx = uc->desc_tx;
 
@@ -2402,7 +2402,7 @@ static int udma_receive(struct dma *dma, dma_addr_t *dst, void *metadata)
 	if (!uc->num_rx_bufs)
 		return -EINVAL;
 
-	ret = k3_nav_ringacc_ring_pop(uc->rflow->r_ring, &desc_rx);
+	ret = k3_ringacc_ring_pop(uc->rflow->r_ring, &desc_rx);
 	if (ret && ret != -ENODATA) {
 		dev_err(dma->dev, "rx dma fail ch_id:%lu %d\n", dma->id, ret);
 		return ret;
@@ -2452,6 +2452,7 @@ static int udma_of_xlate(struct dma *dma, struct of_phandle_args *args)
 		ucc->dir = DMA_DEV_TO_MEM;
 
 	ep_config = psil_get_ep_config(ucc->remote_thread_id);
+
 	if (IS_ERR(ep_config)) {
 		dev_err(ud->dev, "No configuration for psi-l thread 0x%04x\n",
 			uc->config.remote_thread_id);
@@ -2610,7 +2611,7 @@ static int k3_udma_probe(struct device *dev)
 	tisci_rm->tisci_psil_ops = &tisci_rm->tisci->ops.rm_psil_ops;
 
 	if (ud->match_data->type == DMA_TYPE_UDMA) {
-		ud->ringacc = k3_navss_ringacc_get_by_phandle(dev, "ti,ringacc");
+		ud->ringacc = of_k3_ringacc_get_by_phandle(np, "ti,ringacc");
 	} else {
 		struct k3_ringacc_init_data ring_init_data;
 
diff --git a/drivers/soc/ti/k3-navss-ringacc.c b/drivers/soc/ti/k3-navss-ringacc.c
index f19a37dde0..50d5c79f91 100644
--- a/drivers/soc/ti/k3-navss-ringacc.c
+++ b/drivers/soc/ti/k3-navss-ringacc.c
@@ -1,8 +1,8 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0
 /*
- * TI K3 AM65x NAVSS Ring accelerator Manager (RA) subsystem driver
+ * TI K3 NAVSS Ring Accelerator subsystem driver
  *
- * Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com
+ * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com
  */
 
 #include <linux/kernel.h>
@@ -11,80 +11,117 @@
 #include <soc/ti/k3-navss-ringacc.h>
 #include <soc/ti/ti_sci_protocol.h>
 #include <linux/device.h>
+#include <linux/mutex.h>
+#include <linux/bitmap.h>
 
-static LIST_HEAD(k3_nav_ringacc_list);
+static LIST_HEAD(k3_ringacc_list);
 
-static	void ringacc_writel(u32 v, void __iomem *reg)
-{
-	writel(v, reg);
-}
-
-static	u32 ringacc_readl(void __iomem *reg)
-{
-	u32 v;
-
-	v = readl(reg);
-
-	return v;
-}
-
-#define KNAV_RINGACC_CFG_RING_SIZE_ELCNT_MASK		GENMASK(19, 0)
-#define K3_DMARING_RING_CFG_RING_SIZE_ELCNT_MASK		GENMASK(15, 0)
+#define K3_RINGACC_CFG_RING_SIZE_ELCNT_MASK		GENMASK(19, 0)
+#define K3_DMARING_CFG_RING_SIZE_ELCNT_MASK		GENMASK(15, 0)
 
 /**
- * struct k3_nav_ring_rt_regs -  The RA Control/Status Registers region
+ * struct k3_ring_rt_regs - The RA realtime Control/Status Registers region
+ *
+ * @resv_16: Reserved
+ * @db: Ring Doorbell Register
+ * @resv_4: Reserved
+ * @occ: Ring Occupancy Register
+ * @indx: Ring Current Index Register
+ * @hwocc: Ring Hardware Occupancy Register
+ * @hwindx: Ring Hardware Current Index Register
  */
-struct k3_nav_ring_rt_regs {
+struct k3_ring_rt_regs {
 	u32	resv_16[4];
-	u32	db;		/* RT Ring N Doorbell Register */
+	u32	db;
 	u32	resv_4[1];
-	u32	occ;		/* RT Ring N Occupancy Register */
-	u32	indx;		/* RT Ring N Current Index Register */
-	u32	hwocc;		/* RT Ring N Hardware Occupancy Register */
-	u32	hwindx;		/* RT Ring N Current Index Register */
+	u32	occ;
+	u32	indx;
+	u32	hwocc;
+	u32	hwindx;
 };
 
-#define KNAV_RINGACC_RT_REGS_STEP	0x1000
-#define K3_DMARING_RING_RT_REGS_STEP			0x2000
-#define K3_DMARING_RING_RT_REGS_REVERSE_OFS		0x1000
-#define KNAV_RINGACC_RT_OCC_MASK		GENMASK(20, 0)
-#define K3_DMARING_RING_RT_OCC_TDOWN_COMPLETE		BIT(31)
-#define K3_DMARING_RING_RT_DB_ENTRY_MASK		GENMASK(7, 0)
-#define K3_DMARING_RING_RT_DB_TDOWN_ACK		BIT(31)
+#define K3_RINGACC_RT_REGS_STEP			0x1000
+#define K3_DMARING_RT_REGS_STEP			0x2000
+#define K3_DMARING_RT_REGS_REVERSE_OFS		0x1000
+#define K3_RINGACC_RT_OCC_MASK			GENMASK(20, 0)
+#define K3_DMARING_RT_OCC_TDOWN_COMPLETE	BIT(31)
+#define K3_DMARING_RT_DB_ENTRY_MASK		GENMASK(7, 0)
+#define K3_DMARING_RT_DB_TDOWN_ACK		BIT(31)
+
+/**
+ * struct k3_ring_fifo_regs - The Ring Accelerator Queues Registers region
+ *
+ * @head_data: Ring Head Entry Data Registers
+ * @tail_data: Ring Tail Entry Data Registers
+ * @peek_head_data: Ring Peek Head Entry Data Regs
+ * @peek_tail_data: Ring Peek Tail Entry Data Regs
+ */
+struct k3_ring_fifo_regs {
+	u32	head_data[128];
+	u32	tail_data[128];
+	u32	peek_head_data[128];
+	u32	peek_tail_data[128];
+};
 
 /**
- * struct k3_nav_ring_fifo_regs -  The Ring Accelerator Queues Registers region
+ * struct k3_ringacc_proxy_gcfg_regs - RA Proxy Global Config MMIO Region
+ *
+ * @revision: Revision Register
+ * @config: Config Register
  */
-struct k3_nav_ring_fifo_regs {
-	u32	head_data[128];		/* Ring Head Entry Data Registers */
-	u32	tail_data[128];		/* Ring Tail Entry Data Registers */
-	u32	peek_head_data[128];	/* Ring Peek Head Entry Data Regs */
-	u32	peek_tail_data[128];	/* Ring Peek Tail Entry Data Regs */
+struct k3_ringacc_proxy_gcfg_regs {
+	u32	revision;
+	u32	config;
 };
 
-#define KNAV_RINGACC_FIFO_WINDOW_SIZE_BYTES  (512U)
-#define KNAV_RINGACC_FIFO_REGS_STEP	0x1000
-#define KNAV_RINGACC_MAX_DB_RING_CNT    (127U)
+#define K3_RINGACC_PROXY_CFG_THREADS_MASK		GENMASK(15, 0)
 
 /**
- * struct k3_nav_ring_ops -  Ring operations
+ * struct k3_ringacc_proxy_target_regs - Proxy Datapath MMIO Region
+ *
+ * @control: Proxy Control Register
+ * @status: Proxy Status Register
+ * @resv_512: Reserved
+ * @data: Proxy Data Register
  */
-struct k3_nav_ring_ops {
-	int (*push_tail)(struct k3_nav_ring *ring, void *elm);
-	int (*push_head)(struct k3_nav_ring *ring, void *elm);
-	int (*pop_tail)(struct k3_nav_ring *ring, void *elm);
-	int (*pop_head)(struct k3_nav_ring *ring, void *elm);
+struct k3_ringacc_proxy_target_regs {
+	u32	control;
+	u32	status;
+	u8	resv_512[504];
+	u32	data[128];
+};
+
+#define K3_RINGACC_PROXY_TARGET_STEP	0x1000
+#define K3_RINGACC_PROXY_NOT_USED	(-1)
+
+enum k3_ringacc_proxy_access_mode {
+	PROXY_ACCESS_MODE_HEAD = 0,
+	PROXY_ACCESS_MODE_TAIL = 1,
+	PROXY_ACCESS_MODE_PEEK_HEAD = 2,
+	PROXY_ACCESS_MODE_PEEK_TAIL = 3,
+};
+
+#define K3_RINGACC_FIFO_WINDOW_SIZE_BYTES  (512U)
+#define K3_RINGACC_FIFO_REGS_STEP	0x1000
+#define K3_RINGACC_MAX_DB_RING_CNT    (127U)
+
+struct k3_ring_ops {
+	int (*push_tail)(struct k3_ring *ring, void *elm);
+	int (*push_head)(struct k3_ring *ring, void *elm);
+	int (*pop_tail)(struct k3_ring *ring, void *elm);
+	int (*pop_head)(struct k3_ring *ring, void *elm);
 };
 
 /**
- * struct k3_nav_ring_state - Internal state tracking structure
+ * struct k3_ring_state - Internal state tracking structure
  *
  * @free: Number of free entries
  * @occ: Occupancy
  * @windex: Write index
  * @rindex: Read index
+ * @tdown_complete: Tear down complete state
  */
-struct k3_nav_ring_state {
+struct k3_ring_state {
 	u32 free;
 	u32 occ;
 	u32 windex;
@@ -93,158 +130,207 @@ struct k3_nav_ring_state {
 };
 
 /**
- * struct k3_nav_ring - RA Ring descriptor
+ * struct k3_ring - RA Ring descriptor
  *
- * @cfg - Ring configuration registers
- * @rt - Ring control/status registers
- * @fifos - Ring queues registers
- * @ring_mem_dma - Ring buffer dma address
- * @ring_mem_virt - Ring buffer virt address
- * @ops - Ring operations
- * @size - Ring size in elements
- * @elm_size - Size of the ring element
- * @mode - Ring mode
- * @flags - flags
- * @ring_id - Ring Id
- * @parent - Pointer on struct @k3_nav_ringacc
- * @use_count - Use count for shared rings
+ * @rt: Ring control/status registers
+ * @fifos: Ring queues registers
+ * @proxy: Ring Proxy Datapath registers
+ * @ring_mem_dma: Ring buffer dma address
+ * @ring_mem_virt: Ring buffer virt address
+ * @ops: Ring operations
+ * @size: Ring size in elements
+ * @elm_size: Size of the ring element
+ * @mode: Ring mode
+ * @flags: flags
+ * @state: Ring state
+ * @ring_id: Ring Id
+ * @parent: Pointer on struct @k3_ringacc
+ * @use_count: Use count for shared rings
+ * @proxy_id: RA Ring Proxy Id (only if @K3_RINGACC_RING_USE_PROXY)
+ * @dma_dev: device to be used for DMA API (allocation, mapping)
+ * @asel: Address Space Select value for physical addresses
  */
-struct k3_nav_ring {
-	struct k3_nav_ring_cfg_regs __iomem *cfg;
-	struct k3_nav_ring_rt_regs __iomem *rt;
-	struct k3_nav_ring_fifo_regs __iomem *fifos;
+struct k3_ring {
+	struct k3_ring_rt_regs __iomem *rt;
+	struct k3_ring_fifo_regs __iomem *fifos;
+	struct k3_ringacc_proxy_target_regs  __iomem *proxy;
 	dma_addr_t	ring_mem_dma;
 	void		*ring_mem_virt;
-	struct k3_nav_ring_ops *ops;
+	const struct k3_ring_ops *ops;
 	u32		size;
-	enum k3_nav_ring_size elm_size;
-	enum k3_nav_ring_mode mode;
+	enum k3_ring_size elm_size;
+	enum k3_ring_mode mode;
 	u32		flags;
-#define KNAV_RING_FLAG_BUSY	BIT(1)
-#define K3_NAV_RING_FLAG_SHARED	BIT(2)
-#define K3_NAV_RING_FLAG_REVERSE BIT(3)
-	struct k3_nav_ring_state state;
+#define K3_RING_FLAG_BUSY	BIT(1)
+#define K3_RING_FLAG_SHARED	BIT(2)
+#define K3_RING_FLAG_REVERSE	BIT(3)
+	struct k3_ring_state state;
 	u32		ring_id;
-	struct k3_nav_ringacc	*parent;
+	struct k3_ringacc	*parent;
 	u32		use_count;
+	int		proxy_id;
+	struct device	*dma_dev;
+	u32		asel;
+#define K3_ADDRESS_ASEL_SHIFT	48
 };
 
-struct k3_nav_ringacc_ops {
-	int (*init)(struct device *dev, struct k3_nav_ringacc *ringacc);
+struct k3_ringacc_ops {
+	int (*init)(struct device *dev, struct k3_ringacc *ringacc);
 };
 
 /**
- * struct k3_nav_ringacc - Rings accelerator descriptor
+ * struct k3_ringacc - Rings accelerator descriptor
  *
- * @dev - pointer on RA device
- * @num_rings - number of ring in RA
- * @rm_gp_range - general purpose rings range from tisci
- * @dma_ring_reset_quirk - DMA reset w/a enable
- * @num_proxies - number of RA proxies
- * @rings - array of rings descriptors (struct @k3_nav_ring)
- * @list - list of RAs in the system
- * @tisci - pointer ti-sci handle
- * @tisci_ring_ops - ti-sci rings ops
- * @tisci_dev_id - ti-sci device id
+ * @dev: pointer on RA device
+ * @proxy_gcfg: RA proxy global config registers
+ * @proxy_target_base: RA proxy datapath region
+ * @num_rings: number of ring in RA
+ * @rings_inuse: bitfield for ring usage tracking
+ * @rm_gp_range: general purpose rings range from tisci
+ * @dma_ring_reset_quirk: DMA reset workaround enable
+ * @num_proxies: number of RA proxies
+ * @proxy_inuse: bitfield for proxy usage tracking
+ * @rings: array of rings descriptors (struct @k3_ring)
+ * @list: list of RAs in the system
+ * @req_lock: protect rings allocation
+ * @tisci: pointer ti-sci handle
+ * @tisci_ring_ops: ti-sci rings ops
+ * @tisci_dev_id: ti-sci device id
  * @ops: SoC specific ringacc operation
- * @dual_ring: indicate k3_dmaring dual ring support
+ * @dma_rings: indicate DMA ring (dual ring within BCDMA/PKTDMA)
  */
-struct k3_nav_ringacc {
+struct k3_ringacc {
 	struct device *dev;
+	struct k3_ringacc_proxy_gcfg_regs __iomem *proxy_gcfg;
+	void __iomem *proxy_target_base;
 	u32 num_rings; /* number of rings in Ringacc module */
 	unsigned long *rings_inuse;
 	struct ti_sci_resource *rm_gp_range;
+
 	bool dma_ring_reset_quirk;
 	u32 num_proxies;
+	unsigned long *proxy_inuse;
 
-	struct k3_nav_ring *rings;
+	struct k3_ring *rings;
 	struct list_head list;
+	struct mutex req_lock; /* protect rings allocation */
 
 	const struct ti_sci_handle *tisci;
 	const struct ti_sci_rm_ringacc_ops *tisci_ring_ops;
-	u32  tisci_dev_id;
+	u32 tisci_dev_id;
 
-	const struct k3_nav_ringacc_ops *ops;
-	bool dual_ring;
+	const struct k3_ringacc_ops *ops;
+	bool dma_rings;
 };
 
-struct k3_nav_ring_cfg_regs {
-	u32	resv_64[16];
-	u32	ba_lo;		/* Ring Base Address Lo Register */
-	u32	ba_hi;		/* Ring Base Address Hi Register */
-	u32	size;		/* Ring Size Register */
-	u32	event;		/* Ring Event Register */
-	u32	orderid;	/* Ring OrderID Register */
-};
-
-#define KNAV_RINGACC_CFG_REGS_STEP	0x100
-
-#define KNAV_RINGACC_CFG_RING_BA_HI_ADDR_HI_MASK	GENMASK(15, 0)
-
-#define KNAV_RINGACC_CFG_RING_SIZE_QMODE_MASK		GENMASK(31, 30)
-#define KNAV_RINGACC_CFG_RING_SIZE_QMODE_SHIFT		(30)
-
-#define KNAV_RINGACC_CFG_RING_SIZE_ELSIZE_MASK		GENMASK(26, 24)
-#define KNAV_RINGACC_CFG_RING_SIZE_ELSIZE_SHIFT		(24)
-
-#define KNAV_RINGACC_CFG_RING_SIZE_MASK			GENMASK(19, 0)
-
-static int k3_nav_ringacc_ring_read_occ(struct k3_nav_ring *ring)
+static int k3_ringacc_ring_read_occ(struct k3_ring *ring)
 {
-	return readl(&ring->rt->occ) & KNAV_RINGACC_RT_OCC_MASK;
+	return readl(&ring->rt->occ) & K3_RINGACC_RT_OCC_MASK;
 }
 
-static void k3_nav_ringacc_ring_update_occ(struct k3_nav_ring *ring)
+static void k3_ringacc_ring_update_occ(struct k3_ring *ring)
 {
 	u32 val;
 
 	val = readl(&ring->rt->occ);
 
-	ring->state.occ = val & KNAV_RINGACC_RT_OCC_MASK;
-	ring->state.tdown_complete = !!(val & K3_DMARING_RING_RT_OCC_TDOWN_COMPLETE);
+	ring->state.occ = val & K3_RINGACC_RT_OCC_MASK;
+	ring->state.tdown_complete = !!(val & K3_DMARING_RT_OCC_TDOWN_COMPLETE);
+}
+
+static long k3_ringacc_ring_get_fifo_pos(struct k3_ring *ring)
+{
+	return K3_RINGACC_FIFO_WINDOW_SIZE_BYTES -
+	       (4 << ring->elm_size);
 }
 
-static void *k3_nav_ringacc_get_elm_addr(struct k3_nav_ring *ring, u32 idx)
+static void *k3_ringacc_get_elm_addr(struct k3_ring *ring, u32 idx)
 {
-	return (idx * (4 << ring->elm_size) + ring->ring_mem_virt);
+	return (ring->ring_mem_virt + idx * (4 << ring->elm_size));
 }
 
-static int k3_nav_ringacc_ring_push_mem(struct k3_nav_ring *ring, void *elem);
-static int k3_nav_ringacc_ring_pop_mem(struct k3_nav_ring *ring, void *elem);
-static int k3_dmaring_ring_fwd_pop_mem(struct k3_nav_ring *ring, void *elem);
-static int k3_dmaring_ring_reverse_pop_mem(struct k3_nav_ring *ring, void *elem);
+static int k3_ringacc_ring_push_mem(struct k3_ring *ring, void *elem);
+static int k3_ringacc_ring_pop_mem(struct k3_ring *ring, void *elem);
+static int k3_dmaring_fwd_pop(struct k3_ring *ring, void *elem);
+static int k3_dmaring_reverse_pop(struct k3_ring *ring, void *elem);
+
+static const struct k3_ring_ops k3_ring_mode_ring_ops = {
+		.push_tail = k3_ringacc_ring_push_mem,
+		.pop_head = k3_ringacc_ring_pop_mem,
+};
+
+static const struct k3_ring_ops k3_dmaring_fwd_ops = {
+		.push_tail = k3_ringacc_ring_push_mem,
+		.pop_head = k3_dmaring_fwd_pop,
+};
 
-static struct k3_nav_ring_ops k3_nav_mode_ring_ops = {
-		.push_tail = k3_nav_ringacc_ring_push_mem,
-		.pop_head = k3_nav_ringacc_ring_pop_mem,
+static const struct k3_ring_ops k3_dmaring_reverse_ops = {
+		/* Reverse side of the DMA ring can only be popped by SW */
+		.pop_head = k3_dmaring_reverse_pop,
 };
 
-static struct k3_nav_ring_ops k3_dmaring_fwd_ring_ops = {
-		.push_tail = k3_nav_ringacc_ring_push_mem,
-		.pop_head = k3_dmaring_ring_fwd_pop_mem,
+static int k3_ringacc_ring_push_io(struct k3_ring *ring, void *elem);
+static int k3_ringacc_ring_pop_io(struct k3_ring *ring, void *elem);
+static int k3_ringacc_ring_push_head_io(struct k3_ring *ring, void *elem);
+static int k3_ringacc_ring_pop_tail_io(struct k3_ring *ring, void *elem);
+
+static const struct k3_ring_ops k3_ring_mode_msg_ops = {
+		.push_tail = k3_ringacc_ring_push_io,
+		.push_head = k3_ringacc_ring_push_head_io,
+		.pop_tail = k3_ringacc_ring_pop_tail_io,
+		.pop_head = k3_ringacc_ring_pop_io,
 };
 
-static struct k3_nav_ring_ops k3_dmaring_reverse_ring_ops = {
-		.pop_head = k3_dmaring_ring_reverse_pop_mem,
+static int k3_ringacc_ring_push_head_proxy(struct k3_ring *ring, void *elem);
+static int k3_ringacc_ring_push_tail_proxy(struct k3_ring *ring, void *elem);
+static int k3_ringacc_ring_pop_head_proxy(struct k3_ring *ring, void *elem);
+static int k3_ringacc_ring_pop_tail_proxy(struct k3_ring *ring, void *elem);
+
+static const struct k3_ring_ops k3_ring_mode_proxy_ops = {
+		.push_tail = k3_ringacc_ring_push_tail_proxy,
+		.push_head = k3_ringacc_ring_push_head_proxy,
+		.pop_tail = k3_ringacc_ring_pop_tail_proxy,
+		.pop_head = k3_ringacc_ring_pop_head_proxy,
 };
 
-struct device *k3_nav_ringacc_get_dev(struct k3_nav_ringacc *ringacc)
+static void k3_ringacc_ring_dump(struct k3_ring *ring)
 {
-	return ringacc->dev;
+	struct device *dev = ring->parent->dev;
+
+	dev_dbg(dev, "dump ring: %d\n", ring->ring_id);
+	dev_dbg(dev, "dump mem virt %p, dma %pad\n", ring->ring_mem_virt,
+		&ring->ring_mem_dma);
+	dev_dbg(dev, "dump elmsize %d, size %d, mode %d, proxy_id %d\n",
+		ring->elm_size, ring->size, ring->mode, ring->proxy_id);
+	dev_dbg(dev, "dump flags %08X\n", ring->flags);
+
+	dev_dbg(dev, "dump ring_rt_regs: db%08x\n", readl(&ring->rt->db));
+	dev_dbg(dev, "dump occ%08x\n", readl(&ring->rt->occ));
+	dev_dbg(dev, "dump indx%08x\n", readl(&ring->rt->indx));
+	dev_dbg(dev, "dump hwocc%08x\n", readl(&ring->rt->hwocc));
+	dev_dbg(dev, "dump hwindx%08x\n", readl(&ring->rt->hwindx));
+
+	if (ring->ring_mem_virt)
+		print_hex_dump_debug("dump ring_mem_virt ", DUMP_PREFIX_NONE,
+				     16, 1, ring->ring_mem_virt, 16 * 8, false);
 }
 
-struct k3_nav_ring *k3_nav_ringacc_request_ring(struct k3_nav_ringacc *ringacc,
-						int id)
+struct k3_ring *k3_ringacc_request_ring(struct k3_ringacc *ringacc,
+					int id, u32 flags)
 {
-	if (id == K3_NAV_RINGACC_RING_ID_ANY) {
+	int proxy_id = K3_RINGACC_PROXY_NOT_USED;
+
+	mutex_lock(&ringacc->req_lock);
+
+	if (id == K3_RINGACC_RING_ID_ANY) {
 		/* Request for any general purpose ring */
 		struct ti_sci_resource_desc *gp_rings =
-					&ringacc->rm_gp_range->desc[0];
+						&ringacc->rm_gp_range->desc[0];
 		unsigned long size;
 
 		size = gp_rings->start + gp_rings->num;
-		id = find_next_zero_bit(ringacc->rings_inuse,
-					size, gp_rings->start);
+		id = find_next_zero_bit(ringacc->rings_inuse, size,
+					gp_rings->start);
 		if (id == size)
 			goto error;
 	} else if (id < 0) {
@@ -252,33 +338,58 @@ struct k3_nav_ring *k3_nav_ringacc_request_ring(struct k3_nav_ringacc *ringacc,
 	}
 
 	if (test_bit(id, ringacc->rings_inuse) &&
-	    !(ringacc->rings[id].flags & K3_NAV_RING_FLAG_SHARED))
+	    !(ringacc->rings[id].flags & K3_RING_FLAG_SHARED))
 		goto error;
-	else if (ringacc->rings[id].flags & K3_NAV_RING_FLAG_SHARED)
+	else if (ringacc->rings[id].flags & K3_RING_FLAG_SHARED)
 		goto out;
 
-	dev_dbg(ringacc->dev, "Giving ring#%d\n", id);
+	if (flags & K3_RINGACC_RING_USE_PROXY) {
+		proxy_id = find_first_zero_bit(ringacc->proxy_inuse,
+					      ringacc->num_proxies);
+		if (proxy_id == ringacc->num_proxies)
+			goto error;
+	}
+
+	if (proxy_id != K3_RINGACC_PROXY_NOT_USED) {
+		set_bit(proxy_id, ringacc->proxy_inuse);
+		ringacc->rings[id].proxy_id = proxy_id;
+		dev_dbg(ringacc->dev, "Giving ring#%d proxy#%d\n", id,
+			proxy_id);
+	} else {
+		dev_dbg(ringacc->dev, "Giving ring#%d\n", id);
+	}
 
 	set_bit(id, ringacc->rings_inuse);
 out:
 	ringacc->rings[id].use_count++;
+	mutex_unlock(&ringacc->req_lock);
 	return &ringacc->rings[id];
 
 error:
+	mutex_unlock(&ringacc->req_lock);
 	return NULL;
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_request_ring);
 
-static int k3_dmaring_ring_request_rings_pair(struct k3_nav_ringacc *ringacc,
-					      int fwd_id, int compl_id,
-					      struct k3_nav_ring **fwd_ring,
-					      struct k3_nav_ring **compl_ring)
+static int k3_dmaring_request_dual_ring(struct k3_ringacc *ringacc, int fwd_id,
+					struct k3_ring **fwd_ring,
+					struct k3_ring **compl_ring)
 {
-	/* k3_dmaring: fwd_id == compl_id, so we ignore compl_id */
+	int ret = 0;
+
+	/*
+	 * DMA rings must be requested by ID, completion ring is the reverse
+	 * side of the forward ring
+	 */
 	if (fwd_id < 0)
 		return -EINVAL;
 
-	if (test_bit(fwd_id, ringacc->rings_inuse))
-		return -EBUSY;
+	mutex_lock(&ringacc->req_lock);
+
+	if (test_bit(fwd_id, ringacc->rings_inuse)) {
+		ret = -EBUSY;
+		goto error;
+	}
 
 	*fwd_ring = &ringacc->rings[fwd_id];
 	*compl_ring = &ringacc->rings[fwd_id + ringacc->num_rings];
@@ -286,39 +397,45 @@ static int k3_dmaring_ring_request_rings_pair(struct k3_nav_ringacc *ringacc,
 	ringacc->rings[fwd_id].use_count++;
 	dev_dbg(ringacc->dev, "Giving ring#%d\n", fwd_id);
 
+	mutex_unlock(&ringacc->req_lock);
 	return 0;
+
+error:
+	mutex_unlock(&ringacc->req_lock);
+	return ret;
 }
 
-int k3_nav_ringacc_request_rings_pair(struct k3_nav_ringacc *ringacc,
-				      int fwd_id, int compl_id,
-				      struct k3_nav_ring **fwd_ring,
-				      struct k3_nav_ring **compl_ring)
+int k3_ringacc_request_rings_pair(struct k3_ringacc *ringacc,
+				  int fwd_id, int compl_id,
+				  struct k3_ring **fwd_ring,
+				  struct k3_ring **compl_ring)
 {
 	int ret = 0;
 
 	if (!fwd_ring || !compl_ring)
 		return -EINVAL;
 
-	if (ringacc->dual_ring)
-		return k3_dmaring_ring_request_rings_pair(ringacc, fwd_id, compl_id,
+	if (ringacc->dma_rings)
+		return k3_dmaring_request_dual_ring(ringacc, fwd_id,
 						    fwd_ring, compl_ring);
 
-	*fwd_ring = k3_nav_ringacc_request_ring(ringacc, fwd_id);
+	*fwd_ring = k3_ringacc_request_ring(ringacc, fwd_id, 0);
 	if (!(*fwd_ring))
 		return -ENODEV;
 
-	*compl_ring = k3_nav_ringacc_request_ring(ringacc, compl_id);
+	*compl_ring = k3_ringacc_request_ring(ringacc, compl_id, 0);
 	if (!(*compl_ring)) {
-		k3_nav_ringacc_ring_free(*fwd_ring);
+		k3_ringacc_ring_free(*fwd_ring);
 		ret = -ENODEV;
 	}
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_request_rings_pair);
 
-static void k3_ringacc_ring_reset_sci(struct k3_nav_ring *ring)
+static void k3_ringacc_ring_reset_sci(struct k3_ring *ring)
 {
-	struct k3_nav_ringacc *ringacc = ring->parent;
+	struct k3_ringacc *ringacc = ring->parent;
 	int ret;
 
 	ret = ringacc->tisci_ring_ops->config(
@@ -337,20 +454,21 @@ static void k3_ringacc_ring_reset_sci(struct k3_nav_ring *ring)
 			ret, ring->ring_id);
 }
 
-void k3_nav_ringacc_ring_reset(struct k3_nav_ring *ring)
+void k3_ringacc_ring_reset(struct k3_ring *ring)
 {
-	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+	if (!ring || !(ring->flags & K3_RING_FLAG_BUSY))
 		return;
 
 	memset(&ring->state, 0, sizeof(ring->state));
 
 	k3_ringacc_ring_reset_sci(ring);
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_ring_reset);
 
-static void k3_ringacc_ring_reconfig_qmode_sci(struct k3_nav_ring *ring,
-					       enum k3_nav_ring_mode mode)
+static void k3_ringacc_ring_reconfig_qmode_sci(struct k3_ring *ring,
+					       enum k3_ring_mode mode)
 {
-	struct k3_nav_ringacc *ringacc = ring->parent;
+	struct k3_ringacc *ringacc = ring->parent;
 	int ret;
 
 	ret = ringacc->tisci_ring_ops->config(
@@ -369,36 +487,34 @@ static void k3_ringacc_ring_reconfig_qmode_sci(struct k3_nav_ring *ring,
 			ret, ring->ring_id);
 }
 
-void k3_nav_ringacc_ring_reset_dma(struct k3_nav_ring *ring, u32 occ)
+void k3_ringacc_ring_reset_dma(struct k3_ring *ring, u32 occ)
 {
-	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+	if (!ring || !(ring->flags & K3_RING_FLAG_BUSY))
 		return;
 
-	if (!ring->parent->dma_ring_reset_quirk) {
-		k3_nav_ringacc_ring_reset(ring);
-		return;
-	}
+	if (!ring->parent->dma_ring_reset_quirk)
+		goto reset;
 
 	if (!occ)
-		occ = ringacc_readl(&ring->rt->occ);
+		occ = k3_ringacc_ring_read_occ(ring);
 
 	if (occ) {
 		u32 db_ring_cnt, db_ring_cnt_cur;
 
-		pr_debug("%s %u occ: %u\n", __func__,
-			 ring->ring_id, occ);
-		/* 2. Reset the ring */
+		dev_dbg(ring->parent->dev, "%s %u occ: %u\n", __func__,
+			ring->ring_id, occ);
+		/* TI-SCI ring reset */
 		k3_ringacc_ring_reset_sci(ring);
 
 		/*
-		 * 3. Setup the ring in ring/doorbell mode
-		 * (if not already in this mode)
+		 * Setup the ring in ring/doorbell mode (if not already in this
+		 * mode)
 		 */
-		if (ring->mode != K3_NAV_RINGACC_RING_MODE_RING)
+		if (ring->mode != K3_RINGACC_RING_MODE_RING)
 			k3_ringacc_ring_reconfig_qmode_sci(
-					ring, K3_NAV_RINGACC_RING_MODE_RING);
+					ring, K3_RINGACC_RING_MODE_RING);
 		/*
-		 * 4. Ring the doorbell 2**22 - ringOcc times.
+		 * Ring the doorbell 2**22 – ringOcc times.
 		 * This will wrap the internal UDMAP ring state occupancy
 		 * counter (which is 21-bits wide) to 0.
 		 */
@@ -410,8 +526,8 @@ void k3_nav_ringacc_ring_reset_dma(struct k3_nav_ring *ring, u32 occ)
 			 * iteration if possible to minimize the total
 			 * of writes
 			 */
-			if (db_ring_cnt > KNAV_RINGACC_MAX_DB_RING_CNT)
-				db_ring_cnt_cur = KNAV_RINGACC_MAX_DB_RING_CNT;
+			if (db_ring_cnt > K3_RINGACC_MAX_DB_RING_CNT)
+				db_ring_cnt_cur = K3_RINGACC_MAX_DB_RING_CNT;
 			else
 				db_ring_cnt_cur = db_ring_cnt;
 
@@ -419,18 +535,20 @@ void k3_nav_ringacc_ring_reset_dma(struct k3_nav_ring *ring, u32 occ)
 			db_ring_cnt -= db_ring_cnt_cur;
 		}
 
-		/* 5. Restore the original ring mode (if not ring mode) */
-		if (ring->mode != K3_NAV_RINGACC_RING_MODE_RING)
+		/* Restore the original ring mode (if not ring mode) */
+		if (ring->mode != K3_RINGACC_RING_MODE_RING)
 			k3_ringacc_ring_reconfig_qmode_sci(ring, ring->mode);
 	}
 
-	/* 2. Reset the ring */
-	k3_nav_ringacc_ring_reset(ring);
+reset:
+	/* Reset the ring */
+	k3_ringacc_ring_reset(ring);
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_ring_reset_dma);
 
-static void k3_ringacc_ring_free_sci(struct k3_nav_ring *ring)
+static void k3_ringacc_ring_free_sci(struct k3_ring *ring)
 {
-	struct k3_nav_ringacc *ringacc = ring->parent;
+	struct k3_ringacc *ringacc = ring->parent;
 	int ret;
 
 	ret = ringacc->tisci_ring_ops->config(
@@ -449,9 +567,9 @@ static void k3_ringacc_ring_free_sci(struct k3_nav_ring *ring)
 			ret, ring->ring_id);
 }
 
-int k3_nav_ringacc_ring_free(struct k3_nav_ring *ring)
+int k3_ringacc_ring_free(struct k3_ring *ring)
 {
-	struct k3_nav_ringacc *ringacc;
+	struct k3_ringacc *ringacc;
 
 	if (!ring)
 		return -EINVAL;
@@ -459,49 +577,71 @@ int k3_nav_ringacc_ring_free(struct k3_nav_ring *ring)
 	ringacc = ring->parent;
 
 	/*
-	 * k3_dmaring: rings shared memory and configuration, only forward ring is
-	 * configured and reverse ring considered as slave.
+	 * DMA rings: rings shared memory and configuration, only forward ring
+	 * is configured and reverse ring considered as slave.
 	 */
-	if (ringacc->dual_ring && (ring->flags & K3_NAV_RING_FLAG_REVERSE))
+	if (ringacc->dma_rings && (ring->flags & K3_RING_FLAG_REVERSE))
 		return 0;
 
-	pr_debug("%s flags: 0x%08x\n", __func__, ring->flags);
+	dev_dbg(ring->parent->dev, "flags: 0x%08x\n", ring->flags);
 
 	if (!test_bit(ring->ring_id, ringacc->rings_inuse))
 		return -EINVAL;
 
+	mutex_lock(&ringacc->req_lock);
+
 	if (--ring->use_count)
 		goto out;
 
-	if (!(ring->flags & KNAV_RING_FLAG_BUSY))
+	if (!(ring->flags & K3_RING_FLAG_BUSY))
 		goto no_init;
 
 	k3_ringacc_ring_free_sci(ring);
 
-	dma_free_coherent(ringacc->dev,
+	dma_free_coherent(ring->dma_dev,
 			  ring->ring_mem_virt, ring->ring_mem_dma,
 			  ring->size * (4 << ring->elm_size));
-	ring->flags &= ~KNAV_RING_FLAG_BUSY;
+	ring->flags = 0;
 	ring->ops = NULL;
+	ring->dma_dev = NULL;
+	ring->asel = 0;
+
+	if (ring->proxy_id != K3_RINGACC_PROXY_NOT_USED) {
+		clear_bit(ring->proxy_id, ringacc->proxy_inuse);
+		ring->proxy = NULL;
+		ring->proxy_id = K3_RINGACC_PROXY_NOT_USED;
+	}
 
 no_init:
 	clear_bit(ring->ring_id, ringacc->rings_inuse);
 
 out:
+	mutex_unlock(&ringacc->req_lock);
 	return 0;
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_ring_free);
 
-u32 k3_nav_ringacc_get_ring_id(struct k3_nav_ring *ring)
+u32 k3_ringacc_get_ring_id(struct k3_ring *ring)
 {
 	if (!ring)
 		return -EINVAL;
 
 	return ring->ring_id;
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_get_ring_id);
 
-static int k3_nav_ringacc_ring_cfg_sci(struct k3_nav_ring *ring)
+u32 k3_ringacc_get_tisci_dev_id(struct k3_ring *ring)
 {
-	struct k3_nav_ringacc *ringacc = ring->parent;
+	if (!ring)
+		return -EINVAL;
+
+	return ring->parent->tisci_dev_id;
+}
+EXPORT_SYMBOL_GPL(k3_ringacc_get_tisci_dev_id);
+
+static int k3_ringacc_ring_cfg_sci(struct k3_ring *ring)
+{
+	struct k3_ringacc *ringacc = ring->parent;
 	u32 ring_idx;
 	int ret;
 
@@ -529,24 +669,24 @@ static int k3_nav_ringacc_ring_cfg_sci(struct k3_nav_ring *ring)
 	return 0;
 }
 
-static int k3_dmaring_ring_cfg(struct k3_nav_ring *ring, struct k3_nav_ring_cfg *cfg)
+static int k3_dmaring_cfg(struct k3_ring *ring, struct k3_ring_cfg *cfg)
 {
-	struct k3_nav_ringacc *ringacc;
-	struct k3_nav_ring *reverse_ring;
+	struct k3_ringacc *ringacc;
+	struct k3_ring *reverse_ring;
 	int ret = 0;
 
-	if (cfg->elm_size != K3_NAV_RINGACC_RING_ELSIZE_8 ||
-	    cfg->mode != K3_NAV_RINGACC_RING_MODE_RING ||
-	    cfg->size & ~K3_DMARING_RING_CFG_RING_SIZE_ELCNT_MASK)
+	if (cfg->elm_size != K3_RINGACC_RING_ELSIZE_8 ||
+	    cfg->mode != K3_RINGACC_RING_MODE_RING ||
+	    cfg->size & ~K3_DMARING_CFG_RING_SIZE_ELCNT_MASK)
 		return -EINVAL;
 
 	ringacc = ring->parent;
 
 	/*
-	 * k3_dmaring: rings shared memory and configuration, only forward ring is
-	 * configured and reverse ring considered as slave.
+	 * DMA rings: rings shared memory and configuration, only forward ring
+	 * is configured and reverse ring considered as slave.
 	 */
-	if (ringacc->dual_ring && (ring->flags & K3_NAV_RING_FLAG_REVERSE))
+	if (ringacc->dma_rings && (ring->flags & K3_RING_FLAG_REVERSE))
 		return 0;
 
 	if (!test_bit(ring->ring_id, ringacc->rings_inuse))
@@ -555,66 +695,100 @@ static int k3_dmaring_ring_cfg(struct k3_nav_ring *ring, struct k3_nav_ring_cfg
 	ring->size = cfg->size;
 	ring->elm_size = cfg->elm_size;
 	ring->mode = cfg->mode;
+	ring->asel = cfg->asel;
+	ring->dma_dev = cfg->dma_dev;
+	if (!ring->dma_dev) {
+		dev_dbg(ringacc->dev, "dma_dev is not provided for ring%d\n",
+			ring->ring_id);
+		ring->dma_dev = ringacc->dev;
+	}
+
 	memset(&ring->state, 0, sizeof(ring->state));
 
-	ring->ops = &k3_dmaring_fwd_ring_ops;
+	ring->ops = &k3_dmaring_fwd_ops;
 
-	ring->ring_mem_virt =
-		dma_alloc_coherent(ringacc->dev, ring->size * (4 << ring->elm_size),
-				   &ring->ring_mem_dma);
+	ring->ring_mem_virt = dma_alloc_coherent(ring->dma_dev,
+						 ring->size * (4 << ring->elm_size),
+						 &ring->ring_mem_dma);
 	if (!ring->ring_mem_virt) {
 		dev_err(ringacc->dev, "Failed to alloc ring mem\n");
 		ret = -ENOMEM;
 		goto err_free_ops;
 	}
 
-	ret = k3_nav_ringacc_ring_cfg_sci(ring);
+	ret = k3_ringacc_ring_cfg_sci(ring);
 	if (ret)
 		goto err_free_mem;
 
-	ring->flags |= KNAV_RING_FLAG_BUSY;
+	ring->flags |= K3_RING_FLAG_BUSY;
 
-	/* k3_dmaring: configure reverse ring */
+	k3_ringacc_ring_dump(ring);
+
+	/* DMA rings: configure reverse ring */
 	reverse_ring = &ringacc->rings[ring->ring_id + ringacc->num_rings];
 	reverse_ring->size = cfg->size;
 	reverse_ring->elm_size = cfg->elm_size;
 	reverse_ring->mode = cfg->mode;
+	reverse_ring->asel = cfg->asel;
 	memset(&reverse_ring->state, 0, sizeof(reverse_ring->state));
-	reverse_ring->ops = &k3_dmaring_reverse_ring_ops;
+	reverse_ring->ops = &k3_dmaring_reverse_ops;
 
 	reverse_ring->ring_mem_virt = ring->ring_mem_virt;
 	reverse_ring->ring_mem_dma = ring->ring_mem_dma;
-	reverse_ring->flags |= KNAV_RING_FLAG_BUSY;
+	reverse_ring->flags |= K3_RING_FLAG_BUSY;
+	k3_ringacc_ring_dump(reverse_ring);
 
 	return 0;
 
 err_free_mem:
-	dma_free_coherent(ringacc->dev,
-			  ring->ring_mem_virt, ring->ring_mem_dma,
+	dma_free_coherent(ring->dma_dev,
+			  ring->ring_mem_virt,
+			  ring->ring_mem_dma,
 			  ring->size * (4 << ring->elm_size));
 err_free_ops:
 	ring->ops = NULL;
+	ring->proxy = NULL;
+	ring->dma_dev = NULL;
+	ring->asel = 0;
 	return ret;
 }
 
-int k3_nav_ringacc_ring_cfg(struct k3_nav_ring *ring,
-			    struct k3_nav_ring_cfg *cfg)
+int k3_ringacc_ring_cfg(struct k3_ring *ring, struct k3_ring_cfg *cfg)
 {
-	struct k3_nav_ringacc *ringacc = ring->parent;
+	struct k3_ringacc *ringacc;
 	int ret = 0;
 
 	if (!ring || !cfg)
 		return -EINVAL;
 
-	if (ringacc->dual_ring)
-		return k3_dmaring_ring_cfg(ring, cfg);
+	ringacc = ring->parent;
+
+	if (ringacc->dma_rings)
+		return k3_dmaring_cfg(ring, cfg);
 
-	if (cfg->elm_size > K3_NAV_RINGACC_RING_ELSIZE_256 ||
-	    cfg->mode > K3_NAV_RINGACC_RING_MODE_QM ||
-	    cfg->size & ~KNAV_RINGACC_CFG_RING_SIZE_ELCNT_MASK ||
+	if (cfg->elm_size > K3_RINGACC_RING_ELSIZE_256 ||
+	    cfg->mode >= K3_RINGACC_RING_MODE_INVALID ||
+	    cfg->size & ~K3_RINGACC_CFG_RING_SIZE_ELCNT_MASK ||
 	    !test_bit(ring->ring_id, ringacc->rings_inuse))
 		return -EINVAL;
 
+	if (cfg->mode == K3_RINGACC_RING_MODE_MESSAGE &&
+	    ring->proxy_id == K3_RINGACC_PROXY_NOT_USED &&
+	    cfg->elm_size > K3_RINGACC_RING_ELSIZE_8) {
+		dev_err(ringacc->dev,
+			"Message mode must use proxy for %u element size\n",
+			4 << ring->elm_size);
+		return -EINVAL;
+	}
+
+	/*
+	 * In case of shared ring only the first user (master user) can
+	 * configure the ring. The sequence should be by the client:
+	 * ring = k3_ringacc_request_ring(ringacc, ring_id, 0); # master user
+	 * k3_ringacc_ring_cfg(ring, cfg); # master configuration
+	 * k3_ringacc_request_ring(ringacc, ring_id, K3_RING_FLAG_SHARED);
+	 * k3_ringacc_request_ring(ringacc, ring_id, K3_RING_FLAG_SHARED);
+	 */
 	if (ring->use_count != 1)
 		return 0;
 
@@ -623,77 +797,100 @@ int k3_nav_ringacc_ring_cfg(struct k3_nav_ring *ring,
 	ring->mode = cfg->mode;
 	memset(&ring->state, 0, sizeof(ring->state));
 
+	if (ring->proxy_id != K3_RINGACC_PROXY_NOT_USED)
+		ring->proxy = ringacc->proxy_target_base +
+			      ring->proxy_id * K3_RINGACC_PROXY_TARGET_STEP;
+
 	switch (ring->mode) {
-	case K3_NAV_RINGACC_RING_MODE_RING:
-		ring->ops = &k3_nav_mode_ring_ops;
+	case K3_RINGACC_RING_MODE_RING:
+		ring->ops = &k3_ring_mode_ring_ops;
+		ring->dma_dev = cfg->dma_dev;
+		if (!ring->dma_dev)
+			ring->dma_dev = ringacc->dev;
+		break;
+	case K3_RINGACC_RING_MODE_MESSAGE:
+		ring->dma_dev = ringacc->dev;
+		if (ring->proxy)
+			ring->ops = &k3_ring_mode_proxy_ops;
+		else
+			ring->ops = &k3_ring_mode_msg_ops;
 		break;
 	default:
 		ring->ops = NULL;
 		ret = -EINVAL;
-		goto err_free_ops;
-	};
+		goto err_free_proxy;
+	}
 
-	ring->ring_mem_virt =
-			dma_alloc_coherent(ringacc->dev,
-					   ring->size * (4 << ring->elm_size),
-					   &ring->ring_mem_dma);
+	ring->ring_mem_virt = dma_alloc_coherent(ring->dma_dev,
+						 ring->size * (4 << ring->elm_size),
+						 &ring->ring_mem_dma);
 	if (!ring->ring_mem_virt) {
 		dev_err(ringacc->dev, "Failed to alloc ring mem\n");
 		ret = -ENOMEM;
 		goto err_free_ops;
 	}
 
-	ret = k3_nav_ringacc_ring_cfg_sci(ring);
-
+	ret = k3_ringacc_ring_cfg_sci(ring);
 	if (ret)
 		goto err_free_mem;
 
-	ring->flags |= KNAV_RING_FLAG_BUSY;
-	ring->flags |= (cfg->flags & K3_NAV_RINGACC_RING_SHARED) ?
-			K3_NAV_RING_FLAG_SHARED : 0;
+	ring->flags |= K3_RING_FLAG_BUSY;
+	ring->flags |= (cfg->flags & K3_RINGACC_RING_SHARED) ?
+			K3_RING_FLAG_SHARED : 0;
+
+	k3_ringacc_ring_dump(ring);
 
 	return 0;
 
 err_free_mem:
-	dma_free_coherent(ringacc->dev,
-			  ring->ring_mem_virt, ring->ring_mem_dma,
+	dma_free_coherent(ring->dma_dev,
+			  ring->ring_mem_virt,
+			  ring->ring_mem_dma,
 			  ring->size * (4 << ring->elm_size));
 err_free_ops:
 	ring->ops = NULL;
+	ring->dma_dev = NULL;
+err_free_proxy:
+	ring->proxy = NULL;
 	return ret;
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_ring_cfg);
 
-u32 k3_nav_ringacc_ring_get_size(struct k3_nav_ring *ring)
+u32 k3_ringacc_ring_get_size(struct k3_ring *ring)
 {
-	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+	if (!ring || !(ring->flags & K3_RING_FLAG_BUSY))
 		return -EINVAL;
 
 	return ring->size;
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_ring_get_size);
 
-u32 k3_nav_ringacc_ring_get_free(struct k3_nav_ring *ring)
+u32 k3_ringacc_ring_get_free(struct k3_ring *ring)
 {
-	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+	if (!ring || !(ring->flags & K3_RING_FLAG_BUSY))
 		return -EINVAL;
 
 	if (!ring->state.free)
-		ring->state.free = ring->size - ringacc_readl(&ring->rt->occ);
+		ring->state.free = ring->size - k3_ringacc_ring_read_occ(ring);
 
 	return ring->state.free;
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_ring_get_free);
 
-u32 k3_nav_ringacc_ring_get_occ(struct k3_nav_ring *ring)
+u32 k3_ringacc_ring_get_occ(struct k3_ring *ring)
 {
-	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+	if (!ring || !(ring->flags & K3_RING_FLAG_BUSY))
 		return -EINVAL;
 
-	return ringacc_readl(&ring->rt->occ);
+	return k3_ringacc_ring_read_occ(ring);
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_ring_get_occ);
 
-u32 k3_nav_ringacc_ring_is_full(struct k3_nav_ring *ring)
+u32 k3_ringacc_ring_is_full(struct k3_ring *ring)
 {
-	return !k3_nav_ringacc_ring_get_free(ring);
+	return !k3_ringacc_ring_get_free(ring);
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_ring_is_full);
 
 enum k3_ringacc_access_mode {
 	K3_RINGACC_ACCESS_MODE_PUSH_HEAD,
@@ -704,26 +901,193 @@ enum k3_ringacc_access_mode {
 	K3_RINGACC_ACCESS_MODE_PEEK_TAIL,
 };
 
-static int k3_dmaring_ring_fwd_pop_mem(struct k3_nav_ring *ring, void *elem)
+#define K3_RINGACC_PROXY_MODE(x)	(((x) & 0x3) << 16)
+#define K3_RINGACC_PROXY_ELSIZE(x)	(((x) & 0x7) << 24)
+static int k3_ringacc_ring_cfg_proxy(struct k3_ring *ring,
+				     enum k3_ringacc_proxy_access_mode mode)
+{
+	u32 val;
+
+	val = ring->ring_id;
+	val |= K3_RINGACC_PROXY_MODE(mode);
+	val |= K3_RINGACC_PROXY_ELSIZE(ring->elm_size);
+	writel(val, &ring->proxy->control);
+	return 0;
+}
+
+static int k3_ringacc_ring_access_proxy(struct k3_ring *ring, void *elem,
+					enum k3_ringacc_access_mode access_mode)
+{
+	void __iomem *ptr;
+
+	ptr = (void __iomem *)&ring->proxy->data;
+
+	switch (access_mode) {
+	case K3_RINGACC_ACCESS_MODE_PUSH_HEAD:
+	case K3_RINGACC_ACCESS_MODE_POP_HEAD:
+		k3_ringacc_ring_cfg_proxy(ring, PROXY_ACCESS_MODE_HEAD);
+		break;
+	case K3_RINGACC_ACCESS_MODE_PUSH_TAIL:
+	case K3_RINGACC_ACCESS_MODE_POP_TAIL:
+		k3_ringacc_ring_cfg_proxy(ring, PROXY_ACCESS_MODE_TAIL);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	ptr += k3_ringacc_ring_get_fifo_pos(ring);
+
+	switch (access_mode) {
+	case K3_RINGACC_ACCESS_MODE_POP_HEAD:
+	case K3_RINGACC_ACCESS_MODE_POP_TAIL:
+		dev_dbg(ring->parent->dev,
+			"proxy:memcpy_fromio(x): --> ptr(%p), mode:%d\n", ptr,
+			access_mode);
+		memcpy_fromio(elem, ptr, (4 << ring->elm_size));
+		ring->state.occ--;
+		break;
+	case K3_RINGACC_ACCESS_MODE_PUSH_TAIL:
+	case K3_RINGACC_ACCESS_MODE_PUSH_HEAD:
+		dev_dbg(ring->parent->dev,
+			"proxy:memcpy_toio(x): --> ptr(%p), mode:%d\n", ptr,
+			access_mode);
+		memcpy_toio(ptr, elem, (4 << ring->elm_size));
+		ring->state.free--;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	dev_dbg(ring->parent->dev, "proxy: free%d occ%d\n", ring->state.free,
+		ring->state.occ);
+	return 0;
+}
+
+static int k3_ringacc_ring_push_head_proxy(struct k3_ring *ring, void *elem)
+{
+	return k3_ringacc_ring_access_proxy(ring, elem,
+					    K3_RINGACC_ACCESS_MODE_PUSH_HEAD);
+}
+
+static int k3_ringacc_ring_push_tail_proxy(struct k3_ring *ring, void *elem)
+{
+	return k3_ringacc_ring_access_proxy(ring, elem,
+					    K3_RINGACC_ACCESS_MODE_PUSH_TAIL);
+}
+
+static int k3_ringacc_ring_pop_head_proxy(struct k3_ring *ring, void *elem)
+{
+	return k3_ringacc_ring_access_proxy(ring, elem,
+					    K3_RINGACC_ACCESS_MODE_POP_HEAD);
+}
+
+static int k3_ringacc_ring_pop_tail_proxy(struct k3_ring *ring, void *elem)
+{
+	return k3_ringacc_ring_access_proxy(ring, elem,
+					    K3_RINGACC_ACCESS_MODE_POP_HEAD);
+}
+
+static int k3_ringacc_ring_access_io(struct k3_ring *ring, void *elem,
+				     enum k3_ringacc_access_mode access_mode)
+{
+	void __iomem *ptr;
+
+	switch (access_mode) {
+	case K3_RINGACC_ACCESS_MODE_PUSH_HEAD:
+	case K3_RINGACC_ACCESS_MODE_POP_HEAD:
+		ptr = (void __iomem *)&ring->fifos->head_data;
+		break;
+	case K3_RINGACC_ACCESS_MODE_PUSH_TAIL:
+	case K3_RINGACC_ACCESS_MODE_POP_TAIL:
+		ptr = (void __iomem *)&ring->fifos->tail_data;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	ptr += k3_ringacc_ring_get_fifo_pos(ring);
+
+	switch (access_mode) {
+	case K3_RINGACC_ACCESS_MODE_POP_HEAD:
+	case K3_RINGACC_ACCESS_MODE_POP_TAIL:
+		dev_dbg(ring->parent->dev,
+			"memcpy_fromio(x): --> ptr(%p), mode:%d\n", ptr,
+			access_mode);
+		memcpy_fromio(elem, ptr, (4 << ring->elm_size));
+		ring->state.occ--;
+		break;
+	case K3_RINGACC_ACCESS_MODE_PUSH_TAIL:
+	case K3_RINGACC_ACCESS_MODE_PUSH_HEAD:
+		dev_dbg(ring->parent->dev,
+			"memcpy_toio(x): --> ptr(%p), mode:%d\n", ptr,
+			access_mode);
+		memcpy_toio(ptr, elem, (4 << ring->elm_size));
+		ring->state.free--;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	dev_dbg(ring->parent->dev, "free%d index%d occ%d index%d\n",
+		ring->state.free, ring->state.windex, ring->state.occ,
+		ring->state.rindex);
+	return 0;
+}
+
+static int k3_ringacc_ring_push_head_io(struct k3_ring *ring, void *elem)
+{
+	return k3_ringacc_ring_access_io(ring, elem,
+					 K3_RINGACC_ACCESS_MODE_PUSH_HEAD);
+}
+
+static int k3_ringacc_ring_push_io(struct k3_ring *ring, void *elem)
+{
+	return k3_ringacc_ring_access_io(ring, elem,
+					 K3_RINGACC_ACCESS_MODE_PUSH_TAIL);
+}
+
+static int k3_ringacc_ring_pop_io(struct k3_ring *ring, void *elem)
+{
+	return k3_ringacc_ring_access_io(ring, elem,
+					 K3_RINGACC_ACCESS_MODE_POP_HEAD);
+}
+
+static int k3_ringacc_ring_pop_tail_io(struct k3_ring *ring, void *elem)
+{
+	return k3_ringacc_ring_access_io(ring, elem,
+					 K3_RINGACC_ACCESS_MODE_POP_HEAD);
+}
+
+/*
+ * The element is 48 bits of address + ASEL bits in the ring.
+ * ASEL is used by the DMAs and should be removed for the kernel as it is not
+ * part of the physical memory address.
+ */
+static void k3_dmaring_remove_asel_from_elem(u64 *elem)
+{
+	*elem &= GENMASK_ULL(K3_ADDRESS_ASEL_SHIFT - 1, 0);
+}
+
+static int k3_dmaring_fwd_pop(struct k3_ring *ring, void *elem)
 {
 	void *elem_ptr;
 	u32 elem_idx;
 
 	/*
-	 * k3_dmaring: forward ring is always tied DMA channel and HW does not
+	 * DMA rings: forward ring is always tied DMA channel and HW does not
 	 * maintain any state data required for POP operation and its unknown
 	 * how much elements were consumed by HW. So, to actually
 	 * do POP, the read pointer has to be recalculated every time.
 	 */
-	ring->state.occ = k3_nav_ringacc_ring_read_occ(ring);
+	ring->state.occ = k3_ringacc_ring_read_occ(ring);
 	if (ring->state.windex >= ring->state.occ)
 		elem_idx = ring->state.windex - ring->state.occ;
 	else
 		elem_idx = ring->size - (ring->state.occ - ring->state.windex);
 
-	elem_ptr = k3_nav_ringacc_get_elm_addr(ring, elem_idx);
-
+	elem_ptr = k3_ringacc_get_elm_addr(ring, elem_idx);
 	memcpy(elem, elem_ptr, (4 << ring->elm_size));
+	k3_dmaring_remove_asel_from_elem(elem);
 
 	ring->state.occ--;
 	writel(-1, &ring->rt->db);
@@ -734,70 +1098,83 @@ static int k3_dmaring_ring_fwd_pop_mem(struct k3_nav_ring *ring, void *elem)
 	return 0;
 }
 
-static int k3_dmaring_ring_reverse_pop_mem(struct k3_nav_ring *ring, void *elem)
+static int k3_dmaring_reverse_pop(struct k3_ring *ring, void *elem)
 {
 	void *elem_ptr;
 
-	elem_ptr = k3_nav_ringacc_get_elm_addr(ring, ring->state.rindex);
+	elem_ptr = k3_ringacc_get_elm_addr(ring, ring->state.rindex);
 
 	if (ring->state.occ) {
 		memcpy(elem, elem_ptr, (4 << ring->elm_size));
+		k3_dmaring_remove_asel_from_elem(elem);
+
 		ring->state.rindex = (ring->state.rindex + 1) % ring->size;
 		ring->state.occ--;
-		writel(-1 & K3_DMARING_RING_RT_DB_ENTRY_MASK, &ring->rt->db);
+		writel(-1 & K3_DMARING_RT_DB_ENTRY_MASK, &ring->rt->db);
+	} else if (ring->state.tdown_complete) {
+		dma_addr_t *value = elem;
+#define CPPI5_TDCM_MARKER                      (0x1)
+		*value = CPPI5_TDCM_MARKER;
+		writel(K3_DMARING_RT_DB_TDOWN_ACK, &ring->rt->db);
+		ring->state.tdown_complete = false;
 	}
 
-	dev_vdbg(ring->parent->dev, "%s: occ%d index%d pos_ptr%px\n",
+	dev_dbg(ring->parent->dev, "%s: occ%d index%d pos_ptr%px\n",
 		__func__, ring->state.occ, ring->state.rindex, elem_ptr);
 	return 0;
 }
 
-static int k3_nav_ringacc_ring_push_mem(struct k3_nav_ring *ring, void *elem)
+static int k3_ringacc_ring_push_mem(struct k3_ring *ring, void *elem)
 {
 	void *elem_ptr;
 
-	elem_ptr = k3_nav_ringacc_get_elm_addr(ring, ring->state.windex);
+	elem_ptr = k3_ringacc_get_elm_addr(ring, ring->state.windex);
 
 	memcpy(elem_ptr, elem, (4 << ring->elm_size));
+	if (ring->parent->dma_rings) {
+		u64 *addr = elem_ptr;
+
+		*addr |= ((u64)ring->asel << K3_ADDRESS_ASEL_SHIFT);
+	}
 
 	ring->state.windex = (ring->state.windex + 1) % ring->size;
 	ring->state.free--;
-	ringacc_writel(1, &ring->rt->db);
+	writel(1, &ring->rt->db);
 
-	dev_vdbg(ring->parent->dev, "ring_push_mem: free%d index%d\n",
-		 ring->state.free, ring->state.windex);
+	dev_dbg(ring->parent->dev, "ring_push_mem: free%d index%d\n",
+		ring->state.free, ring->state.windex);
 
 	return 0;
 }
 
-static int k3_nav_ringacc_ring_pop_mem(struct k3_nav_ring *ring, void *elem)
+static int k3_ringacc_ring_pop_mem(struct k3_ring *ring, void *elem)
 {
 	void *elem_ptr;
 
-	elem_ptr = k3_nav_ringacc_get_elm_addr(ring, ring->state.rindex);
+	elem_ptr = k3_ringacc_get_elm_addr(ring, ring->state.rindex);
 
 	memcpy(elem, elem_ptr, (4 << ring->elm_size));
 
 	ring->state.rindex = (ring->state.rindex + 1) % ring->size;
 	ring->state.occ--;
-	ringacc_writel(-1, &ring->rt->db);
+	writel(-1, &ring->rt->db);
 
-	dev_vdbg(ring->parent->dev, "ring_pop_mem: occ%d index%d pos_ptr%p\n",
-		 ring->state.occ, ring->state.rindex, elem_ptr);
+	dev_dbg(ring->parent->dev, "ring_pop_mem: occ%d index%d pos_ptr%p\n",
+		ring->state.occ, ring->state.rindex, elem_ptr);
 	return 0;
 }
 
-int k3_nav_ringacc_ring_push(struct k3_nav_ring *ring, void *elem)
+int k3_ringacc_ring_push(struct k3_ring *ring, void *elem)
 {
 	int ret = -EOPNOTSUPP;
 
-	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+	if (!ring || !(ring->flags & K3_RING_FLAG_BUSY))
 		return -EINVAL;
 
-	dev_vdbg(ring->parent->dev, "ring_push%d: free%d index%d\n",
-		 ring->ring_id, ring->state.free, ring->state.windex);
+	dev_dbg(ring->parent->dev, "ring_push: free%d index%d\n",
+		ring->state.free, ring->state.windex);
 
-	if (k3_nav_ringacc_ring_is_full(ring))
+	if (k3_ringacc_ring_is_full(ring))
 		return -ENOMEM;
 
 	if (ring->ops && ring->ops->push_tail)
@@ -805,18 +1182,19 @@ int k3_nav_ringacc_ring_push(struct k3_nav_ring *ring, void *elem)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_ring_push);
 
-int k3_nav_ringacc_ring_push_head(struct k3_nav_ring *ring, void *elem)
+int k3_ringacc_ring_push_head(struct k3_ring *ring, void *elem)
 {
 	int ret = -EOPNOTSUPP;
 
-	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+	if (!ring || !(ring->flags & K3_RING_FLAG_BUSY))
 		return -EINVAL;
 
-	dev_vdbg(ring->parent->dev, "ring_push_head: free%d index%d\n",
-		 ring->state.free, ring->state.windex);
+	dev_dbg(ring->parent->dev, "ring_push_head: free%d index%d\n",
+		ring->state.free, ring->state.windex);
 
-	if (k3_nav_ringacc_ring_is_full(ring))
+	if (k3_ringacc_ring_is_full(ring))
 		return -ENOMEM;
 
 	if (ring->ops && ring->ops->push_head)
@@ -824,19 +1202,20 @@ int k3_nav_ringacc_ring_push_head(struct k3_nav_ring *ring, void *elem)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_ring_push_head);
 
-int k3_nav_ringacc_ring_pop(struct k3_nav_ring *ring, void *elem)
+int k3_ringacc_ring_pop(struct k3_ring *ring, void *elem)
 {
 	int ret = -EOPNOTSUPP;
 
-	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+	if (!ring || !(ring->flags & K3_RING_FLAG_BUSY))
 		return -EINVAL;
 
 	if (!ring->state.occ)
-		k3_nav_ringacc_ring_update_occ(ring);
+		k3_ringacc_ring_update_occ(ring);
 
-	dev_vdbg(ring->parent->dev, "ring_pop%d: occ%d index%d\n",
-		 ring->ring_id, ring->state.occ, ring->state.rindex);
+	dev_dbg(ring->parent->dev, "ring_pop: occ%d index%d\n", ring->state.occ,
+		ring->state.rindex);
 
 	if (!ring->state.occ && !ring->state.tdown_complete)
 		return -ENODATA;
@@ -846,19 +1225,20 @@ int k3_nav_ringacc_ring_pop(struct k3_nav_ring *ring, void *elem)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_ring_pop);
 
-int k3_nav_ringacc_ring_pop_tail(struct k3_nav_ring *ring, void *elem)
+int k3_ringacc_ring_pop_tail(struct k3_ring *ring, void *elem)
 {
 	int ret = -EOPNOTSUPP;
 
-	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+	if (!ring || !(ring->flags & K3_RING_FLAG_BUSY))
 		return -EINVAL;
 
 	if (!ring->state.occ)
-		k3_nav_ringacc_ring_update_occ(ring);
+		k3_ringacc_ring_update_occ(ring);
 
-	dev_vdbg(ring->parent->dev, "ring_pop_tail: occ%d index%d\n",
-		 ring->state.occ, ring->state.rindex);
+	dev_dbg(ring->parent->dev, "ring_pop_tail: occ%d index%d\n",
+		ring->state.occ, ring->state.rindex);
 
 	if (!ring->state.occ)
 		return -ENODATA;
@@ -868,91 +1248,130 @@ int k3_nav_ringacc_ring_pop_tail(struct k3_nav_ring *ring, void *elem)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_ring_pop_tail);
 
-static int k3_nav_ringacc_probe_dt(struct k3_nav_ringacc *ringacc)
+struct k3_ringacc *of_k3_ringacc_get_by_phandle(struct device_node *np,
+						const char *property)
 {
+	struct device_node *ringacc_np;
+	struct k3_ringacc *ringacc = ERR_PTR(-EPROBE_DEFER);
+	struct k3_ringacc *entry;
+
+	ringacc_np = of_parse_phandle(np, property, 0);
+	if (!ringacc_np)
+		return ERR_PTR(-ENODEV);
+
+	mutex_lock(&k3_ringacc_list_lock);
+	list_for_each_entry(entry, &k3_ringacc_list, list)
+		if (entry->dev->of_node == ringacc_np) {
+			ringacc = entry;
+			break;
+		}
+	mutex_unlock(&k3_ringacc_list_lock);
+	of_node_put(ringacc_np);
+
+	return ringacc;
+}
+EXPORT_SYMBOL_GPL(of_k3_ringacc_get_by_phandle);
+
+static int k3_ringacc_probe_dt(struct k3_ringacc *ringacc)
+{
+	struct device_node *node = ringacc->dev->of_node;
 	struct device *dev = ringacc->dev;
 	int ret;
-	u32 val;
 
-	ret = of_property_read_u32(dev->of_node, "ti,num-rings", &ringacc->num_rings);
+	if (!node) {
+		dev_err(dev, "device tree info unavailable\n");
+		return -ENODEV;
+	}
+
+	ret = of_property_read_u32(node, "ti,num-rings", &ringacc->num_rings);
 	if (ret) {
 		dev_err(dev, "ti,num-rings read failure %d\n", ret);
-		return -EINVAL;
+		return ret;
 	}
 
-	ringacc->dma_ring_reset_quirk =
-			of_property_read_bool(dev->of_node, "ti,dma-ring-reset-quirk");
-
 	ringacc->tisci = ti_sci_get_by_phandle(dev, "ti,sci");
-
-	ret = of_property_read_u32(dev->of_node, "ti,sci", &val);
-	if (!ret && !val) {
-		dev_err(dev, "TISCI RA RM disabled\n");
+	if (IS_ERR(ringacc->tisci)) {
+		ret = PTR_ERR(ringacc->tisci);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "ti,sci read fail %d\n", ret);
 		ringacc->tisci = NULL;
 		return ret;
 	}
 
-	ret = of_property_read_u32(dev->of_node, "ti,sci-dev-id", &ringacc->tisci_dev_id);
+	ret = of_property_read_u32(node, "ti,sci-dev-id",
+				   &ringacc->tisci_dev_id);
 	if (ret) {
-		dev_err(dev, "ti,sci-dev-id read failure %d\n", ret);
-		ringacc->tisci = NULL;
+		dev_err(dev, "ti,sci-dev-id read fail %d\n", ret);
 		return ret;
 	}
 
-	ringacc->rm_gp_range = devm_ti_sci_get_of_resource(
-					ringacc->tisci, dev,
-					ringacc->tisci_dev_id,
-					"ti,sci-rm-range-gp-rings");
-	if (IS_ERR(ringacc->rm_gp_range))
-		ret = PTR_ERR(ringacc->rm_gp_range);
+	ringacc->rm_gp_range = devm_ti_sci_get_of_resource(ringacc->tisci, dev,
+						ringacc->tisci_dev_id,
+						"ti,sci-rm-range-gp-rings");
+	if (IS_ERR(ringacc->rm_gp_range)) {
+		dev_err(dev, "Failed to allocate MSI interrupts\n");
+		return PTR_ERR(ringacc->rm_gp_range);
+	}
 
 	return 0;
 }
 
-static int k3_nav_ringacc_init(struct device *dev, struct k3_nav_ringacc *ringacc)
+static int k3_ringacc_init(struct device *dev,
+			   struct k3_ringacc *ringacc)
 {
-	void __iomem *base_cfg, *base_rt;
+	void __iomem *base_fifo, *base_rt;
 	int ret, i;
 
-	ret = k3_nav_ringacc_probe_dt(ringacc);
+	ret = k3_ringacc_probe_dt(ringacc);
 	if (ret)
 		return ret;
 
-	base_cfg = dev_request_mem_region_by_name(dev, "cfg");
-	dev_dbg(dev, "cfg %p\n", base_cfg);
-	if (!base_cfg)
-		return -EINVAL;
-
 	base_rt = dev_request_mem_region_by_name(dev, "rt");
-	dev_dbg(dev, "rt %p\n", base_rt);
-	if (!base_rt)
-		return -EINVAL;
+	if (IS_ERR(base_rt))
+		return PTR_ERR(base_rt);
+
+	base_fifo = dev_request_mem_region_by_name(dev, "fifos");
+	if (IS_ERR(base_fifo))
+		return PTR_ERR(base_fifo);
+
+	ringacc->proxy_gcfg = dev_request_mem_region_by_name(dev, "proxy_gcfg");
+	if (IS_ERR(ringacc->proxy_gcfg))
+		return PTR_ERR(ringacc->proxy_gcfg);
+
+	ringacc->proxy_target_base = dev_request_mem_region_by_name(dev,
+									   "proxy_target");
+	if (IS_ERR(ringacc->proxy_target_base))
+		return PTR_ERR(ringacc->proxy_target_base);
+
+	ringacc->num_proxies = readl(&ringacc->proxy_gcfg->config) &
+				     K3_RINGACC_PROXY_CFG_THREADS_MASK;
 
 	ringacc->rings = devm_kzalloc(dev,
 				      sizeof(*ringacc->rings) *
 				      ringacc->num_rings,
 				      GFP_KERNEL);
-	ringacc->rings_inuse = devm_kcalloc(dev,
-					    BITS_TO_LONGS(ringacc->num_rings),
-					    sizeof(unsigned long), GFP_KERNEL);
+	ringacc->rings_inuse = devm_bitmap_zalloc(dev, ringacc->num_rings,
+						  GFP_KERNEL);
+	ringacc->proxy_inuse = devm_bitmap_zalloc(dev, ringacc->num_proxies,
+						  GFP_KERNEL);
 
-	if (!ringacc->rings || !ringacc->rings_inuse)
+	if (!ringacc->rings || !ringacc->rings_inuse || !ringacc->proxy_inuse)
 		return -ENOMEM;
 
 	for (i = 0; i < ringacc->num_rings; i++) {
-		ringacc->rings[i].cfg = base_cfg +
-					KNAV_RINGACC_CFG_REGS_STEP * i;
 		ringacc->rings[i].rt = base_rt +
-				       KNAV_RINGACC_RT_REGS_STEP * i;
+				       K3_RINGACC_RT_REGS_STEP * i;
+		ringacc->rings[i].fifos = base_fifo +
+					  K3_RINGACC_FIFO_REGS_STEP * i;
 		ringacc->rings[i].parent = ringacc;
 		ringacc->rings[i].ring_id = i;
+		ringacc->rings[i].proxy_id = K3_RINGACC_PROXY_NOT_USED;
 	}
 
 	ringacc->tisci_ring_ops = &ringacc->tisci->ops.rm_ring_ops;
 
-	list_add_tail(&ringacc->list, &k3_nav_ringacc_list);
-
 	dev_info(dev, "Ring Accelerator probed rings:%u, gp-rings[%u,%u] sci-dev-id:%u\n",
 		 ringacc->num_rings,
 		 ringacc->rm_gp_range->desc[0].start,
@@ -960,148 +1379,123 @@ static int k3_nav_ringacc_init(struct device *dev, struct k3_nav_ringacc *ringac
 		 ringacc->tisci_dev_id);
 	dev_info(dev, "dma-ring-reset-quirk: %s\n",
 		 ringacc->dma_ring_reset_quirk ? "enabled" : "disabled");
+	dev_info(dev, "RA Proxy rev. %08x, num_proxies:%u\n",
+		 readl(&ringacc->proxy_gcfg->revision), ringacc->num_proxies);
+
 	return 0;
 }
 
-struct k3_nav_ringacc *k3_ringacc_dmarings_init(struct device *dev,
-						struct k3_ringacc_init_data *data)
+struct ringacc_match_data {
+	struct k3_ringacc_ops ops;
+};
+
+static struct ringacc_match_data k3_ringacc_data = {
+	.ops = {
+		.init = k3_ringacc_init,
+	},
+};
+
+/* Match table for of_platform binding */
+static const struct of_device_id k3_ringacc_of_match[] = {
+	{ .compatible = "ti,am654-navss-ringacc", .data = &k3_ringacc_data, },
+	{},
+};
+MODULE_DEVICE_TABLE(of, k3_ringacc_of_match);
+
+struct k3_ringacc *k3_ringacc_dmarings_init(struct device *dev,
+					    struct k3_ringacc_init_data *data)
 {
-	void __iomem *base_rt, *base_cfg;
-	struct k3_nav_ringacc *ringacc;
+	struct k3_ringacc *ringacc;
+	void __iomem *base_rt;
 	int i;
 
 	ringacc = devm_kzalloc(dev, sizeof(*ringacc), GFP_KERNEL);
 	if (!ringacc)
 		return ERR_PTR(-ENOMEM);
 
-	ringacc->dual_ring = true;
-
 	ringacc->dev = dev;
+	ringacc->dma_rings = true;
 	ringacc->num_rings = data->num_rings;
 	ringacc->tisci = data->tisci;
 	ringacc->tisci_dev_id = data->tisci_dev_id;
 
-	base_rt = dev_request_mem_region_by_name(dev, "ringrt");
-	if (!base_rt)
-		return ERR_PTR(-EINVAL);
+	mutex_init(&ringacc->req_lock);
 
-	/*
-	 * Since register property is defined as "ring" for PKTDMA and
-	 * "cfg" for UDMA, configure base address of ring configuration
-	 * register accordingly.
-	 */
-	base_cfg = dev_request_mem_region_by_name(dev, "ring");
-	dev_dbg(dev, "ring %p\n", base_cfg);
-	if (!base_cfg) {
-		base_cfg = dev_request_mem_region_by_name(dev, "cfg");
-		dev_dbg(dev, "cfg %p\n", base_cfg);
-		if (!base_cfg)
-			return ERR_PTR(-EINVAL);
-	}
+	base_rt = dev_request_mem_region_by_name(dev, "ringrt");
+	if (IS_ERR(base_rt))
+		return ERR_CAST(base_rt);
 
 	ringacc->rings = devm_kzalloc(dev,
 				      sizeof(*ringacc->rings) *
 				      ringacc->num_rings * 2,
 				      GFP_KERNEL);
-	ringacc->rings_inuse = devm_kcalloc(dev,
-					    BITS_TO_LONGS(ringacc->num_rings),
+	ringacc->rings_inuse = devm_kcalloc(dev,  BITS_TO_LONGS(ringacc->num_rings),
 					    sizeof(unsigned long), GFP_KERNEL);
 
 	if (!ringacc->rings || !ringacc->rings_inuse)
 		return ERR_PTR(-ENOMEM);
 
 	for (i = 0; i < ringacc->num_rings; i++) {
-		struct k3_nav_ring *ring = &ringacc->rings[i];
+		struct k3_ring *ring = &ringacc->rings[i];
 
-		ring->cfg = base_cfg + KNAV_RINGACC_CFG_REGS_STEP * i;
-		ring->rt = base_rt + K3_DMARING_RING_RT_REGS_STEP * i;
+		ring->rt = base_rt + K3_DMARING_RT_REGS_STEP * i;
 		ring->parent = ringacc;
 		ring->ring_id = i;
+		ring->proxy_id = K3_RINGACC_PROXY_NOT_USED;
 
 		ring = &ringacc->rings[ringacc->num_rings + i];
-		ring->rt = base_rt + K3_DMARING_RING_RT_REGS_STEP * i +
-			   K3_DMARING_RING_RT_REGS_REVERSE_OFS;
+		ring->rt = base_rt + K3_DMARING_RT_REGS_STEP * i +
+			   K3_DMARING_RT_REGS_REVERSE_OFS;
 		ring->parent = ringacc;
 		ring->ring_id = i;
-		ring->flags = K3_NAV_RING_FLAG_REVERSE;
+		ring->proxy_id = K3_RINGACC_PROXY_NOT_USED;
+		ring->flags = K3_RING_FLAG_REVERSE;
 	}
 
 	ringacc->tisci_ring_ops = &ringacc->tisci->ops.rm_ring_ops;
 
-	dev_dbg(dev, "k3_dmaring Ring probed rings:%u, sci-dev-id:%u\n",
-		 ringacc->num_rings,
-		 ringacc->tisci_dev_id);
-	dev_dbg(dev, "dma-ring-reset-quirk: %s\n",
-		 ringacc->dma_ring_reset_quirk ? "enabled" : "disabled");
+	dev_info(dev, "Number of rings: %u\n", ringacc->num_rings);
 
 	return ringacc;
 }
+EXPORT_SYMBOL_GPL(k3_ringacc_dmarings_init);
 
-struct k3_nav_ringacc *k3_navss_ringacc_get_by_phandle(struct device *dev, const char *property)
+static int k3_ringacc_probe(struct device *dev)
 {
-	struct k3_nav_ringacc *ringacc = NULL, *entry;
-	struct device_node *np;
-
-	np = of_parse_phandle(dev->of_node, property, 0);
-	if (!np)
-		return ERR_PTR(-ENODEV);
-
-	of_device_ensure_probed(np);
-
-	list_for_each_entry(entry, &k3_nav_ringacc_list, list)
-		if (dev_of_node(entry->dev) == np) {
-			ringacc = entry;
-			break;
-		}
-
-	if (!ringacc)
-		return ERR_PTR(-ENODEV);
-
-	return ringacc;
-}
-
-struct ringacc_match_data {
-	struct k3_nav_ringacc_ops ops;
-};
-
-static struct ringacc_match_data k3_nav_ringacc_data = {
-	.ops = {
-		.init = k3_nav_ringacc_init,
-	},
-};
-
-static const struct of_device_id knav_ringacc_ids[] = {
-	{
-		.compatible = "ti,am654-navss-ringacc",
-		.data = &k3_nav_ringacc_data,
-	}, {
-		/* sentinel */
-	},
-};
-
-static int k3_nav_ringacc_probe(struct device *dev)
-{
-	struct k3_nav_ringacc *ringacc;
-	int ret;
 	const struct ringacc_match_data *match_data;
+	struct k3_ringacc *ringacc;
+	int ret;
 
 	match_data = device_get_match_data(dev);
+	if (!match_data)
+		return -ENODEV;
 
-	ringacc = xzalloc(sizeof(*ringacc));
+	ringacc = devm_kzalloc(dev, sizeof(*ringacc), GFP_KERNEL);
+	if (!ringacc)
+		return -ENOMEM;
 
 	ringacc->dev = dev;
+	mutex_init(&ringacc->req_lock);
 	ringacc->ops = &match_data->ops;
+
 	ret = ringacc->ops->init(dev, ringacc);
 	if (ret)
 		return ret;
 
+	mutex_lock(&k3_ringacc_list_lock);
+	list_add_tail(&ringacc->list, &k3_ringacc_list);
+	mutex_unlock(&k3_ringacc_list_lock);
+
 	return 0;
 }
 
-static struct driver k3_navss_ringacc = {
-	.probe  = k3_nav_ringacc_probe,
-	.name   = "k3-navss-ringacc",
-	.of_compatible = knav_ringacc_ids,
+static struct driver k3_ringacc_driver = {
+	.probe		= k3_ringacc_probe,
+	.name	= "k3-ringacc",
+	.of_compatible = k3_ringacc_of_match,
 };
+core_platform_driver(k3_ringacc_driver);
 
-core_platform_driver(k3_navss_ringacc);
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("TI Ringacc driver for K3 SOCs");
+MODULE_AUTHOR("Grygorii Strashko <grygorii.strashko@ti.com>");
diff --git a/include/soc/ti/k3-navss-ringacc.h b/include/soc/ti/k3-navss-ringacc.h
index b9e19a65e8..d9f2bd7795 100644
--- a/include/soc/ti/k3-navss-ringacc.h
+++ b/include/soc/ti/k3-navss-ringacc.h
@@ -1,236 +1,256 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
- * TI K3 AM65x NAVSS Ring accelerator Manager (RA) subsystem driver
+ * K3 Ring Accelerator (RA) subsystem interface
  *
- * Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com
+ * Copyright (C) 2019 Texas Instruments Incorporated - https://www.ti.com
  */
 
-#ifndef __SOC_TI_K3_NAVSS_RINGACC_API_H_
-#define __SOC_TI_K3_NAVSS_RINGACC_API_H_
+#ifndef __SOC_TI_K3_RINGACC_API_H_
+#define __SOC_TI_K3_RINGACC_API_H_
 
-#include <linux/bitops.h>
+#include <linux/types.h>
+
+struct device_node;
 
 /**
- * enum k3_nav_ring_mode - &struct k3_nav_ring_cfg mode
+ * enum k3_ring_mode - &struct k3_ring_cfg mode
  *
  * RA ring operational modes
  *
- * @K3_NAV_RINGACC_RING_MODE_RING: Exposed Ring mode for SW direct access
- * @K3_NAV_RINGACC_RING_MODE_MESSAGE: Messaging mode. Messaging mode requires
+ * @K3_RINGACC_RING_MODE_RING: Exposed Ring mode for SW direct access
+ * @K3_RINGACC_RING_MODE_MESSAGE: Messaging mode. Messaging mode requires
  *	that all accesses to the queue must go through this IP so that all
  *	accesses to the memory are controlled and ordered. This IP then
  *	controls the entire state of the queue, and SW has no directly control,
  *	such as through doorbells and cannot access the storage memory directly.
  *	This is particularly useful when more than one SW or HW entity can be
  *	the producer and/or consumer at the same time
- * @K3_NAV_RINGACC_RING_MODE_CREDENTIALS: Credentials mode is message mode plus
+ * @K3_RINGACC_RING_MODE_CREDENTIALS: Credentials mode is message mode plus
  *	stores credentials with each message, requiring the element size to be
  *	doubled to fit the credentials. Any exposed memory should be protected
  *	by a firewall from unwanted access
- * @K3_NAV_RINGACC_RING_MODE_QM:  Queue manager mode. This takes the credentials
- *	mode and adds packet length per element, along with additional read only
- *	fields for element count and accumulated queue length. The QM mode only
- *	operates with an 8 byte element size (any other element size is
- *	illegal), and like in credentials mode each operation uses 2 element
- *	slots to store the credentials and length fields
- */
-enum k3_nav_ring_mode {
-	K3_NAV_RINGACC_RING_MODE_RING = 0,
-	K3_NAV_RINGACC_RING_MODE_MESSAGE,
-	K3_NAV_RINGACC_RING_MODE_CREDENTIALS,
-	K3_NAV_RINGACC_RING_MODE_QM,
-	k3_NAV_RINGACC_RING_MODE_INVALID
+ */
+enum k3_ring_mode {
+	K3_RINGACC_RING_MODE_RING = 0,
+	K3_RINGACC_RING_MODE_MESSAGE,
+	K3_RINGACC_RING_MODE_CREDENTIALS,
+	K3_RINGACC_RING_MODE_INVALID
 };
 
 /**
- * enum k3_nav_ring_size - &struct k3_nav_ring_cfg elm_size
+ * enum k3_ring_size - &struct k3_ring_cfg elm_size
  *
  * RA ring element's sizes in bytes.
  */
-enum k3_nav_ring_size {
-	K3_NAV_RINGACC_RING_ELSIZE_4 = 0,
-	K3_NAV_RINGACC_RING_ELSIZE_8,
-	K3_NAV_RINGACC_RING_ELSIZE_16,
-	K3_NAV_RINGACC_RING_ELSIZE_32,
-	K3_NAV_RINGACC_RING_ELSIZE_64,
-	K3_NAV_RINGACC_RING_ELSIZE_128,
-	K3_NAV_RINGACC_RING_ELSIZE_256,
-	K3_NAV_RINGACC_RING_ELSIZE_INVALID
+enum k3_ring_size {
+	K3_RINGACC_RING_ELSIZE_4 = 0,
+	K3_RINGACC_RING_ELSIZE_8,
+	K3_RINGACC_RING_ELSIZE_16,
+	K3_RINGACC_RING_ELSIZE_32,
+	K3_RINGACC_RING_ELSIZE_64,
+	K3_RINGACC_RING_ELSIZE_128,
+	K3_RINGACC_RING_ELSIZE_256,
+	K3_RINGACC_RING_ELSIZE_INVALID
 };
 
-struct k3_nav_ringacc;
-struct k3_nav_ring;
+struct k3_ringacc;
+struct k3_ring;
 
 /**
- * enum k3_nav_ring_cfg - RA ring configuration structure
+ * enum k3_ring_cfg - RA ring configuration structure
  *
  * @size: Ring size, number of elements
  * @elm_size: Ring element size
  * @mode: Ring operational mode
  * @flags: Ring configuration flags. Possible values:
- *	 @K3_NAV_RINGACC_RING_SHARED: when set allows to request the same ring
+ *	 @K3_RINGACC_RING_SHARED: when set allows to request the same ring
  *	 few times. It's usable when the same ring is used as Free Host PD ring
  *	 for different flows, for example.
  *	 Note: Locking should be done by consumer if required
+ * @dma_dev: Master device which is using and accessing to the ring
+ *	memory when the mode is K3_RINGACC_RING_MODE_RING. Memory allocations
+ *	should be done using this device.
+ * @asel: Address Space Select value for physical addresses
  */
-struct k3_nav_ring_cfg {
+struct k3_ring_cfg {
 	u32 size;
-	enum k3_nav_ring_size elm_size;
-	enum k3_nav_ring_mode mode;
-#define K3_NAV_RINGACC_RING_SHARED BIT(1)
+	enum k3_ring_size elm_size;
+	enum k3_ring_mode mode;
+#define K3_RINGACC_RING_SHARED BIT(1)
 	u32 flags;
+
+	struct device *dma_dev;
+	u32 asel;
 };
 
-#define K3_NAV_RINGACC_RING_ID_ANY (-1)
+#define K3_RINGACC_RING_ID_ANY (-1)
 
 /**
- * k3_nav_ringacc_request_ring - request ring from ringacc
- * @ringacc: pointer on ringacc
- * @id: ring id or K3_NAV_RINGACC_RING_ID_ANY for any general purpose ring
+ * of_k3_ringacc_get_by_phandle - find a RA by phandle property
+ * @np: device node
+ * @propname: property name containing phandle on RA node
  *
- * Returns pointer on the Ring - struct k3_nav_ring
- * or NULL in case of failure.
+ * Returns pointer on the RA - struct k3_ringacc
+ * or -ENODEV if not found,
+ * or -EPROBE_DEFER if not yet registered
  */
-struct k3_nav_ring *k3_nav_ringacc_request_ring(struct k3_nav_ringacc *ringacc,
-						int id);
+struct k3_ringacc *of_k3_ringacc_get_by_phandle(struct device_node *np,
+						const char *property);
+
+#define K3_RINGACC_RING_USE_PROXY BIT(1)
 
-int k3_nav_ringacc_request_rings_pair(struct k3_nav_ringacc *ringacc,
-				      int fwd_id, int compl_id,
-				      struct k3_nav_ring **fwd_ring,
-				      struct k3_nav_ring **compl_ring);
 /**
- * k3_nav_ringacc_get_dev - get pointer on RA device
- * @ringacc: pointer on RA
+ * k3_ringacc_request_ring - request ring from ringacc
+ * @ringacc: pointer on ringacc
+ * @id: ring id or K3_RINGACC_RING_ID_ANY for any general purpose ring
+ * @flags:
+ *	@K3_RINGACC_RING_USE_PROXY: if set - proxy will be allocated and
+ *		used to access ring memory. Sopported only for rings in
+ *		Message/Credentials/Queue mode.
  *
- * Returns device pointer
+ * Returns pointer on the Ring - struct k3_ring
+ * or NULL in case of failure.
  */
-struct device *k3_nav_ringacc_get_dev(struct k3_nav_ringacc *ringacc);
+struct k3_ring *k3_ringacc_request_ring(struct k3_ringacc *ringacc,
+					int id, u32 flags);
 
+int k3_ringacc_request_rings_pair(struct k3_ringacc *ringacc,
+				  int fwd_id, int compl_id,
+				  struct k3_ring **fwd_ring,
+				  struct k3_ring **compl_ring);
 /**
- * k3_nav_ringacc_ring_reset - ring reset
+ * k3_ringacc_ring_reset - ring reset
  * @ring: pointer on Ring
  *
  * Resets ring internal state ((hw)occ, (hw)idx).
- * TODO_GS: ? Ring can be reused without reconfiguration
  */
-void k3_nav_ringacc_ring_reset(struct k3_nav_ring *ring);
+void k3_ringacc_ring_reset(struct k3_ring *ring);
 /**
- * k3_nav_ringacc_ring_reset - ring reset for DMA rings
+ * k3_ringacc_ring_reset - ring reset for DMA rings
  * @ring: pointer on Ring
  *
  * Resets ring internal state ((hw)occ, (hw)idx). Should be used for rings
  * which are read by K3 UDMA, like TX or Free Host PD rings.
  */
-void k3_nav_ringacc_ring_reset_dma(struct k3_nav_ring *ring, u32 occ);
+void k3_ringacc_ring_reset_dma(struct k3_ring *ring, u32 occ);
 
 /**
- * k3_nav_ringacc_ring_free - ring free
+ * k3_ringacc_ring_free - ring free
  * @ring: pointer on Ring
  *
  * Resets ring and free all alocated resources.
  */
-int k3_nav_ringacc_ring_free(struct k3_nav_ring *ring);
+int k3_ringacc_ring_free(struct k3_ring *ring);
 
 /**
- * k3_nav_ringacc_get_ring_id - Get the Ring ID
+ * k3_ringacc_get_ring_id - Get the Ring ID
  * @ring: pointer on ring
  *
  * Returns the Ring ID
  */
-u32 k3_nav_ringacc_get_ring_id(struct k3_nav_ring *ring);
+u32 k3_ringacc_get_ring_id(struct k3_ring *ring);
 
 /**
- * k3_nav_ringacc_ring_cfg - ring configure
+ * k3_ringacc_get_ring_irq_num - Get the irq number for the ring
  * @ring: pointer on ring
- * @cfg: Ring configuration parameters (see &struct k3_nav_ring_cfg)
+ *
+ * Returns the interrupt number which can be used to request the interrupt
+ */
+int k3_ringacc_get_ring_irq_num(struct k3_ring *ring);
+
+/**
+ * k3_ringacc_ring_cfg - ring configure
+ * @ring: pointer on ring
+ * @cfg: Ring configuration parameters (see &struct k3_ring_cfg)
  *
  * Configures ring, including ring memory allocation.
  * Returns 0 on success, errno otherwise.
  */
-int k3_nav_ringacc_ring_cfg(struct k3_nav_ring *ring,
-			    struct k3_nav_ring_cfg *cfg);
+int k3_ringacc_ring_cfg(struct k3_ring *ring, struct k3_ring_cfg *cfg);
 
 /**
- * k3_nav_ringacc_ring_get_size - get ring size
+ * k3_ringacc_ring_get_size - get ring size
  * @ring: pointer on ring
  *
  * Returns ring size in number of elements.
  */
-u32 k3_nav_ringacc_ring_get_size(struct k3_nav_ring *ring);
+u32 k3_ringacc_ring_get_size(struct k3_ring *ring);
 
 /**
- * k3_nav_ringacc_ring_get_free - get free elements
+ * k3_ringacc_ring_get_free - get free elements
  * @ring: pointer on ring
  *
  * Returns number of free elements in the ring.
  */
-u32 k3_nav_ringacc_ring_get_free(struct k3_nav_ring *ring);
+u32 k3_ringacc_ring_get_free(struct k3_ring *ring);
 
 /**
- * k3_nav_ringacc_ring_get_occ - get ring occupancy
+ * k3_ringacc_ring_get_occ - get ring occupancy
  * @ring: pointer on ring
  *
  * Returns total number of valid entries on the ring
  */
-u32 k3_nav_ringacc_ring_get_occ(struct k3_nav_ring *ring);
+u32 k3_ringacc_ring_get_occ(struct k3_ring *ring);
 
 /**
- * k3_nav_ringacc_ring_is_full - checks if ring is full
+ * k3_ringacc_ring_is_full - checks if ring is full
  * @ring: pointer on ring
  *
  * Returns true if the ring is full
  */
-u32 k3_nav_ringacc_ring_is_full(struct k3_nav_ring *ring);
+u32 k3_ringacc_ring_is_full(struct k3_ring *ring);
 
 /**
- * k3_nav_ringacc_ring_push - push element to the ring tail
+ * k3_ringacc_ring_push - push element to the ring tail
  * @ring: pointer on ring
  * @elem: pointer on ring element buffer
  *
  * Push one ring element to the ring tail. Size of the ring element is
- * determined by ring configuration &struct k3_nav_ring_cfg elm_size.
+ * determined by ring configuration &struct k3_ring_cfg elm_size.
  *
  * Returns 0 on success, errno otherwise.
  */
-int k3_nav_ringacc_ring_push(struct k3_nav_ring *ring, void *elem);
+int k3_ringacc_ring_push(struct k3_ring *ring, void *elem);
 
 /**
- * k3_nav_ringacc_ring_pop - pop element from the ring head
+ * k3_ringacc_ring_pop - pop element from the ring head
  * @ring: pointer on ring
  * @elem: pointer on ring element buffer
  *
  * Push one ring element from the ring head. Size of the ring element is
- * determined by ring configuration &struct k3_nav_ring_cfg elm_size..
+ * determined by ring configuration &struct k3_ring_cfg elm_size..
  *
  * Returns 0 on success, errno otherwise.
  */
-int k3_nav_ringacc_ring_pop(struct k3_nav_ring *ring, void *elem);
+int k3_ringacc_ring_pop(struct k3_ring *ring, void *elem);
 
 /**
- * k3_nav_ringacc_ring_push_head - push element to the ring head
+ * k3_ringacc_ring_push_head - push element to the ring head
  * @ring: pointer on ring
  * @elem: pointer on ring element buffer
  *
  * Push one ring element to the ring head. Size of the ring element is
- * determined by ring configuration &struct k3_nav_ring_cfg elm_size.
+ * determined by ring configuration &struct k3_ring_cfg elm_size.
  *
  * Returns 0 on success, errno otherwise.
- * Not Supported by ring modes: K3_NAV_RINGACC_RING_MODE_RING
+ * Not Supported by ring modes: K3_RINGACC_RING_MODE_RING
  */
-int k3_nav_ringacc_ring_push_head(struct k3_nav_ring *ring, void *elem);
+int k3_ringacc_ring_push_head(struct k3_ring *ring, void *elem);
 
 /**
- * k3_nav_ringacc_ring_pop_tail - pop element from the ring tail
+ * k3_ringacc_ring_pop_tail - pop element from the ring tail
  * @ring: pointer on ring
  * @elem: pointer on ring element buffer
  *
  * Push one ring element from the ring tail. Size of the ring element is
- * determined by ring configuration &struct k3_nav_ring_cfg elm_size.
+ * determined by ring configuration &struct k3_ring_cfg elm_size.
  *
  * Returns 0 on success, errno otherwise.
- * Not Supported by ring modes: K3_NAV_RINGACC_RING_MODE_RING
+ * Not Supported by ring modes: K3_RINGACC_RING_MODE_RING
  */
-int k3_nav_ringacc_ring_pop_tail(struct k3_nav_ring *ring, void *elem);
+int k3_ringacc_ring_pop_tail(struct k3_ring *ring, void *elem);
+
+u32 k3_ringacc_get_tisci_dev_id(struct k3_ring *ring);
 
 /* DMA ring support */
 struct ti_sci_handle;
@@ -244,9 +264,8 @@ struct k3_ringacc_init_data {
 	u32 num_rings;
 };
 
-struct k3_nav_ringacc *k3_ringacc_dmarings_init(struct device *dev,
-						struct k3_ringacc_init_data *data);
-
+struct k3_ringacc *k3_ringacc_dmarings_init(struct device *dev,
+					    struct k3_ringacc_init_data *data);
 struct k3_nav_ringacc *k3_navss_ringacc_get_by_phandle(struct device *dev, const char *property);
 
-#endif /* __SOC_TI_K3_NAVSS_RINGACC_API_H_ */
+#endif /* __SOC_TI_K3_RINGACC_API_H_ */

-- 
2.39.5



