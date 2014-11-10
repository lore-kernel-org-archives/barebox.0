Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from down.free-electrons.com ([37.187.137.238]
 helo=mail.free-electrons.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XntbM-0002gX-2P
 for barebox@lists.infradead.org; Mon, 10 Nov 2014 18:22:08 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Mon, 10 Nov 2014 15:19:46 -0300
Message-Id: <1415643587-12643-5-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1415643587-12643-1-git-send-email-ezequiel.garcia@free-electrons.com>
References: <1415643587-12643-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH v4 4/5] net: phy: Support Marvell 88EE1543 PHY
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
index 8964d7a..aaf9f53 100644
--- a/drivers/net/phy/marvell.c
+++ b/drivers/net/phy/marvell.c
@@ -225,6 +225,15 @@ static struct phy_driver marvell_phys[] = {
 		.read_status	= marvell_read_status,
 	},
 	{
+		.phy_id		= MARVELL_PHY_ID_88E1543,
+		.phy_id_mask	= MARVELL_PHY_ID_MASK,
+		.drv.name	= "Marvell 88E1543",
+		.features	= PHY_GBIT_FEATURES,
+		.config_init	= m88e1540_config_init,
+		.config_aneg	= genphy_config_aneg,
+		.read_status	= marvell_read_status,
+	},
+	{
 		.phy_id		= MARVELL_PHY_ID_88E1545,
 		.phy_id_mask	= MARVELL_PHY_ID_MASK,
 		.drv.name	= "Marvell 88E1545",
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
