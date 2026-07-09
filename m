Delivery-date: Thu, 09 Jul 2026 15:41:54 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1whp0k-001vY9-1A
	for lore@lore.pengutronix.de;
	Thu, 09 Jul 2026 15:41:54 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E4BD6200382
	for <lore@pengutronix.de>; Thu, 09 Jul 2026 15:41:52 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=j932YmpF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=INjT6IK9m/Tr3MDD+/70DKWwpyxuSgKD1cM0Vj4qn5k=; b=j932YmpFYWIGVKoqK5awxIyD+k
	j/l1f2iXH3QgrFg5J9kNilcWGABy60LZ2+PQcPi/RP5Na2r3wnj3EYYO0cbNg2Q4UVnVoCVqEnkh9
	RCw2ioUgbdTE6bR26zHVoed+b2swwVbv3y+7R4XPIAWtHpaSyJLNs2QwUZjitSID2SJaSDehw/OHT
	lQLpGSu17L/KKR6bxK79uD1kAd3w63kaM+V2dLviF3U0qBsZBsEzvIi25m+s5AgsZxh5fBnwdOUD6
	5sW6Riql34sI6Ru0SrNykkMbrXR+/koi8NsbYr+M+P/XikiaUuDJoyTzDS/IMFTs8WNPkDPRJ4A/V
	K+FEwrTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whp0H-00000002aZe-3iSu;
	Thu, 09 Jul 2026 13:41:25 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whp0B-00000002aYs-2VDk
	for barebox@lists.infradead.org;
	Thu, 09 Jul 2026 13:41:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9E5DD2001CD;
	Thu, 09 Jul 2026 15:41:15 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1whp07-000vW8-1l;
	Thu, 09 Jul 2026 15:41:15 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1whp07-0000000Du9P-1tOi;
	Thu, 09 Jul 2026 15:41:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] dma: return NULL on dma_alloc_coherent failure
