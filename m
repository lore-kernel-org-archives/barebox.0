Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQYyD-000833-FA
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 11:18:08 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue,  2 Feb 2016 12:17:34 +0100
Message-Id: <1454411855-4839-5-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 5/6] net: phy: micrel: Add workaround for bad autoneg
To: barebox@lists.infradead.org

Based on kernel commit d2fd719bcb0e ("net/phy: micrel: Add workaround
for bad autoneg") by Nathan Sullivan <nathan.sullivan@ni.com>:

    Very rarely, the KSZ9031 will appear to complete autonegotiation, but
    will drop all traffic afterwards.  When this happens, the idle error
    count will read 0xFF after autonegotiation completes.  Reset the PHY
    when in that state.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/net/phy/micrel.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 570272f..e8a566d 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -273,6 +273,27 @@ static int ksz8873mll_read_status(struct phy_device *phydev)
 	return 0;
 }
 
+static int ksz9031_read_status(struct phy_device *phydev)
+{
+	int err;
+	int regval;
+
+	err = genphy_read_status(phydev);
+	if (err)
+		return err;
+
+	/* Make sure the PHY is not broken. Read idle error count,
+	 * and reset the PHY if it is maxed out.
+	 */
+	regval = phy_read(phydev, MII_STAT1000);
+	if ((regval & 0xff) == 0xff) {
+		phy_init_hw(phydev);
+		phydev->link = 0;
+	}
+
+	return 0;
+}
+
 static int ksz8873mll_config_aneg(struct phy_device *phydev)
 {
 	return 0;
@@ -368,7 +389,7 @@ static struct phy_driver ksphy_driver[] = {
 	.features	= (PHY_GBIT_FEATURES | SUPPORTED_Pause),
 	.config_init	= ksz9031_config_init,
 	.config_aneg	= genphy_config_aneg,
-	.read_status	= genphy_read_status,
+	.read_status	= ksz9031_read_status,
 }, {
 	.phy_id		= PHY_ID_KSZ8873MLL,
 	.phy_id_mask	= 0x00fffff0,
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
