Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THdGG-000316-9g
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 16:17:57 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Fri, 28 Sep 2012 18:17:46 +0200
Message-Id: <1348849066-32265-4-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1348849066-32265-1-git-send-email-jlu@pengutronix.de>
References: <1348849066-32265-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH v3 3/3] davinci_emac: get rid of mdio wrapper functions
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/net/davinci_emac.c |   51 +++++++++++++++++---------------------------
 1 file changed, 19 insertions(+), 32 deletions(-)

diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 91fd226..7d4dbdc 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -122,64 +122,51 @@ static void davinci_eth_mdio_enable(struct davinci_emac_priv *priv)
 	while (readl(priv->adap_mdio + EMAC_MDIO_CONTROL) & MDIO_CONTROL_IDLE);
 }
 
-/* Read a PHY register via MDIO inteface. Returns 1 on success, 0 otherwise */
-static int davinci_eth_phy_read(struct davinci_emac_priv *priv, uint8_t phy_addr, uint8_t reg_num, uint16_t *data)
+static int davinci_miibus_read(struct mii_bus *bus, int addr, int reg)
 {
-	int	tmp;
+	struct davinci_emac_priv *priv = bus->priv;
+	uint16_t value;
+	int tmp;
 
 	while (readl(priv->adap_mdio + EMAC_MDIO_USERACCESS0) & MDIO_USERACCESS0_GO);
 
 	writel(MDIO_USERACCESS0_GO |
 		MDIO_USERACCESS0_WRITE_READ |
-		((reg_num & 0x1f) << 21) |
-		((phy_addr & 0x1f) << 16),
+		((reg & 0x1f) << 21) |
+		((addr & 0x1f) << 16),
 		priv->adap_mdio + EMAC_MDIO_USERACCESS0);
 
 	/* Wait for command to complete */
 	while ((tmp = readl(priv->adap_mdio + EMAC_MDIO_USERACCESS0)) & MDIO_USERACCESS0_GO);
 
 	if (tmp & MDIO_USERACCESS0_ACK) {
-		*data = tmp & 0xffff;
-		dev_dbg(priv->dev, "emac_phy_read: addr=0x%02x reg=0x%02x data=0x%04x\n",
-			   phy_addr, reg_num, *data);
-		return 1;
+		value = tmp & 0xffff;
+		dev_dbg(priv->dev, "davinci_miibus_read: addr=0x%02x reg=0x%02x value=0x%04x\n",
+			   addr, reg, value);
+		return value;
 	}
 
-	*data = -1;
-	return 0;
+	return -1;
 }
 
-/* Write to a PHY register via MDIO inteface. Blocks until operation is complete. */
-static int davinci_eth_phy_write(struct davinci_emac_priv *priv, uint8_t phy_addr, uint8_t reg_num, uint16_t data)
+static int davinci_miibus_write(struct mii_bus *bus, int addr, int reg, u16 value)
 {
+	struct davinci_emac_priv *priv = bus->priv;
 	while (readl(priv->adap_mdio + EMAC_MDIO_USERACCESS0) & MDIO_USERACCESS0_GO);
 
-	dev_dbg(priv->dev, "emac_phy_write: addr=0x%02x reg=0x%02x data=0x%04x\n",
-		   phy_addr, reg_num, data);
+	dev_dbg(priv->dev, "davinci_miibus_write: addr=0x%02x reg=0x%02x value=0x%04x\n",
+		   addr, reg, value);
 	writel(MDIO_USERACCESS0_GO |
 				MDIO_USERACCESS0_WRITE_WRITE |
-				((reg_num & 0x1f) << 21) |
-				((phy_addr & 0x1f) << 16) |
-				(data & 0xffff),
+				((reg & 0x1f) << 21) |
+				((addr & 0x1f) << 16) |
+				(value & 0xffff),
 		priv->adap_mdio + EMAC_MDIO_USERACCESS0);
 
 	/* Wait for command to complete */
 	while (readl(priv->adap_mdio + EMAC_MDIO_USERACCESS0) & MDIO_USERACCESS0_GO);
 
-	return 1;
-}
-
-static int davinci_miibus_read(struct mii_bus *bus, int addr, int reg)
-{
-	struct davinci_emac_priv *priv = bus->priv;
-	uint16_t value = 0;
-	return davinci_eth_phy_read(priv, addr, reg, &value) ? value : -1;
-}
-
-static int davinci_miibus_write(struct mii_bus *bus, int addr, int reg, u16 value)
-{
-	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)bus->priv;
-	return davinci_eth_phy_write(priv, addr, reg, value) ? 0 : -1;
+	return 0;
 }
 
 static int davinci_emac_get_ethaddr(struct eth_device *edev, unsigned char *adr)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
