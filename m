Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7A1-0007ED-ES
 for barebox@lists.infradead.org; Tue, 16 Jun 2020 08:41:39 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 16 Jun 2020 10:41:33 +0200
Message-Id: <20200616084134.22869-2-o.rempel@pengutronix.de>
In-Reply-To: <20200616084134.22869-1-o.rempel@pengutronix.de>
References: <20200616084134.22869-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 2/2] net: phy: micrel: backport ksz9031 phy-mode support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

this patch will allow to use proper clock skew configuration from
devicetree instead of using board specific fixups.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/micrel.c | 103 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 8f0b81d8fa..c13f80cf40 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -18,6 +18,7 @@
 #include <linux/ethtool.h>
 #include <linux/phy.h>
 #include <linux/micrel_phy.h>
+#include <linux/bitfield.h>
 
 /* Operation Mode Strap Override */
 #define MII_KSZPHY_OMSO				0x16
@@ -155,9 +156,50 @@ static int ksz9021_config_init(struct phy_device *phydev)
 
 /* MMD Address 0x2 */
 #define MII_KSZ9031RN_CONTROL_PAD_SKEW	4
+#define MII_KSZ9031RN_RX_CTL_M		GENMASK(7, 4)
+#define MII_KSZ9031RN_TX_CTL_M		GENMASK(3, 0)
+
 #define MII_KSZ9031RN_RX_DATA_PAD_SKEW	5
+#define MII_KSZ9031RN_RXD3		GENMASK(15, 12)
+#define MII_KSZ9031RN_RXD2		GENMASK(11, 8)
+#define MII_KSZ9031RN_RXD1		GENMASK(7, 4)
+#define MII_KSZ9031RN_RXD0		GENMASK(3, 0)
+
 #define MII_KSZ9031RN_TX_DATA_PAD_SKEW	6
+#define MII_KSZ9031RN_TXD3		GENMASK(15, 12)
+#define MII_KSZ9031RN_TXD2		GENMASK(11, 8)
+#define MII_KSZ9031RN_TXD1		GENMASK(7, 4)
+#define MII_KSZ9031RN_TXD0		GENMASK(3, 0)
+
 #define MII_KSZ9031RN_CLK_PAD_SKEW	8
+#define MII_KSZ9031RN_GTX_CLK		GENMASK(9, 5)
+#define MII_KSZ9031RN_RX_CLK		GENMASK(4, 0)
+
+/* KSZ9031 has internal RGMII_IDRX = 1.2ns and RGMII_IDTX = 0ns. To
+ * provide different RGMII options we need to configure delay offset
+ * for each pad relative to build in delay.
+ */
+/* keep rx as "No delay adjustment" and set rx_clk to +0.60ns to get delays of
+ * 1.80ns
+ */
+#define RX_ID				0x7
+#define RX_CLK_ID			0x19
+
+/* set rx to +0.30ns and rx_clk to -0.90ns to compensate the
+ * internal 1.2ns delay.
+ */
+#define RX_ND				0xc
+#define RX_CLK_ND			0x0
+
+/* set tx to -0.42ns and tx_clk to +0.96ns to get 1.38ns delay */
+#define TX_ID				0x0
+#define TX_CLK_ID			0x1f
+
+/* set tx and tx_clk to "No delay adjustment" to keep 0ns
+ * dealy
+ */
+#define TX_ND				0x7
+#define TX_CLK_ND			0xf
 
 static int ksz9031_of_load_skew_values(struct phy_device *phydev,
 					const struct device_node *of_node,
@@ -206,6 +248,61 @@ static int ksz9031_center_flp_timing(struct phy_device *phydev)
 	return genphy_restart_aneg(phydev);
 }
 
+static int ksz9031_config_rgmii_delay(struct phy_device *phydev)
+{
+	u16 rx, tx, rx_clk, tx_clk;
+
+	switch (phydev->interface) {
+	case PHY_INTERFACE_MODE_RGMII:
+		tx = TX_ND;
+		tx_clk = TX_CLK_ND;
+		rx = RX_ND;
+		rx_clk = RX_CLK_ND;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_ID:
+		tx = TX_ID;
+		tx_clk = TX_CLK_ID;
+		rx = RX_ID;
+		rx_clk = RX_CLK_ID;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+		tx = TX_ND;
+		tx_clk = TX_CLK_ND;
+		rx = RX_ID;
+		rx_clk = RX_CLK_ID;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		tx = TX_ID;
+		tx_clk = TX_CLK_ID;
+		rx = RX_ND;
+		rx_clk = RX_CLK_ND;
+		break;
+	default:
+		return 0;
+	}
+
+	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CONTROL_PAD_SKEW, 2,
+			       FIELD_PREP(MII_KSZ9031RN_RX_CTL_M, rx) |
+			       FIELD_PREP(MII_KSZ9031RN_TX_CTL_M, tx));
+
+	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_RX_DATA_PAD_SKEW, 2,
+			       FIELD_PREP(MII_KSZ9031RN_RXD3, rx) |
+			       FIELD_PREP(MII_KSZ9031RN_RXD2, rx) |
+			       FIELD_PREP(MII_KSZ9031RN_RXD1, rx) |
+			       FIELD_PREP(MII_KSZ9031RN_RXD0, rx));
+
+	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_TX_DATA_PAD_SKEW, 2,
+			       FIELD_PREP(MII_KSZ9031RN_TXD3, tx) |
+			       FIELD_PREP(MII_KSZ9031RN_TXD2, tx) |
+			       FIELD_PREP(MII_KSZ9031RN_TXD1, tx) |
+			       FIELD_PREP(MII_KSZ9031RN_TXD0, tx));
+
+	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CLK_PAD_SKEW, 2,
+			       FIELD_PREP(MII_KSZ9031RN_GTX_CLK, tx_clk) |
+			       FIELD_PREP(MII_KSZ9031RN_RX_CLK, rx_clk));
+	return 0;
+}
+
 static int ksz9031_config_init(struct phy_device *phydev)
 {
 	const struct device_d *dev = &phydev->dev;
@@ -226,6 +323,12 @@ static int ksz9031_config_init(struct phy_device *phydev)
 		of_node = dev->parent->device_node;
 
 	if (of_node) {
+		if (phy_interface_is_rgmii(phydev)) {
+			ret = ksz9031_config_rgmii_delay(phydev);
+			if (ret < 0)
+				return ret;
+		}
+
 		ksz9031_of_load_skew_values(phydev, of_node,
 				MII_KSZ9031RN_CLK_PAD_SKEW, 5,
 				clk_skews, 2);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
