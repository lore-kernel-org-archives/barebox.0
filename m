Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQYyD-00082e-Em
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 11:18:07 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue,  2 Feb 2016 12:17:33 +0100
Message-Id: <1454411855-4839-4-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 4/6] net: phy: micrel: Center FLP timing at 16ms
To: barebox@lists.infradead.org

Based on kernel commit 6270e1ae804a ("net/phy: micrel: Center FLP
timing at 16ms") by Jaeden Amero <jaeden.amero@ni.com>:

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/net/phy/micrel.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 6f49e73..570272f 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -149,6 +149,11 @@ static int ksz9021_config_init(struct phy_device *phydev)
 #define KSZ9031_PS_TO_REG		60
 
 /* Extended registers */
+/* MMD Address 0x0 */
+#define MII_KSZ9031RN_FLP_BURST_TX_LO	3
+#define MII_KSZ9031RN_FLP_BURST_TX_HI	4
+
+/* MMD Address 0x2 */
 #define MII_KSZ9031RN_CONTROL_PAD_SKEW	4
 #define MII_KSZ9031RN_RX_DATA_PAD_SKEW	5
 #define MII_KSZ9031RN_TX_DATA_PAD_SKEW	6
@@ -192,6 +197,15 @@ static int ksz9031_of_load_skew_values(struct phy_device *phydev,
 	return 0;
 }
 
+static int ksz9031_center_flp_timing(struct phy_device *phydev)
+{
+	/* Center KSZ9031RNX FLP timing at 16ms. */
+	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_FLP_BURST_TX_HI, 0, 0x0006);
+	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_FLP_BURST_TX_LO, 0, 0x1a80);
+
+	return genphy_restart_aneg(phydev);
+}
+
 static int ksz9031_config_init(struct phy_device *phydev)
 {
 	const struct device_d *dev = &phydev->dev;
@@ -227,7 +241,8 @@ static int ksz9031_config_init(struct phy_device *phydev)
 				MII_KSZ9031RN_TX_DATA_PAD_SKEW, 4,
 				tx_data_skews, 4);
 	}
-	return 0;
+
+	return ksz9031_center_flp_timing(phydev);
 }
 
 #define KSZ8873MLL_GLOBAL_CONTROL_4	0x06
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
