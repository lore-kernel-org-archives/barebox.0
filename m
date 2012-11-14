Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo5.mail-out.ovh.net ([46.105.35.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYk9F-0003mL-O6
 for barebox@lists.infradead.org; Wed, 14 Nov 2012 21:05:27 +0000
Received: from mail609.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 9E4FBFFA434
 for <barebox@lists.infradead.org>; Wed, 14 Nov 2012 22:13:01 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 14 Nov 2012 22:03:19 +0100
Message-Id: <1352926999-14981-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] phy: if the link partner just ack us wait the end of the
 autoneg
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/phy/phy.c |   12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 43738c2..daa657f 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -578,6 +578,18 @@ int genphy_read_status(struct phy_device *phydev)
 		if (lpa < 0)
 			return lpa;
 
+		if (lpa & LPA_LPACK) {
+			int ret;
+
+			ret = phy_aneg_done(phydev);
+			if (ret)
+				return ret;
+
+			lpa = phy_read(phydev, MII_LPA);
+			if (lpa < 0)
+				return lpa;
+		}
+
 		adv = phy_read(phydev, MII_ADVERTISE);
 
 		if (adv < 0)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
