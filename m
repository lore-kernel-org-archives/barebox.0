Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XbQKn-0005HG-SJ
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 08:41:30 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 14E7FA004E8
 for <barebox@lists.infradead.org>; Tue,  7 Oct 2014 10:41:16 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 7 Oct 2014 10:40:35 +0200
Message-Id: <1412671237-46551-3-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1412671237-46551-1-git-send-email-t.gamez@phytec.de>
References: <1412671237-46551-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 2/4] net: micrel: Add ksz8081 support
To: barebox@lists.infradead.org

From: Jan Weitzel <j.weitzel@phytec.de>

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/net/phy/micrel.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 88c64e5..866391c 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -226,13 +226,21 @@ static struct phy_driver ksphy_driver[] = {
 }, {
 	.phy_id		= PHY_ID_KSZ8051,
 	.phy_id_mask	= 0x00fffff0,
-	.drv.name		= "Micrel KSZ8051",
+	.drv.name	= "Micrel KSZ8051",
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
 				| SUPPORTED_Asym_Pause),
 	.config_init	= ks8051_config_init,
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= genphy_read_status,
 }, {
+	.phy_id		= PHY_ID_KSZ8081,
+	.phy_id_mask	= MICREL_PHY_ID_MASK,
+	.drv.name	= "Micrel KSZ8081/91",
+	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause),
+	.config_init	= kszphy_config_init,
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= genphy_read_status,
+}, {
 	.phy_id		= PHY_ID_KSZ8001,
 	.drv.name	= "Micrel KSZ8001 or KS8721",
 	.phy_id_mask	= 0x00ffffff,
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
