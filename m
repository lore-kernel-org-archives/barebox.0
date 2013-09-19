Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMcau-0003As-QC
 for barebox@lists.infradead.org; Thu, 19 Sep 2013 11:40:25 +0000
Received: from mail616.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 26417DC839F
 for <barebox@lists.infradead.org>; Thu, 19 Sep 2013 13:40:03 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Sep 2013 13:41:13 +0200
Message-Id: <1379590873-32588-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] smc91111: add fixup for qemu phy support
To: barebox@lists.infradead.org

as today qemu does not support phy, it will return always 0x0 to any read
on the mii bus. So the phy_id is 0 and the link is donw.

To have the norwork running on versatilpb & other qenu board for the link up
at 100Mbps.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/smc91111.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 48183dd..8c7a343 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -886,6 +886,7 @@ static void smc91c111_enable(struct eth_device *edev)
 static int smc91c111_eth_open(struct eth_device *edev)
 {
 	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
+	int ret;
 
 	/* Configure the Receive/Phy Control register */
 	SMC_SELECT_BANK(priv, 0);
@@ -893,8 +894,27 @@ static int smc91c111_eth_open(struct eth_device *edev)
 
 	smc91c111_enable(edev);
 
-	return phy_device_connect(edev, &priv->miibus, 0, NULL,
+	ret = phy_device_connect(edev, &priv->miibus, 0, NULL,
 				 0, PHY_INTERFACE_MODE_NA);
+
+	if (ret)
+		return ret;
+
+	if (edev->phydev->phy_id == 0x00000000) {
+		struct phy_device *dev = edev->phydev;
+
+		dev->speed = SPEED_100;
+		dev->duplex = DUPLEX_FULL;
+		dev->autoneg = !AUTONEG_ENABLE;
+		dev->force = 1;
+		dev->link = 1;
+
+		dev_info(edev->parent, "phy with id 0x%08x detected this might be qemu\n",
+			dev->phy_id);
+		dev_info(edev->parent, "force link at 100Mpbs\n");
+	}
+
+	return 0;
 }
 
 static int smc91c111_eth_send(struct eth_device *edev, void *packet,
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