Date: Thu,  9 Jul 2026 15:41:05 +0200
Message-ID: <20260709134111.3314089-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_064122_591413_3136D8AA 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The majority of our calls to dma_alloc_coherent check for
   a NULL return that would indicate an error as that's the Linux API as well.
    In barebox, dma_alloc_coherent panics though. This mostly doesn't matter,
    because these are mostly fixed size allocations at driver probe time, but
    we have some older code like the Freescale UDC drive [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-5.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E4BD6200382
X-Stat-Signature: oyqn9i8qytdx9y4yi8jzduk51aigow6y

The majority of our calls to dma_alloc_coherent check for a NULL return
that would indicate an error as that's the Linux API as well.

In barebox, dma_alloc_coherent panics though. This mostly doesn't matter,
because these are mostly fixed size allocations at driver probe time,
but we have some older code like the Freescale UDC driver that allocates
coherent memory out of a poller context.

This can turn a simple out-of-memory condition when writing too many bytes
over fastboot into a panic.

Make the failure mode graceful by propagating -ENOMEM instead.

Reported-by: matthias:dieholzkatze.de # Matrix
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c         |  4 +++-
 arch/arm/include/asm/dma.h        |  4 +++-
 arch/mips/include/asm/dma.h       |  5 ++++-
 arch/riscv/cpu/dma.c              |  4 +++-
 arch/sandbox/include/asm/dma.h    |  4 +++-
 arch/x86/include/asm/dma.h        |  5 +++--
 drivers/crypto/caam/caamrng.c     |  2 ++
 drivers/crypto/caam/pbl-init.c    |  7 +++++--
 drivers/dma/ti/k3-udma-am62l.c    |  4 ++++
 drivers/dma/ti/k3-udma.c          |  4 ++++
 drivers/firmware/qemu_fw_cfg.c    |  4 ++++
 drivers/net/ag71xx.c              |  6 +++++-
 drivers/net/arc_emac.c            |  3 +++
 drivers/net/at91_ether.c          |  5 +++++
 drivers/net/e1000/main.c          |  2 ++
 drivers/net/fec_imx.c             |  5 +++++
 drivers/net/gianfar.c             |  8 +++++++-
 drivers/net/macb.c                |  9 ++++++++-
 drivers/net/mvneta.c              | 11 +++++++++--
 drivers/net/orion-gbe.c           |  4 ++++
 drivers/net/r8169_main.c          | 17 +++++++++++++++--
 drivers/net/rtl8139.c             |  3 +++
 drivers/soc/starfive/jh7100_dma.c |  4 +++-
 drivers/usb/host/ehci-hcd.c       | 10 ++++++++++
 drivers/video/atmel_lcdfb_core.c  |  7 ++++++-
 drivers/video/pxa.c               |  5 +++++
 drivers/video/ramfb.c             |  2 ++
 27 files changed, 130 insertions(+), 18 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index b84485a2763e..615ad421c12f 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -43,7 +43,9 @@ void *dma_alloc_map(struct device *dev,
 	void *ret;
 
 	size = PAGE_ALIGN(size);
-	ret = xmemalign(PAGE_SIZE, size);
+	ret = memalign(PAGE_SIZE, size);
+	if (!ret)
+		return NULL;
 	if (dma_handle)
 		*dma_handle = (dma_addr_t)ret;
 
diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index 2232ebac8b88..208bc652c70d 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -16,7 +16,9 @@ struct device;
 static inline void *dma_alloc_coherent(struct device *dev,
 				       size_t size, dma_addr_t *dma_handle)
 {
-	void *ret = xmemalign(4096, size);
+	void *ret = memalign(4096, size);
+	if (!ret)
+		return NULL;
 	if (dma_handle)
 		*dma_handle = (dma_addr_t)ret;
 
diff --git a/arch/mips/include/asm/dma.h b/arch/mips/include/asm/dma.h
index e5c8abd0bf1e..c1cf0e50afe5 100644
--- a/arch/mips/include/asm/dma.h
+++ b/arch/mips/include/asm/dma.h
@@ -30,7 +30,10 @@ static inline void *dma_alloc_coherent(struct device *dev,
 	void *ptr;
 	unsigned long virt;
 
-	ptr = xmemalign(PAGE_SIZE, size);
+	ptr = memalign(PAGE_SIZE, size);
+	if (!ptr)
+		return NULL;
+
 	memset(ptr, 0, size);
 
 	virt = (unsigned long)ptr;
diff --git a/arch/riscv/cpu/dma.c b/arch/riscv/cpu/dma.c
index 0a4b398c2e3c..fd4a907ff652 100644
--- a/arch/riscv/cpu/dma.c
+++ b/arch/riscv/cpu/dma.c
@@ -14,7 +14,9 @@ static void *__dma_alloc_coherent(struct device *dev,
 {
 	void *ret;
 
-	ret = xmemalign(PAGE_SIZE, size);
+	ret = memalign(PAGE_SIZE, size);
+	if (!ret)
+		return NULL;
 
 	memset(ret, 0, size);
 
diff --git a/arch/sandbox/include/asm/dma.h b/arch/sandbox/include/asm/dma.h
index d69cc8fe9f91..a046469c37b3 100644
--- a/arch/sandbox/include/asm/dma.h
+++ b/arch/sandbox/include/asm/dma.h
@@ -20,7 +20,9 @@ struct device;
 static inline void *dma_alloc_coherent(struct device *dev,
 				       size_t size, dma_addr_t *dma_handle)
 {
-	void *ret = xmemalign(4096, size);
+	void *ret = memalign(4096, size);
+	if (!ret)
+		return NULL;
 	if (dma_handle)
 		*dma_handle = (dma_addr_t)ret;
 
diff --git a/arch/x86/include/asm/dma.h b/arch/x86/include/asm/dma.h
index 815e1964b184..53c08bb12f70 100644
--- a/arch/x86/include/asm/dma.h
+++ b/arch/x86/include/asm/dma.h
@@ -6,7 +6,6 @@
 
 #include <linux/string.h>
 #include <linux/compiler.h>
-#include <xfuncs.h>
 #include <malloc.h>
 
 struct device;
@@ -19,7 +18,9 @@ struct device;
 static inline void *dma_alloc_coherent(struct device *dev,
 				       size_t size, dma_addr_t *dma_handle)
 {
-	void *ret = xmemalign(4096, size);
+	void *ret = memalign(4096, size);
+	if (!ret)
+		return NULL;
 	if (dma_handle)
 		*dma_handle = (dma_addr_t)ret;
 
diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrng.c
index ab32f9dde745..4d0a2d3c383c 100644
--- a/drivers/crypto/caam/caamrng.c
+++ b/drivers/crypto/caam/caamrng.c
@@ -211,6 +211,8 @@ static int caam_init_buf(struct caam_rng_ctx *ctx, int buf_id)
 
 	bd->buf = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 				     RN_BUF_SIZE, &bd->addr);
+	if (!bd->buf)
+		return -ENOMEM;
 
 	err = rng_create_job_desc(ctx, buf_id);
 	if (err)
diff --git a/drivers/crypto/caam/pbl-init.c b/drivers/crypto/caam/pbl-init.c
index 9e1c966050e0..178d6e691f74 100644
--- a/drivers/crypto/caam/pbl-init.c
+++ b/drivers/crypto/caam/pbl-init.c
@@ -454,11 +454,14 @@ int early_caam_init(struct caam_ctrl __iomem *_caam, bool is_imx)
 	 * PBL will only enable MMU right before unpacking, so all memory
 	 * is uncached and thus coherent here
 	 */
-	if (IN_PBL)
+	if (IN_PBL) {
 		g_jrdata = &pbl_jrdata;
-	else
+	} else {
 		g_jrdata = dma_alloc_coherent(DMA_DEVICE_BROKEN, sizeof(*g_jrdata),
 					      DMA_ADDRESS_BROKEN);
+		if (!g_jrdata)
+			return -ENOMEM;
+	}
 
 	jr = IOMEM(caam) + 0x1000;
 	r4tst = &caam->r4tst[0];
diff --git a/drivers/dma/ti/k3-udma-am62l.c b/drivers/dma/ti/k3-udma-am62l.c
index ba54ba53e6d4..81ad348ae713 100644
--- a/drivers/dma/ti/k3-udma-am62l.c
+++ b/drivers/dma/ti/k3-udma-am62l.c
@@ -215,9 +215,13 @@ static int am62l_udma_request(struct dma *dma)
 
 	if (uc->config.dir == DMA_MEM_TO_DEV) {
 		uc->desc_tx = dma_alloc_coherent(DMA_DEVICE_BROKEN, ucc->hdesc_size, DMA_ADDRESS_BROKEN);
+		if (!uc->desc_tx)
+			return -ENOMEM;
 	} else {
 		uc->desc_rx = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 						 ucc->hdesc_size * UDMA_RX_DESC_NUM, DMA_ADDRESS_BROKEN);
+		if (!uc->desc_rx)
+			return -ENOMEM;
 	}
 
 	uc->in_use = true;
diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
index 1f0594749549..6d4270931981 100644
--- a/drivers/dma/ti/k3-udma.c
+++ b/drivers/dma/ti/k3-udma.c
@@ -1146,9 +1146,13 @@ static int udma_request(struct dma *dma)
 
 	if (uc->config.dir == DMA_MEM_TO_DEV) {
 		uc->desc_tx = dma_alloc_coherent(DMA_DEVICE_BROKEN, ucc->hdesc_size, DMA_ADDRESS_BROKEN);
+		if (!uc->desc_tx)
+			return -ENOMEM;
 	} else {
 		uc->desc_rx = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 				ucc->hdesc_size * UDMA_RX_DESC_NUM, DMA_ADDRESS_BROKEN);
+		if (!uc->desc_rx)
+			return -ENOMEM;
 	}
 
 	uc->in_use = true;
diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index 7a699539d672..0ccb0b881d94 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -338,6 +338,10 @@ static int fw_cfg_probe(struct device *dev)
 
 	fw_cfg->acc_virt = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 					      sizeof(*fw_cfg->acc_virt), &fw_cfg->acc_dma);
+	if (!fw_cfg->acc_virt) {
+		ret = -ENOMEM;
+		goto err;
+	}
 
 	fw_cfg->cdev.name = "fw_cfg";
 	fw_cfg->cdev.flags = DEVFS_IS_CHARACTER_DEV;
diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index 62b299dd900d..b3cc7fc30edd 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -635,13 +635,17 @@ static int ag71xx_probe(struct device *dev)
 	ag71xx_wr(priv, AG71XX_REG_FIFO_CFG5, (0x66b82) | (1 << 19));
 	ag71xx_wr(priv, AG71XX_REG_FIFO_CFG3, 0x1f00140);
 
-	priv->rx_buffer = xmemalign(PAGE_SIZE, NO_OF_RX_FIFOS * MAX_RBUFF_SZ);
+	priv->rx_buffer = memalign(PAGE_SIZE, NO_OF_RX_FIFOS * MAX_RBUFF_SZ);
 	priv->fifo_tx = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 					   NO_OF_TX_FIFOS * sizeof(ag7240_desc_t),
 					   &priv->addr_tx);
 	priv->fifo_rx = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 					   NO_OF_RX_FIFOS * sizeof(ag7240_desc_t),
 					   &priv->addr_rx);
+
+	if (!priv->rx_buffer || !priv->fifo_tx || !priv->fifo_rx)
+		return -ENOMEM;
+
 	priv->next_tx = 0;
 
 	mac_l = 0x3344;
diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 1e4d5ba7afce..520b9e5c2fdb 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -443,6 +443,9 @@ static int arc_emac_probe(struct device *dev)
 					DMA_ADDRESS_BROKEN);
 	priv->rxbuf = dma_alloc(RX_BD_NUM * PKTSIZE);
 
+	if (!priv->rxbd || !priv->txbd || !priv->rxbuf)
+		return -ENOMEM;
+
 	/* Set poll rate so that it polls every 1 ms */
 	arc_reg_set(priv, R_POLLRATE, clock_frequency / 1000000);
 
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 7d20e7994ece..fe4bd86992b3 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -318,9 +318,14 @@ static int at91_ether_probe(struct device *dev)
 	ether_dev->rbf_framebuf = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 						     MAX_RX_DESCR * MAX_RBUFF_SZ,
 						     DMA_ADDRESS_BROKEN);
