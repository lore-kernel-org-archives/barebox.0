Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xj4Mg-0005nn-RE
 for barebox@lists.infradead.org; Tue, 28 Oct 2014 10:51:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 1D017A00233
 for <barebox@lists.infradead.org>; Tue, 28 Oct 2014 11:50:43 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Tue, 28 Oct 2014 11:50:35 +0100
Message-Id: <1414493436-23693-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 1/2] net: phy: micrel: Add OF conf. support for ksz9031
To: barebox@lists.infradead.org

Adds support for ksz9031 PAD skew configuration over devicetree.
Based on a patch from the linux kernel.

Author: Hubert Chaumette <hchaumette@adeneo-embedded.com>
Original commit: 6e4b82730c7525504fc485b370c7f09e594e2e96

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 drivers/net/phy/micrel.c |   86 +++++++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 85 insertions(+), 1 deletions(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 88c64e5..c9558da 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -146,6 +146,90 @@ static int ksz9021_config_init(struct phy_device *phydev)
 	return 0;
 }
 
+#define KSZ9031_PS_TO_REG		60
+
+/* Extended registers */
+#define MII_KSZ9031RN_CONTROL_PAD_SKEW	4
+#define MII_KSZ9031RN_RX_DATA_PAD_SKEW	5
+#define MII_KSZ9031RN_TX_DATA_PAD_SKEW	6
+#define MII_KSZ9031RN_CLK_PAD_SKEW	8
+
+static int ksz9031_of_load_skew_values(struct phy_device *phydev,
+					struct device_node *of_node,
+					u16 reg, size_t field_sz,
+					char *field[], u8 numfields)
+{
+	int val[4] = {-1, -2, -3, -4};
+	int matches = 0;
+	u16 mask;
+	u16 maxval;
+	u16 newval;
+	int i;
+
+	for (i = 0; i < numfields; i++)
+		if (!of_property_read_u32(of_node, field[i], val + i))
+			matches++;
+
+	if (!matches)
+		return 0;
+
+	if (matches < numfields)
+		newval = phy_read_mmd_indirect(phydev, reg, 2);
+	else
+		newval = 0;
+
+	maxval = (field_sz == 4) ? 0xf : 0x1f;
+	for (i = 0; i < numfields; i++)
+		if (val[i] != -(i + 1)) {
+			mask = 0xffff;
+			mask ^= maxval << (field_sz * i);
+			newval = (newval & mask) |
+				(((val[i] / KSZ9031_PS_TO_REG) & maxval)
+				<< (field_sz * i));
+		}
+
+	phy_write_mmd_indirect(phydev, reg, 2, newval);
+	return 0;
+}
+
+static int ksz9031_config_init(struct phy_device *phydev)
+{
+	struct device_d *dev = &phydev->dev;
+	struct device_node *of_node = dev->device_node;
+	char *clk_skews[2] = {"rxc-skew-ps", "txc-skew-ps"};
+	char *rx_data_skews[4] = {
+		"rxd0-skew-ps", "rxd1-skew-ps",
+		"rxd2-skew-ps", "rxd3-skew-ps"
+	};
+	char *tx_data_skews[4] = {
+		"txd0-skew-ps", "txd1-skew-ps",
+		"txd2-skew-ps", "txd3-skew-ps"
+	};
+	char *control_skews[2] = {"txen-skew-ps", "rxdv-skew-ps"};
+
+	if (!of_node && dev->parent->device_node)
+		of_node = dev->parent->device_node;
+
+	if (of_node) {
+		ksz9031_of_load_skew_values(phydev, of_node,
+				MII_KSZ9031RN_CLK_PAD_SKEW, 5,
+				clk_skews, 2);
+
+		ksz9031_of_load_skew_values(phydev, of_node,
+				MII_KSZ9031RN_CONTROL_PAD_SKEW, 4,
+				control_skews, 2);
+
+		ksz9031_of_load_skew_values(phydev, of_node,
+				MII_KSZ9031RN_RX_DATA_PAD_SKEW, 4,
+				rx_data_skews, 4);
+
+		ksz9031_of_load_skew_values(phydev, of_node,
+				MII_KSZ9031RN_TX_DATA_PAD_SKEW, 4,
+				tx_data_skews, 4);
+	}
+	return 0;
+}
+
 #define KSZ8873MLL_GLOBAL_CONTROL_4	0x06
 #define KSZ8873MLL_GLOBAL_CONTROL_4_DUPLEX	(1 << 6)
 #define KSZ8873MLL_GLOBAL_CONTROL_4_SPEED	(1 << 4)
@@ -259,7 +343,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id_mask	= 0x00fffff0,
 	.drv.name	= "Micrel KSZ9031 Gigabit PHY",
 	.features	= (PHY_GBIT_FEATURES | SUPPORTED_Pause),
-	.config_init	= kszphy_config_init,
+	.config_init	= ksz9031_config_init,
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= genphy_read_status,
 }, {
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
