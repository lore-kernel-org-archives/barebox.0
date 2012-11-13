Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYNq5-0005Qa-13
 for barebox@lists.infradead.org; Tue, 13 Nov 2012 21:16:10 +0000
Received: from mail95.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D44FBDC2B32
 for <barebox@lists.infradead.org>; Tue, 13 Nov 2012 22:23:39 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Nov 2012 22:14:05 +0100
Message-Id: <1352841245-22767-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] phy: phy_update_status wait auto neg done when enabled
To: barebox@lists.infradead.org

if the autoneg was start by the hw wait it to be finished

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/phy/phy.c |   26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 0c2e602..43738c2 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -28,6 +28,25 @@
 #define PHY_AN_TIMEOUT	10
 
 static int genphy_config_init(struct phy_device *phydev);
+static int phy_aneg_done(struct phy_device *phydev);
+
+static int phy_wait_aneg_read_status(struct phy_device *dev, struct phy_driver *drv)
+{
+	int ret;
+
+	if (AUTONEG_ENABLE != dev->autoneg)
+		return 0;
+
+	ret = phy_aneg_done(dev);
+	if (ret)
+		return ret;
+
+	/*
+	 * re-read the status as the aneg may not be finished
+	 * when we read it the first time
+	 */
+	return drv->read_status(dev);
+}
 
 int phy_update_status(struct phy_device *dev)
 {
@@ -35,11 +54,18 @@ int phy_update_status(struct phy_device *dev)
 	struct eth_device *edev = dev->attached_dev;
 	int ret;
 	int oldspeed = dev->speed, oldduplex = dev->duplex;
+	int old_link = dev->link;
 
 	ret = drv->read_status(dev);
 	if (ret)
 		return ret;
 
+	if (dev->link && !old_link) {
+		ret = phy_wait_aneg_read_status(dev, drv);
+		if (ret)
+			return ret;
+	}
+
 	if (dev->speed == oldspeed && dev->duplex == oldduplex)
 		return 0;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
