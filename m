Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0b-00176a03.pphosted.com ([67.231.157.48])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9as4-00040x-Kg
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 14:16:49 +0000
Received: from pps.filterd (m0048299.ppops.net [127.0.0.1])
 by m0048299.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id s6MEEQGt042964
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 10:16:22 -0400
Received: from cinmlip13.e2k.ad.ge.com (n165-156-000-000.static.ge.com
 [165.156.4.1] (may be forged))
 by m0048299.ppops.net-00176a03. with ESMTP id 1n9ruk88xa-1
 (version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 10:16:21 -0400
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 22 Jul 2014 15:16:18 +0100
Message-Id: <1406038578-29583-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH] gianfar: descriptors access with I/O accessors
To: barebox@lists.infradead.org

As in U-Boot git-9c9141f, make read/write access to the TX/RX
descriptors CPU agnostic.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 drivers/net/gianfar.c | 70 +++++++++++++++++++++++++--------------------------
 drivers/net/gianfar.h | 16 ++++++------
 2 files changed, 43 insertions(+), 43 deletions(-)

diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 3370b5c..a308035 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -199,19 +199,19 @@ static int gfar_open(struct eth_device *edev)
 
 	/* Initialize the Rx Buffer descriptors */
 	for (ix = 0; ix < RX_BUF_CNT; ix++) {
-		priv->rxbd[ix].status = RXBD_EMPTY;
-		priv->rxbd[ix].length = 0;
-		priv->rxbd[ix].bufPtr = (uint) NetRxPackets[ix];
+		out_be16(&priv->rxbd[ix].status, RXBD_EMPTY);
+		out_be16(&priv->rxbd[ix].length, 0);
+		out_be32(&priv->rxbd[ix].bufPtr, (uint) NetRxPackets[ix]);
 	}
-	priv->rxbd[RX_BUF_CNT - 1].status |= RXBD_WRAP;
+	out_be16(&priv->rxbd[RX_BUF_CNT - 1].status, RXBD_EMPTY | RXBD_WRAP);
 
 	/* Initialize the TX Buffer Descriptors */
 	for (ix = 0; ix < TX_BUF_CNT; ix++) {
-		priv->txbd[ix].status = 0;
-		priv->txbd[ix].length = 0;
-		priv->txbd[ix].bufPtr = 0;
+		out_be16(&priv->txbd[ix].status, 0);
+		out_be16(&priv->txbd[ix].length, 0);
+		out_be32(&priv->txbd[ix].bufPtr, 0);
 	}