+	if (!ether_dev->rbf_framebuf)
+		return -ENOMEM;
+
 	ether_dev->rbfdt = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 					      sizeof(struct rbf_t) * MAX_RX_DESCR,
 					      DMA_ADDRESS_BROKEN);
+	if (!ether_dev->rbfdt)
+		return -ENOMEM;
 
 	ether_dev->phy_addr = pdata->phy_addr;
 	miibus->read = at91_ether_mii_read;
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 08d8fba43bb9..182db47ea7be 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3595,6 +3595,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 					 16 * sizeof(*hw->tx_base), &hw->tx_base_phys);
 	hw->rx_base = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 					 16 * sizeof(*hw->rx_base), &hw->rx_base_phys);
+	if (!hw->tx_base || !hw->rx_base)
+		return -ENOMEM;
 
 	edev = &hw->edev;
 
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 8474e6d5be9c..cc4e1ff2a6e2 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -865,6 +865,11 @@ static int fec_probe(struct device *dev)
 
 	base = dma_alloc_coherent(DMA_DEVICE_BROKEN, FEC_XBD_SIZE,
 				  DMA_ADDRESS_BROKEN);
+	if (!base) {
+		ret = -ENOMEM;
+		goto free_gpio;
+	}
+
 	fec->rbd_base = base;
 	base += FEC_RBD_NUM * sizeof(struct buffer_descriptor);
 	fec->tbd_base = base;
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index cd43b29f40a8..551950d89988 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -655,11 +655,17 @@ static int gfar_probe(struct device *dev)
 	size = ((TX_BUF_CNT * sizeof(struct txbd8)) +
 			(RX_BUF_CNT * sizeof(struct rxbd8)));
 	if (IS_ENABLED(CONFIG_PPC)) {
-		base = xmemalign(BUF_ALIGN, size);
+		base = memalign(BUF_ALIGN, size);
 	} else {
 		base = dma_alloc_coherent(DMA_DEVICE_BROKEN, size, DMA_ADDRESS_BROKEN);
 		dma_set_mask(dev, DMA_BIT_MASK(32));
 	}
