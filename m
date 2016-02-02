Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQYyD-00082B-Ep
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 11:18:08 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue,  2 Feb 2016 12:17:32 +0100
Message-Id: <1454411855-4839-3-git-send-email-p.zabel@pengutronix.de>
In-Reply-To: <1454411855-4839-1-git-send-email-p.zabel@pengutronix.de>
References: <1454411855-4839-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 3/6] net: phy: micrel: Be more const correct
To: barebox@lists.infradead.org

Based on kernel commit 3c9a9f7fb0ee ("net/phy: micrel: Be more const
correct") by Jaeden Amero <jaeden.amero@ni.com>:

    In a few places in this driver, we weren't using const where we could
    have. Use const more.

    In addition, change the arrays of strings in ksz9031_config_init() to be
    not only const, but also static.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/net/phy/micrel.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 0c97e25..6f49e73 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -91,8 +91,8 @@ static int ks8051_config_init(struct phy_device *phydev)
 }
 
 static int ksz9021_load_values_from_of(struct phy_device *phydev,
-				       struct device_node *of_node, u16 reg,
-				       const char *field[])
+				       const struct device_node *of_node,
+				       u16 reg, const char *field[])
 {
 	int val, regval, i;
 
@@ -113,8 +113,8 @@ static int ksz9021_load_values_from_of(struct phy_device *phydev,
 
 static int ksz9021_config_init(struct phy_device *phydev)
 {
-	struct device_d *dev = &phydev->dev;
-	struct device_node *of_node = dev->device_node;
+	const struct device_d *dev = &phydev->dev;
+	const struct device_node *of_node = dev->device_node;
 	const char *clk_pad_skew_names[] = {
 		"txen-skew-ps", "txc-skew-ps",
 		"rxdv-skew-ps", "rxc-skew-ps"
@@ -155,9 +155,9 @@ static int ksz9021_config_init(struct phy_device *phydev)
 #define MII_KSZ9031RN_CLK_PAD_SKEW	8
 
 static int ksz9031_of_load_skew_values(struct phy_device *phydev,
-					struct device_node *of_node,
+					const struct device_node *of_node,
 					u16 reg, size_t field_sz,
-					char *field[], u8 numfields)
+					const char *field[], u8 numfields)
 {
 	int val[4] = {-1, -2, -3, -4};
 	int matches = 0;
@@ -194,18 +194,18 @@ static int ksz9031_of_load_skew_values(struct phy_device *phydev,
 
 static int ksz9031_config_init(struct phy_device *phydev)
 {
-	struct device_d *dev = &phydev->dev;
-	struct device_node *of_node = dev->device_node;
-	char *clk_skews[2] = {"rxc-skew-ps", "txc-skew-ps"};
-	char *rx_data_skews[4] = {
+	const struct device_d *dev = &phydev->dev;
+	const struct device_node *of_node = dev->device_node;
+	static const char *clk_skews[2] = {"rxc-skew-ps", "txc-skew-ps"};
+	static const char *rx_data_skews[4] = {
 		"rxd0-skew-ps", "rxd1-skew-ps",
 		"rxd2-skew-ps", "rxd3-skew-ps"
 	};
-	char *tx_data_skews[4] = {
+	static const char *tx_data_skews[4] = {
 		"txd0-skew-ps", "txd1-skew-ps",
 		"txd2-skew-ps", "txd3-skew-ps"
 	};
-	char *control_skews[2] = {"txen-skew-ps", "rxdv-skew-ps"};
+	static const char *control_skews[2] = {"txen-skew-ps", "rxdv-skew-ps"};
 
 	if (!of_node && dev->parent->device_node)
 		of_node = dev->parent->device_node;
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
