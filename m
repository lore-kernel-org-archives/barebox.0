Delivery-date: Mon, 31 May 2021 09:42:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncZ7-0003FX-8Y
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:42:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncZ5-0001X7-OX
	for lore@pengutronix.de; Mon, 31 May 2021 09:42:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sM7rt+IsDGsvIdp747jELi2xay2fx6gTA7BAWFmRfY=; b=dBy0lt7tmrhm3/
	nRjwNtF3EOPp+Tgl/lWkBVYh3E6xp1Suttrz7/9yHZDS/0Ou5jMIGTEjDf7Ey4IiSPaByGrKynz/k
	93o62AtzS6vek1C2OcdAsIpxkKd1lZKrEsAa5kSCBHG3cVpG+d9Kw4hT+1bReXf19M00dnrI54s+n
	QJb4vb1+Zy0SJueUgPvtHeDNxKhcKf+0c5kGHJzkIILjgglglgR3cCM/uVo1hNmIEW2OgTKU3AhL2
	xgYLgD3vDCSAI1fyopwQEg/veBtlSz5FgcSig6Z5fHpsiQPkC4yqsGNiy5L6YE6SkF+5NtMa20JL9
	Fadcpk7wCt+4zviKHVbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncXO-00BDtH-5G; Mon, 31 May 2021 07:40:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncVN-00BChs-Ru
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:38:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVE-00080L-Gd; Mon, 31 May 2021 09:38:24 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVD-000462-2T; Mon, 31 May 2021 09:38:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:38:11 +0200
Message-Id: <20210531073821.15257-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531073821.15257-1-a.fatoum@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_003834_022633_FDE03852 
X-CRM114-Status: GOOD (  15.53  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/20] net: designware: fix 64-bit incompatibilities
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

drivers/net/designware.c handles the older Designware < 4.x MAC IPs,
which do not support DMA beyond 32-bit. They are still being integrated
into SoCs with 64-bit CPUs like the StarFive JH7100.

Fix the driver to support such usage. The driver still has the assumption
that barebox core will only pass it 32-bit pointers. This is now made
explicit by returning error codes when the DMA mask is violated.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/include/asm/io.h | 10 ++++++++++
 drivers/net/designware.c    | 28 +++++++++++++++-------------
 drivers/net/designware.h    |  6 ++++--
 3 files changed, 29 insertions(+), 15 deletions(-)

diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
index 3cdea7fcace1..795e670e3b9b 100644
--- a/arch/riscv/include/asm/io.h
+++ b/arch/riscv/include/asm/io.h
@@ -5,4 +5,14 @@
 
 #include <asm-generic/io.h>
 
