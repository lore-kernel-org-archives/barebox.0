Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from down.free-electrons.com ([37.187.137.238]
 helo=mail.free-electrons.com)
 by casper.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XntbK-000220-U5
 for barebox@lists.infradead.org; Mon, 10 Nov 2014 18:22:07 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Mon, 10 Nov 2014 15:19:44 -0300
Message-Id: <1415643587-12643-3-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH v4 2/5] net: phy: marvell: Fix array identation
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Just a cosmetic clean-up to fix the indentation of the entries
in the phys array.

Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/net/phy/marvell.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
index f2bc649..2fb4ad2 100644
--- a/drivers/net/phy/marvell.c
+++ b/drivers/net/phy/marvell.c
@@ -166,15 +166,15 @@ static int m88e1121_config_init(struct phy_device *phydev)
 }
 
 static struct phy_driver marvell_phys[] = {
-{
-	.phy_id		= MARVELL_PHY_ID_88E1121R,
-	.phy_id_mask	= MARVELL_PHY_ID_MASK,
-	.drv.name	= "Marvell 88E1121R",
-	.features	= PHY_GBIT_FEATURES,
-	.config_init	= m88e1121_config_init,
-	.config_aneg	= genphy_config_aneg,
-	.read_status	= marvell_read_status,
-},
+	{
+		.phy_id		= MARVELL_PHY_ID_88E1121R,
+		.phy_id_mask	= MARVELL_PHY_ID_MASK,
+		.drv.name	= "Marvell 88E1121R",
+		.features	= PHY_GBIT_FEATURES,
+		.config_init	= m88e1121_config_init,
+		.config_aneg	= genphy_config_aneg,
+		.read_status	= marvell_read_status,
+	},
 };
 
 static int __init marvell_phy_init(void)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
