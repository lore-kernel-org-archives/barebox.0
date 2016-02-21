Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aXYPv-0002L3-Tk
 for barebox@lists.infradead.org; Sun, 21 Feb 2016 18:07:37 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 21 Feb 2016 19:06:28 +0100
Message-Id: <1456077990-15003-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 1/3] EP93xx eth: allow passing of phy config via platform data
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Passing phy configuration to the ep93xx_eth driver was not supported yet
and will be added with this patch. When no pdata is passed, the probably
broken default of phy_addr = 0 will be used to maintain compatibility
with the previous implementation.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 drivers/net/ep93xx.c | 14 ++++++++++++--
 drivers/net/ep93xx.h |  2 ++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index 90c12fc..d2458eb 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -38,6 +38,7 @@
 #include <linux/types.h>
 #include <mach/ep93xx-regs.h>
 #include <linux/phy.h>
+#include <ep93xx_eth.h>
 #include "ep93xx.h"
 
 #define EP93XX_MAX_PKT_SIZE    1536
@@ -203,8 +204,8 @@ static int ep93xx_eth_open(struct eth_device *edev)
 
 	pr_debug("+ep93xx_eth_open\n");
 
-	ret = phy_device_connect(edev, &priv->miibus, 0, NULL,
-				 0, PHY_INTERFACE_MODE_NA);
+	ret = phy_device_connect(edev, &priv->miibus, priv->phy_addr, NULL,
+				 0, priv->interface);
 	if (ret)
 		return ret;
 
@@ -482,6 +483,7 @@ static int ep93xx_eth_set_ethaddr(struct eth_device *edev,
 
 static int ep93xx_eth_probe(struct device_d *dev)
 {
+	struct ep93xx_eth_platform_data *pdata = (struct ep93xx_eth_platform_data *)dev->platform_data;
 	struct eth_device *edev;
 	struct ep93xx_eth_priv *priv;
 	int ret = -1;
@@ -504,6 +506,14 @@ static int ep93xx_eth_probe(struct device_d *dev)
 	edev->set_ethaddr = ep93xx_eth_set_ethaddr;
 	edev->parent = dev;
 
+	if (pdata) {
+		priv->interface = pdata->xcv_type;
+		priv->phy_addr = pdata->phy_addr;
+	} else {
+		priv->interface = PHY_INTERFACE_MODE_NA;
+		priv->phy_addr = 0;
+	}
+
 	priv->miibus.read = ep93xx_phy_read;
 	priv->miibus.write = ep93xx_phy_write;
 	priv->miibus.parent = dev;
diff --git a/drivers/net/ep93xx.h b/drivers/net/ep93xx.h
index 89451b8..32ae57f 100644
--- a/drivers/net/ep93xx.h
+++ b/drivers/net/ep93xx.h
@@ -137,6 +137,8 @@ struct ep93xx_eth_priv {
 	struct tx_descriptor_queue	tx_dq;
 	struct tx_status_queue		tx_sq;
 
+	int				phy_addr;
+	phy_interface_t			interface;
 	struct mii_bus miibus;
 };
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
