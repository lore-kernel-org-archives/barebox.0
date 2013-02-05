Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U2fZf-0001Ml-7l
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 10:16:24 +0000
Received: from mail412.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 9D912FFA79B
 for <barebox@lists.infradead.org>; Tue,  5 Feb 2013 11:30:44 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  5 Feb 2013 11:15:03 +0100
Message-Id: <1360059306-31118-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130205101236.GA19322@game.jcrosoft.org>
References: <20130205101236.GA19322@game.jcrosoft.org>
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
Subject: [PATCH 1/4] macb: use dev_xx message
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |   34 +++++++++++++++++++---------------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 18ac3f8..15b1e93 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -96,7 +96,7 @@ struct macb_device {
 
 	int			phy_addr;
 
-	const struct device	*dev;
+	const struct device_d	*dev;
 	struct eth_device	netdev;
 
 	phy_interface_t		interface;
@@ -112,7 +112,7 @@ static int macb_send(struct eth_device *edev, void *packet,
 	struct macb_device *macb = edev->priv;
 	unsigned long ctrl;
 
-	debug("%s\n", __func__);
+	dev_dbg(macb->dev, "%s\n", __func__);
 
 	ctrl = length & TXBUF_FRMLEN_MASK;
 	ctrl |= TXBUF_FRAME_END | TXBUF_WRAP;
@@ -123,15 +123,15 @@ static int macb_send(struct eth_device *edev, void *packet,
 	dma_flush_range((ulong) packet, (ulong)packet + length);
 	macb_writel(macb, NCR, MACB_BIT(TE) | MACB_BIT(RE) | MACB_BIT(TSTART));
 
-	wait_on_timeout(100 * MSECOND,
+	ret = wait_on_timeout(100 * MSECOND,
 		!(macb->tx_ring[0].ctrl & TXBUF_USED));
 
 	ctrl = macb->tx_ring[0].ctrl;
 
 	if (ctrl & TXBUF_UNDERRUN)
-		printf("TX underrun\n");
+		dev_err(macb->dev, "TX underrun\n");
 	if (ctrl & TXBUF_EXHAUSTED)
-		printf("TX buffers exhausted in mid frame\n");
+		dev_err(macb->dev, "TX buffers exhausted in mid frame\n");
 
 	/* No one cares anyway */
 	return 0;
@@ -142,7 +142,7 @@ static void reclaim_rx_buffers(struct macb_device *macb,
 {
 	unsigned int i;
 
-	debug("%s\n", __func__);
+	dev_dbg(macb->dev, "%s\n", __func__);
 
 	i = macb->rx_tail;
 	while (i > new_tail) {
@@ -170,7 +170,7 @@ static int macb_recv(struct eth_device *edev)
 	int wrapped = 0;
 	u32 status;
 
-//	printf("%s\n", __func__);
+	dev_dbg(macb->dev, "%s\n", __func__);
 
 	for (;;) {
 		if (!(macb->rx_ring[rx_tail].addr & RXADDR_USED))
@@ -235,7 +235,7 @@ static int macb_open(struct eth_device *edev)
 {
 	struct macb_device *macb = edev->priv;
 
-	debug("%s\n", __func__);
+	dev_dbg(macb->dev, "%s\n", __func__);
 
 	/* Obtain the PHY's address/id */
 	return phy_device_connect(edev, &macb->miibus, macb->phy_addr,
@@ -249,7 +249,7 @@ static int macb_init(struct eth_device *edev)
 	unsigned long paddr, val = 0;
 	int i;
 
-	debug("%s\n", __func__);
+	dev_dbg(macb->dev, "%s\n", __func__);
 
 	/*
 	 * macb_halt should have been called at some point before now,
@@ -318,7 +318,7 @@ static int macb_phy_read(struct mii_bus *bus, int addr, int reg)
 	int value;
 	uint64_t start;
 
-	debug("%s\n", __func__);
+	dev_dbg(macb->dev, "%s\n", __func__);
 
 	netctl = macb_readl(macb, NCR);
 	netctl |= MACB_BIT(MPE);
@@ -335,7 +335,7 @@ static int macb_phy_read(struct mii_bus *bus, int addr, int reg)
 	do {
 		netstat = macb_readl(macb, NSR);
 		if (is_timeout(start, SECOND)) {
-			printf("phy read timed out\n");
+			dev_err(macb->dev, "phy read timed out\n");
 			return -1;
 		}
 	} while (!(netstat & MACB_BIT(IDLE)));
@@ -357,7 +357,7 @@ static int macb_phy_write(struct mii_bus *bus, int addr, int reg, u16 value)
 	unsigned long netstat;
 	unsigned long frame;
 
-	debug("%s\n", __func__);
+	dev_dbg(macb->dev, "%s\n", __func__);
 
 	netctl = macb_readl(macb, NCR);
 	netctl |= MACB_BIT(MPE);
@@ -384,7 +384,9 @@ static int macb_phy_write(struct mii_bus *bus, int addr, int reg, u16 value)
 
 static int macb_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 {
-	debug("%s\n", __func__);
+	struct macb_device *macb = edev->priv;
+
+	dev_dbg(macb->dev, "%s\n", __func__);
 
 	return -1;
 }
@@ -393,7 +395,7 @@ static int macb_set_ethaddr(struct eth_device *edev, unsigned char *adr)
 {
 	struct macb_device *macb = edev->priv;
 
-	debug("%s\n", __func__);
+	dev_dbg(macb->dev, "%s\n", __func__);
 
 	/* set hardware address */
 	macb_writel(macb, SA1B, adr[0] | adr[1] << 8 | adr[2] << 16 | adr[3] << 24);
@@ -412,7 +414,7 @@ static int macb_probe(struct device_d *dev)
 	struct clk *pclk;
 
 	if (!dev->platform_data) {
-		printf("macb: no platform_data\n");
+		dev_err(dev, "macb: no platform_data\n");
 		return -ENODEV;
 	}
 	pdata = dev->platform_data;
@@ -421,6 +423,8 @@ static int macb_probe(struct device_d *dev)
 	edev->priv = (struct macb_device *)(edev + 1);
 	macb = edev->priv;
 
+	macb->dev = dev;
+
 	edev->init = macb_init;
 	edev->open = macb_open;
 	edev->send = macb_send;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
