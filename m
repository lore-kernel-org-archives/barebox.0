Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnima-0003DK-4q
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:16:03 +0200
Message-Id: <20200623131606.16316-18-s.hauer@pengutronix.de>
In-Reply-To: <20200623131606.16316-1-s.hauer@pengutronix.de>
References: <20200623131606.16316-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/20] net: phy: realtek: handle RX delay setting
To: Barebox List <barebox@lists.infradead.org>

RX delay and TX delay can be configured independently on the RTL8211F.
Decode the phy mode setting and set both bits accordingly. This is based
on Linux commit 1b3047b5208a ("net: phy: realtek: add support for
configuring the RX delay on RTL8211F")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/realtek.c | 48 ++++++++++++++++++++++++++++++++-------
 1 file changed, 40 insertions(+), 8 deletions(-)

diff --git a/drivers/net/phy/realtek.c b/drivers/net/phy/realtek.c
index 4ae050128c..695a6c384d 100644
--- a/drivers/net/phy/realtek.c
+++ b/drivers/net/phy/realtek.c
@@ -34,6 +34,7 @@
 #define RTL8211F_INSR				0x1d
 
 #define RTL8211F_TX_DELAY			BIT(8)
+#define RTL8211F_RX_DELAY			BIT(3)
 
 #define RTL8201F_ISR				0x1e
 #define RTL8201F_IER				0x13
@@ -84,19 +85,50 @@ static int rtl8211c_config_init(struct phy_device *phydev)
 
 static int rtl8211f_config_init(struct phy_device *phydev)
 {
+	struct device_d *dev = &phydev->dev;
+	u16 val_txdly, val_rxdly;
 	int ret;
-	u16 val = 0;
 
-	ret = genphy_config_init(phydev);
-	if (ret < 0)
+	switch (phydev->interface) {
+	case PHY_INTERFACE_MODE_RGMII:
+		val_txdly = 0;
+		val_rxdly = 0;
+		break;
+
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+		val_txdly = 0;
+		val_rxdly = RTL8211F_RX_DELAY;
+		break;
+
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		val_txdly = RTL8211F_TX_DELAY;
+		val_rxdly = 0;
+		break;
+
+	case PHY_INTERFACE_MODE_RGMII_ID:
+		val_txdly = RTL8211F_TX_DELAY;
+		val_rxdly = RTL8211F_RX_DELAY;
+		break;
+
+	default: /* the rest of the modes imply leaving delay as is. */
+		return 0;
+	}
+
+	ret = phy_modify_paged(phydev, 0xd08, 0x11, RTL8211F_TX_DELAY,
+			       val_txdly);
+	if (ret < 0) {
+		dev_err(dev, "Failed to update the TX delay register\n");
 		return ret;
+	}
 
-	/* enable TX-delay for rgmii-id and rgmii-txid, otherwise disable it */
-	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
-	    phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
-		val = RTL8211F_TX_DELAY;
+	ret = phy_modify_paged(phydev, 0xd08, 0x15, RTL8211F_RX_DELAY,
+			       val_rxdly);
+	if (ret < 0) {
+		dev_err(dev, "Failed to update the RX delay register\n");
+		return ret;
+	}
 
-	return phy_modify_paged(phydev, 0xd08, 0x11, RTL8211F_TX_DELAY, val);
+	return 0;
 }
 
 static int rtl8366rb_config_init(struct phy_device *phydev)
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
