Delivery-date: Sat, 19 Jun 2021 06:53:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyt-0004WS-0p
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:53:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyq-0000pL-Fw
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:53:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krPOMKpvvozOGxRStUCVh07MgFZEw16C6gOSwNN1ACU=; b=u1+zunNjyeUjIl
	c+RqWCpeDp/j9d8gwX1YYVDhXEXZsCYzrtwnO18x53tiIP/sfpdNFfbX2sdLHC2RMJZpND77MXs7X
	DZP/7nfqwBCcdJutKuaQeZHY6MldmQNcQ9u1YkLLie0c1X+6MWElo7MiOi+ByfQgHugPkD5w9U3j6
	FrD3XwgNkG0R/resbqLVOP4x20aK8C0gHCcLTr+QMNX2ejfVny5URT+x+yN/a6rHbSNrTGLbPWvNb
	rjXnENrDQ3gAFiPv8JNEHXT3STgN14RzS+8h4akDx1dapi3SZ0PtCk8kcuEYzAjopGfWjcusMkiiF
	g7PFx5GfyRuG2OcXPcbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSxP-00GI5T-89; Sat, 19 Jun 2021 04:51:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwi-00GHfp-RM
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008MC-DX; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001LA-Ry; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:41 +0200
Message-Id: <20210619045055.779-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215105_144486_6D5098B4 
X-CRM114-Status: GOOD (  17.41  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 15/29] net: designware: fix non-1:1 mapped 64-bit systems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

drivers/net/designware.c handles the older Designware < 4.x MAC IPs,
which do not support DMA beyond 32-bit. They are still being integrated
into SoCs with 64-bit CPUs like the StarFive JH7100, which additionally
needs a non 1:1 mapping for coherent DMA.

