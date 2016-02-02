Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQYyD-00081q-Ec
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 11:18:06 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue,  2 Feb 2016 12:17:31 +0100
Message-Id: <1454411855-4839-2-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 2/6] net: phy: micrel: use BIT macro
To: barebox@lists.infradead.org

Based on kernel commit 00aee095000c ("net: phy: micrel: use BIT macro")
by Johan Hovold <johan@kernel.org>.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/net/phy/micrel.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 2f31906..0c97e25 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -25,17 +25,17 @@
 
 /* Operation Mode Strap Override */
 #define MII_KSZPHY_OMSO				0x16
-#define KSZPHY_OMSO_B_CAST_OFF			(1 << 9)
-#define KSZPHY_OMSO_RMII_OVERRIDE		(1 << 1)
-#define KSZPHY_OMSO_MII_OVERRIDE		(1 << 0)
+#define KSZPHY_OMSO_B_CAST_OFF			BIT(9)
+#define KSZPHY_OMSO_RMII_OVERRIDE		BIT(1)
+#define KSZPHY_OMSO_MII_OVERRIDE		BIT(0)
 
 /* general PHY control reg in vendor specific block. */
 #define	MII_KSZPHY_CTRL			0x1F
 /* bitmap of PHY register to set interrupt mode */
-#define KSZPHY_CTRL_INT_ACTIVE_HIGH		(1 << 9)
-#define KSZ9021_CTRL_INT_ACTIVE_HIGH		(1 << 14)
-#define KS8737_CTRL_INT_ACTIVE_HIGH		(1 << 14)
-#define KSZ8051_RMII_50MHZ_CLK			(1 << 7)
+#define KSZPHY_CTRL_INT_ACTIVE_HIGH		BIT(9)
+#define KSZ9021_CTRL_INT_ACTIVE_HIGH		BIT(14)
+#define KS8737_CTRL_INT_ACTIVE_HIGH		BIT(14)
+#define KSZ8051_RMII_50MHZ_CLK			BIT(7)
 
 /* Write/read to/from extended registers */
 #define MII_KSZPHY_EXTREG                       0x0b
@@ -231,8 +231,8 @@ static int ksz9031_config_init(struct phy_device *phydev)
 }
 
 #define KSZ8873MLL_GLOBAL_CONTROL_4	0x06
-#define KSZ8873MLL_GLOBAL_CONTROL_4_DUPLEX	(1 << 6)
-#define KSZ8873MLL_GLOBAL_CONTROL_4_SPEED	(1 << 4)
+#define KSZ8873MLL_GLOBAL_CONTROL_4_DUPLEX	BIT(6)
+#define KSZ8873MLL_GLOBAL_CONTROL_4_SPEED	BIT(4)
 static int ksz8873mll_read_status(struct phy_device *phydev)
 {
 	int regval;
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
