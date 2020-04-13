Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNtFX-0007xS-ID
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:11:21 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:11:11 +0200
Message-Id: <20200413071111.20443-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! regmap-mmio: Add big endian support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

("regmap-mmio: Add big endian support") required syscons to have a device_d
instantiated for them. This doesn't work for clock drivers though,
like the sama5d2's, because of_clk_init is called before
of_platform_populate allocates the devices.

Restore the old behavior by passing NULL to regmap_init_mmio_clk again.
Because we want syscons to be endianness aware, do as Linux does and
duplicate the device tree endianness retrieval in the syscon driver.

[Note: Clock drivers wishing to make use of this should take care to not
call syscon_node_to_regmap on a node with a clocks property as this
will probably fail. This is the Linux behavior. A safer
device_node_to_regmap will be introduced in a separate series that
ignores clocks. ]
---
Hopefully my last fixup for this, I think I got it right now.
This should be squashed into the original, because otherwise we have
an intermittent breakage for booting sama5d2 SoCs
--
 drivers/base/regmap/regmap.c |  2 +-
 drivers/mfd/syscon.c         | 45 ++++++++++++++++++++++--------------
 2 files changed, 29 insertions(+), 18 deletions(-)

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 374d3ea3d6e1..ee5120fd7465 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -145,7 +145,7 @@ struct regmap *of_node_to_regmap(struct device_node *node)
 	struct regmap *map;
 
 	list_for_each_entry(map, &regmaps, list) {
-		if (map->dev->device_node == node)
+		if (map->dev && map->dev->device_node == node)
 			return map;
 	}
 
diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 252d91120b53..67e2ebb6c2f5 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -26,7 +26,7 @@
 static LIST_HEAD(syscon_list);
 
 struct syscon {
-	struct device_d *dev;
+	struct device_node *np;
 	void __iomem *base;
 	struct list_head list;
 	struct regmap *regmap;
@@ -40,9 +40,10 @@ static const struct regmap_config syscon_regmap_config = {
 
 static struct syscon *of_syscon_register(struct device_node *np, bool check_clk)
 {
-	int ret;
+	struct regmap_config syscon_config = syscon_regmap_config;
 	struct syscon *syscon;
-	struct device_d *dev;
+	u32 reg_io_width;
+	int ret;
 	struct resource res;
 
 	if (!of_device_is_compatible(np, "syscon"))
@@ -57,22 +58,32 @@ static struct syscon *of_syscon_register(struct device_node *np, bool check_clk)
 
 	syscon->base = IOMEM(res.start);
 
-	for_each_device(dev) {
-		if (np == dev->device_node) {
-			syscon->dev = dev;
-			break;
-		}
-	}
-
-	if (!syscon->dev) {
-		ret = -ENODEV;
-		goto err_map;
-	}
+	/* Parse the device's DT node for an endianness specification */
+	if (of_property_read_bool(np, "big-endian"))
+		syscon_config.val_format_endian = REGMAP_ENDIAN_BIG;
+	else if (of_property_read_bool(np, "little-endian"))
+		syscon_config.val_format_endian = REGMAP_ENDIAN_LITTLE;
+	else if (of_property_read_bool(np, "native-endian"))
+		syscon_config.val_format_endian = REGMAP_ENDIAN_NATIVE;
+
+	/*
+	 * search for reg-io-width property in DT. If it is not provided,
+	 * default to 4 bytes. regmap_init_mmio will return an error if values
+	 * are invalid so there is no need to check them here.
+	 */
+	ret = of_property_read_u32(np, "reg-io-width", &reg_io_width);
+	if (ret)
+		reg_io_width = 4;
+
+	syscon_config.name = np->full_name;
+	syscon_config.reg_stride = reg_io_width;
+	syscon_config.val_bits = reg_io_width * 8;
+	syscon_config.max_register = resource_size(&res) - reg_io_width;
 
 	list_add_tail(&syscon->list, &syscon_list);
 
-	syscon->regmap = regmap_init_mmio_clk(syscon->dev, NULL, syscon->base,
-					      &syscon_regmap_config);
+	syscon->regmap = regmap_init_mmio_clk(NULL, NULL, syscon->base,
+					      &syscon_config);
 
 	if (check_clk) {
 		struct clk *clk = of_clk_get(np, 0);
@@ -100,7 +111,7 @@ static struct syscon *node_to_syscon(struct device_node *np)
 	struct syscon *entry, *syscon = NULL;
 
 	list_for_each_entry(entry, &syscon_list, list)
-		if (entry->dev->device_node == np) {
+		if (entry->np == np) {
 			syscon = entry;
 			break;
 		}
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