Fix the driver to support such usage. The driver still has the assumption
that barebox core will only pass it 32-bit pointers. This is now made
explicit by returning error codes when the DMA mask is violated.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/include/asm/io.h | 10 +++++++
 drivers/net/designware.c    | 57 ++++++++++++++++++++++---------------
 drivers/net/designware.h    | 28 +++++++++++++++---
 3 files changed, 68 insertions(+), 27 deletions(-)

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
index 0ee6d3d78ac7..559e202c29ce 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -104,15 +104,15 @@ static void tx_descs_init(struct eth_device *dev)
 {
 	struct dw_eth_dev *priv = dev->priv;
 	struct eth_dma_regs *dma_p = priv->dma_regs_p;
-	struct dmamacdescr *desc_table_p = &priv->tx_mac_descrtable[0];
+	struct dmamacdescr *desc_table_p = &priv->tx_mac_descrtable_cpu[0];
 	char *txbuffs = &priv->txbuffs[0];
 	struct dmamacdescr *desc_p;
 	u32 idx;
 
 	for (idx = 0; idx < CONFIG_TX_DESCR_NUM; idx++) {
 		desc_p = &desc_table_p[idx];
-		desc_p->dmamac_addr = &txbuffs[idx * CONFIG_ETH_BUFSIZE];
-		desc_p->dmamac_next = &desc_table_p[idx + 1];
+		desc_p->dmamac_addr = virt_to_phys(&txbuffs[idx * CONFIG_ETH_BUFSIZE]);
+		desc_p->dmamac_next = tx_dma_addr(priv, &desc_table_p[idx + 1]);
 
 		if (priv->enh_desc) {
 			desc_p->txrx_status &= ~(DESC_ENH_TXSTS_TXINT | DESC_ENH_TXSTS_TXLAST |
@@ -130,9 +130,9 @@ static void tx_descs_init(struct eth_device *dev)
 	}
 
 	/* Correcting the last pointer of the chain */
-	desc_p->dmamac_next = &desc_table_p[0];
+	desc_p->dmamac_next = tx_dma_addr(priv, &desc_table_p[0]);
 
-	writel((ulong)&desc_table_p[0], &dma_p->txdesclistaddr);
+	writel(desc_p->dmamac_next, &dma_p->txdesclistaddr);
 	priv->tx_currdescnum = 0;
 }
 
@@ -140,15 +140,15 @@ static void rx_descs_init(struct eth_device *dev)
 {
 	struct dw_eth_dev *priv = dev->priv;
 	struct eth_dma_regs *dma_p = priv->dma_regs_p;
-	struct dmamacdescr *desc_table_p = &priv->rx_mac_descrtable[0];
+	struct dmamacdescr *desc_table_p = &priv->rx_mac_descrtable_cpu[0];
 	char *rxbuffs = &priv->rxbuffs[0];
 	struct dmamacdescr *desc_p;
 	u32 idx;
 
 	for (idx = 0; idx < CONFIG_RX_DESCR_NUM; idx++) {
 		desc_p = &desc_table_p[idx];
-		desc_p->dmamac_addr = &rxbuffs[idx * CONFIG_ETH_BUFSIZE];
-		desc_p->dmamac_next = &desc_table_p[idx + 1];
+		desc_p->dmamac_addr = virt_to_phys(&rxbuffs[idx * CONFIG_ETH_BUFSIZE]);
+		desc_p->dmamac_next = rx_dma_addr(priv, &desc_table_p[idx + 1]);
 
 		desc_p->dmamac_cntl = MAC_MAX_FRAME_SZ;
 		if (priv->enh_desc)
@@ -156,15 +156,15 @@ static void rx_descs_init(struct eth_device *dev)
 		else
 			desc_p->dmamac_cntl |= DESC_RXCTRL_RXCHAIN;
 
-		dma_sync_single_for_cpu((unsigned long)desc_p->dmamac_addr,
+		dma_sync_single_for_cpu(desc_p->dmamac_addr,
 					CONFIG_ETH_BUFSIZE, DMA_FROM_DEVICE);
 		desc_p->txrx_status = DESC_RXSTS_OWNBYDMA;
 	}
 
 	/* Correcting the last pointer of the chain */
-	desc_p->dmamac_next = &desc_table_p[0];
+	desc_p->dmamac_next = rx_dma_addr(priv, &desc_table_p[0]);
 
-	writel((ulong)&desc_table_p[0], &dma_p->rxdesclistaddr);
+	writel(desc_p->dmamac_next, &dma_p->rxdesclistaddr);
 	priv->rx_currdescnum = 0;
 }
 
@@ -276,7 +276,7 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
 	struct dw_eth_dev *priv = dev->priv;
 	struct eth_dma_regs *dma_p = priv->dma_regs_p;
 	u32 owndma, desc_num = priv->tx_currdescnum;
-	struct dmamacdescr *desc_p = &priv->tx_mac_descrtable[desc_num];
+	struct dmamacdescr *desc_p = &priv->tx_mac_descrtable_cpu[desc_num];
 
 	owndma = priv->enh_desc ? DESC_ENH_TXSTS_OWNBYDMA : DESC_TXSTS_OWNBYDMA;
 	/* Check if the descriptor is owned by CPU */
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
@@ -324,7 +324,7 @@ static int dwc_ether_rx(struct eth_device *dev)
 {
 	struct dw_eth_dev *priv = dev->priv;
 	u32 desc_num = priv->rx_currdescnum;
-	struct dmamacdescr *desc_p = &priv->rx_mac_descrtable[desc_num];
+	struct dmamacdescr *desc_p = &priv->rx_mac_descrtable_cpu[desc_num];
 
 	u32 status = desc_p->txrx_status;
 	int length = 0;
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
@@ -481,12 +483,21 @@ struct dw_eth_dev *dwc_drv_probe(struct device_d *dev)
 	priv->mac_regs_p = base;
 	dwc_version(dev, readl(&priv->mac_regs_p->version));
 	priv->dma_regs_p = base + DW_DMA_BASE_OFFSET;
-	priv->tx_mac_descrtable = dma_alloc_coherent(
+
+	priv->tx_mac_descrtable_cpu = dma_alloc_coherent(
 		CONFIG_TX_DESCR_NUM * sizeof(struct dmamacdescr),
-		DMA_ADDRESS_BROKEN);
-	priv->rx_mac_descrtable = dma_alloc_coherent(
+		&priv->tx_mac_descrtable_dev);
+
+	if (dma_mapping_error(dev, priv->tx_mac_descrtable_dev))
+		return ERR_PTR(-EFAULT);
+
+	priv->rx_mac_descrtable_cpu = dma_alloc_coherent(
 		CONFIG_RX_DESCR_NUM * sizeof(struct dmamacdescr),
-		DMA_ADDRESS_BROKEN);
+		&priv->rx_mac_descrtable_dev);
+
+	if (dma_mapping_error(dev, priv->rx_mac_descrtable_dev))
+		return ERR_PTR(-EFAULT);
+
 	priv->txbuffs = dma_alloc(TX_TOTAL_BUFSIZE);
 	priv->rxbuffs = dma_alloc(RX_TOTAL_BUFSIZE);
 
diff --git a/drivers/net/designware.h b/drivers/net/designware.h
index 0a6a6bf1a497..5851187c0cf0 100644
--- a/drivers/net/designware.h
+++ b/drivers/net/designware.h
@@ -8,6 +8,7 @@
 #define __DESIGNWARE_ETH_H
 
 #include <net.h>
+#include <linux/types.h>
 
 struct dw_eth_dev {
 	struct eth_device netdev;
@@ -18,8 +19,11 @@ struct dw_eth_dev {
 	u32 tx_currdescnum;
 	u32 rx_currdescnum;
 
-	struct dmamacdescr *tx_mac_descrtable;
-	struct dmamacdescr *rx_mac_descrtable;
+	struct dmamacdescr *tx_mac_descrtable_cpu;
+	struct dmamacdescr *rx_mac_descrtable_cpu;
+
+	dma_addr_t tx_mac_descrtable_dev;
+	dma_addr_t rx_mac_descrtable_dev;
 
 	u8 *txbuffs;
 	u8 *rxbuffs;
@@ -38,6 +42,20 @@ struct dw_eth_drvdata {
 	void *priv;
 };
 
+static inline dma_addr_t tx_dma_addr(struct dw_eth_dev *priv,
+				     struct dmamacdescr *desc)
+{
+	return priv->tx_mac_descrtable_dev
+		+ ((u8 *)desc - (u8 *)priv->tx_mac_descrtable_cpu);
+}
+
+static inline dma_addr_t rx_dma_addr(struct dw_eth_dev *priv,
+				     struct dmamacdescr *desc)
+{
+	return priv->rx_mac_descrtable_dev
+		+ ((u8 *)desc - (u8 *)priv->rx_mac_descrtable_cpu);
+}
+
 struct dw_eth_dev *dwc_drv_probe(struct device_d *dev);
 void dwc_drv_remove(struct device_d *dev);
 
@@ -138,10 +156,12 @@ struct eth_dma_regs {
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

