Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kte4R-0003Rr-NR
 for barebox@lists.infradead.org; Sun, 27 Dec 2020 21:59:26 +0000
Received: from astat.fritz.box (a89-183-86-10.net-htp.de [89.183.86.10])
 by lynxeye.de (Postfix) with ESMTPA id 6082AE7425C
 for <barebox@lists.infradead.org>; Sun, 27 Dec 2020 22:50:47 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 27 Dec 2020 22:50:41 +0100
Message-Id: <20201227215042.101009-4-dev@lynxeye.de>
In-Reply-To: <20201227215042.101009-1-dev@lynxeye.de>
References: <20201227215042.101009-1-dev@lynxeye.de>
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
Subject: [PATCH 4/5] net: phy: at803x: sync RX/TX delay setup with Linux
To: barebox@lists.infradead.org

The RX/TX delay setup was pretty broken in that it only handled
one specific delay case. Sync the whole code with with the Linux
driver to get correct and consistent behavior.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/phy/at803x.c | 88 ++++++++++++++++++++++++++++++++++------
 1 file changed, 76 insertions(+), 12 deletions(-)

diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index 016ed97020ad..e0e147b1913e 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -27,8 +27,10 @@
 #define AT803X_FUNC_DATA			0x4003
 #define AT803X_DEBUG_ADDR			0x1D
 #define AT803X_DEBUG_DATA			0x1E
-#define AT803X_DEBUG_SYSTEM_MODE_CTRL		0x05
-#define AT803X_DEBUG_RGMII_TX_CLK_DLY		(1 << 8)
+#define AT803X_DEBUG_REG_0			0x00
+#define AT803X_DEBUG_RX_CLK_DLY_EN		BIT(15)
+#define AT803X_DEBUG_REG_5			0x05
+#define AT803X_DEBUG_TX_CLK_DLY_EN		BIT(8)
 
 /* AT803x supports either the XTAL input pad, an internal PLL or the
  * DSP as clock reference for the clock output pad. The XTAL reference
@@ -74,6 +76,58 @@ struct at803x_priv {
 	u16 clk_25m_mask;
 };
 
+static int at803x_debug_reg_read(struct phy_device *phydev, u16 reg)
+{
+	int ret;
+
+	ret = phy_write(phydev, AT803X_DEBUG_ADDR, reg);
+	if (ret < 0)
+		return ret;
+
+	return phy_read(phydev, AT803X_DEBUG_DATA);
+}
+
+static int at803x_debug_reg_mask(struct phy_device *phydev, u16 reg,
+				 u16 clear, u16 set)
+{
+	u16 val;
+	int ret;
+
+	ret = at803x_debug_reg_read(phydev, reg);
+	if (ret < 0)
+		return ret;
+
+	val = ret & 0xffff;
+	val &= ~clear;
+	val |= set;
+
+	return phy_write(phydev, AT803X_DEBUG_DATA, val);
+}
+
+static int at803x_enable_rx_delay(struct phy_device *phydev)
+{
+	return at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_0, 0,
+				     AT803X_DEBUG_RX_CLK_DLY_EN);
+}
+
+static int at803x_enable_tx_delay(struct phy_device *phydev)
+{
+	return at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_5, 0,
+				     AT803X_DEBUG_TX_CLK_DLY_EN);
+}
+
+static int at803x_disable_rx_delay(struct phy_device *phydev)
+{
+	return at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_0,
+				     AT803X_DEBUG_RX_CLK_DLY_EN, 0);
+}
+
+static int at803x_disable_tx_delay(struct phy_device *phydev)
+{
+	return at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_5,
+				     AT803X_DEBUG_TX_CLK_DLY_EN, 0);
+}
+
 static bool at803x_match_phy_id(struct phy_device *phydev, u32 phy_id)
 {
 	struct phy_driver *drv = to_phy_driver(phydev->dev.driver);
@@ -196,16 +250,26 @@ static int at803x_config_init(struct phy_device *phydev)
 	if (ret < 0)
 		return ret;
 
-	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID) {
-		ret = phy_write(phydev, AT803X_DEBUG_ADDR,
-				AT803X_DEBUG_SYSTEM_MODE_CTRL);
-		if (ret)
-			return ret;
-		ret = phy_write(phydev, AT803X_DEBUG_DATA,
-				AT803X_DEBUG_RGMII_TX_CLK_DLY);
-		if (ret)
-			return ret;
-	}
+	/* The RX and TX delay default is:
+	 *   after HW reset: RX delay enabled and TX delay disabled
+	 *   after SW reset: RX delay enabled, while TX delay retains the
+	 *   value before reset.
+	 */
+	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
+	    phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID)
+		ret = at803x_enable_rx_delay(phydev);
+	else
+		ret = at803x_disable_rx_delay(phydev);
+	if (ret < 0)
+		return ret;
+
+	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
+	    phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
+		ret = at803x_enable_tx_delay(phydev);
+	else
+		ret = at803x_disable_tx_delay(phydev);
+	if (ret < 0)
+		return ret;
 
 	return at803x_clk_out_config(phydev);
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
