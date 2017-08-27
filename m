Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dlrb7-0002Z5-QB
 for barebox@lists.infradead.org; Sun, 27 Aug 2017 07:03:08 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sun, 27 Aug 2017 09:02:21 +0200
Message-Id: <20170827070230.13382-2-linux@rempel-privat.de>
In-Reply-To: <20170827070230.13382-1-linux@rempel-privat.de>
References: <20170827070230.13382-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 01/10] net: ath79: add ar9344 support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/net/ag71xx.c | 192 +++++++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 165 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index d13bf9171..b8bd12bc3 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -12,6 +12,7 @@
  */
 
 #include <common.h>
+#include <driver.h>
 #include <net.h>
 #include <dma.h>
 #include <init.h>
@@ -185,6 +186,11 @@
 #define AG71XX_ETH_CFG_RGMII_GE0        (1<<0)
 #define AG71XX_ETH_CFG_MII_GE0_SLAVE    (1<<4)
 
+enum ag71xx_type {
+	AG71XX_TYPE_AR9331_GE0,
+	AG71XX_TYPE_AR9344_GMAC0,
+};
+
 /*
  * h/w descriptor
  */
@@ -213,23 +219,31 @@ struct ag71xx {
 	void __iomem *regs;
 	void __iomem *regs_gmac;
 	struct mii_bus miibus;
+	const struct ag71xx_cfg *cfg;
 
 	void *rx_buffer;
 
 	unsigned char *rx_pkt[NO_OF_RX_FIFOS];
 	ag7240_desc_t *fifo_tx;
 	ag7240_desc_t *fifo_rx;
+	dma_addr_t addr_tx;
+	dma_addr_t addr_rx;
 
 	int next_tx;
 	int next_rx;
 };
 
+struct ag71xx_cfg {
+	enum ag71xx_type type;
+	void (*init_mii)(struct ag71xx *priv);
+};
+
 static inline void ag71xx_check_reg_offset(struct ag71xx *priv, int reg)
 {
 	switch (reg) {
 	case AG71XX_REG_MAC_CFG1 ... AG71XX_REG_MAC_MFL:
 	case AG71XX_REG_MAC_IFCTL ... AG71XX_REG_TX_SM:
-	case AG71XX_REG_MII_CFG:
+	case AG71XX_REG_MII_CFG ... AG71XX_REG_MII_IND:
 		break;
 
 	default:
@@ -237,6 +251,16 @@ static inline void ag71xx_check_reg_offset(struct ag71xx *priv, int reg)
 	}
 }
 
+static inline u32 ar7240_reg_rd(u32 reg)
+{
+	return __raw_readl(KSEG1ADDR(reg));
+}
+
+static inline void ar7240_reg_wr(u32 reg, u32 val)
+{
+	__raw_writel(val, KSEG1ADDR(reg));
+}
+
 static inline u32 ag71xx_gmac_rr(struct ag71xx *dev, int reg)
 {
 	return __raw_readl(dev->regs_gmac + reg);
@@ -263,13 +287,81 @@ static inline void ag71xx_wr(struct ag71xx *priv, int reg, u32 val)
 	(void)__raw_readl(priv->regs + reg);
 }
 
