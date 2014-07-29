Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCEIG-0004eB-Kt
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 20:46:45 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Tue, 29 Jul 2014 17:44:57 -0300
Message-Id: <1406666701-15356-3-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
References: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH 2/6] net: phy: mdio-mvebu: Make the clock property required
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Jason Cooper <jason@lakedaemon.net>, Willy Tarreau <w@1wt.eu>

This property is wrongly documented as 'optional', although all the
ethernet units need a clock to be enabled in order to access the MDIO
interface. For that reason, this commit makes the property a required
one and fails to probe the device, when a clock is not properly provided.

Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/net/phy/mdio-mvebu.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/phy/mdio-mvebu.c b/drivers/net/phy/mdio-mvebu.c
index 3dcf644..b90e281 100644
--- a/drivers/net/phy/mdio-mvebu.c
+++ b/drivers/net/phy/mdio-mvebu.c
@@ -117,8 +117,9 @@ static int mvebu_mdio_probe(struct device_d *dev)
 		return -ENOMEM;
 
 	priv->clk = clk_get(dev, NULL);
-	if (!IS_ERR(priv->clk))
-		clk_enable(priv->clk);
+	if (IS_ERR(priv->clk))
+		return PTR_ERR(priv->clk);
+	clk_enable(priv->clk);
 
 	priv->miibus.dev.device_node = dev->device_node;
 	priv->miibus.priv = priv;
@@ -135,8 +136,7 @@ static void mvebu_mdio_remove(struct device_d *dev)
 
 	mdiobus_unregister(&priv->miibus);
 
-	if (!IS_ERR(priv->clk))
-		clk_disable(priv->clk);
+	clk_disable(priv->clk);
 }
 
 static struct of_device_id mvebu_mdio_dt_ids[] = {
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
