Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7jRN-000699-RT
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 08:52:37 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 17B8FDC6F83
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 10:57:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  1 Sep 2012 10:52:39 +0200
Message-Id: <1346489564-16176-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346489564-16176-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120901084728.GH18708@game.jcrosoft.org>
 <1346489564-16176-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/7] smc911x: introduce read/write ops
To: barebox@lists.infradead.org

This will allow to replace them depending on the platform data.
So we can specify shift and reg io witdh (16bit/32bit)

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/smc911x.c |  101 ++++++++++++++++++++++++++++++-------------------
 1 file changed, 63 insertions(+), 38 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 9c488c7..2583235 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -46,6 +46,9 @@ struct smc911x_priv {
 	struct eth_device edev;
 	struct mii_device miidev;
 	void __iomem *base;
+
+	u32 (*reg_read)(struct smc911x_priv *priv, u32 reg);
+	void (*reg_write)(struct smc911x_priv *priv, u32 reg, u32 val);
 };
 
 struct chip_id {
@@ -68,12 +71,34 @@ static const struct chip_id chip_ids[] =  {
 
 #define DRIVERNAME "smc911x"
 
+static inline u32 smc911x_reg_read(struct smc911x_priv *priv, u32 reg)
+{
+	return priv->reg_read(priv, reg);
+}
+
+static inline u32 __smc911x_reg_read(struct smc911x_priv *priv, u32 reg)
+{
+	return readl(priv->base + reg);
+}
+
+static inline void smc911x_reg_write(struct smc911x_priv *priv, u32 reg,
+					u32 val)
+{
+	priv->reg_write(priv, reg, val);
+}
+
+static inline void __smc911x_reg_write(struct smc911x_priv *priv, u32 reg,
+					u32 val)
+{
+	writel(val, priv->base + reg);
+}
+
 static int smc911x_mac_wait_busy(struct smc911x_priv *priv)
 {
 	uint64_t start = get_time_ns();
 
 	while (!is_timeout(start, MSECOND)) {
-		if (!(readl(priv->base + MAC_CSR_CMD) & MAC_CSR_CMD_CSR_BUSY))
+		if (!(smc911x_reg_read(priv, MAC_CSR_CMD) & MAC_CSR_CMD_CSR_BUSY))
 			return 0;
 	}
 
@@ -88,12 +113,12 @@ static u32 smc911x_get_mac_csr(struct eth_device *edev, u8 reg)
 
 	smc911x_mac_wait_busy(priv);
 
-	writel(MAC_CSR_CMD_CSR_BUSY | MAC_CSR_CMD_R_NOT_W | reg,
-			priv->base + MAC_CSR_CMD);
+	smc911x_reg_write(priv, MAC_CSR_CMD, MAC_CSR_CMD_CSR_BUSY |
+			  MAC_CSR_CMD_R_NOT_W | reg);
 
 	smc911x_mac_wait_busy(priv);
 
-	val = readl(priv->base + MAC_CSR_DATA);
+	val = smc911x_reg_read(priv, MAC_CSR_DATA);
 
 	return val;
 }
@@ -104,8 +129,8 @@ static void smc911x_set_mac_csr(struct eth_device *edev, u8 reg, u32 data)
 
 	smc911x_mac_wait_busy(priv);
 
-	writel(data, priv->base + MAC_CSR_DATA);
-	writel(MAC_CSR_CMD_CSR_BUSY | reg, priv->base + MAC_CSR_CMD);
+	smc911x_reg_write(priv, MAC_CSR_DATA, data);
+	smc911x_reg_write(priv, MAC_CSR_CMD, MAC_CSR_CMD_CSR_BUSY | reg);
 
 	smc911x_mac_wait_busy(priv);
 }
@@ -179,10 +204,10 @@ static int smc911x_phy_reset(struct eth_device *edev)
 	struct smc911x_priv *priv = edev->priv;
 	u32 reg;
 
-	reg = readl(priv->base + PMT_CTRL);
+	reg = smc911x_reg_read(priv, PMT_CTRL);
 	reg &= 0xfcf;
 	reg |= PMT_CTRL_PHY_RST;
-	writel(reg, priv->base + PMT_CTRL);
+	smc911x_reg_write(priv, PMT_CTRL, reg);
 
 	mdelay(100);
 
@@ -195,13 +220,13 @@ static void smc911x_reset(struct eth_device *edev)
 	uint64_t start;
 
 	/* Take out of PM setting first */
-	if (readl(priv->base + PMT_CTRL) & PMT_CTRL_READY) {
+	if (smc911x_reg_read(priv, PMT_CTRL) & PMT_CTRL_READY) {
 		/* Write to the bytetest will take out of powerdown */
-		writel(0, priv->base + BYTE_TEST);
+		smc911x_reg_write(priv, BYTE_TEST, 0);
 
 		start = get_time_ns();
 		while(1) {
-			if ((readl(priv->base + PMT_CTRL) & PMT_CTRL_READY))
+			if ((smc911x_reg_read(priv, PMT_CTRL) & PMT_CTRL_READY))
 				break;
 			if (is_timeout(start, 100 * USECOND)) {
 				dev_err(&edev->dev,
@@ -212,13 +237,13 @@ static void smc911x_reset(struct eth_device *edev)
 	}
 
 	/* Disable interrupts */
-	writel(0, priv->base + INT_EN);
+	smc911x_reg_write(priv, INT_EN, 0);
 
-	writel(HW_CFG_SRST, priv->base + HW_CFG);
+	smc911x_reg_write(priv, HW_CFG, HW_CFG_SRST);
 
 	start = get_time_ns();
 	while(1) {
-		if (!(readl(priv->base + E2P_CMD) & E2P_CMD_EPC_BUSY))
+		if (!(smc911x_reg_read(priv, E2P_CMD) & E2P_CMD_EPC_BUSY))
 			break;
 		if (is_timeout(start, 10 * MSECOND)) {
 			dev_err(&edev->dev, "reset timeout\n");
@@ -229,10 +254,10 @@ static void smc911x_reset(struct eth_device *edev)
 	/* Reset the FIFO level and flow control settings */
 	smc911x_set_mac_csr(edev, FLOW, FLOW_FCPT | FLOW_FCEN);
 
-	writel(0x0050287F, priv->base + AFC_CFG);
+	smc911x_reg_write(priv, AFC_CFG, 0x0050287F);
 
 	/* Set to LED outputs */
-	writel(0x70070000, priv->base + GPIO_CFG);
+	smc911x_reg_write(priv, GPIO_CFG, 0x70070000);
 }
 
 static void smc911x_enable(struct eth_device *edev)
@@ -240,14 +265,14 @@ static void smc911x_enable(struct eth_device *edev)
 	struct smc911x_priv *priv = edev->priv;
 
 	/* Enable TX */
-	writel(8 << 16 | HW_CFG_SF, priv->base + HW_CFG);
+	smc911x_reg_write(priv, HW_CFG, 8 << 16 | HW_CFG_SF);
 
-	writel(GPT_CFG_TIMER_EN | 10000, priv->base + GPT_CFG);
+	smc911x_reg_write(priv, GPT_CFG, GPT_CFG_TIMER_EN | 10000);
 
-	writel(TX_CFG_TX_ON, priv->base + TX_CFG);
+	smc911x_reg_write(priv, TX_CFG, TX_CFG_TX_ON);
 
 	/* no padding to start of packets */
-	writel(RX_CFG_RX_DUMP, priv->base + RX_CFG);
+	smc911x_reg_write(priv, RX_CFG, RX_CFG_RX_DUMP);
 }
 
 static int smc911x_eth_open(struct eth_device *edev)
@@ -270,19 +295,19 @@ static int smc911x_eth_send(struct eth_device *edev, void *packet, int length)
 	u32 status;
 	uint64_t start;
 
-	writel(TX_CMD_A_INT_FIRST_SEG | TX_CMD_A_INT_LAST_SEG | length,
-			priv->base + TX_DATA_FIFO);
-	writel(length, priv->base + TX_DATA_FIFO);
+	smc911x_reg_write(priv, TX_DATA_FIFO,
+		  TX_CMD_A_INT_FIRST_SEG | TX_CMD_A_INT_LAST_SEG | length);
+	smc911x_reg_write(priv, TX_DATA_FIFO, length);
 
 	tmplen = (length + 3) / 4;
 
 	while(tmplen--)
-		writel(*data++, priv->base + TX_DATA_FIFO);
+		smc911x_reg_write(priv, TX_DATA_FIFO, *data++);
 
 	/* wait for transmission */
 	start = get_time_ns();
 	while (1) {
-		if ((readl(priv->base + TX_FIFO_INF) &
+		if ((smc911x_reg_read(priv, TX_FIFO_INF) &
 					TX_FIFO_INF_TSUSED) >> 16)
 			break;
 		if (is_timeout(start, 100 * MSECOND)) {
@@ -294,7 +319,7 @@ static int smc911x_eth_send(struct eth_device *edev, void *packet, int length)
 	/* get status. Ignore 'no carrier' error, it has no meaning for
 	 * full duplex operation
 	 */
-	status = readl(priv->base + TX_STATUS_FIFO) & (TX_STS_LOC |
+	status = smc911x_reg_read(priv, TX_STATUS_FIFO) & (TX_STS_LOC |
 		TX_STS_LATE_COLL | TX_STS_MANY_COLL | TX_STS_MANY_DEFER |
 		TX_STS_UNDERRUN);
 
@@ -316,7 +341,7 @@ static void smc911x_eth_halt(struct eth_device *edev)
 	struct smc911x_priv *priv = (struct smc911x_priv *)edev->priv;
 
 	/* Disable TX */
-	writel(TX_CFG_STOP_TX, priv->base + TX_CFG);
+	smc911x_reg_write(priv, TX_CFG, TX_CFG_STOP_TX);
 
 //	smc911x_reset(edev);
 }
@@ -328,15 +353,15 @@ static int smc911x_eth_rx(struct eth_device *edev)
 	u32 pktlen, tmplen;
 	u32 status;
 
-	if((readl(priv->base + RX_FIFO_INF) & RX_FIFO_INF_RXSUSED) >> 16) {
-		status = readl(priv->base + RX_STATUS_FIFO);
+	if((smc911x_reg_read(priv, RX_FIFO_INF) & RX_FIFO_INF_RXSUSED) >> 16) {
+		status = smc911x_reg_read(priv, RX_STATUS_FIFO);
 		pktlen = (status & RX_STS_PKT_LEN) >> 16;
 
-		writel(0, priv->base + RX_CFG);
+		smc911x_reg_write(priv, RX_CFG, 0);
 
 		tmplen = (pktlen + 2 + 3) / 4;
 		while(tmplen--)
-			*data++ = readl(priv->base + RX_DATA_FIFO);
+			*data++ = smc911x_reg_read(priv, RX_DATA_FIFO);
 
 		if(status & RX_STS_ES)
 			dev_err(&edev->dev, "dropped bad packet. Status: 0x%08x\n",
@@ -366,18 +391,20 @@ static int smc911x_probe(struct device_d *dev)
 	struct smc911x_priv *priv;
 	uint32_t val;
 	int i;
-	void __iomem *base;
 
-	base = dev_request_mem_region(dev, 0);
+	priv = xzalloc(sizeof(*priv));
+	priv->base = dev_request_mem_region(dev, 0);
+	priv->reg_read = __smc911x_reg_read;
+	priv->reg_write = __smc911x_reg_write;
 
-	val = readl(base + BYTE_TEST);
+	val = smc911x_reg_read(priv, BYTE_TEST);
 	if(val != 0x87654321) {
 		dev_err(dev, "no smc911x found on 0x%p (byte_test=0x%08x)\n",
-			base, val);
+			priv->base, val);
 		return -ENODEV;
 	}
 
-	val = readl(base + ID_REV) >> 16;
+	val = smc911x_reg_read(priv, ID_REV) >> 16;
 	for(i = 0; chip_ids[i].id != 0; i++) {
 		if (chip_ids[i].id == val) break;
 	}
@@ -388,7 +415,6 @@ static int smc911x_probe(struct device_d *dev)
 
 	dev_info(dev, "detected %s controller\n", chip_ids[i].name);
 
-	priv = xzalloc(sizeof(*priv));
 	edev = &priv->edev;
 	edev->priv = priv;
 
@@ -407,7 +433,6 @@ static int smc911x_probe(struct device_d *dev)
 	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
 	priv->miidev.parent = dev;
-	priv->base = base;
 
 	smc911x_reset(edev);
 	smc911x_phy_reset(edev);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