-static int ag71xx_ether_mii_read(struct mii_bus *miidev, int addr, int reg)
+static int ag71xx_ether_mii_read(struct mii_bus *miidev, int phy_addr, int reg)
 {
-	return 0xffff;
+	struct ag71xx *priv = miidev->priv;
+	const struct ag71xx_cfg *cfg = priv->cfg;
+	volatile int rddata;
+	u16 addr = (phy_addr << MII_ADDR_SHIFT) | reg, val;
+	u16 ii = 0xFFFF;
+
+	if (AG71XX_TYPE_AR9331_GE0 == cfg->type)
+		return 0xffff;
+	/*
+	 * Check for previous transactions are complete. Added to avoid
+	 * race condition while running at higher frequencies.
+	 */
+	do {
+		udelay(5);
+		rddata = ag71xx_rr(priv, AG71XX_REG_MII_IND) & MII_IND_BUSY;
+	} while (rddata && --ii);
+
+	if (ii == 0)
+		printk("ERROR:%s:%d transaction failed\n",__func__,__LINE__);
+
+
+	ag71xx_wr(priv, AG71XX_REG_MII_CMD, MII_CMD_WRITE);
+	ag71xx_wr(priv, AG71XX_REG_MII_ADDR, addr);
+	ag71xx_wr(priv, AG71XX_REG_MII_CMD, MII_CMD_READ);
+
+	do {
+		udelay(5);
+		rddata = ag71xx_rr(priv, AG71XX_REG_MII_IND) & MII_IND_BUSY;
+	} while (rddata && --ii);
+
+	if (ii == 0)
+		printk("Error!!! Leave ag7240_miiphy_read without polling correct status!\n");
+
+	val = ag71xx_rr(priv, AG71XX_REG_MII_STATUS);
+	ag71xx_wr(priv, AG71XX_REG_MII_CMD, MII_CMD_WRITE);
+
+	return val;
 }
 
-static int ag71xx_ether_mii_write(struct mii_bus *miidev, int addr, int reg, u16 val)
+static int ag71xx_ether_mii_write(struct mii_bus *miidev, int phy_addr,
+				  int reg, u16 val)
 {
+	struct ag71xx *priv = miidev->priv;
+	const struct ag71xx_cfg *cfg = priv->cfg;
+	u16 addr = (phy_addr << MII_ADDR_SHIFT) | reg;
+	u16 ii = 0xFFFF;
+	volatile int rddata;
+
+	if (AG71XX_TYPE_AR9331_GE0 == cfg->type)
+		return 0;
+
+	/*
+	 * Check for previous transactions are complete. Added to avoid
+	 * race condition while running at higher frequencies.
+	 */
+	do {
+		udelay(5);
+		rddata = ag71xx_rr(priv, AG71XX_REG_MII_IND) & MII_IND_BUSY;
+	} while (rddata && --ii);
+
+	if (ii == 0)
+		printk("ERROR:%s:%d transaction failed\n", __func__, __LINE__);
+
+	ag71xx_wr(priv, AG71XX_REG_MII_ADDR, addr);
+	ag71xx_wr(priv, AG71XX_REG_MII_CTRL, val);
+
+	do {
+		rddata = ag71xx_rr(priv, AG71XX_REG_MII_IND) & MII_IND_BUSY;
+	} while (rddata && --ii);
+
+	if (ii == 0)
+		printk("Error!!! Leave ag7240_miiphy_write without polling correct status!\n");
+
 	return 0;
 }
 
@@ -372,6 +464,13 @@ static int ag71xx_ether_send(struct eth_device *edev, void *packet, int length)
 
 static int ag71xx_ether_open(struct eth_device *edev)
 {
+	struct ag71xx *priv = edev->priv;
+	const struct ag71xx_cfg *cfg = priv->cfg;
+
+	if (AG71XX_TYPE_AR9344_GMAC0 == cfg->type)
+		return phy_device_connect(edev, &priv->miibus, 0,
+			NULL, 0, PHY_INTERFACE_MODE_RGMII_TXID);
+
 	return 0;
 }
 
@@ -408,25 +507,63 @@ static int ag71xx_ether_init(struct eth_device *edev)
 	return 1;
 }
 
-static int ag71xx_mii_setup(struct ag71xx *priv)
+static void ag71xx_ar9331_ge0_mii_init(struct ag71xx *priv)
 {
 	u32 rd;
 
-	rd = ag71xx_gmac_rr(priv, 0);
+	rd = ag71xx_rr(priv, AG71XX_REG_MAC_CFG2);
+	rd |= (MAC_CFG2_PAD_CRC_EN | MAC_CFG2_LEN_CHECK | MAC_CFG2_IF_10_100);
+	ag71xx_wr(priv, AG71XX_REG_MAC_CFG2, rd);
+
+	/* config FIFOs */
+	ag71xx_wr(priv, AG71XX_REG_FIFO_CFG0, 0x1f00);
+
+	rd = ag71xx_gmac_rr(priv, AG71XX_REG_MAC_CFG1);
 	rd |= AG71XX_ETH_CFG_MII_GE0_SLAVE;
 	ag71xx_gmac_wr(priv, 0, rd);
+}
 