-	priv->txbd[TX_BUF_CNT - 1].status |= TXBD_WRAP;
+	out_be16(&priv->txbd[TX_BUF_CNT - 1].status, TXBD_WRAP);
 
 	/* Enable Transmit and Receive */
 	setbits_be32(regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_RX_EN |
@@ -366,30 +366,32 @@ static int gfar_send(struct eth_device *edev, void *packet, int length)
 	struct device_d *dev = edev->parent;
 	uint64_t start;
 	uint tidx;
+	uint16_t status;
 
 	tidx = priv->txidx;
-	priv->txbd[tidx].bufPtr = (uint) packet;
-	priv->txbd[tidx].length = length;
-	priv->txbd[tidx].status |= (TXBD_READY | TXBD_LAST |
-				TXBD_CRC | TXBD_INTERRUPT);
+	out_be32(&priv->txbd[tidx].bufPtr, (u32) packet);
+	out_be16(&priv->txbd[tidx].length, length);
+	out_be16(&priv->txbd[tidx].status,
+		in_be16(&priv->txbd[tidx].status) |
+		(TXBD_READY | TXBD_LAST | TXBD_CRC | TXBD_INTERRUPT));
 
 	/* Tell the DMA to go */
 	out_be32(regs + GFAR_TSTAT_OFFSET, GFAR_TSTAT_CLEAR_THALT);
 
 	/* Wait for buffer to be transmitted */
 	start = get_time_ns();
-	while (priv->txbd[tidx].status & TXBD_READY) {
+	while (in_be16(&priv->txbd[tidx].status) & TXBD_READY) {
 		if (is_timeout(start, 5 * MSECOND)) {
 			break;
 		}
 	}
 
-	if (priv->txbd[tidx].status & TXBD_READY) {
-		dev_err(dev, "tx timeout: 0x%x\n", priv->txbd[tidx].status);
+	status = in_be16(&priv->txbd[tidx].status);
+	if (status & TXBD_READY) {
+		dev_err(dev, "tx timeout: 0x%x\n", status);
 		return -EBUSY;
-	}
-	else if (priv->txbd[tidx].status & TXBD_STATS) {
-		dev_err(dev, "TX error: 0x%x\n", priv->txbd[tidx].status);
+	} else if (status & TXBD_STATS) {
+		dev_err(dev, "TX error: 0x%x\n", status);
 		return -EIO;
 	}
 
@@ -403,31 +405,28 @@ static int gfar_recv(struct eth_device *edev)
 	struct gfar_private *priv = edev->priv;
 	struct device_d *dev = edev->parent;
 	void __iomem *regs = priv->regs;
-	int length;
+	uint16_t status, length;
 
-	if (priv->rxbd[priv->rxidx].status & RXBD_EMPTY) {
-		return 0; /* no data */
-	}
+	if (in_be16(&priv->rxbd[priv->rxidx].status) & RXBD_EMPTY)
+		return 0;
 
-	length = priv->rxbd[priv->rxidx].length;
+	length = in_be16(&priv->rxbd[priv->rxidx].length);
 
 	/* Send the packet up if there were no errors */
-	if (!(priv->rxbd[priv->rxidx].status & RXBD_STATS)) {
+	status = in_be16(&priv->rxbd[priv->rxidx].status);
+	if (!(status & RXBD_STATS))
 		net_receive(edev, NetRxPackets[priv->rxidx], length - 4);
-	} else {
-		dev_err(dev, "Got error %x\n",
-		       (priv->rxbd[priv->rxidx].status & RXBD_STATS));
-	}
+	else
+		dev_err(dev, "Got error %x\n", status & RXBD_STATS);
 
-	priv->rxbd[priv->rxidx].length = 0;
+	out_be16(&priv->rxbd[priv->rxidx].length, 0);
 
+	status = RXBD_EMPTY;
 	/* Set the wrap bit if this is the last element in the list */
 	if ((priv->rxidx + 1) == RX_BUF_CNT)
-		priv->rxbd[priv->rxidx].status = RXBD_WRAP;
-	else
-		priv->rxbd[priv->rxidx].status = 0;
+		status |= RXBD_WRAP;
 
-	priv->rxbd[priv->rxidx].status |= RXBD_EMPTY;
+	out_be16(&priv->rxbd[priv->rxidx].status, status);
 	priv->rxidx = (priv->rxidx + 1) % RX_BUF_CNT;
 
 	if (in_be32(regs + GFAR_IEVENT_OFFSET) & GFAR_IEVENT_BSY) {
@@ -517,8 +516,9 @@ static int gfar_probe(struct device_d *dev)
 	size = ((TX_BUF_CNT * sizeof(struct txbd8)) +
 		(RX_BUF_CNT * sizeof(struct rxbd8))) + BUF_ALIGN;
 	p = (char *)xmemalign(BUF_ALIGN, size);
-	priv->txbd = (struct txbd8 *)p;
-	priv->rxbd = (struct rxbd8 *)(p + (TX_BUF_CNT * sizeof(struct txbd8)));
+	priv->txbd = (struct txbd8 __iomem *)p;
+	priv->rxbd = (struct rxbd8 __iomem *)(p +
+			(TX_BUF_CNT * sizeof(struct txbd8)));
 
 	edev->priv = priv;
 	edev->init = gfar_init;
diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
index 1aac479..c0b9763 100644
--- a/drivers/net/gianfar.h
+++ b/drivers/net/gianfar.h
@@ -188,15 +188,15 @@
 #define RXBD_STATS		0x003f
 
 struct txbd8 {
-	ushort	     status;	     /* Status Fields */
-	ushort	     length;	     /* Buffer length */
-	uint	     bufPtr;	     /* Buffer Pointer */
+	uint16_t     status;	     /* Status Fields */
+	uint16_t     length;	     /* Buffer length */
+	uint32_t     bufPtr;	     /* Buffer Pointer */
 };
 
 struct rxbd8 {
-	ushort	     status;	     /* Status Fields */
-	ushort	     length;	     /* Buffer Length */
-	uint	     bufPtr;	     /* Buffer Pointer */
+	uint16_t     status;	     /* Status Fields */
+	uint16_t     length;	     /* Buffer Length */
+	uint32_t     bufPtr;	     /* Buffer Pointer */
 };
 
 /* eTSEC general control and status registers */
@@ -275,8 +275,8 @@ struct gfar_private {
 	struct gfar_phy *gfar_mdio;
 	struct gfar_phy *gfar_tbi;
 	struct phy_info *phyinfo;
-	volatile struct txbd8 *txbd;
-	volatile struct rxbd8 *rxbd;
+	struct txbd8 __iomem *txbd;
+	struct rxbd8 __iomem *rxbd;
 	uint txidx;
 	uint rxidx;
 	uint phyaddr;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
