Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTdgn-0007i6-Bx
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 21:52:29 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 8E60D26C2009
 for <barebox@lists.infradead.org>; Thu,  5 Mar 2015 22:50:27 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  5 Mar 2015 22:49:59 +0100
Message-Id: <1425592221-23774-9-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425592221-23774-1-git-send-email-dev@lynxeye.de>
References: <1425592221-23774-1-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 06/27] ARM: change dma_alloc/free_coherent to match other
 architectures
To: barebox@lists.infradead.org

As a lot drivers currently rely on the 1:1 virt->phys mapping on ARM
we define DMA_ADDRESS_BROKEN to mark them. In order to use them on
other architectures with a different mapping they need proper fixing.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/cpu/mmu.c               |  6 ++++--
 arch/arm/include/asm/mmu.h       | 17 ++++++++++++-----
 drivers/ata/ahci.c               | 15 +++++++++------
 drivers/dma/apbh_dma.c           |  3 ++-
 drivers/mci/dw_mmc.c             |  3 ++-
 drivers/mtd/nand/nand_mxs.c      |  5 +++--
 drivers/net/arc_emac.c           |  6 ++++--
 drivers/net/at91_ether.c         |  6 ++++--
 drivers/net/designware.c         |  6 ++++--
 drivers/net/fec_imx.c            |  4 ++--
 drivers/net/macb.c               | 10 ++++++----
 drivers/net/mvneta.c             |  6 ++++--
 drivers/net/orion-gbe.c          |  6 ++++--
 drivers/net/rtl8169.c            |  4 ++--
 drivers/net/xgmac.c              |  8 +++++---
 drivers/usb/gadget/fsl_udc.c     |  7 ++++---
 drivers/usb/host/ehci-hcd.c      |  6 ++++--
 drivers/usb/host/ohci-hcd.c      |  9 ++++++---
 drivers/usb/host/xhci-hcd.c      |  6 +++---
 drivers/video/atmel_lcdfb_core.c |  5 +++--
 drivers/video/imx-ipu-fb.c       |  3 ++-
 drivers/video/imx-ipu-v3/ipufb.c |  3 ++-
 drivers/video/omap.c             |  6 +++---
 drivers/video/pxa.c              |  7 ++++---
 24 files changed, 98 insertions(+), 59 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index aaf66d4..c480e07 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -379,12 +379,14 @@ static int mmu_init(void)
 }
 mmu_initcall(mmu_init);
 
-void *dma_alloc_coherent(size_t size)
+void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
 	void *ret;
 
 	size = PAGE_ALIGN(size);
 	ret = xmemalign(PAGE_SIZE, size);
+	if (dma_handle)
+		*dma_handle = (dma_addr_t)ret;
 
 	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
 
@@ -403,7 +405,7 @@ void *phys_to_virt(unsigned long phys)
 	return (void *)phys;
 }
 
-void dma_free_coherent(void *mem, size_t size)
+void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
 {
 	size = PAGE_ALIGN(size);
 	remap_range(mem, size, pte_flags_cached);
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 3d87588..d0a644b 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -11,6 +11,8 @@
 #define PMD_SECT_DEF_UNCACHED (PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PMD_TYPE_SECT)
 #define PMD_SECT_DEF_CACHED (PMD_SECT_WB | PMD_SECT_DEF_UNCACHED)
 
+#define DMA_ADDRESS_BROKEN	NULL
+
 struct arm_memory;
 
 static inline void mmu_enable(void)
@@ -33,8 +35,8 @@ static inline void *dma_alloc(size_t size)
 }
 
 #ifdef CONFIG_MMU
-void *dma_alloc_coherent(size_t size);
-void dma_free_coherent(void *mem, size_t size);
+void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle);
+void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size);
 
 void dma_clean_range(unsigned long, unsigned long);
 void dma_flush_range(unsigned long, unsigned long);
@@ -45,12 +47,17 @@ uint32_t mmu_get_pte_cached_flags(void);
 uint32_t mmu_get_pte_uncached_flags(void);
 
 #else
