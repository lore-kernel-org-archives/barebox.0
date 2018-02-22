Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns1.lah-a2.de ([84.19.186.99] helo=lah-a2.de)
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eozAU-0005Ji-UD
 for barebox@lists.infradead.org; Thu, 22 Feb 2018 22:16:48 +0000
Received: from localhost (p508514AE.dip0.t-ipconnect.de [80.133.20.174])
 by lah-a2.de (Postfix) with ESMTPSA id 6A748408606D
 for <barebox@lists.infradead.org>; Thu, 22 Feb 2018 23:14:11 +0100 (CET)
From: Andreas Schmidt <mail@schmidt-andreas.de>
Date: Thu, 22 Feb 2018 23:16:27 +0100
Message-Id: <20180222221627.12750-1-mail@schmidt-andreas.de>
In-Reply-To: <20180216074216.i47f5pswnhiayowe@pengutronix.de>
References: <20180216074216.i47f5pswnhiayowe@pengutronix.de>
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
Subject: [PATCH v2] net: cpsw: fix probe with fixed-link
To: barebox@lists.infradead.org

While cpsw is probe dt, it accepts only slaves nodes with "phy_id" property.
In case of fixed-link there are no "phy_id" property and probe would be failed.
This patch avoid the failure due to missing "phy_id" in case of fixed-link.

Signed-off-by: Andreas Schmidt <mail@schmidt-andreas.de>
---

Changes since v1:
  - rework after "[PATCH] net: cpsw: remove unnecessary mdiobus_scan()" patch was committed.

---
 drivers/net/cpsw.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 928b97774..3d3939cfa 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1089,11 +1089,13 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
 
 		if (i < priv->num_slaves && !strncmp(child->name, "slave", 5)) {
 			struct cpsw_slave *slave = &priv->slaves[i];
-			uint32_t phy_id[2];
+			uint32_t phy_id[2] = {-1, -1};
 
-			ret = of_property_read_u32_array(child, "phy_id", phy_id, 2);
-			if (ret)
-				return ret;
+			if (!of_find_node_by_name(child, "fixed-link")) {
+				ret = of_property_read_u32_array(child, "phy_id", phy_id, 2);
+				if (ret)
+					return ret;
+			}
 
 			slave->dev.device_node = child;
 			slave->phy_id = phy_id[1];
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