+
+	if (!base) {
+		ret = -ENOMEM;
+		goto free_received_packets;
+	}
+
 	priv->txbd = (struct txbd8 __iomem *)base;
 	base += TX_BUF_CNT * sizeof(struct txbd8);
 	priv->rxbd = (struct rxbd8 __iomem *)base;
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 26bc3130bf59..012372b66ed0 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -907,9 +907,16 @@ static int macb_probe(struct device *dev)
 	macb->tx_ring = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 					   TX_RING_BYTES, &macb->tx_ring_phys);
 
-	if (macb->is_gem)
+	if (!macb->rx_ring || !macb->tx_ring)
+		return -ENOMEM;
+
+
+	if (macb->is_gem) {
 		macb->gem_q1_descs = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 				GEM_Q1_DESC_BYTES, &macb->gem_q1_descs_phys);
+		if (!macb->gem_q1_descs)
+			return -ENOMEM;
+	}
 
 	macb->rx_packet_buf = net_alloc_packet();
 
diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index 3178c6e8867b..5feb68c03073 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -576,7 +576,7 @@ static void mvneta_init_rx_ring(struct mvneta_port *priv)
 	priv->curr_rxdesc = 0;
 }
 
-static void mvneta_setup_tx_rx(struct mvneta_port *priv)
+static int mvneta_setup_tx_rx(struct mvneta_port *priv)
 {
 	u32 val;
 
@@ -590,6 +590,9 @@ static void mvneta_setup_tx_rx(struct mvneta_port *priv)
 					  DMA_ADDRESS_BROKEN);
 	priv->rxbuf = dma_alloc(RX_RING_SIZE * ALIGN(PKTSIZE, 8));
 
