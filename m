Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grI50-00058B-TH
 for barebox@lists.infradead.org; Wed, 06 Feb 2019 07:57:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Feb 2019 08:57:07 +0100
Message-Id: <20190206075707.22787-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] net: Phy: Update phy interface modes from Linux
To: Barebox List <barebox@lists.infradead.org>

This syncs the phy interface modes with Linux and adds names
that were previously missing. With this we no longer have holes in
the phy mode name arrays and thus of_get_phy_mode no longer
derefences NULL pointers when it finds such a hole.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/of_net.c | 12 +++++++++++-
 include/linux/phy.h |  3 +++
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
index 9b54e44674..cee4597195 100644
--- a/drivers/of/of_net.c
+++ b/drivers/of/of_net.c
@@ -17,18 +17,28 @@
  */
 static const char *phy_modes[] = {
 	[PHY_INTERFACE_MODE_NA]		= "",
+	[PHY_INTERFACE_MODE_INTERNAL]	= "internal",
 	[PHY_INTERFACE_MODE_MII]	= "mii",
 	[PHY_INTERFACE_MODE_GMII]	= "gmii",
 	[PHY_INTERFACE_MODE_SGMII]	= "sgmii",
 	[PHY_INTERFACE_MODE_TBI]	= "tbi",
+	[PHY_INTERFACE_MODE_REVMII]	= "rev-mii",
 	[PHY_INTERFACE_MODE_RMII]	= "rmii",
 	[PHY_INTERFACE_MODE_RGMII]	= "rgmii",
 	[PHY_INTERFACE_MODE_RGMII_ID]	= "rgmii-id",
 	[PHY_INTERFACE_MODE_RGMII_RXID]	= "rgmii-rxid",
-	[PHY_INTERFACE_MODE_RGMII_TXID] = "rgmii-txid",
+	[PHY_INTERFACE_MODE_RGMII_TXID]	= "rgmii-txid",
 	[PHY_INTERFACE_MODE_RTBI]	= "rtbi",
 	[PHY_INTERFACE_MODE_SMII]	= "smii",
+	[PHY_INTERFACE_MODE_XGMII]	= "xgmii",
+	[PHY_INTERFACE_MODE_MOCA]	= "moca",
 	[PHY_INTERFACE_MODE_QSGMII]	= "qsgmii",
+	[PHY_INTERFACE_MODE_TRGMII]	= "trgmii",
+	[PHY_INTERFACE_MODE_1000BASEX]	= "1000base-x",
+	[PHY_INTERFACE_MODE_2500BASEX]	= "2500base-x",
+	[PHY_INTERFACE_MODE_RXAUI]	= "rxaui",
+	[PHY_INTERFACE_MODE_XAUI]	= "xaui",
+	[PHY_INTERFACE_MODE_10GKR]	= "10gbase-kr",
 };
 
 /**
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 5b2c63ff69..5081ebacb3 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -43,10 +43,12 @@
 /* Interface Mode definitions */
 typedef enum {
 	PHY_INTERFACE_MODE_NA,
+	PHY_INTERFACE_MODE_INTERNAL,
 	PHY_INTERFACE_MODE_MII,
 	PHY_INTERFACE_MODE_GMII,
 	PHY_INTERFACE_MODE_SGMII,
 	PHY_INTERFACE_MODE_TBI,
+	PHY_INTERFACE_MODE_REVMII,
 	PHY_INTERFACE_MODE_RMII,
 	PHY_INTERFACE_MODE_RGMII,
 	PHY_INTERFACE_MODE_RGMII_ID,
@@ -55,6 +57,7 @@ typedef enum {
 	PHY_INTERFACE_MODE_RTBI,
 	PHY_INTERFACE_MODE_SMII,
 	PHY_INTERFACE_MODE_XGMII,
+	PHY_INTERFACE_MODE_MOCA,
 	PHY_INTERFACE_MODE_QSGMII,
 	PHY_INTERFACE_MODE_TRGMII,
 	PHY_INTERFACE_MODE_1000BASEX,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
