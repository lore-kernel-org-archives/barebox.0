Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5Ua-0006zV-1d
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:19:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:18:59 +0200
Message-Id: <1400674740-6467-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] net: phy: genphy: Make it work with of_set_phy_supported
To: barebox@lists.infradead.org

phys start with features initialized from the phy driver
and are eventually limited by of_set_phy_supported. This
does not work with the genphy driver which starts with
no features and overwrites phydev->supported with the
values read from hardware in config_init. This overwrites
the features adjusted by of_set_phy_supported.
To fix this let the genphy driver start with full features
which are then only limited in config_init, but never
extended.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index e214c13..517ed58 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -805,8 +805,8 @@ static int genphy_config_init(struct phy_device *phydev)
 			features |= SUPPORTED_1000baseT_Half;
 	}
 
-	phydev->supported = features;
-	phydev->advertising = features;
+	phydev->supported &= features;
+	phydev->advertising &= features;
 
 	return 0;
 }
@@ -858,7 +858,9 @@ static struct phy_driver genphy_driver = {
 	.drv.name = "Generic PHY",
 	.phy_id = PHY_ANY_UID,
 	.phy_id_mask = PHY_ANY_UID,
-	.features = 0,
+	.features = PHY_GBIT_FEATURES | SUPPORTED_MII |
+		SUPPORTED_AUI | SUPPORTED_FIBRE |
+		SUPPORTED_BNC,
 };
 
 static int generic_phy_register(void)
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
