Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIzQx-0003kt-T9
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 18:46:54 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id E2939E0005
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 18:46:47 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 20:46:41 +0200
Message-Id: <20200330184641.881248-2-ahmad@a3f.at>
In-Reply-To: <20200330184641.881248-1-ahmad@a3f.at>
References: <20200330184641.881248-1-ahmad@a3f.at>
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
Subject: [PATCH 2/2] fixup! regmap-mmio: Add big endian support
To: barebox@lists.infradead.org

of_regmap_init_mmio_clk was introduced as to avoid allocating new
devices for syscon nodes, a device tree node sufficed.

We already have an existing device node though, so let's use that.
Through this device node, we can access the big-endian and friends
properties.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
Hello Sascha,

this is untested on the Layerscape. I just verified it now works on the
stm32mp and that adding a big-endian there breaks it again.

Feel free to adjust.
---
 drivers/base/regmap/regmap-mmio.c | 22 ----------------------
 drivers/mfd/syscon.c              | 21 +++++++++++++++++----
 include/regmap.h                  | 15 ---------------
 3 files changed, 17 insertions(+), 41 deletions(-)

diff --git a/drivers/base/regmap/regmap-mmio.c b/drivers/base/regmap/regmap-mmio.c
index 9c5a2822a4fe..7ca95d6bea79 100644
--- a/drivers/base/regmap/regmap-mmio.c
+++ b/drivers/base/regmap/regmap-mmio.c
@@ -299,28 +299,6 @@ struct regmap *regmap_init_mmio_clk(struct device_d *dev,
 	return regmap_init(dev, &regmap_mmio, ctx, config);
 }
 
-struct regmap *of_regmap_init_mmio_clk(struct device_node *np,
-				       const char *clk_id,
-				       void __iomem *regs,
-				       const struct regmap_config *config)
-{
-	struct regmap_mmio_context *ctx;
-
-	ctx = regmap_mmio_gen_context(NULL, regs, config);
-	if (IS_ERR(ctx))
-		return ERR_CAST(ctx);
-
-	if (clk_id) {
-		ctx->clk = of_clk_get_by_name(np, clk_id);
-		if (IS_ERR(ctx->clk)) {
-			kfree(ctx);
-			return ERR_CAST(ctx->clk);
-		}
-	}
-
-	return regmap_init(NULL, &regmap_mmio, ctx, config);
-}
-
 int regmap_mmio_attach_clk(struct regmap *map, struct clk *clk)
 {
 	struct regmap_mmio_context *ctx = map->bus_context;
diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index f1e6559d71fa..c9dfb151ee0a 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -27,6 +27,7 @@ static LIST_HEAD(syscon_list);
 
 struct syscon {
 	struct device_node *np;
+	struct device_d *dev;
 	void __iomem *base;
 	struct list_head list;
 	struct regmap *regmap;
@@ -42,6 +43,7 @@ static struct syscon *of_syscon_register(struct device_node *np, bool check_clk)
 {
 	int ret;
 	struct syscon *syscon;
+	struct device_d *dev;
 	struct resource res;
 
 	if (!of_device_is_compatible(np, "syscon"))
@@ -55,12 +57,23 @@ static struct syscon *of_syscon_register(struct device_node *np, bool check_clk)
 	}
 
 	syscon->base = IOMEM(res.start);
-	syscon->np   = np;
+
+	for_each_device(dev) {
+		if (np == dev->device_node) {
+			syscon->dev = dev;
+			break;
+		}
+	}
+
+	if (!syscon->dev) {
+		ret = -ENODEV;
+		goto err_map;
+	}
 
 	list_add_tail(&syscon->list, &syscon_list);
 
-	syscon->regmap = of_regmap_init_mmio_clk(np, NULL, syscon->base,
-					     &syscon_regmap_config);
+	syscon->regmap = regmap_init_mmio_clk(syscon->dev, NULL, syscon->base,
+					      &syscon_regmap_config);
 
 	if (check_clk) {
 		struct clk *clk = of_clk_get(np, 0);
@@ -88,7 +101,7 @@ static struct syscon *node_to_syscon(struct device_node *np)
 	struct syscon *entry, *syscon = NULL;
 
 	list_for_each_entry(entry, &syscon_list, list)
-		if (entry->np == np) {
+		if (entry->dev->device_node == np) {
 			syscon = entry;
 			break;
 		}
diff --git a/include/regmap.h b/include/regmap.h
index 139ac33ec3e8..4172c00bd2da 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -61,21 +61,6 @@ struct regmap *regmap_init(struct device_d *dev,
 
 struct clk;
 
-/**
- * of_regmap_init_mmio_clk() - Initialise register map with register clock
- *
- * @np: Device node that will be interacted with
- * @clk_id: register clock consumer ID
- * @regs: Pointer to memory-mapped IO region
- * @config: Configuration for register map
- *
- * The return value will be an ERR_PTR() on error or a valid pointer to
- * a struct regmap.
- */
-struct regmap *of_regmap_init_mmio_clk(struct device_node *np, const char *clk_id,
-				       void __iomem *regs,
-				       const struct regmap_config *config);
-
 /**
  * regmap_init_mmio_clk() - Initialise register map with register clock
  *
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
