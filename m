Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzxC2-00056p-If
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 22:28:48 +0000
Received: from mail606.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 9EC2FDC1C35
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2013 23:38:40 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 28 Jan 2013 23:27:26 +0100
Message-Id: <1359412047-30677-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130128222510.GS26329@game.jcrosoft.org>
References: <20130128222510.GS26329@game.jcrosoft.org>
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
Subject: [PATCH 1/2] macb: sync register access and clock with the kernel
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |   63 ++++++++++++++++++++++------------------------------
 drivers/net/macb.h |    6 +++++
 2 files changed, 33 insertions(+), 36 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 35e5e58..cd977c1 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -121,7 +121,7 @@ static int macb_send(struct eth_device *edev, void *packet,
 	macb->tx_ring[0].addr = (ulong)packet;
 	barrier();
 	dma_flush_range((ulong) packet, (ulong)packet + length);
-	writel(MACB_BIT(TE) | MACB_BIT(RE) | MACB_BIT(TSTART), macb->regs + MACB_NCR);
+	macb_writel(macb, NCR, MACB_BIT(TE) | MACB_BIT(RE) | MACB_BIT(TSTART));
 
 	wait_on_timeout(100 * MSECOND,
 		!(macb->tx_ring[0].ctrl & TXBUF_USED));
@@ -220,7 +220,7 @@ static void macb_adjust_link(struct eth_device *edev)
 	struct macb_device *macb = edev->priv;
 	u32 reg;
 
-	reg = readl(macb->regs + MACB_NCFGR);
+	reg = macb_readl(macb, NCFGR);
 	reg &= ~(MACB_BIT(SPD) | MACB_BIT(FD));
 
 	if (edev->phydev->duplex)
@@ -228,7 +228,7 @@ static void macb_adjust_link(struct eth_device *edev)
 	if (edev->phydev->speed == SPEED_100)
 		reg |= MACB_BIT(SPD);
 
-	writel(reg, macb->regs + MACB_NCFGR);
+	macb_writel(macb, NCFGR, reg);
 }
 
 static int macb_open(struct eth_device *edev)
@@ -271,8 +271,8 @@ static int macb_init(struct eth_device *edev)
 
 	macb->rx_tail = macb->tx_tail = 0;
 
-	writel((ulong)macb->rx_ring, macb->regs + MACB_RBQP);
-	writel((ulong)macb->tx_ring, macb->regs + MACB_TBQP);
+	macb_writel(macb, RBQP, (ulong)macb->rx_ring);
+	macb_writel(macb, TBQP, (ulong)macb->tx_ring);
 
 	if (macb->interface == PHY_INTERFACE_MODE_RMII)
 		val |= MACB_BIT(RMII);
@@ -282,10 +282,10 @@ static int macb_init(struct eth_device *edev)
 #if defined(CONFIG_ARCH_AT91)
 	val |= MACB_BIT(CLKEN);
 #endif
-	writel(val, macb->regs + MACB_USRIO);
+	macb_writel(macb, USRIO, val);
 
 	/* Enable TX and RX */
-	writel(MACB_BIT(TE) | MACB_BIT(RE), macb->regs + MACB_NCR);
+	macb_writel(macb, NCR, MACB_BIT(TE) | MACB_BIT(RE));
 
 	return 0;
 }
@@ -296,16 +296,16 @@ static void macb_halt(struct eth_device *edev)
 	u32 ncr, tsr;
 
 	/* Halt the controller and wait for any ongoing transmission to end. */
-	ncr = readl(macb->regs + MACB_NCR);
+	ncr = macb_readl(macb, NCR);
 	ncr |= MACB_BIT(THALT);
-	writel(ncr, macb->regs + MACB_NCR);
+	macb_writel(macb, NCR, ncr);
 
 	do {
-		tsr = readl(macb->regs + MACB_TSR);
+		tsr = macb_readl(macb, TSR);
 	} while (tsr & MACB_BIT(TGO));
 
 	/* Disable TX and RX, and clear statistics */
-	writel(MACB_BIT(CLRSTAT), macb->regs + MACB_NCR);
+	macb_writel(macb, NCR, MACB_BIT(CLRSTAT));
 }
 
 static int macb_phy_read(struct mii_bus *bus, int addr, int reg)
@@ -320,32 +320,32 @@ static int macb_phy_read(struct mii_bus *bus, int addr, int reg)
 
 	debug("%s\n", __func__);
 
-	netctl = readl(macb->regs + MACB_NCR);
+	netctl = macb_readl(macb, NCR);
 	netctl |= MACB_BIT(MPE);
-	writel(netctl, macb->regs + MACB_NCR);
+	macb_writel(macb, NCR, netctl);
 
 	frame = (MACB_BF(SOF, 1)
 		 | MACB_BF(RW, 2)
 		 | MACB_BF(PHYA, addr)
 		 | MACB_BF(REGA, reg)
 		 | MACB_BF(CODE, 2));
-	writel(frame, macb->regs + MACB_MAN);
+	macb_writel(macb, MAN, frame);
 
 	start = get_time_ns();
 	do {
-		netstat = readl(macb->regs + MACB_NSR);
+		netstat = macb_readl(macb, NSR);
 		if (is_timeout(start, SECOND)) {
 			printf("phy read timed out\n");
 			return -1;
 		}
 	} while (!(netstat & MACB_BIT(IDLE)));
 
