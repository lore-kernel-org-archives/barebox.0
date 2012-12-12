Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tirek-0000VT-GZ
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 19:07:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Dec 2012 20:07:43 +0100
Message-Id: <1355339263-1295-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net phylib: force to wait for link
To: barebox@lists.infradead.org

When starting a network device wait until the link is up. Otherwise
autobooting does not work with little timeout and several attempts
have to be made until the network is finally up.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c |    7 +++++--
 include/linux/phy.h   |    1 +
 net/eth.c             |    3 +++
 3 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 58546f8..d7e6b3d 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -400,11 +400,14 @@ int genphy_setup_forced(struct phy_device *phydev)
 	return err;
 }
 
-static int phy_aneg_done(struct phy_device *phydev)
+int phy_wait_aneg_done(struct phy_device *phydev)
 {
 	uint64_t start = get_time_ns();
 	int ctl;
 
+	if (phydev->autoneg == AUTONEG_DISABLE)
+		return 0;
+
 	while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
 		ctl = phy_read(phydev, MII_BMSR);
 		if (ctl & BMSR_ANEGCOMPLETE) {
@@ -451,7 +454,7 @@ int genphy_restart_aneg(struct phy_device *phydev)
 	if (ctl < 0)
 		return ctl;
 
-	return phy_aneg_done(phydev);
+	return 0;
 }
 
 /**
diff --git a/include/linux/phy.h b/include/linux/phy.h
index b39eca5..6c9cac9 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -267,6 +267,7 @@ int phy_device_connect(struct eth_device *dev, struct mii_bus *bus, int addr,
 		       u32 flags, phy_interface_t interface);
 
 int phy_update_status(struct phy_device *phydev);
+int phy_wait_aneg_done(struct phy_device *phydev);
 
 /* Generic PHY support and helper functions */
 int genphy_restart_aneg(struct phy_device *phydev);
diff --git a/net/eth.c b/net/eth.c
index 101fc10..abb2eaf 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -138,6 +138,9 @@ static int eth_carrier_check(int force)
 	if (!eth_current->phydev)
 		return 0;
 
+	if (force)
+		phy_wait_aneg_done(eth_current->phydev);
+
 	if (force || is_timeout(last_link_check, 5 * SECOND) ||
 			!eth_current->phydev->link) {
 		ret = phy_update_status(eth_current->phydev);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
