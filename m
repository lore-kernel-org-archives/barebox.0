Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkI2u-0003A5-6I
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 20:11:57 +0000
Received: by wizk4 with SMTP id k4so113802455wiz.1
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 13:11:33 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 20 Apr 2015 22:11:13 +0200
Message-Id: <1429560686-11391-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 01/14] net: phy: Support Marvell 88E1318S PHY
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds support for the Marvell 88E1318S Gigabit Ethernet PHY.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 drivers/net/phy/marvell.c | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
index aaf9f53451f4..6409f14ae2e2 100644
--- a/drivers/net/phy/marvell.c
+++ b/drivers/net/phy/marvell.c
@@ -35,6 +35,9 @@
 #define MII_88E1121_PHY_MSCR_DELAY_MASK	\
 	(MII_88E1121_PHY_MSCR_RX_DELAY | MII_88E1121_PHY_MSCR_TX_DELAY)
 
+#define MII_88E1318S_PHY_MSCR1_REG	16
+#define MII_88E1318S_PHY_MSCR1_PAD_ODD	BIT(6)
+
 #define MII_88E1540_LED_PAGE		0x3
 #define MII_88E1540_LED_CONTROL		0x10
 
@@ -214,6 +217,25 @@ static int m88e1121_config_init(struct phy_device *phydev)
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
+	reg = phy_read(phydev, MII_88E1318S_PHY_MSCR1_REG);
+	reg |= MII_88E1318S_PHY_MSCR1_PAD_ODD;
+	ret = phy_write(phydev, MII_88E1318S_PHY_MSCR1_REG, reg);
+	if (ret < 0)
+		return ret;
+
+	return m88e1121_config_init(phydev);
+}
+
 static struct phy_driver marvell_phys[] = {
 	{
 		.phy_id		= MARVELL_PHY_ID_88E1121R,
@@ -225,6 +247,15 @@ static struct phy_driver marvell_phys[] = {
 		.read_status	= marvell_read_status,
 	},
 	{
+		.phy_id		= MARVELL_PHY_ID_88E1318S,
+		.phy_id_mask	= MARVELL_PHY_ID_MASK,
+		.drv.name	= "Marvell 88E1318S",
+		.features	= PHY_GBIT_FEATURES,
+		.config_init	= m88e1318s_config_init,
+		.config_aneg	= genphy_config_aneg,
+		.read_status	= marvell_read_status,
+	},
+	{
 		.phy_id		= MARVELL_PHY_ID_88E1543,
 		.phy_id_mask	= MARVELL_PHY_ID_MASK,
 		.drv.name	= "Marvell 88E1543",
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
