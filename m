Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avKB6-0000hS-Hx
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 07:46:33 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 318F7A003E7
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 09:46:29 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 27 Apr 2016 09:41:02 +0200
Message-Id: <1461742862-27385-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH] net: phy: micrel: KSZ9081/KSZ8091: Disable broadcast mode
To: barebox@lists.infradead.org

KSZ9081 only supports two phy ids 0x0 and 0x3. 0x0 is also
used as broadcast address. Disable broadcast, so that id 0x0
can be used as unique address on a shared bus.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/net/phy/micrel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index e8a566d..9a30cb7 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -357,7 +357,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.drv.name	= "Micrel KSZ8081/91",
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause),
-	.config_init	= kszphy_config_init,
+	.config_init	= ksz8021_config_init,
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= genphy_read_status,
 }, {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