-static inline void *dma_alloc_coherent(size_t size)
+static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
-	return xmemalign(4096, size);
+	void *ret = xmemalign(4096, size);
+	if (dma_handle)
+		*dma_handle = (dma_addr_t)ret;
+
+	return ret;
 }
 
-static inline void dma_free_coherent(void *mem, size_t size)
+static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
+				     size_t size)
 {
 	free(mem);
 }
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 346ab98..d299ac6 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -310,7 +310,8 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	 * First item in chunk of DMA memory: 32-slot command table,
 	 * 32 bytes each in size
 	 */
-	ahci_port->cmd_slot = dma_alloc_coherent(AHCI_CMD_SLOT_SZ * 32);
+	ahci_port->cmd_slot = dma_alloc_coherent(AHCI_CMD_SLOT_SZ * 32,
+						 DMA_ADDRESS_BROKEN);
 	if (!ahci_port->cmd_slot) {
 		ret = -ENOMEM;
 		goto err_alloc;
@@ -321,7 +322,8 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	/*
 	 * Second item: Received-FIS area
 	 */
-	ahci_port->rx_fis = (unsigned long)dma_alloc_coherent(AHCI_RX_FIS_SZ);
+	ahci_port->rx_fis = (unsigned long)dma_alloc_coherent(AHCI_RX_FIS_SZ,
+							      DMA_ADDRESS_BROKEN);
 	if (!ahci_port->rx_fis) {
 		ret = -ENOMEM;
 		goto err_alloc1;
@@ -331,7 +333,8 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	 * Third item: data area for storing a single command
 	 * and its scatter-gather table
 	 */
-	ahci_port->cmd_tbl = dma_alloc_coherent(AHCI_CMD_TBL_SZ);
+	ahci_port->cmd_tbl = dma_alloc_coherent(AHCI_CMD_TBL_SZ,
+						DMA_ADDRESS_BROKEN);
 	if (!ahci_port->cmd_tbl) {
 		ret = -ENOMEM;
 		goto err_alloc2;
@@ -429,11 +432,11 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	ret = -ENODEV;
 
 err_init:
-	dma_free_coherent(ahci_port->cmd_tbl, AHCI_CMD_TBL_SZ);
+	dma_free_coherent(ahci_port->cmd_tbl, 0, AHCI_CMD_TBL_SZ);
 err_alloc2:
-	dma_free_coherent((void *)ahci_port->rx_fis, AHCI_RX_FIS_SZ);
+	dma_free_coherent((void *)ahci_port->rx_fis, 0, AHCI_RX_FIS_SZ);
 err_alloc1:
-	dma_free_coherent(ahci_port->cmd_slot, AHCI_CMD_SLOT_SZ * 32);
+	dma_free_coherent(ahci_port->cmd_slot, 0, AHCI_CMD_SLOT_SZ * 32);
 err_alloc:
 	return ret;
 }
diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index cd218f4..5692c50 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -380,7 +380,8 @@ struct mxs_dma_desc *mxs_dma_desc_alloc(void)
 {
 	struct mxs_dma_desc *pdesc;
 
-	pdesc = dma_alloc_coherent(sizeof(struct mxs_dma_desc));
+	pdesc = dma_alloc_coherent(sizeof(struct mxs_dma_desc),
+				   DMA_ADDRESS_BROKEN);
 
 	if (pdesc == NULL)
 		return NULL;
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 365b60d..18fb45d 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -564,7 +564,8 @@ static int dw_mmc_probe(struct device_d *dev)
 	/* divider is 0 based in pdata and 1 based in our private struct */
 	host->ciu_div++;
 
-	host->idmac = dma_alloc_coherent(sizeof(*host->idmac) * DW_MMC_NUM_IDMACS);
+	host->idmac = dma_alloc_coherent(sizeof(*host->idmac) * DW_MMC_NUM_IDMACS,
+					 DMA_ADDRESS_BROKEN);
 
 	host->mci.send_cmd = dwmci_cmd;
 	host->mci.set_ios = dwmci_set_ios;
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 4e38e09..98fd9f2 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1141,7 +1141,7 @@ int mxs_nand_alloc_buffers(struct mxs_nand_info *nand_info)
 	const int size = NAND_MAX_PAGESIZE + NAND_MAX_OOBSIZE;
 
 	/* DMA buffers */
-	buf = dma_alloc_coherent(size);
+	buf = dma_alloc_coherent(size, DMA_ADDRESS_BROKEN);
 	if (!buf) {
 		printf("MXS NAND: Error allocating DMA buffers\n");
 		return -ENOMEM;
@@ -1153,7 +1153,8 @@ int mxs_nand_alloc_buffers(struct mxs_nand_info *nand_info)
 	nand_info->oob_buf = buf + NAND_MAX_PAGESIZE;
 
 	/* Command buffers */
-	nand_info->cmd_buf = dma_alloc_coherent(MXS_NAND_COMMAND_BUFFER_SIZE);
+	nand_info->cmd_buf = dma_alloc_coherent(MXS_NAND_COMMAND_BUFFER_SIZE,
+						DMA_ADDRESS_BROKEN);
 	if (!nand_info->cmd_buf) {
 		free(buf);
 		printf("MXS NAND: Error allocating command buffers\n");
diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 1770506..0520649 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -430,8 +430,10 @@ static int arc_emac_probe(struct device_d *dev)
 	miibus->parent = dev;
 
 	/* allocate rx/tx descriptors */
-	priv->rxbd = dma_alloc_coherent(RX_BD_NUM * sizeof(struct arc_emac_bd));
-	priv->txbd = dma_alloc_coherent(TX_BD_NUM * sizeof(struct arc_emac_bd));
+	priv->rxbd = dma_alloc_coherent(RX_BD_NUM * sizeof(struct arc_emac_bd),
+					DMA_ADDRESS_BROKEN);
+	priv->txbd = dma_alloc_coherent(TX_BD_NUM * sizeof(struct arc_emac_bd),
+					DMA_ADDRESS_BROKEN);
 	priv->rxbuf = dma_alloc(RX_BD_NUM * PKTSIZE);
 
 	/* Set poll rate so that it polls every 1 ms */
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index e09ea83..20aa045 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -320,8 +320,10 @@ static int at91_ether_probe(struct device_d *dev)
 	edev->halt = at91_ether_halt;
 	edev->get_ethaddr = at91_ether_get_ethaddr;
 	edev->set_ethaddr = at91_ether_set_ethaddr;
-	ether_dev->rbf_framebuf = dma_alloc_coherent(MAX_RX_DESCR * MAX_RBUFF_SZ);
-	ether_dev->rbfdt = dma_alloc_coherent(sizeof(struct rbf_t) * MAX_RX_DESCR);
+	ether_dev->rbf_framebuf = dma_alloc_coherent(MAX_RX_DESCR * MAX_RBUFF_SZ,
+						     DMA_ADDRESS_BROKEN);
+	ether_dev->rbfdt = dma_alloc_coherent(sizeof(struct rbf_t) * MAX_RX_DESCR,
+					      DMA_ADDRESS_BROKEN);
 
 	ether_dev->phy_addr = pdata->phy_addr;
 	miibus->read = at91_ether_mii_read;
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 49ed0b1..e0e348f 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -448,9 +448,11 @@ static int dwc_ether_probe(struct device_d *dev)
 	dwc_version(dev, readl(&priv->mac_regs_p->version));
 	priv->dma_regs_p = base + DW_DMA_BASE_OFFSET;
 	priv->tx_mac_descrtable = dma_alloc_coherent(
-		CONFIG_TX_DESCR_NUM * sizeof(struct dmamacdescr));
+		CONFIG_TX_DESCR_NUM * sizeof(struct dmamacdescr),
+		DMA_ADDRESS_BROKEN);
 	priv->rx_mac_descrtable = dma_alloc_coherent(
-		CONFIG_RX_DESCR_NUM * sizeof(struct dmamacdescr));
+		CONFIG_RX_DESCR_NUM * sizeof(struct dmamacdescr),
+		DMA_ADDRESS_BROKEN);
 	priv->txbuffs = dma_alloc(TX_TOTAL_BUFSIZE);
 	priv->rxbuffs = dma_alloc(RX_TOTAL_BUFSIZE);
 
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index c1fa151..c12b26b 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -600,7 +600,7 @@ static int fec_alloc_receive_packets(struct fec_priv *fec, int count, int size)
 	int i;
 
 	/* reserve data memory and consider alignment */
-	p = dma_alloc_coherent(size * count);
+	p = dma_alloc_coherent(size * count, DMA_ADDRESS_BROKEN);
 	if (!p)
 		return -ENOMEM;
 
@@ -698,7 +698,7 @@ static int fec_probe(struct device_d *dev)
 	 * Datasheet forces the startaddress of each chain is 16 byte aligned
 	 */
 	base = dma_alloc_coherent((2 + FEC_RBD_NUM) *
-			sizeof(struct buffer_descriptor));
+			sizeof(struct buffer_descriptor), DMA_ADDRESS_BROKEN);
 	fec->rbd_base = base;
 	base += FEC_RBD_NUM * sizeof(struct buffer_descriptor);
 	fec->tbd_base = base;
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 8e67aec..9cdb7d8 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -597,7 +597,8 @@ static void macb_init_rx_buffer_size(struct macb_device *bp, size_t size)
 			bp->rx_buffer_size =
 				roundup(bp->rx_buffer_size, RX_BUFFER_MULTIPLE);
 		}
-		bp->rx_buffer = dma_alloc_coherent(bp->rx_buffer_size * bp->rx_ring_size);
+		bp->rx_buffer = dma_alloc_coherent(bp->rx_buffer_size * bp->rx_ring_size,
+						   DMA_ADDRESS_BROKEN);
 	}
 
 	dev_dbg(bp->dev, "[%d] rx_buffer_size [%d]\n",
@@ -667,9 +668,10 @@ static int macb_probe(struct device_d *dev)
 		edev->recv = macb_recv;
 
 	macb_init_rx_buffer_size(macb, PKTSIZE);
-	macb->rx_buffer = dma_alloc_coherent(macb->rx_buffer_size * macb->rx_ring_size);
-	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb));
-	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES);
+	macb->rx_buffer = dma_alloc_coherent(macb->rx_buffer_size * macb->rx_ring_size,
+					     DMA_ADDRESS_BROKEN);
+	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb), DMA_ADDRESS_BROKEN);
+	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES, DMA_ADDRESS_BROKEN);
 
 	macb_reset_hw(macb);
 	ncfgr = macb_mdc_clk_div(macb);
diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index 8042e90..32ba726 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -590,9 +590,11 @@ void mvneta_setup_tx_rx(struct mvneta_port *priv)
 	u32 val;
 
 	/* Allocate descriptors and buffers */
-	priv->txdesc = dma_alloc_coherent(ALIGN(sizeof(*priv->txdesc), 32));
+	priv->txdesc = dma_alloc_coherent(ALIGN(sizeof(*priv->txdesc), 32),
+					  DMA_ADDRESS_BROKEN);
 	priv->rxdesc = dma_alloc_coherent(RX_RING_SIZE *
-					  ALIGN(sizeof(*priv->rxdesc), 32));
+					  ALIGN(sizeof(*priv->rxdesc), 32),
+					  DMA_ADDRESS_BROKEN);
 	priv->rxbuf = dma_alloc(RX_RING_SIZE * ALIGN(PKTSIZE, 8));
 
 	mvneta_init_rx_ring(priv);
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index 3fbc1df..5104f87 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -419,9 +419,11 @@ static int port_probe(struct device_d *parent, struct port_priv *port)
 		return PTR_ERR(port->regs);
 
 	/* allocate rx/tx descriptors and buffers */
-	port->txdesc = dma_alloc_coherent(ALIGN(sizeof(*port->txdesc), 16));
+	port->txdesc = dma_alloc_coherent(ALIGN(sizeof(*port->txdesc), 16),
+					  DMA_ADDRESS_BROKEN);
 	port->rxdesc = dma_alloc_coherent(RX_RING_SIZE *
-					  ALIGN(sizeof(*port->rxdesc), 16));
+					  ALIGN(sizeof(*port->rxdesc), 16),
+					  DMA_ADDRESS_BROKEN);
 	port->rxbuf = dma_alloc(RX_RING_SIZE * ALIGN(PKTSIZE, 8));
 
 	port_stop(port);
diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index f8a6500..bab20e8 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -228,10 +228,10 @@ static void rtl8169_init_ring(struct rtl8169_priv *priv)
 	priv->cur_rx = priv->cur_tx = 0;
 
 	priv->tx_desc = dma_alloc_coherent(NUM_TX_DESC *
-				sizeof(struct bufdesc));
+				sizeof(struct bufdesc), DMA_ADDRESS_BROKEN);
 	priv->tx_buf = malloc(NUM_TX_DESC * PKT_BUF_SIZE);
 	priv->rx_desc = dma_alloc_coherent(NUM_RX_DESC *
-				sizeof(struct bufdesc));
+				sizeof(struct bufdesc), DMA_ADDRESS_BROKEN);
 	priv->rx_buf = malloc(NUM_RX_DESC * PKT_BUF_SIZE);
 	dma_clean_range((unsigned long)priv->rx_buf,
 			(unsigned long)priv->rx_buf + NUM_RX_DESC * PKT_BUF_SIZE);
diff --git a/drivers/net/xgmac.c b/drivers/net/xgmac.c
index cc22d0e..240684e 100644
--- a/drivers/net/xgmac.c
+++ b/drivers/net/xgmac.c
@@ -698,9 +698,11 @@ static int hb_xgmac_probe(struct device_d *dev)
 	priv->dev = dev;
 	priv->base = base;
 
