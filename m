Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22d.google.com ([2a00:1450:4010:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZsVtL-0004x6-VN
 for barebox@lists.infradead.org; Sat, 31 Oct 2015 13:08:20 +0000
Received: by lfbn126 with SMTP id n126so45591153lfb.2
 for <barebox@lists.infradead.org>; Sat, 31 Oct 2015 06:07:57 -0700 (PDT)
From: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
Date: Sat, 31 Oct 2015 14:07:52 +0100
Message-Id: <1446296872-1592-2-git-send-email-anton.bondarenko.sama@gmail.com>
In-Reply-To: <1446296872-1592-1-git-send-email-anton.bondarenko.sama@gmail.com>
References: <1446296872-1592-1-git-send-email-anton.bondarenko.sama@gmail.com>
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
Subject: [PATCH] net: phy: wait for link OK after successfull autonegotiation
To: s.hauer@pengutronix.de, barebox@lists.infradead.org

It may take some time for PHY to indicate link OK status after
autonegotiation completed. This change addresses this case
and prevent network commands fails due to the delay.

Signed-off-by: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
---
 drivers/net/phy/phy.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 2b3c5e2..73569f3 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -502,13 +502,17 @@ int phy_wait_aneg_done(struct phy_device *phydev)
 		return 0;
 
 	while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
-		if (phy_aneg_done(phydev) > 0) {
-			phydev->link = 1;
+		if (phy_aneg_done(phydev) > 0)
+			break;
+	}
+
+	genphy_update_link(phydev);
+	while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
+		if (phydev->link == 1)
 			return 0;
-		}
+		genphy_update_link(phydev);
 	}
 
-	phydev->link = 0;
 	return -ETIMEDOUT;
 }
 
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
