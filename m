Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTVqA-00081J-CL
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 12:57:11 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id A6EF4A003B7
 for <barebox@lists.infradead.org>; Mon, 15 Sep 2014 14:56:42 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Mon, 15 Sep 2014 14:56:28 +0200
Message-Id: <1410785791-27053-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 1/4] phy/micrel: disable Asym_Pause support
To: barebox@lists.infradead.org

From: Jan Weitzel <j.weitzel@phytec.de>

With SUPPORTED_Asym_Pause enabled we need to hotplug the ethernet cable.
So disable it like done with PHY_ID_KSZ9021.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 drivers/net/phy/micrel.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 8aea653..88c64e5 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -254,11 +254,11 @@ static struct phy_driver ksphy_driver[] = {
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= genphy_read_status,
 }, {
+	/* I saw the same issue like PHY_ID_KSZ9021 for Asym_Pause */
 	.phy_id		= PHY_ID_KSZ9031,
 	.phy_id_mask	= 0x00fffff0,
 	.drv.name	= "Micrel KSZ9031 Gigabit PHY",
-	.features	= (PHY_GBIT_FEATURES | SUPPORTED_Pause
-				| SUPPORTED_Asym_Pause),
+	.features	= (PHY_GBIT_FEATURES | SUPPORTED_Pause),
 	.config_init	= kszphy_config_init,
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= genphy_read_status,
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