-	priv->rxbuffer = dma_alloc_coherent(RX_BUF_SZ);
-	priv->rx_chain = dma_alloc_coherent(RX_NUM_DESC * sizeof(struct xgmac_dma_desc));
-	priv->tx_chain = dma_alloc_coherent(TX_NUM_DESC * sizeof(struct xgmac_dma_desc));
+	priv->rxbuffer = dma_alloc_coherent(RX_BUF_SZ, DMA_ADDRESS_BROKEN);
+	priv->rx_chain = dma_alloc_coherent(RX_NUM_DESC * sizeof(struct xgmac_dma_desc),
+					    DMA_ADDRESS_BROKEN);
+	priv->tx_chain = dma_alloc_coherent(TX_NUM_DESC * sizeof(struct xgmac_dma_desc),
+					    DMA_ADDRESS_BROKEN);
 
 	edev = &priv->edev;
 	edev->priv = priv;
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index d067f03..ed7c318 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -562,7 +562,7 @@ static void done(struct fsl_ep *ep, struct fsl_req *req, int status)
 		if (j != req->dtd_count - 1) {
 			next_td = curr_td->next_td_virt;
 		}
-		dma_free_coherent(curr_td, sizeof(struct ep_td_struct));
+		dma_free_coherent(curr_td, 0, sizeof(struct ep_td_struct));
 	}
 
 	dma_inv_range((unsigned long)req->req.buf,
@@ -1135,7 +1135,8 @@ static struct ep_td_struct *fsl_build_dtd(struct fsl_req *req, unsigned *length,
 	*length = min(req->req.length - req->req.actual,
 			(unsigned)EP_MAX_LENGTH_TRANSFER);
 
-	dtd = dma_alloc_coherent(sizeof(struct ep_td_struct));
+	dtd = dma_alloc_coherent(sizeof(struct ep_td_struct),
+				 DMA_ADDRESS_BROKEN);
 	if (dtd == NULL)
 		return dtd;
 
@@ -2058,7 +2059,7 @@ static int struct_udc_setup(struct fsl_udc *udc,
 		size &= ~(QH_ALIGNMENT - 1);
 	}
 
-	udc->ep_qh = dma_alloc_coherent(size);
+	udc->ep_qh = dma_alloc_coherent(size, DMA_ADDRESS_BROKEN);
 	if (!udc->ep_qh) {
 		ERR("malloc QHs for udc failed\n");
 		kfree(udc->eps);
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 7b91327..c033842 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -890,8 +890,10 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
 	ehci->init = data->init;
 	ehci->post_init = data->post_init;
 
-	ehci->qh_list = dma_alloc_coherent(sizeof(struct QH) * NUM_TD);
-	ehci->td = dma_alloc_coherent(sizeof(struct qTD) * NUM_TD);
+	ehci->qh_list = dma_alloc_coherent(sizeof(struct QH) * NUM_TD,
+					   DMA_ADDRESS_BROKEN);
+	ehci->td = dma_alloc_coherent(sizeof(struct qTD) * NUM_TD,
+				      DMA_ADDRESS_BROKEN);
 
 	host->hw_dev = dev;
 	host->init = ehci_init;
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index 622f5c3..bbd0bd6 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -1758,7 +1758,8 @@ static int ohci_init(struct usb_host *host)
 
 	info("%s\n", __func__);
 
-	ohci->ptd = dma_alloc_coherent(sizeof(struct td) * NUM_TD);
+	ohci->ptd = dma_alloc_coherent(sizeof(struct td) * NUM_TD,
+				       DMA_ADDRESS_BROKEN);
 	if (!ohci->ptd)
 		return -ENOMEM;
 	memset(ohci->ptd, 0, sizeof(struct td) * NUM_TD);
@@ -1801,11 +1802,13 @@ static int ohci_probe(struct device_d *dev)
 	host->submit_control_msg = submit_control_msg;
 	host->submit_bulk_msg = submit_bulk_msg;
 
-	ohci->hcca = dma_alloc_coherent(sizeof(*ohci->hcca));
+	ohci->hcca = dma_alloc_coherent(sizeof(*ohci->hcca),
+					DMA_ADDRESS_BROKEN);
 	if (!ohci->hcca)
 		return -ENOMEM;
 
-	ohci->ohci_dev = dma_alloc_coherent(sizeof(*ohci->ohci_dev));
+	ohci->ohci_dev = dma_alloc_coherent(sizeof(*ohci->ohci_dev),
+					    DMA_ADDRESS_BROKEN);
 	if (!ohci->ohci_dev)
 		return -ENOMEM;
 	memset(ohci->ohci_dev, 0, sizeof(*ohci->ohci_dev));
diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index 9253419..0a4601c 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -444,7 +444,7 @@ static struct xhci_virtual_device *xhci_alloc_virtdev(struct xhci_hcd *xhci,
 	sz_ictx = ALIGN(sz_ctx + HCC_CTX_SIZE(xhci->hcc_params), 64);
 
 	vdev->dma_size = sz_ictx + sz_dctx;
-	p = vdev->dma = dma_alloc_coherent(vdev->dma_size);
+	p = vdev->dma = dma_alloc_coherent(vdev->dma_size, DMA_ADDRESS_BROKEN);
 	memset(vdev->dma, 0, vdev->dma_size);
 
 	vdev->out_ctx = p; p += sz_dctx;
@@ -463,7 +463,7 @@ static void xhci_free_virtdev(struct xhci_virtual_device *vdev)
 			xhci_put_endpoint_ring(xhci, vdev->ep[i]);
 
 	list_del(&vdev->list);
-	dma_free_coherent(vdev->dma, vdev->dma_size);
+	dma_free_coherent(vdev->dma, 0, vdev->dma_size);
 	free(vdev);
 }
 
@@ -1203,7 +1203,7 @@ static void xhci_dma_alloc(struct xhci_hcd *xhci)
 	num_ep = max(MAX_EP_RINGS, MIN_EP_RINGS + num_ep);
 	xhci->dma_size += num_ep * sz_ep;
 
-	p = xhci->dma = dma_alloc_coherent(xhci->dma_size);
+	p = xhci->dma = dma_alloc_coherent(xhci->dma_size, DMA_ADDRESS_BROKEN);
 	memset(xhci->dma, 0, xhci->dma_size);
 
 	xhci->sp = p; p += sz_sp;
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index 420ccbe..a0a822c 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -200,7 +200,7 @@ static int atmel_lcdfb_alloc_video_memory(struct atmel_lcdfb_info *sinfo)
 		    * ((info->bits_per_pixel + 7) / 8));
 	smem_len = max(smem_len, sinfo->smem_len);
 
-	info->screen_base = dma_alloc_coherent(smem_len);
+	info->screen_base = dma_alloc_coherent(smem_len, DMA_ADDRESS_BROKEN);
 
 	if (!info->screen_base)
 		return -ENOMEM;
@@ -289,7 +289,8 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 	atmel_lcdfb_start_clock(sinfo);
 
 	if (data->dma_desc_size)
-		sinfo->dma_desc = dma_alloc_coherent(data->dma_desc_size);
+		sinfo->dma_desc = dma_alloc_coherent(data->dma_desc_size,
+						     DMA_ADDRESS_BROKEN);
 
 	ret = register_framebuffer(info);
 	if (ret != 0) {
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index a69df50..eb913b1 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -1030,7 +1030,8 @@ static int imxfb_probe(struct device_d *dev)
 			fbi->info.screen_size,
 			mmu_get_pte_uncached_flags());
 	} else {
-		fbi->info.screen_base = dma_alloc_coherent(fbi->info.screen_size);
+		fbi->info.screen_base = dma_alloc_coherent(fbi->info.screen_size,
+							   DMA_ADDRESS_BROKEN);
 		if (!fbi->info.screen_base)
 			return -ENOMEM;
 	}
diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index 14a099e..d9c81b2 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -203,7 +203,8 @@ static int ipufb_activate_var(struct fb_info *info)
 	struct ipufb_info *fbi = container_of(info, struct ipufb_info, info);
 
 	info->line_length = info->xres * (info->bits_per_pixel >> 3);
-	fbi->info.screen_base = dma_alloc_coherent(info->line_length * info->yres);
+	fbi->info.screen_base = dma_alloc_coherent(info->line_length * info->yres,
+						   DMA_ADDRESS_BROKEN);
 	if (!fbi->info.screen_base)
 		return -ENOMEM;
 
diff --git a/drivers/video/omap.c b/drivers/video/omap.c
index bd66c92..91f9e24 100644
--- a/drivers/video/omap.c
+++ b/drivers/video/omap.c
@@ -126,7 +126,7 @@ static void omapfb_disable(struct fb_info *info)
 		/* free frame buffer; but only when screen is not
 		* preallocated */
 		if (info->screen_base)
-			dma_free_coherent(info->screen_base, fbi->dma_size);
+			dma_free_coherent(info->screen_base, 0, fbi->dma_size);
 	}
 
 	info->screen_base = NULL;
