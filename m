Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4wie-0000fg-3w
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 16:59:05 +0000
Received: from mail401.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D7D35DC18E7
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 18:09:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 11 Feb 2013 17:57:53 +0100
Message-Id: <1360601873-10678-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360601873-10678-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130208090739.GP19322@game.jcrosoft.org>
 <1360601873-10678-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/7 v2] macb: add cadence Gigabit GEM support
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

based on the kernel code
detect it via IP version

In the GEM we can use a full packet buffer for receive but the buffer size
need to be 64bit size aligned.

Signed-off-by: Nicolas Ferre <nicolas.ferre@atmel.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |  250 +++++++++++++++++++++++++++++++++++++++++++---------
 drivers/net/macb.h |  109 ++++++++++++++++++++++-
 2 files changed, 317 insertions(+), 42 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 9040e4e..0cfad05 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -53,10 +53,10 @@
 
 #define MACB_RX_BUFFER_SIZE	128
 #define RX_BUFFER_MULTIPLE	64  /* bytes */
-#define RX_RING_SIZE		32 /* must be power of 2 */
+#define RX_NB_PACKET		10
 #define TX_RING_SIZE		2 /* must be power of 2 */
 
-#define RX_RING_BYTES		(sizeof(struct macb_dma_desc) * RX_RING_SIZE)
+#define RX_RING_BYTES(bp)	(sizeof(struct macb_dma_desc) * bp->rx_ring_size)
 #define TX_RING_BYTES		(sizeof(struct macb_dma_desc) * TX_RING_SIZE)
 
 struct macb_device {
@@ -71,8 +71,12 @@ struct macb_device {
 	struct macb_dma_desc	*rx_ring;
 	struct macb_dma_desc	*tx_ring;
 
+	int			rx_buffer_size;
+	int			rx_ring_size;
+
 	int			phy_addr;
 
+	struct clk		*pclk;
 	const struct device_d	*dev;
 	struct eth_device	netdev;
 
@@ -81,8 +85,20 @@ struct macb_device {
 	struct mii_bus	miibus;
 
 	unsigned int		phy_flags;
+
+	bool			is_gem;
 };
 
+static inline bool macb_is_gem(struct macb_device *macb)
+{
+	return macb->is_gem;
+}
+
+static inline bool read_is_gem(struct macb_device *macb)
+{
+	return MACB_BFEXT(IDNUM, macb_readl(macb, MID)) == 0x2;
+}
+
 static int macb_send(struct eth_device *edev, void *packet,
 		     int length)
 {
@@ -140,7 +156,7 @@ static void reclaim_rx_buffers(struct macb_device *macb,
 	while (i > new_tail) {
 		macb->rx_ring[i].addr &= ~MACB_BIT(RX_USED);
 		i++;
-		if (i > RX_RING_SIZE)
+		if (i > macb->rx_ring_size)
 			i = 0;
 	}
 
@@ -153,6 +169,37 @@ static void reclaim_rx_buffers(struct macb_device *macb,
 	macb->rx_tail = new_tail;
 }
 
+static int gem_recv(struct eth_device *edev)
+{
+	struct macb_device *macb = edev->priv;
+	unsigned int rx_tail = macb->rx_tail;
+	void *buffer;
+	int length;
+	u32 status;
+
+	dev_dbg(macb->dev, "%s\n", __func__);
+
+	for (;;) {
+		barrier();
+		if (!(macb->rx_ring[rx_tail].addr & MACB_BIT(RX_USED)))
+			return -1;
+
+		barrier();
+		status = macb->rx_ring[rx_tail].ctrl;
+		length = MACB_BFEXT(RX_FRMLEN, status);
+		if (status & MACB_BIT(RX_SOF)) {
+			buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
+			net_receive(buffer, length);
+			macb->rx_ring[rx_tail].ctrl &= ~MACB_BIT(RX_USED);
+			barrier();
+		}
+		rx_tail++;
+		macb->rx_tail++;
+	}
+
+	return 0;
+}
+
 static int macb_recv(struct eth_device *edev)
 {
 	struct macb_device *macb = edev->priv;
@@ -176,12 +223,12 @@ static int macb_recv(struct eth_device *edev)
 		}
 
 		if (status & MACB_BIT(RX_EOF)) {
-			buffer = macb->rx_buffer + MACB_RX_BUFFER_SIZE * macb->rx_tail;
+			buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
 			length = MACB_BFEXT(RX_FRMLEN, status);
 			if (wrapped) {
 				unsigned int headlen, taillen;
 
-				headlen = MACB_RX_BUFFER_SIZE * (RX_RING_SIZE
+				headlen = macb->rx_buffer_size * (macb->rx_ring_size
 						 - macb->rx_tail);
 				taillen = length - headlen;
 				memcpy((void *)NetRxPackets[0],
@@ -192,11 +239,11 @@ static int macb_recv(struct eth_device *edev)
 			}
 
 			net_receive(buffer, length);
-			if (++rx_tail >= RX_RING_SIZE)
+			if (++rx_tail >= macb->rx_ring_size)
 				rx_tail = 0;
 			reclaim_rx_buffers(macb, rx_tail);
 		} else {
-			if (++rx_tail >= RX_RING_SIZE) {
+			if (++rx_tail >= macb->rx_ring_size) {
 				wrapped = 1;
 				rx_tail = 0;
 			}
@@ -214,13 +261,17 @@ static void macb_adjust_link(struct eth_device *edev)
 
 	reg = macb_readl(macb, NCFGR);
 	reg &= ~(MACB_BIT(SPD) | MACB_BIT(FD));
+	if (macb_is_gem(macb))
+		reg &= ~GEM_BIT(GBE);
 
 	if (edev->phydev->duplex)
 		reg |= MACB_BIT(FD);
 	if (edev->phydev->speed == SPEED_100)
 		reg |= MACB_BIT(SPD);
+	if (edev->phydev->speed == SPEED_1000)
+		reg |= GEM_BIT(GBE);
 
-	macb_writel(macb, NCFGR, reg);
+	macb_or_gem_writel(macb, NCFGR, reg);
 }
 
 static int macb_open(struct eth_device *edev)
@@ -238,6 +289,29 @@ static int macb_open(struct eth_device *edev)
 			       macb->interface);
 }
 
+/*
+ * Configure the receive DMA engine
+ * - use the correct receive buffer size
+ * - set the possibility to use INCR16 bursts
+ *   (if not supported by FIFO, it will fallback to default)
+ * - set both rx/tx packet buffers to full memory size
+ * - set discard rx packets if no DMA resource
+ * These are configurable parameters for GEM.
+ */
+static void macb_configure_dma(struct macb_device *bp)
+{
+	u32 dmacfg;
+
+	if (macb_is_gem(bp)) {
+		dmacfg = gem_readl(bp, DMACFG) & ~GEM_BF(RXBS, -1L);
+		dmacfg |= GEM_BF(RXBS, bp->rx_buffer_size / RX_BUFFER_MULTIPLE);
+		dmacfg |= GEM_BF(FBLDO, 16);
+		dmacfg |= GEM_BIT(TXPBMS) | GEM_BF(RXBMS, -1L);
+		dmacfg |= GEM_BIT(DDRP);
+		gem_writel(bp, DMACFG, dmacfg);
+	}
+}
+
 static void macb_init(struct macb_device *macb)
 {
 	unsigned long paddr, val = 0;
@@ -252,12 +326,12 @@ static void macb_init(struct macb_device *macb)
 
 	/* initialize DMA descriptors */
 	paddr = (ulong)macb->rx_buffer;
-	for (i = 0; i < RX_RING_SIZE; i++) {
+	for (i = 0; i < macb->rx_ring_size; i++) {
 		macb->rx_ring[i].addr = paddr;
 		macb->rx_ring[i].ctrl = 0;
-		paddr += MACB_RX_BUFFER_SIZE;
+		paddr += macb->rx_buffer_size;
 	}
-	macb->rx_ring[RX_RING_SIZE - 1].addr |= MACB_BIT(RX_WRAP);
+	macb->rx_ring[macb->rx_ring_size - 1].addr |= MACB_BIT(RX_WRAP);
 
 	for (i = 0; i < TX_RING_SIZE; i++) {
 		macb->tx_ring[i].addr = 0;
@@ -267,18 +341,29 @@ static void macb_init(struct macb_device *macb)
 
 	macb->rx_tail = macb->tx_head = macb->tx_tail = 0;
 
+	macb_configure_dma(macb);
+
 	macb_writel(macb, RBQP, (ulong)macb->rx_ring);
 	macb_writel(macb, TBQP, (ulong)macb->tx_ring);
 
-	if (macb->interface == PHY_INTERFACE_MODE_RMII)
-		val |= MACB_BIT(RMII);
-	else
-		val &= ~MACB_BIT(RMII);
+	switch(macb->interface) {
+	case PHY_INTERFACE_MODE_RGMII:
+		val = GEM_BIT(RGMII);
+		break;
+	case PHY_INTERFACE_MODE_RMII:
+		if (IS_ENABLED(CONFIG_ARCH_AT91))
+			val = MACB_BIT(RMII) | MACB_BIT(CLKEN);
+		else
+			val = 0;
+		break;
+	default:
+		if (IS_ENABLED(CONFIG_ARCH_AT91))
+			val = MACB_BIT(CLKEN);
+		else
+			val = MACB_BIT(MII);
+	}
 
-#if defined(CONFIG_ARCH_AT91)
-	val |= MACB_BIT(CLKEN);
-#endif
-	macb_writel(macb, USRIO, val);
+	macb_or_gem_writel(macb, USRIO, val);
 
 }
 
@@ -386,12 +471,75 @@ static int macb_set_ethaddr(struct eth_device *edev, unsigned char *adr)
 	dev_dbg(macb->dev, "%s\n", __func__);
 
 	/* set hardware address */
-	macb_writel(macb, SA1B, adr[0] | adr[1] << 8 | adr[2] << 16 | adr[3] << 24);
-	macb_writel(macb, SA1T, adr[4] | adr[5] << 8);
+	macb_or_gem_writel(macb, SA1B, adr[0] | adr[1] << 8 | adr[2] << 16 | adr[3] << 24);
+	macb_or_gem_writel(macb, SA1T, adr[4] | adr[5] << 8);
 
 	return 0;
 }
 
+static u32 gem_mdc_clk_div(struct macb_device *bp)
+{
+	u32 config;
+	unsigned long pclk_hz = clk_get_rate(bp->pclk);
+
+	if (pclk_hz <= 20000000)
+		config = GEM_BF(CLK, GEM_CLK_DIV8);
+	else if (pclk_hz <= 40000000)
+		config = GEM_BF(CLK, GEM_CLK_DIV16);
+	else if (pclk_hz <= 80000000)
+		config = GEM_BF(CLK, GEM_CLK_DIV32);
+	else if (pclk_hz <= 120000000)
+		config = GEM_BF(CLK, GEM_CLK_DIV48);
+	else if (pclk_hz <= 160000000)
+		config = GEM_BF(CLK, GEM_CLK_DIV64);
+	else
+		config = GEM_BF(CLK, GEM_CLK_DIV96);
+
+	return config;
+}
+
+static u32 macb_mdc_clk_div(struct macb_device *bp)
+{
+	u32 config;
+	unsigned long pclk_hz;
+
+	if (macb_is_gem(bp))
+		return gem_mdc_clk_div(bp);
+
+	pclk_hz = clk_get_rate(bp->pclk);
+	if (pclk_hz <= 20000000)
+		config = MACB_BF(CLK, MACB_CLK_DIV8);
+	else if (pclk_hz <= 40000000)
+		config = MACB_BF(CLK, MACB_CLK_DIV16);
+	else if (pclk_hz <= 80000000)
+		config = MACB_BF(CLK, MACB_CLK_DIV32);
+	else
+		config = MACB_BF(CLK, MACB_CLK_DIV64);
+
+	return config;
+}
+
+/*
+ * Get the DMA bus width field of the network configuration register that we
+ * should program.  We find the width from decoding the design configuration
+ * register to find the maximum supported data bus width.
+ */
+static u32 macb_dbw(struct macb_device *bp)
+{
+	if (!macb_is_gem(bp))
+		return 0;
+
+	switch (GEM_BFEXT(DBWDEF, gem_readl(bp, DCFG1))) {
+	case 4:
+		return GEM_BF(DBW, GEM_DBW128);
+	case 2:
+		return GEM_BF(DBW, GEM_DBW64);
+	case 1:
+	default:
+		return GEM_BF(DBW, GEM_DBW32);
+	}
+}
+
 static void macb_reset_hw(struct macb_device *bp)
 {
 	/* Disable RX and TX forcefully */
@@ -409,14 +557,35 @@ static void macb_reset_hw(struct macb_device *bp)
 	macb_readl(bp, ISR);
 }
 
+static void macb_init_rx_buffer_size(struct macb_device *bp, size_t size)
+{
+	if (!macb_is_gem(bp)) {
+		bp->rx_buffer_size = MACB_RX_BUFFER_SIZE;
+		bp->rx_ring_size = roundup(RX_NB_PACKET * PKTSIZE / MACB_RX_BUFFER_SIZE, 2);
+	} else {
+		bp->rx_buffer_size = size;
+		bp->rx_ring_size = RX_NB_PACKET;
+
+		if (bp->rx_buffer_size % RX_BUFFER_MULTIPLE) {
+			dev_dbg(bp->dev,
+				    "RX buffer must be multiple of %d bytes, expanding\n",
+				    RX_BUFFER_MULTIPLE);
+			bp->rx_buffer_size =
+				roundup(bp->rx_buffer_size, RX_BUFFER_MULTIPLE);
+		}
+		bp->rx_buffer = dma_alloc_coherent(bp->rx_buffer_size * bp->rx_ring_size);
+	}
+
+	dev_dbg(bp->dev, "[%d] rx_buffer_size [%d]\n",
+		   size, bp->rx_buffer_size);
+}
+
 static int macb_probe(struct device_d *dev)
 {
 	struct eth_device *edev;
 	struct macb_device *macb;
-	unsigned long macb_hz;
 	u32 ncfgr;
 	struct at91_ether_platform_data *pdata;
-	struct clk *pclk;
 
 	if (!dev->platform_data) {
 		dev_err(dev, "macb: no platform_data\n");
@@ -432,7 +601,6 @@ static int macb_probe(struct device_d *dev)
 
 	edev->open = macb_open;
 	edev->send = macb_send;
-	edev->recv = macb_recv;
 	edev->halt = macb_halt;
 	edev->get_ethaddr = pdata->get_ethaddr ? pdata->get_ethaddr : macb_get_ethaddr;
 	edev->set_ethaddr = macb_set_ethaddr;
@@ -451,8 +619,9 @@ static int macb_probe(struct device_d *dev)
 
 	macb->phy_flags = pdata->phy_flags;
 
-	macb->rx_buffer = dma_alloc_coherent(MACB_RX_BUFFER_SIZE * RX_RING_SIZE);
-	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES);
+	macb_init_rx_buffer_size(macb, PKTSIZE);
+	macb->rx_buffer = dma_alloc_coherent(macb->rx_buffer_size * macb->rx_ring_size);
+	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb));
 	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES);
 
 	macb->regs = dev_request_mem_region(dev, 0);
@@ -461,29 +630,25 @@ static int macb_probe(struct device_d *dev)
 	 * Do some basic initialization so that we at least can talk
 	 * to the PHY
 	 */
-	pclk = clk_get(dev, "macb_clk");
-	if (IS_ERR(pclk)) {
+	macb->pclk = clk_get(dev, "macb_clk");
+	if (IS_ERR(macb->pclk)) {
 		dev_err(dev, "no macb_clk\n");
-		return PTR_ERR(pclk);
+		return PTR_ERR(macb->pclk);
 	}
 
-	clk_enable(pclk);
-
-	macb_reset_hw(macb);
+	clk_enable(macb->pclk);
 
-	macb_hz = clk_get_rate(pclk);
-	if (macb_hz < 20000000)
-		ncfgr = MACB_BF(CLK, MACB_CLK_DIV8);
-	else if (macb_hz < 40000000)
-		ncfgr = MACB_BF(CLK, MACB_CLK_DIV16);
-	else if (macb_hz < 80000000)
-		ncfgr = MACB_BF(CLK, MACB_CLK_DIV32);
+	if (macb_is_gem(macb))
+		edev->recv = gem_recv;
 	else
-		ncfgr = MACB_BF(CLK, MACB_CLK_DIV64);
-
+		edev->recv = macb_recv;
+	macb->is_gem = read_is_gem(macb);
 
+	macb_reset_hw(macb);
+	ncfgr = macb_mdc_clk_div(macb);
 	ncfgr |= MACB_BIT(PAE);		/* PAuse Enable */
 	ncfgr |= MACB_BIT(DRFCS);	/* Discard Rx FCS */
+	ncfgr |= macb_dbw(macb);
 	macb_writel(macb, NCFGR, ncfgr);
 
 	macb_init(macb);
@@ -491,6 +656,9 @@ static int macb_probe(struct device_d *dev)
 	mdiobus_register(&macb->miibus);
 	eth_register(edev);
 
+	dev_info(dev, "Cadence %s at 0x%p\n",
+		macb_is_gem(macb) ? "GEM" : "MACB", macb->regs);
+
 	return 0;
 }
 
diff --git a/drivers/net/macb.h b/drivers/net/macb.h
index 8dd5a87..cadd561 100644
--- a/drivers/net/macb.h
+++ b/drivers/net/macb.h
@@ -67,6 +67,24 @@
 #define MACB_TPQ				0x00bc
 #define MACB_USRIO				0x00c0
 #define MACB_WOL				0x00c4
+#define MACB_MID				0x00fc
+
+/* GEM register offsets. */
+#define GEM_NCFGR				0x0004
+#define GEM_USRIO				0x000c
+#define GEM_DMACFG				0x0010
+#define GEM_HRB					0x0080
+#define GEM_HRT					0x0084
+#define GEM_SA1B				0x0088
+#define GEM_SA1T				0x008C
+#define GEM_OTX					0x0100
+#define GEM_DCFG1				0x0280
+#define GEM_DCFG2				0x0284
+#define GEM_DCFG3				0x0288
+#define GEM_DCFG4				0x028c
+#define GEM_DCFG5				0x0290
+#define GEM_DCFG6				0x0294
+#define GEM_DCFG7				0x0298
 
 /* Bitfields in NCR */
 #define MACB_LB_OFFSET				0
@@ -134,6 +152,34 @@
 #define MACB_IRXFCS_OFFSET			19
 #define MACB_IRXFCS_SIZE			1
 
+/* GEM specific NCFGR bitfields. */
+#define GEM_GBE_OFFSET				10
+#define GEM_GBE_SIZE				1
+#define GEM_CLK_OFFSET				18
+#define GEM_CLK_SIZE				3
+#define GEM_DBW_OFFSET				21
+#define GEM_DBW_SIZE				2
+
+/* Constants for data bus width. */
+#define GEM_DBW32				0
+#define GEM_DBW64				1
+#define GEM_DBW128				2
+
+/* Bitfields in DMACFG. */
+#define GEM_FBLDO_OFFSET			0
+#define GEM_FBLDO_SIZE				5
+#define GEM_RXBMS_OFFSET			8
+#define GEM_RXBMS_SIZE				2
+#define GEM_TXPBMS_OFFSET			10
+#define GEM_TXPBMS_SIZE				1
+#define GEM_TXCOEN_OFFSET			11
+#define GEM_TXCOEN_SIZE				1
+#define GEM_RXBS_OFFSET				16
+#define GEM_RXBS_SIZE				8
+#define GEM_DDRP_OFFSET				24
+#define GEM_DDRP_SIZE				1
+
+
 /* Bitfields in NSR */
 #define MACB_NSR_LINK_OFFSET			0
 #define MACB_NSR_LINK_SIZE			1
@@ -208,7 +254,7 @@
 #define MACB_SOF_OFFSET				30
 #define MACB_SOF_SIZE				2
 
-/* Bitfields in USRIO */
+/* Bitfields in USRIO (AVR32) */
 #define MACB_MII_OFFSET				0
 #define MACB_MII_SIZE				1
 #define MACB_EAM_OFFSET				1
@@ -221,6 +267,8 @@
 /* Bitfields in USRIO (AT91) */
 #define MACB_RMII_OFFSET			0
 #define MACB_RMII_SIZE				1
+#define GEM_RGMII_OFFSET			0	/* GEM gigabit mode */
+#define GEM_RGMII_SIZE				1
 #define MACB_CLKEN_OFFSET			1
 #define MACB_CLKEN_SIZE				1
 
@@ -236,12 +284,30 @@
 #define MACB_WOL_MTI_OFFSET			19
 #define MACB_WOL_MTI_SIZE			1
 
+/* Bitfields in MID */
+#define MACB_IDNUM_OFFSET			16
+#define MACB_IDNUM_SIZE				16
+#define MACB_REV_OFFSET				0
+#define MACB_REV_SIZE				16
+
+/* Bitfields in DCFG1. */
+#define GEM_DBWDEF_OFFSET			25
+#define GEM_DBWDEF_SIZE				3
+
 /* Constants for CLK */
 #define MACB_CLK_DIV8				0
 #define MACB_CLK_DIV16				1
 #define MACB_CLK_DIV32				2
 #define MACB_CLK_DIV64				3
 
+/* GEM specific constants for CLK. */
+#define GEM_CLK_DIV8				0
+#define GEM_CLK_DIV16				1
+#define GEM_CLK_DIV32				2
+#define GEM_CLK_DIV48				3
+#define GEM_CLK_DIV64				4
+#define GEM_CLK_DIV96				5
+
 /* Constants for MAN register */
 #define MACB_MAN_SOF				1
 #define MACB_MAN_WRITE				1
@@ -262,11 +328,52 @@
 		    << MACB_##name##_OFFSET))		\
 	 | MACB_BF(name,value))
 
+#define GEM_BIT(name)					\
+	(1 << GEM_##name##_OFFSET)
+#define GEM_BF(name, value)				\
+	(((value) & ((1 << GEM_##name##_SIZE) - 1))	\
+	 << GEM_##name##_OFFSET)
+#define GEM_BFEXT(name, value)\
+	(((value) >> GEM_##name##_OFFSET)		\
+	 & ((1 << GEM_##name##_SIZE) - 1))
+#define GEM_BFINS(name, value, old)			\
+	(((old) & ~(((1 << GEM_##name##_SIZE) - 1)	\
+		    << GEM_##name##_OFFSET))		\
+	 | GEM_BF(name, value))
+
 /* Register access macros */
 #define macb_readl(port,reg)				\
 	__raw_readl((port)->regs + MACB_##reg)
 #define macb_writel(port,reg,value)			\
 	__raw_writel((value), (port)->regs + MACB_##reg)
+#define gem_readl(port, reg)				\
+	__raw_readl((port)->regs + GEM_##reg)
+#define gem_writel(port, reg, value)			\
+	__raw_writel((value), (port)->regs + GEM_##reg)
+
+/*
+ * Conditional GEM/MACB macros.  These perform the operation to the correct
+ * register dependent on whether the device is a GEM or a MACB.  For registers
+ * and bitfields that are common across both devices, use macb_{read,write}l
+ * to avoid the cost of the conditional.
+ */
+#define macb_or_gem_writel(__bp, __reg, __value) \
+	({ \
+		if (macb_is_gem((__bp))) \
+			gem_writel((__bp), __reg, __value); \
+		else \
+			macb_writel((__bp), __reg, __value); \
+	})
+
+#define macb_or_gem_readl(__bp, __reg) \
+	({ \
+		u32 __v; \
+		if (macb_is_gem((__bp))) \
+			__v = gem_readl((__bp), __reg); \
+		else \
+			__v = macb_readl((__bp), __reg); \
+		__v; \
+	})
 
 /**
  * struct macb_dma_desc - Hardware DMA descriptor
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
