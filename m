Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from down.free-electrons.com ([37.187.137.238]
 helo=mail.free-electrons.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XnTx5-00007x-U5
 for barebox@lists.infradead.org; Sun, 09 Nov 2014 14:58:53 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Sun,  9 Nov 2014 11:56:17 -0300
Message-Id: <1415544978-22392-4-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>
References: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH v3 3/4] net: phy: Support Marvell 88EE1543 PHY
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This commit adds support for Marvell's 88E1543 PHY chip. This chip is
almost identical to the 88EE1545, except the 88E1545 supports QSGMII
and the 88EE1543 supports SGMII.

Therefore, the same configuration function is used for both PHYs. For now,
the only initialization provided for the 88EE1543 is the LED setup.

Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/net/phy/marvell.c   | 9 +++++++++
 include/linux/marvell_phy.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
index 3ea72e2..3248b48 100644
--- a/drivers/net/phy/marvell.c
+++ b/drivers/net/phy/marvell.c
@@ -233,6 +233,15 @@ static struct phy_driver marvell_phys[] = {
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= marvell_read_status,
 },
+{
+	.phy_id		= MARVELL_PHY_ID_88E1543,
+	.phy_id_mask	= MARVELL_PHY_ID_MASK,
+	.drv.name	= "Marvell 88E1543",
+	.features	= PHY_GBIT_FEATURES,
+	.config_init	= m88e1540_config_init,
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= marvell_read_status,
+},
 };
 
 static int __init marvell_phy_init(void)
diff --git a/include/linux/marvell_phy.h b/include/linux/marvell_phy.h
index deb75bf..b7baae1 100644
--- a/include/linux/marvell_phy.h
+++ b/include/linux/marvell_phy.h
@@ -27,6 +27,7 @@
 #define MARVELL_PHY_ID_88E1318S		0x01410e90
 #define MARVELL_PHY_ID_88E1116R		0x01410e40
 #define MARVELL_PHY_ID_88E1510		0x01410dd0
+#define MARVELL_PHY_ID_88E1543		0x01410ea0
 #define MARVELL_PHY_ID_88E1545		0x01410eb0
 
 /* Mask used for ID comparisons */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
