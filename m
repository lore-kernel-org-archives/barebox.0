Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dlrRI-0005PF-Fy
 for barebox@lists.infradead.org; Sun, 27 Aug 2017 06:52:58 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sun, 27 Aug 2017 08:52:00 +0200
Message-Id: <20170827065200.11205-1-linux@rempel-privat.de>
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
Subject: [PATCH] phy: don't crush if we have no parent
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

current code will crash if DT has no PHY entry. With this patch
we will test if parent exist, before testing the parent device node.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/net/phy/phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 7132516aa..25ae40233 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -323,7 +323,7 @@ static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
 		return NULL;
 
-	if (!edev->parent->device_node)
+	if (!edev->parent || !edev->parent->device_node)
 		return NULL;
 
 	phy_node = of_parse_phandle(edev->parent->device_node, "phy-handle", 0);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