-	frame = readl(macb->regs + MACB_MAN);
+	frame = macb_readl(macb, MAN);
 	value = MACB_BFEXT(DATA, frame);
 
-	netctl = readl(macb->regs + MACB_NCR);
+	netctl = macb_readl(macb, NCR);
 	netctl &= ~MACB_BIT(MPE);
-	writel(netctl, macb->regs + MACB_NCR);
+	macb_writel(macb, NCR, netctl);
 
 	return value;
 }
@@ -359,9 +359,9 @@ static int macb_phy_write(struct mii_bus *bus, int addr, int reg, u16 value)
 
 	debug("%s\n", __func__);
 
-	netctl = readl(macb->regs + MACB_NCR);
+	netctl = macb_readl(macb, NCR);
 	netctl |= MACB_BIT(MPE);
-	writel(netctl, macb->regs + MACB_NCR);
+	macb_writel(macb, NCR, netctl);
 
 	frame = (MACB_BF(SOF, 1)
 		 | MACB_BF(RW, 1)
@@ -369,15 +369,15 @@ static int macb_phy_write(struct mii_bus *bus, int addr, int reg, u16 value)
 		 | MACB_BF(REGA, reg)
 		 | MACB_BF(CODE, 2)
 		 | MACB_BF(DATA, value));
-	writel(frame, macb->regs + MACB_MAN);
+	macb_writel(macb, MAN, frame);
 
 	do {
-		netstat = readl(macb->regs + MACB_NSR);
+		netstat = macb_readl(macb, NSR);
 	} while (!(netstat & MACB_BIT(IDLE)));
 
-	netctl = readl(macb->regs + MACB_NCR);
+	netctl = macb_readl(macb, NCR);
 	netctl &= ~MACB_BIT(MPE);
-	writel(netctl, macb->regs + MACB_NCR);
+	macb_writel(macb, NCR, netctl);
 
 	return 0;
 }
@@ -396,9 +396,8 @@ static int macb_set_ethaddr(struct eth_device *edev, unsigned char *adr)
 	debug("%s\n", __func__);
 
 	/* set hardware address */
-
-	writel(adr[0] | adr[1] << 8 | adr[2] << 16 | adr[3] << 24, macb->regs + MACB_SA1B);
-	writel(adr[4] | adr[5] << 8, macb->regs + MACB_SA1T);
+	macb_writel(macb, SA1B, adr[0] | adr[1] << 8 | adr[2] << 16 | adr[3] << 24);
+	macb_writel(macb, SA1T, adr[4] | adr[5] << 8);
 
 	return 0;
 }
@@ -410,9 +409,7 @@ static int macb_probe(struct device_d *dev)
 	unsigned long macb_hz;
 	u32 ncfgr;
 	struct at91_ether_platform_data *pdata;
-#if defined(CONFIG_ARCH_AT91)
 	struct clk *pclk;
-#endif
 
 	if (!dev->platform_data) {
 		printf("macb: no platform_data\n");
@@ -456,7 +453,6 @@ static int macb_probe(struct device_d *dev)
 	 * Do some basic initialization so that we at least can talk
 	 * to the PHY
 	 */
-#if defined(CONFIG_ARCH_AT91)
 	pclk = clk_get(dev, "macb_clk");
 	if (IS_ERR(pclk)) {
 		dev_err(dev, "no macb_clk\n");
@@ -465,9 +461,6 @@ static int macb_probe(struct device_d *dev)
 
 	clk_enable(pclk);
 	macb_hz = clk_get_rate(pclk);
-#else
-	macb_hz = get_macb_pclk_rate(0);
-#endif
 	if (macb_hz < 20000000)
 		ncfgr = MACB_BF(CLK, MACB_CLK_DIV8);
 	else if (macb_hz < 40000000)
@@ -477,7 +470,7 @@ static int macb_probe(struct device_d *dev)
 	else
 		ncfgr = MACB_BF(CLK, MACB_CLK_DIV64);
 
-	writel(ncfgr, macb->regs + MACB_NCFGR);
+	macb_writel(macb, NCFGR, ncfgr);
 
 	mdiobus_register(&macb->miibus);
 	eth_register(edev);
@@ -496,6 +489,4 @@ static int macb_driver_init(void)
 	platform_driver_register(&macb_driver);
 	return 0;
 }
-
 device_initcall(macb_driver_init);
-
diff --git a/drivers/net/macb.h b/drivers/net/macb.h
index 1447daa..5d9c534 100644
--- a/drivers/net/macb.h
+++ b/drivers/net/macb.h
@@ -262,4 +262,10 @@
 		    << MACB_##name##_OFFSET))		\
 	 | MACB_BF(name,value))
 
+/* Register access macros */
+#define macb_readl(port,reg)				\
+	__raw_readl((port)->regs + MACB_##reg)
+#define macb_writel(port,reg,value)			\
+	__raw_writel((value), (port)->regs + MACB_##reg)
+
 #endif /* __DRIVERS_MACB_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