@@ -270,13 +270,13 @@ static int omapfb_activate_var(struct fb_info *info)
 
 	/*Free old screen buf*/
 	if (!fbi->prealloc_screen.addr && info->screen_base)
-		dma_free_coherent(info->screen_base, fbi->dma_size);
+		dma_free_coherent(info->screen_base, 0, fbi->dma_size);
 
 	fbi->dma_size = PAGE_ALIGN(size);
 
 	if (!fbi->prealloc_screen.addr) {
 		/* case 1: no preallocated screen */
-		info->screen_base = dma_alloc_coherent(size);
+		info->screen_base = dma_alloc_coherent(size, DMA_ADDRESS_BROKEN);
 	} else if (fbi->prealloc_screen.size < fbi->dma_size) {
 		/* case 2: preallocated screen, but too small */
 		dev_err(fbi->dev,
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index d6d11ae..61ce0a5 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -522,11 +522,12 @@ static int pxafb_probe(struct device_d *dev)
 	else
 		fbi->info.screen_base =
 			PTR_ALIGN(dma_alloc_coherent(info->xres * info->yres *
-						     (info->bits_per_pixel >> 3) + PAGE_SIZE),
+						     (info->bits_per_pixel >> 3) + PAGE_SIZE,
+						     DMA_ADDRESS_BROKEN),
 				  PAGE_SIZE);
 
-	fbi->dma_buff = PTR_ALIGN(dma_alloc_coherent(sizeof(struct pxafb_dma_buff) + 16),
-				  16);
+	fbi->dma_buff = PTR_ALIGN(dma_alloc_coherent(sizeof(struct pxafb_dma_buff) + 16,
+				DMA_ADDRESS_BROKEN), 16);
 
 	pxafb_activate_var(fbi);
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
