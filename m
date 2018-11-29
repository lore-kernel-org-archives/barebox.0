Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKfa-0007vQ-Gq
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:39:49 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKfP-0003hH-4O
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:39:35 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKfO-0001KE-Qq
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:39:34 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:39:29 +0100
Message-Id: <20181129113931.5045-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20181129113931.5045-1-s.trumtrar@pengutronix.de>
References: <20181129113931.5045-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/4] net: designware: refactor wait loop to own function
To: Barebox List <barebox@lists.infradead.org>

The polling of the MII_BUSY bit is used three times. Instead of having the same
code in all three locations, move it to an inline function.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/designware.c | 45 ++++++++++++++++++++++++++--------------
 1 file changed, 29 insertions(+), 16 deletions(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 49ddaa20d8be..410658d67b39 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -41,18 +41,11 @@
 #define HALF_DUPLEX		1
 #define FULL_DUPLEX		2
 
-
-static int dwc_ether_mii_read(struct mii_bus *dev, int addr, int reg)
+static inline int dwc_wait_mii_idle(struct mii_bus *dev)
 {
 	struct dw_eth_dev *priv = dev->priv;
 	struct eth_mac_regs *mac_p = priv->mac_regs_p;
 	u64 start;
-	u32 miiaddr;
-
-	miiaddr = ((addr << MIIADDRSHIFT) & MII_ADDRMSK) |
-		  ((reg << MIIREGSHIFT) & MII_REGMSK);
-
-	writel(miiaddr | MII_CLKRANGE_150_250M | MII_BUSY, &mac_p->miiaddr);
 
 	start = get_time_ns();
 	while (readl(&mac_p->miiaddr) & MII_BUSY) {
@@ -61,6 +54,30 @@ static int dwc_ether_mii_read(struct mii_bus *dev, int addr, int reg)
 			return -EIO;
 		}
 	}
+
+	return 0;
+}
+
+static int dwc_ether_mii_read(struct mii_bus *dev, int addr, int reg)
+{
+	struct dw_eth_dev *priv = dev->priv;
+	struct eth_mac_regs *mac_p = priv->mac_regs_p;
+	u32 miiaddr;
+	int ret;
+
+	miiaddr = ((addr << MIIADDRSHIFT) & MII_ADDRMSK) |
+		  ((reg << MIIREGSHIFT) & MII_REGMSK);
+
+	ret = dwc_wait_mii_idle(dev);
+	if (ret)
+		return ret;
+
+	writel(miiaddr | MII_CLKRANGE_150_250M | MII_BUSY, &mac_p->miiaddr);
+
+	ret = dwc_wait_mii_idle(dev);
+	if (ret)
+		return ret;
+
 	return readl(&mac_p->miidata) & 0xffff;
 }
 
@@ -68,8 +85,8 @@ static int dwc_ether_mii_write(struct mii_bus *dev, int addr, int reg, u16 val)
 {
 	struct dw_eth_dev *priv = dev->priv;
 	struct eth_mac_regs *mac_p = priv->mac_regs_p;
-	u64 start;
 	u32 miiaddr;
+	int ret;
 
 	writel(val, &mac_p->miidata);
 	miiaddr = ((addr << MIIADDRSHIFT) & MII_ADDRMSK) |
@@ -77,13 +94,9 @@ static int dwc_ether_mii_write(struct mii_bus *dev, int addr, int reg, u16 val)
 
 	writel(miiaddr | MII_CLKRANGE_150_250M | MII_BUSY, &mac_p->miiaddr);
 
-	start = get_time_ns();
-	while (readl(&mac_p->miiaddr) & MII_BUSY) {
-		if (is_timeout(start, 10 * MSECOND)) {
-			dev_err(&priv->netdev.dev, "MDIO timeout\n");
-			return -EIO;
-		}
-	}
+	ret = dwc_wait_mii_idle(dev);
+	if (ret)
+		return ret;
 
 	/* Needed as a fix for ST-Phy */
 	dwc_ether_mii_read(dev, addr, reg);
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
