Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XUVsZ-0001gn-SB
 for barebox@lists.infradead.org; Thu, 18 Sep 2014 07:11:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Sep 2014 09:11:12 +0200
Message-Id: <1411024275-31766-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1411024275-31766-1-git-send-email-s.hauer@pengutronix.de>
References: <1411024275-31766-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] net: phy: introduce phy_aneg_done
To: barebox@lists.infradead.org

phy_wait_aneg_done() is directly called by the network code, so it
should not read phy registers directly. Introduce phy_aneg_done to
give phy drivers the chance to do something different to poll for
autonegotiation completion.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 57 +++++++++++++++++++++++++++++++++++++++++----------
 include/linux/phy.h   |  4 ++++
 2 files changed, 50 insertions(+), 11 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index cad4cf5..7604e1d 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -31,6 +31,21 @@
 static struct phy_driver genphy_driver;
 static int genphy_config_init(struct phy_device *phydev);
 
+/**
+ * phy_aneg_done - return auto-negotiation status
+ * @phydev: target phy_device struct
+ *
+ * Description: Return the auto-negotiation status from this @phydev
+ * Returns > 0 on success or < 0 on error. 0 means that auto-negotiation
+ * is still pending.
+ */
+static int phy_aneg_done(struct phy_device *phydev)
+{
+	struct phy_driver *drv = to_phy_driver(phydev->dev.driver);
+
+	return drv->aneg_done(phydev);
+}
+
 int phy_update_status(struct phy_device *dev)
 {
 	struct phy_driver *drv = to_phy_driver(dev->dev.driver);
@@ -477,25 +492,15 @@ int genphy_setup_forced(struct phy_device *phydev)
 int phy_wait_aneg_done(struct phy_device *phydev)
 {
 	uint64_t start = get_time_ns();
-	int ctl;
 
 	if (phydev->autoneg == AUTONEG_DISABLE)
 		return 0;
 
 	while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
-		ctl = phy_read(phydev, MII_BMSR);
-		if (ctl & BMSR_ANEGCOMPLETE) {
+		if (phy_aneg_done(phydev) > 0) {
 			phydev->link = 1;
 			return 0;
 		}
-
-		/* Restart auto-negotiation if remote fault */
-		if (ctl & BMSR_RFAULT) {
-			puts("PHY remote fault detected\n"
-			     "PHY restarting auto-negotiation\n");
-			phy_write(phydev, MII_BMCR,
-					  BMCR_ANENABLE | BMCR_ANRESTART);
-		}
 	}
 
 	phydev->link = 0;
@@ -572,6 +577,33 @@ int genphy_config_aneg(struct phy_device *phydev)
 }
 
 /**
+ * genphy_aneg_done - return auto-negotiation status
+ * @phydev: target phy_device struct
+ *
+ * Description: Reads the status register and returns 0 either if
+ *   auto-negotiation is incomplete, or if there was an error.
+ *   Returns BMSR_ANEGCOMPLETE if auto-negotiation is done.
+ */
+int genphy_aneg_done(struct phy_device *phydev)
+{
+	int bmsr = phy_read(phydev, MII_BMSR);
+
+	if (bmsr < 0)
+		return bmsr;
+
+	/* Restart auto-negotiation if remote fault */
+	if (bmsr & BMSR_RFAULT) {
+		puts("PHY remote fault detected\n"
+		     "PHY restarting auto-negotiation\n");
+		phy_write(phydev, MII_BMCR,
+				  BMCR_ANENABLE | BMCR_ANRESTART);
+	}
+
+	return bmsr & BMSR_ANEGCOMPLETE;
+}
+EXPORT_SYMBOL(genphy_aneg_done);
+
+/**
  * genphy_update_link - update link status in @phydev
  * @phydev: target phy_device struct
  *
@@ -825,6 +857,9 @@ int phy_driver_register(struct phy_driver *phydrv)
 	if (!phydrv->config_aneg)
 		phydrv->config_aneg = genphy_config_aneg;
 
+	if (!phydrv->aneg_done)
+		phydrv->aneg_done = genphy_aneg_done;
+
 	if (!phydrv->read_status)
 		phydrv->read_status = genphy_read_status;
 
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 7c5d754..c0fd4ff 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -234,6 +234,9 @@ struct phy_driver {
 	 */
 	int (*config_aneg)(struct phy_device *phydev);
 
+	/* Determines the auto negotiation result */
+	int (*aneg_done)(struct phy_device *phydev);
+
 	/* Determines the negotiated speed and duplex */
 	int (*read_status)(struct phy_device *phydev);
 
@@ -295,6 +298,7 @@ int phy_wait_aneg_done(struct phy_device *phydev);
 /* Generic PHY support and helper functions */
 int genphy_restart_aneg(struct phy_device *phydev);
 int genphy_config_aneg(struct phy_device *phydev);
+int genphy_aneg_done(struct phy_device *phydev);
 int genphy_update_link(struct phy_device *phydev);
 int genphy_read_status(struct phy_device *phydev);
 int genphy_config_advert(struct phy_device *phydev);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
