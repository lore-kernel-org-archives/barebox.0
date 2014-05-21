Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5UR-0006xd-1u
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:19:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:18:58 +0200
Message-Id: <1400674740-6467-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400674740-6467-1-git-send-email-s.hauer@pengutronix.de>
References: <1400674740-6467-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] net: phy: genphy: always write MII_CTRL1000 when
 available
To: barebox@lists.infradead.org

the phydev->supported field does not necessarily match the hardware
capabilities, it could be limited by the board to force the phy
to a lower speed. In this case make sure the gigabit advertise bits
are cleared on a gigabit phy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index b0e0c1e..e214c13 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -390,7 +390,7 @@ out:
 int genphy_config_advert(struct phy_device *phydev)
 {
 	u32 advertise;
-	int oldadv, adv;
+	int oldadv, adv, bmsr;
 	int err, changed = 0;
 
 	/* Only allow advertising what
@@ -417,8 +417,11 @@ int genphy_config_advert(struct phy_device *phydev)
 	}
 
 	/* Configure gigabit if it's supported */
-	if (phydev->supported & (SUPPORTED_1000baseT_Half |
-				SUPPORTED_1000baseT_Full)) {
+	bmsr = phy_read(phydev, MII_BMSR);
+	if (bmsr < 0)
+		return bmsr;
+
+	if (bmsr & BMSR_ESTATEN) {
 		oldadv = adv = phy_read(phydev, MII_CTRL1000);
 
 		if (adv < 0)
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
