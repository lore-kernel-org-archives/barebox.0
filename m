Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c44zQ-0003GE-H4
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 11:54:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2016 12:54:33 +0100
Message-Id: <20161108115433.26448-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: phy: micrel: Do not overwrite reserved bits
To: Barebox List <barebox@lists.infradead.org>

ksz8021_config_init() unconditionally sets the KSZPHY_OMSO_RMII_OVERRIDE
bit. This is since the initial micrel phy commit, so it's not
reproducible where this comes from and why this is done. Neither U-Boot
nor the kernel ever touch this bit and so should we. Also, instead
of doing a write only operation, read/modify/write the bit we actually
want to change.
This fixes operation on a KSZ8081MLX which is a MII only phy.
KSZPHY_OMSO_RMII_OVERRIDE is reserved here and must be written to 0.
KSZPHY_OMSO_MII_OVERRIDE is default 1 and must be written as 1.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/micrel.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 9a30cb7..0ca359b 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -72,8 +72,12 @@ static int kszphy_config_init(struct phy_device *phydev)
 
 static int ksz8021_config_init(struct phy_device *phydev)
 {
-	const u16 val = KSZPHY_OMSO_B_CAST_OFF | KSZPHY_OMSO_RMII_OVERRIDE;
+	u16 val;
+
+	val = phy_read(phydev, MII_KSZPHY_OMSO);
+	val |= KSZPHY_OMSO_B_CAST_OFF;
 	phy_write(phydev, MII_KSZPHY_OMSO, val);
+
 	return 0;
 }
 
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
