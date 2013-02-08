Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo5.mail-out.ovh.net ([91.121.55.239]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3k7n-0005Re-Q0
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 09:20:06 +0000
Received: from mail634.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id BBBA21020202
 for <barebox@lists.infradead.org>; Fri,  8 Feb 2013 10:30:23 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  8 Feb 2013 10:18:45 +0100
Message-Id: <1360315130-23872-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360315130-23872-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130208090739.GP19322@game.jcrosoft.org>
 <1360315130-23872-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/7] macb: sync remaining define with linux
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |   71 ++++++++++++++++------------------------------------
 drivers/net/macb.h |   70 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 92 insertions(+), 49 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 3aec0c4..4dc873d 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -56,29 +56,6 @@
 #define CFG_MACB_TX_TIMEOUT		1000
 #define CFG_MACB_AUTONEG_TIMEOUT	5000000
 
-struct macb_dma_desc {
-	u32	addr;
-	u32	ctrl;
-};
-
-#define RXADDR_USED		0x00000001
-#define RXADDR_WRAP		0x00000002
-
-#define RXBUF_FRMLEN_MASK	0x00000fff
-#define RXBUF_FRAME_START	0x00004000
-#define RXBUF_FRAME_END		0x00008000
-#define RXBUF_TYPEID_MATCH	0x00400000
-#define RXBUF_BROADCAST		0x80000000
-
-#define TXBUF_FRMLEN_MASK	0x000007ff
-#define TXBUF_FRAME_END		0x00008000
-#define TXBUF_NOCRC		0x00010000
-#define TXBUF_EXHAUSTED		0x08000000
-#define TXBUF_UNDERRUN		0x10000000
-#define TXBUF_MAXRETRY		0x20000000
-#define TXBUF_WRAP		0x40000000
-#define TXBUF_USED		0x80000000
-
 struct macb_device {
 	void			__iomem *regs;
 
@@ -111,8 +88,8 @@ static int macb_send(struct eth_device *edev, void *packet,
 
 	dev_dbg(macb->dev, "%s\n", __func__);
 
-	ctrl = length & TXBUF_FRMLEN_MASK;
-	ctrl |= TXBUF_FRAME_END | TXBUF_WRAP;
+	ctrl = MACB_BF(TX_FRMLEN, length);
+	ctrl |= MACB_BIT(TX_LAST) | MACB_BIT(TX_WRAP);
 
 	macb->tx_ring[0].ctrl = ctrl;
 	macb->tx_ring[0].addr = (ulong)packet;
@@ -121,13 +98,13 @@ static int macb_send(struct eth_device *edev, void *packet,
 	macb_writel(macb, NCR, MACB_BIT(TE) | MACB_BIT(RE) | MACB_BIT(TSTART));
 
 	ret = wait_on_timeout(100 * MSECOND,
-		!(macb->tx_ring[0].ctrl & TXBUF_USED));
+		!(macb->tx_ring[0].ctrl & MACB_BIT(TX_USED)));
 
 	ctrl = macb->tx_ring[0].ctrl;
 
-	if (ctrl & TXBUF_UNDERRUN)
+	if (ctrl & MACB_BIT(TX_UNDERRUN))
 		dev_err(macb->dev, "TX underrun\n");
-	if (ctrl & TXBUF_EXHAUSTED)
+	if (ctrl & MACB_BIT(TX_BUF_EXHAUSTED))
 		dev_err(macb->dev, "TX buffers exhausted in mid frame\n");
 	if (ret)
 		dev_err(macb->dev,"TX timeout\n");
@@ -144,14 +121,14 @@ static void reclaim_rx_buffers(struct macb_device *macb,
 
 	i = macb->rx_tail;
 	while (i > new_tail) {
-		macb->rx_ring[i].addr &= ~RXADDR_USED;
+		macb->rx_ring[i].addr &= ~MACB_BIT(RX_USED);
 		i++;
 		if (i > CFG_MACB_RX_RING_SIZE)
 			i = 0;
 	}
 
 	while (i < new_tail) {
-		macb->rx_ring[i].addr &= ~RXADDR_USED;
+		macb->rx_ring[i].addr &= ~MACB_BIT(RX_USED);
 		i++;
 	}
 
@@ -171,19 +148,19 @@ static int macb_recv(struct eth_device *edev)
 	dev_dbg(macb->dev, "%s\n", __func__);
 
 	for (;;) {
-		if (!(macb->rx_ring[rx_tail].addr & RXADDR_USED))
+		if (!(macb->rx_ring[rx_tail].addr & MACB_BIT(RX_USED)))
 			return -1;
 
 		status = macb->rx_ring[rx_tail].ctrl;
-		if (status & RXBUF_FRAME_START) {
+		if (status & MACB_BIT(RX_SOF)) {
 			if (rx_tail != macb->rx_tail)
 				reclaim_rx_buffers(macb, rx_tail);
 			wrapped = 0;
 		}
 
-		if (status & RXBUF_FRAME_END) {
+		if (status & MACB_BIT(RX_EOF)) {
 			buffer = macb->rx_buffer + 128 * macb->rx_tail;
-			length = status & RXBUF_FRMLEN_MASK;
+			length = MACB_BFEXT(RX_FRMLEN, status);
 			if (wrapped) {
 				unsigned int headlen, taillen;
 
@@ -257,14 +234,14 @@ static void macb_init(struct macb_device *macb)
 	paddr = (ulong)macb->rx_buffer;
 	for (i = 0; i < CFG_MACB_RX_RING_SIZE; i++) {
 		if (i == (CFG_MACB_RX_RING_SIZE - 1))
-			paddr |= RXADDR_WRAP;
+			paddr |= MACB_BIT(RX_WRAP);
 		macb->rx_ring[i].addr = paddr;
 		macb->rx_ring[i].ctrl = 0;
 		paddr += 128;
 	}
 
 	macb->tx_ring[0].addr = 0;
-	macb->tx_ring[0].ctrl = TXBUF_USED | TXBUF_WRAP;
+	macb->tx_ring[0].ctrl = MACB_BIT(TX_USED) | MACB_BIT(TX_WRAP);
 
 	macb->rx_tail = macb->tx_tail = 0;
 
@@ -308,7 +285,6 @@ static int macb_phy_read(struct mii_bus *bus, int addr, int reg)
 	struct macb_device *macb = bus->priv;
 
 	unsigned long netctl;
-	unsigned long netstat;
 	unsigned long frame;
 	int value;
 	uint64_t start;
@@ -319,21 +295,20 @@ static int macb_phy_read(struct mii_bus *bus, int addr, int reg)
 	netctl |= MACB_BIT(MPE);
 	macb_writel(macb, NCR, netctl);
 
-	frame = (MACB_BF(SOF, 1)
-		 | MACB_BF(RW, 2)
+	frame = (MACB_BF(SOF, MACB_MAN_SOF)
+		 | MACB_BF(RW, MACB_MAN_READ)
 		 | MACB_BF(PHYA, addr)
 		 | MACB_BF(REGA, reg)
-		 | MACB_BF(CODE, 2));
+		 | MACB_BF(CODE, MACB_MAN_CODE));
 	macb_writel(macb, MAN, frame);
 
 	start = get_time_ns();
 	do {
-		netstat = macb_readl(macb, NSR);
 		if (is_timeout(start, SECOND)) {
 			dev_err(macb->dev, "phy read timed out\n");
 			return -1;
 		}
-	} while (!(netstat & MACB_BIT(IDLE)));
+	} while (!MACB_BFEXT(IDLE, macb_readl(macb, NSR)));
 
 	frame = macb_readl(macb, MAN);
 	value = MACB_BFEXT(DATA, frame);
@@ -349,7 +324,6 @@ static int macb_phy_write(struct mii_bus *bus, int addr, int reg, u16 value)
 {
 	struct macb_device *macb = bus->priv;
 	unsigned long netctl;
-	unsigned long netstat;
 	unsigned long frame;
 
 	dev_dbg(macb->dev, "%s\n", __func__);
@@ -358,17 +332,16 @@ static int macb_phy_write(struct mii_bus *bus, int addr, int reg, u16 value)
 	netctl |= MACB_BIT(MPE);
 	macb_writel(macb, NCR, netctl);
 
-	frame = (MACB_BF(SOF, 1)
-		 | MACB_BF(RW, 1)
+	frame = (MACB_BF(SOF, MACB_MAN_SOF)
+		 | MACB_BF(RW, MACB_MAN_WRITE)
 		 | MACB_BF(PHYA, addr)
 		 | MACB_BF(REGA, reg)
-		 | MACB_BF(CODE, 2)
+		 | MACB_BF(CODE, MACB_MAN_CODE)
 		 | MACB_BF(DATA, value));
 	macb_writel(macb, MAN, frame);
 
-	do {
-		netstat = macb_readl(macb, NSR);
-	} while (!(netstat & MACB_BIT(IDLE)));
+	while (!MACB_BFEXT(IDLE, macb_readl(macb, NSR)))
+		;
 
 	netctl = macb_readl(macb, NCR);
 	netctl &= ~MACB_BIT(MPE);
diff --git a/drivers/net/macb.h b/drivers/net/macb.h
index 5d9c534..8dd5a87 100644
--- a/drivers/net/macb.h
+++ b/drivers/net/macb.h
@@ -268,4 +268,74 @@
 #define macb_writel(port,reg,value)			\
 	__raw_writel((value), (port)->regs + MACB_##reg)
 
+/**
+ * struct macb_dma_desc - Hardware DMA descriptor
+ * @addr: DMA address of data buffer
+ * @ctrl: Control and status bits
+ */
+struct macb_dma_desc {
+	u32	addr;
+	u32	ctrl;
+};
+
+/* DMA descriptor bitfields */
+#define MACB_RX_USED_OFFSET			0
+#define MACB_RX_USED_SIZE			1
+#define MACB_RX_WRAP_OFFSET			1
+#define MACB_RX_WRAP_SIZE			1
+#define MACB_RX_WADDR_OFFSET			2
+#define MACB_RX_WADDR_SIZE			30
+
+#define MACB_RX_FRMLEN_OFFSET			0
+#define MACB_RX_FRMLEN_SIZE			12
+#define MACB_RX_OFFSET_OFFSET			12
+#define MACB_RX_OFFSET_SIZE			2
+#define MACB_RX_SOF_OFFSET			14
+#define MACB_RX_SOF_SIZE			1
+#define MACB_RX_EOF_OFFSET			15
+#define MACB_RX_EOF_SIZE			1
+#define MACB_RX_CFI_OFFSET			16
+#define MACB_RX_CFI_SIZE			1
+#define MACB_RX_VLAN_PRI_OFFSET			17
+#define MACB_RX_VLAN_PRI_SIZE			3
+#define MACB_RX_PRI_TAG_OFFSET			20
+#define MACB_RX_PRI_TAG_SIZE			1
+#define MACB_RX_VLAN_TAG_OFFSET			21
+#define MACB_RX_VLAN_TAG_SIZE			1
+#define MACB_RX_TYPEID_MATCH_OFFSET		22
+#define MACB_RX_TYPEID_MATCH_SIZE		1
+#define MACB_RX_SA4_MATCH_OFFSET		23
+#define MACB_RX_SA4_MATCH_SIZE			1
+#define MACB_RX_SA3_MATCH_OFFSET		24
+#define MACB_RX_SA3_MATCH_SIZE			1
+#define MACB_RX_SA2_MATCH_OFFSET		25
+#define MACB_RX_SA2_MATCH_SIZE			1
+#define MACB_RX_SA1_MATCH_OFFSET		26
+#define MACB_RX_SA1_MATCH_SIZE			1
+#define MACB_RX_EXT_MATCH_OFFSET		28
+#define MACB_RX_EXT_MATCH_SIZE			1
+#define MACB_RX_UHASH_MATCH_OFFSET		29
+#define MACB_RX_UHASH_MATCH_SIZE		1
+#define MACB_RX_MHASH_MATCH_OFFSET		30
+#define MACB_RX_MHASH_MATCH_SIZE		1
+#define MACB_RX_BROADCAST_OFFSET		31
+#define MACB_RX_BROADCAST_SIZE			1
+
+#define MACB_TX_FRMLEN_OFFSET			0
+#define MACB_TX_FRMLEN_SIZE			11
+#define MACB_TX_LAST_OFFSET			15
+#define MACB_TX_LAST_SIZE			1
+#define MACB_TX_NOCRC_OFFSET			16
+#define MACB_TX_NOCRC_SIZE			1
+#define MACB_TX_BUF_EXHAUSTED_OFFSET		27
+#define MACB_TX_BUF_EXHAUSTED_SIZE		1
+#define MACB_TX_UNDERRUN_OFFSET			28
+#define MACB_TX_UNDERRUN_SIZE			1
+#define MACB_TX_ERROR_OFFSET			29
+#define MACB_TX_ERROR_SIZE			1
+#define MACB_TX_WRAP_OFFSET			30
+#define MACB_TX_WRAP_SIZE			1
+#define MACB_TX_USED_OFFSET			31
+#define MACB_TX_USED_SIZE			1
+
 #endif /* __DRIVERS_MACB_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
