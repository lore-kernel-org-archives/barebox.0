Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtDKD-0008RD-Ac
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 15:16:54 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 11 Feb 2019 16:16:39 +0100
Message-Id: <1549898200-32688-7-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
References: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 6/7] net: ethernet: cpsw: cpsw-phy-sel: Use phandle for phy sel
To: barebox@lists.infradead.org

With the usage of the interconnect target module hierarchy in device tree the
cpsw-phy-sel node moved to the system control module. An phandle has
been added instead to the device tree include.

Try to use the cpsw-phy-sel phandle first then fall back looking for the
cpsw-phy-sel child.

This patch is based on the upstream kernel patch:
18eb8aea7fb2 ("net: ethernet: cpsw-phy-sel: prefer phandle for phy sel")

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/net/cpsw.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 432004ec9ca8..65f71c6fce5a 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1053,6 +1053,7 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
 {
 	struct device_d *dev = priv->dev;
 	struct device_node *np = dev->device_node, *child;
+	struct device_node *physel;
 	int ret, i = 0;
 
 	ret = of_property_read_u32(np, "slaves", &priv->num_slaves);
@@ -1061,13 +1062,17 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
 
 	priv->slaves = xzalloc(sizeof(struct cpsw_slave) * priv->num_slaves);
 
-	for_each_child_of_node(np, child) {
-		if (of_device_is_compatible(child, "ti,am3352-cpsw-phy-sel")) {
-			ret = cpsw_phy_sel_init(priv, child);
-			if (ret)
-				return ret;
-		}
+	physel = of_parse_phandle(dev->device_node, "cpsw-phy-sel", 0);
+	if (!physel) {
+		physel = of_get_child_by_name(dev->device_node, "cpsw-phy-sel");
+		if (!physel)
+			dev_err(dev, "Phy mode node not found\n");
+	}
+	ret = cpsw_phy_sel_init(priv, physel);
+	if (ret)
+		return ret;
 
+	for_each_child_of_node(np, child) {
 		if (of_device_is_compatible(child, "ti,davinci_mdio")) {
 			ret = of_pinctrl_select_state_default(child);
 			if (ret)
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
