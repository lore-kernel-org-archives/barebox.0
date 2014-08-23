Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XLKDL-0001jc-KU
 for barebox@lists.infradead.org; Sat, 23 Aug 2014 22:55:16 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Sat, 23 Aug 2014 19:53:38 -0300
Message-Id: <1408834420-899-4-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1408834420-899-1-git-send-email-ezequiel.garcia@free-electrons.com>
References: <1408834420-899-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH 3/5] net: phy: Support Marvell 88EE1543 PHY
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

This commit adds support for Marvell's 88E1543 PHY chip. This chip is
almost identical to the 88EE1545, except the 88E1545 supports QSGMII
and the 88EE1543 supports SGMII.

Therefore, the same configuration function is used for both PHYs. For now,
the only initialization provided for the 88EE1543 is the LED setup.

Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/net/phy/marvell.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
index fa8e1a9..6353077 100644
--- a/drivers/net/phy/marvell.c
+++ b/drivers/net/phy/marvell.c
@@ -24,6 +24,7 @@
 #define MARVELL_PHY_ID_88E1116R		0x01410e40
 #define MARVELL_PHY_ID_88E1510		0x01410dd0
 #define MARVELL_PHY_ID_88E1545		0x01410eb0
+#define MARVELL_PHY_ID_88E1543		0x01410ea0
 
 /* Mask used for ID comparisons */
 #define MARVELL_PHY_ID_MASK		0xfffffff0
@@ -249,6 +250,15 @@ static struct phy_driver marvell_phys[] = {
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
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
