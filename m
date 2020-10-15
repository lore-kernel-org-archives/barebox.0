Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kT3Bc-0003Xr-D2
 for barebox@lists.infradead.org; Thu, 15 Oct 2020 13:20:53 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 15 Oct 2020 15:20:46 +0200
Message-Id: <20201015132048.420995-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] net: macb: reduce DEBUG output to make it more useful
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

The macb debugging output printed the function entry for various
functions. Especially for *_recv() this debugging flooded the serial
output while conveying very little information.

Remove printing of the function calls to make enabling debugging for the
macb driver more useful.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/net/macb.c | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index e3e039f67988..09b58ffd017f 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -144,8 +144,6 @@ static void reclaim_rx_buffers(struct macb_device *macb,
 {
 	unsigned int i;
 
-	dev_dbg(macb->dev, "%s\n", __func__);
-
 	i = macb->rx_tail;
 	while (i > new_tail) {
 		macb->rx_ring[i].addr &= ~MACB_BIT(RX_USED);
@@ -170,8 +168,6 @@ static int gem_recv(struct eth_device *edev)
 	int length;
 	u32 status;
 
-	dev_dbg(macb->dev, "%s\n", __func__);
-
 	for (;;) {
 		barrier();
 		if (!(macb->rx_ring[macb->rx_tail].addr & MACB_BIT(RX_USED)))
@@ -206,8 +202,6 @@ static int macb_recv(struct eth_device *edev)
 	int wrapped = 0;
 	u32 status;
 
-	dev_dbg(macb->dev, "%s\n", __func__);
-
 	for (;;) {
 		barrier();
 		if (!(macb->rx_ring[rx_tail].addr & MACB_BIT(RX_USED)))
@@ -288,8 +282,6 @@ static int macb_open(struct eth_device *edev)
 {
 	struct macb_device *macb = edev->priv;
 
-	dev_dbg(macb->dev, "%s\n", __func__);
-
 	/* Enable TX and RX */
 	macb_writel(macb, NCR, MACB_BIT(TE) | MACB_BIT(RE));
 
@@ -350,8 +342,6 @@ static void macb_init(struct macb_device *macb)
 	unsigned long paddr, val = 0;
 	int i;
 
-	dev_dbg(macb->dev, "%s\n", __func__);
-
 	/*
 	 * macb_halt should have been called at some point before now,
 	 * so we'll assume the controller is idle.
@@ -441,8 +431,6 @@ static int macb_phy_read(struct mii_bus *bus, int addr, int reg)
 	int value;
 	uint64_t start;
 
-	dev_dbg(macb->dev, "%s\n", __func__);
-
 	netctl = macb_readl(macb, NCR);
 	netctl |= MACB_BIT(MPE);
 	macb_writel(macb, NCR, netctl);
@@ -478,8 +466,6 @@ static int macb_phy_write(struct mii_bus *bus, int addr, int reg, u16 value)
 	unsigned long netctl;
 	unsigned long frame;
 
-	dev_dbg(macb->dev, "%s\n", __func__);
-
 	netctl = macb_readl(macb, NCR);
 	netctl |= MACB_BIT(MPE);
 	macb_writel(macb, NCR, netctl);
@@ -510,8 +496,6 @@ static int macb_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 	u8 addr[6];
 	int i;
 
-	dev_dbg(macb->dev, "%s\n", __func__);
-
 	/* Check all 4 address register for vaild address */
 	for (i = 0; i < 4; i++) {
 		bottom = macb_or_gem_readl(macb, SA1B + i * 8);
@@ -537,8 +521,6 @@ static int macb_set_ethaddr(struct eth_device *edev, const unsigned char *adr)
 {
 	struct macb_device *macb = edev->priv;
 
-	dev_dbg(macb->dev, "%s\n", __func__);
-
 	/* set hardware address */
 	macb_or_gem_writel(macb, SA1B, adr[0] | adr[1] << 8 | adr[2] << 16 | adr[3] << 24);
 	macb_or_gem_writel(macb, SA1T, adr[4] | adr[5] << 8);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
