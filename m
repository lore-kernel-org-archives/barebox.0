Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHg-00005X-1M
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:09 +0100
Message-Id: <20181214141730.26181-3-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/23] net: davinci-emac: Add timeout to polling loop
To: Barebox List <barebox@lists.infradead.org>

Do not poll forever when the hardware does not behave like we want to.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/davinci_emac.c | 47 ++++++++++++++++++++++++++++++--------
 1 file changed, 38 insertions(+), 9 deletions(-)

diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 2f6091d155..bda62214ef 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -105,13 +105,40 @@ static void davinci_eth_mdio_enable(struct davinci_emac_priv *priv)
 	while (readl(priv->adap_mdio + EMAC_MDIO_CONTROL) & MDIO_CONTROL_IDLE);
 }
 
+/* wait until hardware is ready for another user access */
+static int wait_for_user_access(struct davinci_emac_priv *priv, uint32_t *val)
+{
+	u32 tmp;
+	uint64_t start = get_time_ns();
+
+	do {
+		tmp = readl(priv->adap_mdio + EMAC_MDIO_USERACCESS0);
+
+		if (!(tmp & MDIO_USERACCESS0_GO))
+			break;
+
+		if (is_timeout(start, 100 * MSECOND)) {
+			dev_err(priv->dev, "timeout waiting for user access\n");
+			return -ETIMEDOUT;
+		}
+	} while (1);
+
+	if (val)
+		*val = tmp;
+
+	return 0;
+}
+
+
 static int davinci_miibus_read(struct mii_bus *bus, int addr, int reg)
 {
 	struct davinci_emac_priv *priv = bus->priv;
 	uint16_t value;
-	int tmp;
+	int tmp, ret;
 
-	while (readl(priv->adap_mdio + EMAC_MDIO_USERACCESS0) & MDIO_USERACCESS0_GO);
+	ret = wait_for_user_access(priv, NULL);
+	if (ret)
+		return ret;
 
 	writel(MDIO_USERACCESS0_GO |
 		MDIO_USERACCESS0_WRITE_READ |
@@ -119,8 +146,9 @@ static int davinci_miibus_read(struct mii_bus *bus, int addr, int reg)
 		((addr & 0x1f) << 16),
 		priv->adap_mdio + EMAC_MDIO_USERACCESS0);
 
-	/* Wait for command to complete */
-	while ((tmp = readl(priv->adap_mdio + EMAC_MDIO_USERACCESS0)) & MDIO_USERACCESS0_GO);
+	ret = wait_for_user_access(priv, &tmp);
+	if (ret)
+		return ret;
 
 	if (tmp & MDIO_USERACCESS0_ACK) {
 		value = tmp & 0xffff;
@@ -135,7 +163,11 @@ static int davinci_miibus_read(struct mii_bus *bus, int addr, int reg)
 static int davinci_miibus_write(struct mii_bus *bus, int addr, int reg, u16 value)
 {
 	struct davinci_emac_priv *priv = bus->priv;
-	while (readl(priv->adap_mdio + EMAC_MDIO_USERACCESS0) & MDIO_USERACCESS0_GO);
+	int ret;
+
+	ret = wait_for_user_access(priv, NULL);
+	if (ret)
+		return ret;
 
 	dev_dbg(priv->dev, "davinci_miibus_write: addr=0x%02x reg=0x%02x value=0x%04x\n",
 		   addr, reg, value);
@@ -146,10 +178,7 @@ static int davinci_miibus_write(struct mii_bus *bus, int addr, int reg, u16 valu
 				(value & 0xffff),
 		priv->adap_mdio + EMAC_MDIO_USERACCESS0);
 
-	/* Wait for command to complete */
-	while (readl(priv->adap_mdio + EMAC_MDIO_USERACCESS0) & MDIO_USERACCESS0_GO);
-
-	return 0;
+	return wait_for_user_access(priv, NULL);
 }
 
 static int davinci_emac_get_ethaddr(struct eth_device *edev, unsigned char *adr)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
