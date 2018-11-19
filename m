Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOlQW-00086Q-00
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 15:25:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Nov 2018 16:25:15 +0100
Message-Id: <20181119152515.14493-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: cpsw: support "phy-handle" and deprecate "phy_id"
To: Barebox List <barebox@lists.infradead.org>

Upstream dts files changed to the generic binding for mii phys, so we
have to support it in barebox aswell. The barebox internal device trees
haven't been changed, so support them until all have changed. We print
a warning to add some motivation to change.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index c6fc21dc54..7ee2f3a4e1 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1093,8 +1093,8 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
 
 			if (!of_find_node_by_name(child, "fixed-link")) {
 				ret = of_property_read_u32_array(child, "phy_id", phy_id, 2);
-				if (ret)
-					return ret;
+				if (!ret)
+					dev_warn(dev, "phy_id is deprecated, use phy-handle\n")
 			}
 
 			slave->dev.device_node = child;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