+	if (!priv->txdesc || !priv->rxdesc || !priv->rxbuf)
+		return -ENOMEM;
+
 	mvneta_init_rx_ring(priv);
 
 	/* Configure the Rx queue */
@@ -610,6 +613,8 @@ static void mvneta_setup_tx_rx(struct mvneta_port *priv)
 	/* Set the number of available Rx descriptors */
 	writel(RX_RING_SIZE << MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT,
 	       priv->reg + MVNETA_RXQ_STATUS_UPDATE_REG(0));
+
+	return 0;
 }
 
 static int mvneta_port_config(struct mvneta_port *priv)
@@ -730,7 +735,9 @@ static int mvneta_probe(struct device *dev)
 		return ret;
 
 	mvneta_conf_mbus_windows(priv);
-	mvneta_setup_tx_rx(priv);
+	ret = mvneta_setup_tx_rx(priv);
+	if (ret)
+		return ret;
 
 	/* register eth device */
 	priv->edev.priv = priv;
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index 982d6436c9c0..abf3956c8f9d 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -409,6 +409,10 @@ static int port_probe(struct device *parent, struct port_priv *port)
 					  RX_RING_SIZE *
 					  ALIGN(sizeof(*port->rxdesc), 16),
 					  DMA_ADDRESS_BROKEN);
+
+	if (!port->txdesc || !port->rxdesc)
+		return -ENOMEM;
+
 	port->rxbuf = dma_alloc(RX_RING_SIZE * ALIGN(PKTSIZE, 8));
 
 	port_stop(port);