+static inline void *phys_to_virt(unsigned long phys)
+{
+	return (void *)phys;
+}
+
+static inline unsigned long virt_to_phys(volatile void *mem)
+{
+	return (unsigned long)mem;
+}
+
 #endif /* __ASM_RISCV_IO_H */
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index e815d74ce9b8..71c62d7ddc94 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -111,8 +111,8 @@ static void tx_descs_init(struct eth_device *dev)
 
 	for (idx = 0; idx < CONFIG_TX_DESCR_NUM; idx++) {
 		desc_p = &desc_table_p[idx];
-		desc_p->dmamac_addr = &txbuffs[idx * CONFIG_ETH_BUFSIZE];
-		desc_p->dmamac_next = &desc_table_p[idx + 1];
+		desc_p->dmamac_addr = virt_to_phys(&txbuffs[idx * CONFIG_ETH_BUFSIZE]);
+		desc_p->dmamac_next = virt_to_phys(&desc_table_p[idx + 1]);
 
 		if (priv->enh_desc) {
 			desc_p->txrx_status &= ~(DESC_ENH_TXSTS_TXINT | DESC_ENH_TXSTS_TXLAST |
@@ -130,7 +130,7 @@ static void tx_descs_init(struct eth_device *dev)
 	}
 
 	/* Correcting the last pointer of the chain */
-	desc_p->dmamac_next = &desc_table_p[0];
+	desc_p->dmamac_next = virt_to_phys(&desc_table_p[0]);
 
 	writel((ulong)&desc_table_p[0], &dma_p->txdesclistaddr);
 	priv->tx_currdescnum = 0;
@@ -147,8 +147,8 @@ static void rx_descs_init(struct eth_device *dev)
 
 	for (idx = 0; idx < CONFIG_RX_DESCR_NUM; idx++) {
 		desc_p = &desc_table_p[idx];
-		desc_p->dmamac_addr = &rxbuffs[idx * CONFIG_ETH_BUFSIZE];
-		desc_p->dmamac_next = &desc_table_p[idx + 1];
+		desc_p->dmamac_addr = virt_to_phys(&rxbuffs[idx * CONFIG_ETH_BUFSIZE]);
+		desc_p->dmamac_next = virt_to_phys(&desc_table_p[idx + 1]);
 
 		desc_p->dmamac_cntl = MAC_MAX_FRAME_SZ;
 		if (priv->enh_desc)
@@ -156,13 +156,13 @@ static void rx_descs_init(struct eth_device *dev)
 		else
 			desc_p->dmamac_cntl |= DESC_RXCTRL_RXCHAIN;
 
-		dma_sync_single_for_cpu((unsigned long)desc_p->dmamac_addr,
+		dma_sync_single_for_cpu(desc_p->dmamac_addr,
 					CONFIG_ETH_BUFSIZE, DMA_FROM_DEVICE);
 		desc_p->txrx_status = DESC_RXSTS_OWNBYDMA;
 	}
 
 	/* Correcting the last pointer of the chain */
-	desc_p->dmamac_next = &desc_table_p[0];
+	desc_p->dmamac_next = virt_to_phys(&desc_table_p[0]);
 
 	writel((ulong)&desc_table_p[0], &dma_p->rxdesclistaddr);
 	priv->rx_currdescnum = 0;
@@ -285,8 +285,8 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
 		return -1;
 	}
 
-	memcpy((void *)desc_p->dmamac_addr, packet, length);
-	dma_sync_single_for_device((unsigned long)desc_p->dmamac_addr, length,
+	memcpy(dmamac_addr(desc_p), packet, length);
+	dma_sync_single_for_device(desc_p->dmamac_addr, length,
 				   DMA_TO_DEVICE);
 
 	if (priv->enh_desc) {
@@ -314,7 +314,7 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
 
 	/* Start the transmission */
 	writel(POLL_DATA, &dma_p->txpolldemand);
-	dma_sync_single_for_cpu((unsigned long)desc_p->dmamac_addr, length,
+	dma_sync_single_for_cpu(desc_p->dmamac_addr, length,
 				DMA_TO_DEVICE);
 
 	return 0;
@@ -358,10 +358,10 @@ static int dwc_ether_rx(struct eth_device *dev)
 		length = (status & DESC_RXSTS_FRMLENMSK) >>
 			 DESC_RXSTS_FRMLENSHFT;
 
-		dma_sync_single_for_cpu((unsigned long)desc_p->dmamac_addr,
+		dma_sync_single_for_cpu(desc_p->dmamac_addr,
 					length, DMA_FROM_DEVICE);
-		net_receive(dev, desc_p->dmamac_addr, length);
-		dma_sync_single_for_device((unsigned long)desc_p->dmamac_addr,
+		net_receive(dev, dmamac_addr(desc_p), length);
+		dma_sync_single_for_device(desc_p->dmamac_addr,
 					   length, DMA_FROM_DEVICE);
 		ret = length;
 	}
@@ -451,6 +451,8 @@ struct dw_eth_dev *dwc_drv_probe(struct device_d *dev)
 	int ret;
 	struct dw_eth_drvdata *drvdata;
 
+	dma_set_mask(dev, DMA_BIT_MASK(32));
+
 	priv = xzalloc(sizeof(struct dw_eth_dev));
 
 	ret = dev_get_drvdata(dev, (const void **)&drvdata);
diff --git a/drivers/net/designware.h b/drivers/net/designware.h
index ef3705b1e387..a085a6f16ad1 100644
--- a/drivers/net/designware.h
+++ b/drivers/net/designware.h
@@ -139,10 +139,12 @@ struct eth_dma_regs {
 struct dmamacdescr {
 	u32 txrx_status;
 	u32 dmamac_cntl;
-	void *dmamac_addr;
-	struct dmamacdescr *dmamac_next;
+	u32 dmamac_addr;
+	u32 dmamac_next;
 };
 
+#define dmamac_addr(descr) (phys_to_virt((descr)->dmamac_addr))
+
 /*
  * txrx_status definitions
  */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

