Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMN7b-0003oe-Aa
 for barebox@lists.infradead.org; Tue, 26 Aug 2014 20:13:39 +0000
Received: by mail-wi0-f178.google.com with SMTP id hi2so4751253wib.11
 for <barebox@lists.infradead.org>; Tue, 26 Aug 2014 13:13:17 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 26 Aug 2014 22:13:08 +0200
Message-Id: <1409083988-32278-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1408834420-899-4-git-send-email-ezequiel.garcia@free-electrons.com>
References: <1408834420-899-4-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH] net: phy: Support Marvell 88E1318S and 88E1510 PHYs
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds support for Marvell 88E1318S and 88E1510 PHYs.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Gregory Clement <gregory.clement@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Sascha, this patch is based on next plus Ezequiel's
 ("net: phy: Support Marvell 88EE1545 PHY")
 ("net: phy: Support Marvell 88EE1543 PHY")
patches and should be applied after them.
---
 drivers/net/phy/marvell.c | 45 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
index 63530771955d..74c48bc2a85d 100644
--- a/drivers/net/phy/marvell.c
+++ b/drivers/net/phy/marvell.c
@@ -52,6 +52,9 @@
 #define MII_88E1121_PHY_MSCR_DELAY_MASK	\
 	(MII_88E1121_PHY_MSCR_RX_DELAY | MII_88E1121_PHY_MSCR_TX_DELAY)
 
+#define MII_88E1318S_PHY_MSCR1		0x10
+#define MII_88E1318S_PHY_MSCR1_PAD_ODD	BIT(6)
+
 #define MII_88E1540_LED_PAGE		0x3
 #define MII_88E1540_LED_CONTROL		0x10
 
@@ -231,6 +234,30 @@ static int m88e1121_config_init(struct phy_device *phydev)
 	return 0;
 }
 
+static int m88e1318s_config_init(struct phy_device *phydev)
+{
+	u16 reg;
+	int ret;
+
+	ret = phy_write(phydev, MII_MARVELL_PHY_PAGE,
+			MII_88E1121_PHY_MSCR_PAGE);
+	if (ret < 0)
+		return ret;
+
+	reg = phy_read(phydev, MII_88E1318S_PHY_MSCR1);
+	reg |= MII_88E1318S_PHY_MSCR1_PAD_ODD;
+
+	ret = phy_write(phydev, MII_88E1318S_PHY_MSCR1, reg);
+	if (ret < 0)
+		return ret;
+
+	phy_write(phydev, MII_MARVELL_PHY_PAGE, MII_MARVELL_PHY_DEFAULT_PAGE);
+	if (ret < 0)
+		return ret;
+
+	return m88e1121_config_init(phydev);
+}
+
 static struct phy_driver marvell_phys[] = {
 {
 	.phy_id		= MARVELL_PHY_ID_88E1121R,
@@ -242,6 +269,24 @@ static struct phy_driver marvell_phys[] = {
 	.read_status	= marvell_read_status,
 },
 {
+	.phy_id		= MARVELL_PHY_ID_88E1318S,
+	.phy_id_mask	= MARVELL_PHY_ID_MASK,
+	.drv.name	= "Marvell 88E1318S",
+	.features	= PHY_GBIT_FEATURES,
+	.config_init	= m88e1318s_config_init,
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= marvell_read_status,
+},
+{
+	.phy_id		= MARVELL_PHY_ID_88E1510,
+	.phy_id_mask	= MARVELL_PHY_ID_MASK,
+	.drv.name	= "Marvell 88E1510",
+	.features	= PHY_GBIT_FEATURES,
+	.config_init	= m88e1318s_config_init,
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= marvell_read_status,
+},
+{
 	.phy_id		= MARVELL_PHY_ID_88E1545,
 	.phy_id_mask	= MARVELL_PHY_ID_MASK,
 	.drv.name	= "Marvell 88E1545",
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