diff --git a/drivers/net/r8169_main.c b/drivers/net/r8169_main.c
index bc2040a0173f..444bdecb9b7f 100644
--- a/drivers/net/r8169_main.c
+++ b/drivers/net/r8169_main.c
@@ -2874,7 +2874,7 @@ static int rtl8169_init_dev(struct eth_device *edev)
 #define ETH_ZLEN        60              /* Min. octets in frame sans FCS */
 #define PKT_BUF_SIZE   1536
 
-static void rtl8169_init_ring(struct rtl8169_private *tp)
+static int rtl8169_init_ring(struct rtl8169_private *tp)
 {
 	struct eth_device *edev = &tp->edev;
 	int i;
@@ -2884,14 +2884,22 @@ static void rtl8169_init_ring(struct rtl8169_private *tp)
 	tp->TxDescArray = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 					     NUM_TX_DESC * sizeof(struct TxDesc),
 					     &tp->TxPhyAddr);
+	if (!tp->TxDescArray)
+		return -ENOMEM;
+
 	tp->tx_buf = dma_alloc(NUM_TX_DESC * PKT_BUF_SIZE);
+
 	tp->tx_buf_phys = dma_map_single(edev->parent, tp->tx_buf,
 					   NUM_TX_DESC * PKT_BUF_SIZE, DMA_TO_DEVICE);
 
 	tp->RxDescArray = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 					     NUM_RX_DESC * sizeof(struct RxDesc),
 					     &tp->RxPhyAddr);
+	if (!tp->RxDescArray)
+		return -ENOMEM;
+
 	tp->rx_buf = dma_alloc(NUM_RX_DESC * PKT_BUF_SIZE);
+
 	tp->rx_buf_phys = dma_map_single(edev->parent, tp->rx_buf,
 					   NUM_RX_DESC * PKT_BUF_SIZE, DMA_FROM_DEVICE);
 
@@ -2906,6 +2914,8 @@ static void rtl8169_init_ring(struct rtl8169_private *tp)
 		tp->RxDescArray[i].addr =
 				cpu_to_le64(tp->rx_buf_phys + i * PKT_BUF_SIZE);
 	}
+
+	return 0;
 }
 
 static void r8169_phylink_handler(struct eth_device *edev)
@@ -2922,7 +2932,10 @@ static int rtl8169_eth_open(struct eth_device *edev)
 
 	pci_set_master(tp->pci_dev);
 
-	rtl8169_init_ring(tp);
+	ret = rtl8169_init_ring(tp);
+	if (ret)
+		return ret;
+
 	rtl_hw_start(tp);
 
 	ret = phy_device_connect(edev, &tp->miibus, 0, r8169_phylink_handler, 0,
diff --git a/drivers/net/rtl8139.c b/drivers/net/rtl8139.c
index a1cad520599c..13f7baa50922 100644
--- a/drivers/net/rtl8139.c
+++ b/drivers/net/rtl8139.c
@@ -386,6 +386,9 @@ static int rtl8139_eth_open(struct eth_device *edev)
 					   &priv->tx_bufs_dma);
 	priv->rx_ring = dma_alloc_coherent(DMA_DEVICE_BROKEN, RX_BUF_TOT_LEN,
 					   &priv->rx_ring_dma);
+	if (!priv->tx_bufs || !priv->rx_ring)
+		return -ENOMEM;
+
 	priv->tx_flag = (TX_FIFO_THRESH << 11) & 0x003f0000;
 
 	rtl8139_init_ring(priv);
