Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-dy0-f49.google.com ([209.85.220.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlnvD-0003HJ-0J
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 20:08:09 +0000
Received: by dye8 with SMTP id 8so35107dye.36
	for <barebox@lists.infradead.org>; Tue, 26 Jul 2011 13:08:02 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Tue, 26 Jul 2011 22:07:55 +0200
Message-Id: <1311710877-13004-3-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1311710877-13004-1-git-send-email-franck.jullien@gmail.com>
References: <1311710877-13004-1-git-send-email-franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] nios2/altera_tse: Switch to resources
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

Switch to resources usage. Cleanup of the code.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/net/altera_tse.c |   63 ++++++++++++++++++++++------------------------
 drivers/net/altera_tse.h |   15 +++-------
 2 files changed, 35 insertions(+), 43 deletions(-)

diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index ac8cd2d..e7dabda 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -221,7 +221,7 @@ static int alt_sgdma_do_async_transfer(struct alt_sgdma_registers *dev,
 static int tse_get_ethaddr(struct eth_device *edev, unsigned char *m)
 {
 	struct altera_tse_priv *priv = edev->priv;
-	struct alt_tse_mac *mac_dev = priv->mac_dev;
+	struct alt_tse_mac *mac_dev = priv->tse_regs;
 
 	m[5] = (readl(&mac_dev->mac_addr_1) >> 8)  && 0xFF;
 	m[4] = (readl(&mac_dev->mac_addr_1))       && 0xFF;
@@ -236,7 +236,7 @@ static int tse_get_ethaddr(struct eth_device *edev, unsigned char *m)
 static int tse_set_ethaddr(struct eth_device *edev, unsigned char *m)
 {
 	struct altera_tse_priv *priv = edev->priv;
-	struct alt_tse_mac *mac_dev = priv->mac_dev;
+	struct alt_tse_mac *mac_dev = priv->tse_regs;
 
 	debug("Setting MAC address to %02x:%02x:%02x:%02x:%02x:%02x\n",
 		m[0], m[1], m[2], m[3], m[4], m[5]);
@@ -250,10 +250,10 @@ static int tse_set_ethaddr(struct eth_device *edev, unsigned char *m)
 static int tse_phy_read(struct mii_device *mdev, int phy_addr, int reg)
 {
 	struct eth_device *edev = mdev->edev;
-	struct alt_tse_mac *mac_dev;
+	struct altera_tse_priv *priv = edev->priv;
+	struct alt_tse_mac *mac_dev = priv->tse_regs;
 	uint32_t *mdio_regs;
 
-	mac_dev = (struct alt_tse_mac *)edev->iobase;
 	writel(phy_addr, &mac_dev->mdio_phy1_addr);
 
 	mdio_regs = (uint32_t *)&mac_dev->mdio_phy1;
@@ -264,10 +264,10 @@ static int tse_phy_read(struct mii_device *mdev, int phy_addr, int reg)
 static int tse_phy_write(struct mii_device *mdev, int phy_addr, int reg, int val)
 {
 	struct eth_device *edev = mdev->edev;
-	struct alt_tse_mac *mac_dev;
+	struct altera_tse_priv *priv = edev->priv;
+	struct alt_tse_mac *mac_dev = priv->tse_regs;
 	uint32_t *mdio_regs;
 
-	mac_dev = (struct alt_tse_mac *)edev->iobase;
 	writel(phy_addr, &mac_dev->mdio_phy1_addr);
 
 	mdio_regs = (uint32_t *)&mac_dev->mdio_phy1;
@@ -281,11 +281,11 @@ static void tse_reset(struct eth_device *edev)
 {
 	/* stop sgdmas, disable tse receive */
 	struct altera_tse_priv *priv = edev->priv;
-	struct alt_tse_mac *mac_dev = priv->mac_dev;
-	struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx;
-	struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx;
-	struct alt_sgdma_descriptor *rx_desc = (struct alt_sgdma_descriptor *)&priv->rx_desc[0];
-	struct alt_sgdma_descriptor *tx_desc = (struct alt_sgdma_descriptor *)&priv->tx_desc[0];
+	struct alt_tse_mac *mac_dev = priv->tse_regs;
+	struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx_regs;
+	struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx_regs;
+	struct alt_sgdma_descriptor *rx_desc = priv->rx_desc;
+	struct alt_sgdma_descriptor *tx_desc = priv->tx_desc;
 	uint64_t start;
 	uint64_t tout;
 
@@ -358,10 +358,9 @@ static int tse_eth_send(struct eth_device *edev, void *packet, int length)
 {
 
 	struct altera_tse_priv *priv = edev->priv;
-	struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx;
-	struct alt_sgdma_descriptor *tx_desc = (struct alt_sgdma_descriptor *)priv->tx_desc;
-
-	struct alt_sgdma_descriptor *tx_desc_cur = (struct alt_sgdma_descriptor *)&tx_desc[0];
+	struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx_regs;
+	struct alt_sgdma_descriptor *tx_desc = priv->tx_desc;
+	struct alt_sgdma_descriptor *tx_desc_cur = tx_desc;
 
 	flush_dcache_range((uint32_t)packet, (uint32_t)packet + length);
 	alt_sgdma_construct_descriptor_burst(
@@ -386,8 +385,8 @@ static int tse_eth_send(struct eth_device *edev, void *packet, int length)
 static void tse_eth_halt(struct eth_device *edev)
 {
 	struct altera_tse_priv *priv = edev->priv;
-	struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx;
-	struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx;
+	struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx_regs;
+	struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx_regs;
 
 	writel(0, &rx_sgdma->control); /* Stop the controller and reset settings */
 	writel(0, &tx_sgdma->control); /* Stop the controller and reset settings */
@@ -398,9 +397,9 @@ static int tse_eth_rx(struct eth_device *edev)
 	uint16_t packet_length = 0;
 
 	struct altera_tse_priv *priv = edev->priv;
-	struct alt_sgdma_descriptor *rx_desc = (struct alt_sgdma_descriptor *)priv->rx_desc;
-	struct alt_sgdma_descriptor *rx_desc_cur = &rx_desc[0];
-	struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx;
+	struct alt_sgdma_descriptor *rx_desc = priv->rx_desc;
+	struct alt_sgdma_descriptor *rx_desc_cur = rx_desc;
+	struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx_regs;
 
 	if (rx_desc_cur->descriptor_status &
 		ALT_SGDMA_DESCRIPTOR_STATUS_TERMINATED_BY_EOP_MSK) {
@@ -428,7 +427,7 @@ static int tse_eth_rx(struct eth_device *edev)
 		);
 
 		/* setup the sgdma */
-		alt_sgdma_do_async_transfer(priv->sgdma_rx, &rx_desc[0]);
+		alt_sgdma_do_async_transfer(priv->sgdma_rx_regs, rx_desc);
 	}
 
 	return 0;
@@ -437,12 +436,12 @@ static int tse_eth_rx(struct eth_device *edev)
 static int tse_init_dev(struct eth_device *edev)
 {
 	struct altera_tse_priv *priv = edev->priv;
-	struct alt_tse_mac *mac_dev = priv->mac_dev;
+	struct alt_tse_mac *mac_dev = priv->tse_regs;
 	struct alt_sgdma_descriptor *tx_desc = priv->tx_desc;
 	struct alt_sgdma_descriptor *rx_desc = priv->rx_desc;
 	struct alt_sgdma_descriptor *rx_desc_cur;
 
-	rx_desc_cur = (struct alt_sgdma_descriptor *)&rx_desc[0];
+	rx_desc_cur = rx_desc;
 
 	tse_reset(edev);
 
@@ -477,7 +476,7 @@ static int tse_init_dev(struct eth_device *edev)
 		);
 
 	/* start rx async transfer */
-	alt_sgdma_do_async_transfer(priv->sgdma_rx, rx_desc_cur);
+	alt_sgdma_do_async_transfer(priv->sgdma_rx_regs, rx_desc_cur);
 
 	/* Initialize MAC registers */
 	writel(PKTSIZE, &mac_dev->max_frame_length);
@@ -504,15 +503,13 @@ static int tse_probe(struct device_d *dev)
 #ifndef CONFIG_TSE_USE_DEDICATED_DESC_MEM
 	uint32_t dma_handle;
 #endif
-	edev = xzalloc(sizeof(struct eth_device) + sizeof(struct altera_tse_priv));
+	edev = xzalloc(sizeof(struct eth_device));
+	priv = xzalloc(sizeof(struct altera_tse_priv));
 	miidev = xzalloc(sizeof(struct mii_device));
 
 	dev->type_data = edev;
-	edev->priv = (struct altera_tse_priv *)(edev + 1);
-
-	edev->iobase = dev->map_base;
 
-	priv = edev->priv;
+	edev->priv = priv;
 
 	edev->init = tse_init_dev;
 	edev->open = tse_eth_open;
@@ -523,7 +520,7 @@ static int tse_probe(struct device_d *dev)
 	edev->set_ethaddr = tse_set_ethaddr;
 
 #ifdef CONFIG_TSE_USE_DEDICATED_DESC_MEM
-	tx_desc = (struct alt_sgdma_descriptor *)NIOS_SOPC_TSE_DESC_MEM_BASE;
+	tx_desc = dev_request_mem_region(dev, 3);
 	rx_desc = tx_desc + 2;
 #else
 	tx_desc = dma_alloc_coherent(sizeof(*tx_desc) * (3 + PKTBUFSRX), (unsigned long *)&dma_handle);
@@ -539,9 +536,9 @@ static int tse_probe(struct device_d *dev)
 	memset(rx_desc, 0, (sizeof *rx_desc) * (PKTBUFSRX + 1)); 
 	memset(tx_desc, 0, (sizeof *tx_desc) * 2);
 
-	priv->mac_dev = (struct alt_tse_mac *)dev->map_base;
-	priv->sgdma_rx = (struct alt_sgdma_registers *)NIOS_SOPC_SGDMA_RX_BASE;
-	priv->sgdma_tx = (struct alt_sgdma_registers *)NIOS_SOPC_SGDMA_TX_BASE;
+	priv->tse_regs = dev_request_mem_region(dev, 0);
+	priv->sgdma_rx_regs = dev_request_mem_region(dev, 1);
+	priv->sgdma_tx_regs = dev_request_mem_region(dev, 2);
 	priv->rx_desc = rx_desc;
 	priv->tx_desc = tx_desc;
 
diff --git a/drivers/net/altera_tse.h b/drivers/net/altera_tse.h
index c907c74..866dbce 100644
--- a/drivers/net/altera_tse.h
+++ b/drivers/net/altera_tse.h
@@ -287,16 +287,11 @@ struct alt_tse_mac {
 };
 
 struct altera_tse_priv {
-	struct alt_tse_mac *mac_dev;
-	struct alt_sgdma_registers *sgdma_rx;
-	struct alt_sgdma_registers *sgdma_tx;
-	unsigned int rx_sgdma_irq;
-	unsigned int tx_sgdma_irq;
-	unsigned int has_descriptor_mem;
-	unsigned int descriptor_mem_base;
-	unsigned int descriptor_mem_size;
-	struct alt_sgdma_descriptor *rx_desc;
-	struct alt_sgdma_descriptor *tx_desc;
+	void __iomem *tse_regs;
+	void __iomem *sgdma_rx_regs;
+	void __iomem *sgdma_tx_regs;
+	void __iomem *rx_desc;
+	void __iomem *tx_desc;
 	struct mii_device *miidev;
 };
 
-- 
1.7.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
