Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl73f-0006el-CF
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 07:30:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2019 09:30:28 +0200
Message-Id: <20190710073028.1387-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] net: cpsw: adopt to upstream device tree changes
To: Barebox List <barebox@lists.infradead.org>

Upstream device trees no longer have a "cpsw-phy-sel" property to find
the phy_sel register, instead they have a child device of the pinctrl
node compatible to "ti,am3352-phy-gmii-sel". Also the "rmii-clock-ext"
property is no longer global to the cpsw but instead can be selected
per slave. To adopt to these changes take the short way out for now
and find the new node by its compatible and hardcode the "rmii-clock-ext"
setting (which is set to true in am33xx-l4.dtsi and not overwritten
by any board).

This makes the cpsw driver work again. Tested on Beaglebone black
board.

Fixes: 1dc748b3b2 ("dts: update to v5.1-rc1")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 65f71c6fce..df8981d02e 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -993,8 +993,13 @@ static int cpsw_phy_sel_init(struct cpsw_priv *priv, struct device_node *np)
 
 	phy_sel_addr = (void *)addr;
 
-	if (of_property_read_bool(np, "rmii-clock-ext"))
-		rmii_clock_external = true;
+	/*
+	 * As of Linux-5.1 this is set to true in am33xx-l4.dtsi and not
+	 * overwritten by any board. This is set to false in am437x-l4.dtsi
+	 * though, so once we support this SoC we have to configure this from
+	 * the device tree.
+	 */
+	rmii_clock_external = true;
 
 	return 0;
 }
@@ -1062,11 +1067,10 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
 
 	priv->slaves = xzalloc(sizeof(struct cpsw_slave) * priv->num_slaves);
 
-	physel = of_parse_phandle(dev->device_node, "cpsw-phy-sel", 0);
+	physel = of_find_compatible_node(NULL, NULL, "ti,am3352-phy-gmii-sel");
 	if (!physel) {
-		physel = of_get_child_by_name(dev->device_node, "cpsw-phy-sel");
-		if (!physel)
-			dev_err(dev, "Phy mode node not found\n");
+		dev_err(dev, "Cannot find ti,am3352-phy-gmii-sel node\n");
+		return -EINVAL;
 	}
 	ret = cpsw_phy_sel_init(priv, physel);
 	if (ret)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