-	return 0;
+static void ag71xx_ar9344_gmac0_mii_init(struct ag71xx *priv)
+{
+	u32 rd;
+
+	rd = ag71xx_rr(priv, AG71XX_REG_MAC_CFG2);
+	rd |= (MAC_CFG2_PAD_CRC_EN | MAC_CFG2_LEN_CHECK | MAC_CFG2_IF_1000);
+	ag71xx_wr(priv, AG71XX_REG_MAC_CFG2, rd);
+
+	/* config FIFOs */
+	ag71xx_wr(priv, AG71XX_REG_FIFO_CFG0, 0x1f00);
+
+	ag71xx_gmac_wr(priv, AG71XX_REG_MAC_CFG1, 1);
+	udelay(1000);
+	ag71xx_wr(priv, AG71XX_REG_MII_CFG, 4 | (1 << 31));
+	ag71xx_wr(priv, AG71XX_REG_MII_CFG, 4);
 }
 
+static struct ag71xx_cfg ag71xx_cfg_ar9331_ge0 = {
+	.type = AG71XX_TYPE_AR9331_GE0,
+	.init_mii = ag71xx_ar9331_ge0_mii_init,
+};
+
+static struct ag71xx_cfg ag71xx_cfg_ar9344_gmac0 = {
+	.type = AG71XX_TYPE_AR9344_GMAC0,
+	.init_mii = ag71xx_ar9344_gmac0_mii_init,
+};
+
 static int ag71xx_probe(struct device_d *dev)
 {
 	void __iomem *regs, *regs_gmac;
 	struct mii_bus *miibus;
 	struct eth_device *edev;
+	struct ag71xx_cfg *cfg;
 	struct ag71xx *priv;
 	u32 mac_h, mac_l;
-	u32 rd;
+	u32 rd, mask;
+	int ret;
+
+	ret = dev_get_drvdata(dev, (const void **)&cfg);
+	if (ret)
+		return ret;
 
 	regs_gmac = dev_request_mem_region_by_name(dev, "gmac");
 	if (IS_ERR(regs_gmac))
@@ -452,41 +589,42 @@ static int ag71xx_probe(struct device_d *dev)
 	priv->dev = dev;
 	priv->regs = regs;
 	priv->regs_gmac = regs_gmac;
+	priv->cfg = cfg;
 
 	miibus->read = ag71xx_ether_mii_read;
 	miibus->write = ag71xx_ether_mii_write;
 	miibus->priv = priv;
 
 	/* enable switch core */
-	rd = __raw_readl((char *)KSEG1ADDR(AR71XX_PLL_BASE + AR933X_ETHSW_CLOCK_CONTROL_REG)) & ~(0x1f);
+	rd = ar7240_reg_rd(AR71XX_PLL_BASE + AR933X_ETHSW_CLOCK_CONTROL_REG);
+	rd &= ~(0x1f);
 	rd |= 0x10;
-	__raw_writel(rd, (char *)KSEG1ADDR(AR71XX_PLL_BASE + AR933X_ETHSW_CLOCK_CONTROL_REG));
+	if ((ar7240_reg_rd(WASP_BOOTSTRAP_REG) & WASP_REF_CLK_25) == 0)
+		rd |= 0x1;
+	ar7240_reg_wr((AR71XX_PLL_BASE + AR933X_ETHSW_CLOCK_CONTROL_REG), rd);
 
 	if (ath79_reset_rr(AR933X_RESET_REG_RESET_MODULE) != 0)
 		ath79_reset_wr(AR933X_RESET_REG_RESET_MODULE, 0);
 
 	/* reset GE0 MAC and MDIO */
+	mask = AR933X_RESET_GE0_MAC | AR933X_RESET_GE0_MDIO
+		| AR933X_RESET_SWITCH;
+
 	rd = ath79_reset_rr(AR933X_RESET_REG_RESET_MODULE);
-	rd |= AR933X_RESET_GE0_MAC | AR933X_RESET_GE0_MDIO | AR933X_RESET_SWITCH;
+	rd |= mask;
 	ath79_reset_wr(AR933X_RESET_REG_RESET_MODULE, rd);
 	mdelay(100);
 
 	rd = ath79_reset_rr(AR933X_RESET_REG_RESET_MODULE);
-	rd &= ~(AR933X_RESET_GE0_MAC | AR933X_RESET_GE0_MDIO | AR933X_RESET_SWITCH);
+	rd &= ~(mask);
 	ath79_reset_wr(AR933X_RESET_REG_RESET_MODULE, rd);
 	mdelay(100);
 
 	ag71xx_wr(priv, AG71XX_REG_MAC_CFG1, (MAC_CFG1_SR | MAC_CFG1_TX_RST | MAC_CFG1_RX_RST));
 	ag71xx_wr(priv, AG71XX_REG_MAC_CFG1, (MAC_CFG1_RXE | MAC_CFG1_TXE));
 
-	rd = ag71xx_rr(priv, AG71XX_REG_MAC_CFG2);
-	rd |= (MAC_CFG2_PAD_CRC_EN | MAC_CFG2_LEN_CHECK | MAC_CFG2_IF_10_100);
-	ag71xx_wr(priv, AG71XX_REG_MAC_CFG2, rd);
-
-	/* config FIFOs */
-	ag71xx_wr(priv, AG71XX_REG_FIFO_CFG0, 0x1f00);
-
-	ag71xx_mii_setup(priv);
+	if (cfg->init_mii)
+		cfg->init_mii(priv);
 
 	ag71xx_wr(priv, AG71XX_REG_FIFO_CFG1, 0x10ffff);
 	ag71xx_wr(priv, AG71XX_REG_FIFO_CFG2, 0xAAA0555);
@@ -497,8 +635,10 @@ static int ag71xx_probe(struct device_d *dev)
 	ag71xx_wr(priv, AG71XX_REG_FIFO_CFG3, 0x1f00140);
 
 	priv->rx_buffer = xmemalign(PAGE_SIZE, NO_OF_RX_FIFOS * MAX_RBUFF_SZ);
-	priv->fifo_tx = dma_alloc_coherent(NO_OF_TX_FIFOS * sizeof(ag7240_desc_t), DMA_ADDRESS_BROKEN);
-	priv->fifo_rx = dma_alloc_coherent(NO_OF_RX_FIFOS * sizeof(ag7240_desc_t), DMA_ADDRESS_BROKEN);
+	priv->fifo_tx = dma_alloc_coherent(NO_OF_TX_FIFOS * sizeof(ag7240_desc_t),
+					   &priv->addr_tx);
+	priv->fifo_rx = dma_alloc_coherent(NO_OF_RX_FIFOS * sizeof(ag7240_desc_t),
+					   &priv->addr_rx);
 	priv->next_tx = 0;
 
 	mac_l = 0x3344;
@@ -516,11 +656,9 @@ static int ag71xx_probe(struct device_d *dev)
 }
 
 static __maybe_unused struct of_device_id ag71xx_dt_ids[] = {
-	{
-		.compatible = "qca,ar7100-gmac",
-	}, {
-		/* sentinel */
-	}
+	{ .compatible = "qca,ar9331-ge0", .data = &ag71xx_cfg_ar9331_ge0, },
+	{ .compatible = "qca,ar9344-gmac0", .data = &ag71xx_cfg_ar9344_gmac0, },
+	{ /* sentinel */ }
 };
 
 static struct driver_d ag71xx_driver = {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
