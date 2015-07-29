Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKT5p-00025B-Mc
 for barebox@lists.infradead.org; Wed, 29 Jul 2015 15:16:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Jul 2015 17:16:06 +0200
Message-Id: <1438182966-27389-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: phy: at803x: Use genphy_config_init
To: Barebox List <barebox@lists.infradead.org>

Based on the Linux commit:

6ff01db net: phy: at803x: use genphy_config_init()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/at803x.c | 36 +++---------------------------------
 drivers/net/phy/phy.c    |  3 +--
 include/linux/phy.h      |  1 +
 3 files changed, 5 insertions(+), 35 deletions(-)

diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index a244c87..de5bf20 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -33,41 +33,11 @@
 
 static int at803x_config_init(struct phy_device *phydev)
 {
-	int val;
 	int ret;
-	u32 features;
 
-	features = SUPPORTED_TP | SUPPORTED_MII | SUPPORTED_AUI |
-		   SUPPORTED_FIBRE | SUPPORTED_BNC;
-
-	val = phy_read(phydev, MII_BMSR);
-	if (val < 0)
-		return val;
-
-	if (val & BMSR_ANEGCAPABLE)
-		features |= SUPPORTED_Autoneg;
-	if (val & BMSR_100FULL)
-		features |= SUPPORTED_100baseT_Full;
-	if (val & BMSR_100HALF)
-		features |= SUPPORTED_100baseT_Half;
-	if (val & BMSR_10FULL)
-		features |= SUPPORTED_10baseT_Full;
-	if (val & BMSR_10HALF)
-		features |= SUPPORTED_10baseT_Half;
-
-	if (val & BMSR_ESTATEN) {
-		val = phy_read(phydev, MII_ESTATUS);
-		if (val < 0)
-			return val;
-
-		if (val & ESTATUS_1000_TFULL)
-			features |= SUPPORTED_1000baseT_Full;
-		if (val & ESTATUS_1000_THALF)
-			features |= SUPPORTED_1000baseT_Half;
-	}
-
-	phydev->supported = features;
-	phydev->advertising = features;
+	ret = genphy_config_init(phydev);
+	if (ret < 0)
+		return ret;
 
 	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID) {
 		ret = phy_write(phydev, AT803X_DEBUG_ADDR,
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index edf5d03..2b3c5e2 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -29,7 +29,6 @@
 #define PHY_AN_TIMEOUT	10
 
 static struct phy_driver genphy_driver;
-static int genphy_config_init(struct phy_device *phydev);
 
 /**
  * phy_aneg_done - return auto-negotiation status
@@ -806,7 +805,7 @@ void phy_write_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
 	phy_write(phydev, MII_MMD_DATA, data);
 }
 
-static int genphy_config_init(struct phy_device *phydev)
+int genphy_config_init(struct phy_device *phydev)
 {
 	int val;
 	u32 features;
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 9a451a6..a64b9b5 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -297,6 +297,7 @@ int phy_update_status(struct phy_device *phydev);
 int phy_wait_aneg_done(struct phy_device *phydev);
 
 /* Generic PHY support and helper functions */
+int genphy_config_init(struct phy_device *phydev);
 int genphy_restart_aneg(struct phy_device *phydev);
 int genphy_config_aneg(struct phy_device *phydev);
 int genphy_aneg_done(struct phy_device *phydev);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