diff --git a/drivers/soc/starfive/jh7100_dma.c b/drivers/soc/starfive/jh7100_dma.c
index 732dfacdb597..64f88d29b8b4 100644
--- a/drivers/soc/starfive/jh7100_dma.c
+++ b/drivers/soc/starfive/jh7100_dma.c
@@ -16,7 +16,9 @@ static inline void *jh7100_alloc_coherent(struct device *dev,
 	dma_addr_t cpu_base;
 	void *ret;
 
-	ret = xmemalign(PAGE_SIZE, size);
+	ret = memalign(PAGE_SIZE, size);
+	if (!ret)
+		return NULL;
 
 	memset(ret, 0, size);
 
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 51b9e52a4ffe..bb6cb47da09c 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -915,6 +915,8 @@ static int ehci_init(struct usb_host *host)
 		 */
 		ehci->periodic_list = dma_alloc_coherent(DMA_DEVICE_BROKEN, 1024 * 4,
 						&ehci->periodic_list_dma);
+	if (ehci->periodic_list == NULL)
+		return -ENOMEM;
 	for (i = 0; i < 1024; i++) {
 		ehci->periodic_list[i] = cpu_to_hc32((unsigned long)ehci->periodic_queue_dma
 						| QH_LINK_TYPE_QH);
@@ -1134,11 +1136,16 @@ static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 	result->first = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 					   sizeof(struct QH) * queuesize,
 					   &result->first_dma);
+	if (!result->first)
+		return NULL;
+
 	result->current = result->first;
 	result->last = result->first + queuesize - 1;
 	result->tds = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 					 sizeof(struct qTD) * queuesize,
 					 &result->tds_dma);
+	if (!result->tds)
+		return NULL;
 
 	for (i = 0; i < queuesize; i++) {
 		struct QH *qh = result->first + i;
@@ -1379,6 +1386,9 @@ struct ehci_host *ehci_register(struct device *dev, struct ehci_data *data)
 				      sizeof(struct qTD) * NUM_TD,
 				      &ehci->td_dma);
 
+	if (!ehci->qh_list || !ehci->periodic_queue || !ehci->td)
+		return NULL;
+
 	host->hw_dev = dev;
 	host->init = ehci_init;
 	host->usbphy = data->usbphy;
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index d7f33bdb4fe8..ac7ed854050c 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -476,10 +476,15 @@ int atmel_lcdc_register(struct device *dev, struct atmel_lcdfb_devdata *data)
 
 	atmel_lcdfb_start_clock(sinfo);
 
-	if (data->dma_desc_size)
+	if (data->dma_desc_size) {
 		sinfo->dma_desc = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 						     data->dma_desc_size,
 						     DMA_ADDRESS_BROKEN);
+		if (!sinfo->dma_desc) {
+			ret = -ENOMEM;
+			goto stop_clk;
+		}
+	}
 
 	info->dev.parent = dev;
 	ret = register_framebuffer(info);
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index 9d7dfb185f17..f4078b229a87 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -520,9 +520,14 @@ static int pxafb_probe(struct device *dev)
 						     DMA_ADDRESS_BROKEN),
 				  PAGE_SIZE);
 
+	if (!fbi->info.screen_base)
+		return -ENOMEM;
+
 	fbi->dma_buff = PTR_ALIGN(dma_alloc_coherent(DMA_DEVICE_BROKEN,
 						     sizeof(struct pxafb_dma_buff) + 16,
 				DMA_ADDRESS_BROKEN), 16);
+	if (!fbi->dma_buff)
+		return -ENOMEM;
 
 	pxafb_activate_var(fbi);
 
diff --git a/drivers/video/ramfb.c b/drivers/video/ramfb.c
index 7d0413afb5e2..0ad864c8d36c 100644
--- a/drivers/video/ramfb.c
+++ b/drivers/video/ramfb.c
@@ -41,6 +41,8 @@ static int ramfb_activate_var(struct fb_info *fbi)
 	fbi->screen_size = fbi->xres * fbi->yres * fbi->bits_per_pixel / BITS_PER_BYTE;
 	fbi->screen_base = dma_alloc_coherent(hwdev, fbi->screen_size,
 					      &ramfb->screen_dma);
+	if (!fbi->screen_base)
+		return -ENOMEM;
 
 	return 0;
 }
-- 
2.47.3



