Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x230.google.com ([2a00:1450:4010:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zu5Wj-0007nn-3P
 for barebox@lists.infradead.org; Wed, 04 Nov 2015 21:23:29 +0000
Received: by lfbf136 with SMTP id f136so48821910lfb.0
 for <barebox@lists.infradead.org>; Wed, 04 Nov 2015 13:23:06 -0800 (PST)
From: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
Date: Wed,  4 Nov 2015 22:23:04 +0100
Message-Id: <1446672184-15215-1-git-send-email-anton.bondarenko.sama@gmail.com>
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
Subject: [PATCH v2] net: phy: wait for link OK after successfull
 autonegotiation
To: barebox@lists.infradead.org, s.hauer@pengutronix.de

It may take some time for PHY to indicate link OK status after
autonegotiation completed. This change addresses this case
and prevent network commands fails due to the delay.

Signed-off-by: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
---
 drivers/net/phy/phy.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 2b3c5e2..25c999c 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -502,13 +502,16 @@ int phy_wait_aneg_done(struct phy_device *phydev)
 		return 0;
 
 	while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
-		if (phy_aneg_done(phydev) > 0) {
-			phydev->link = 1;
-			return 0;
-		}
+		if (phy_aneg_done(phydev) > 0)
+			break;
 	}
 
-	phydev->link = 0;
+	do {
+		genphy_update_link(phydev);
+		if (phydev->link == 1)
+			return 0;
+	} while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND));
+
 	return -ETIMEDOUT;
 }
 
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
