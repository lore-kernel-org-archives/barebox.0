Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttB-0005Rp-8q
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttA-0003Qy-50
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:16 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNtt9-0005Df-S2
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:47 +0200
Message-Id: <20200413075204.17544-5-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 04/21] regmap: retire of_node_to_regmap in favor of
 device_node_to_regmap
To: barebox@lists.infradead.org

device_node_to_regmap is the current upstream API for this and is more
general, because it allocates a regmap on demand if none exists.

As of_node_to_regmap is unused anywhere, remove it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/regmap.c | 20 --------------------
 include/regmap.h             |  1 -
 2 files changed, 21 deletions(-)

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index ee5120fd7465..6613670263f6 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -132,26 +132,6 @@ struct regmap *dev_get_regmap(struct device_d *dev, const char *name)
 	return ERR_PTR(-ENOENT);
 }
 
-/*
- * of_node_to_regmap - get a regmap from a device node
- *
- * node:         The device node
- *
- * Returns a pointer to the regmap or a ERR_PTR if the node has no
- * regmap attached.
- */
-struct regmap *of_node_to_regmap(struct device_node *node)
-{
-	struct regmap *map;
-
-	list_for_each_entry(map, &regmaps, list) {
-		if (map->dev && map->dev->device_node == node)
-			return map;
-	}
-
-	return ERR_PTR(-ENOENT);
-}
-
 /*
  * regmap_write - write a register in a map
  *
diff --git a/include/regmap.h b/include/regmap.h
index d950971b7d48..a34a9d2324c2 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -96,7 +96,6 @@ struct clk *regmap_mmio_detach_clk(struct regmap *map);
 void regmap_exit(struct regmap *map);
 
 struct regmap *dev_get_regmap(struct device_d *dev, const char *name);
-struct regmap *of_node_to_regmap(struct device_node *node);
 
 int regmap_register_cdev(struct regmap *map, const char *name);
 
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
