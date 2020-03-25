Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH1WN-00053u-VG
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 08:36:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 09:36:05 +0100
Message-Id: <20200325083608.15676-3-s.hauer@pengutronix.de>
In-Reply-To: <20200325083608.15676-1-s.hauer@pengutronix.de>
References: <20200325083608.15676-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] regmap-mmio: Add big endian support
To: Barebox List <barebox@lists.infradead.org>

Add support for parsing the big-endian device tree property.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/regmap/internal.h    |  4 ++
 drivers/base/regmap/regmap-mmio.c | 98 +++++++++++++++++++++++++------
 drivers/base/regmap/regmap.c      | 44 ++++++++++++++
 include/regmap.h                  | 13 ++++
 4 files changed, 140 insertions(+), 19 deletions(-)

diff --git a/drivers/base/regmap/internal.h b/drivers/base/regmap/internal.h
index 5b19459828..4c7460fa4c 100644
--- a/drivers/base/regmap/internal.h
+++ b/drivers/base/regmap/internal.h
@@ -22,4 +22,8 @@ struct regmap {
 	struct cdev cdev;
 };
 
+enum regmap_endian regmap_get_val_endian(struct device_d *dev,
+					 const struct regmap_bus *bus,
+					 const struct regmap_config *config);
+
 #endif
diff --git a/drivers/base/regmap/regmap-mmio.c b/drivers/base/regmap/regmap-mmio.c
index ef6a7db6fd..492dd16ff5 100644
--- a/drivers/base/regmap/regmap-mmio.c
+++ b/drivers/base/regmap/regmap-mmio.c
@@ -86,6 +86,20 @@ static void regmap_mmio_write32le(struct regmap_mmio_context *ctx,
 	writel(val, ctx->regs + reg);
 }
 
+static void regmap_mmio_write16be(struct regmap_mmio_context *ctx,
+				  unsigned int reg,
+				  unsigned int val)
+{
+	iowrite16be(val, ctx->regs + reg);
+}
+
+static void regmap_mmio_write32be(struct regmap_mmio_context *ctx,
+				  unsigned int reg,
+				  unsigned int val)
+{
+	iowrite32be(val, ctx->regs + reg);
+}
+
 #ifdef CONFIG_64BIT
 static void regmap_mmio_write64le(struct regmap_mmio_context *ctx,
 				  unsigned int reg,
@@ -137,6 +151,18 @@ static unsigned int regmap_mmio_read64le(struct regmap_mmio_context *ctx,
 }
 #endif
 
+static unsigned int regmap_mmio_read16be(struct regmap_mmio_context *ctx,
+				         unsigned int reg)
+{
+	return ioread16be(ctx->regs + reg);
+}
+
+static unsigned int regmap_mmio_read32be(struct regmap_mmio_context *ctx,
+				         unsigned int reg)
+{
+	return ioread32be(ctx->regs + reg);
+}
+
 static int regmap_mmio_read(void *context, unsigned int reg, unsigned int *val)
 {
 	struct regmap_mmio_context *ctx = context;
@@ -158,7 +184,8 @@ static const struct regmap_bus regmap_mmio = {
 	.reg_read = regmap_mmio_read,
 };
 
-static struct regmap_mmio_context *regmap_mmio_gen_context(void __iomem *regs,
+static struct regmap_mmio_context *regmap_mmio_gen_context(struct device_d *dev,
+					void __iomem *regs,
 					const struct regmap_config *config)
 {
 	struct regmap_mmio_context *ctx;
@@ -184,25 +211,58 @@ static struct regmap_mmio_context *regmap_mmio_gen_context(void __iomem *regs,
 	ctx->regs = regs;
 	ctx->val_bytes = config->val_bits / 8;
 
-	switch (config->val_bits) {
-	case 8:
-		ctx->reg_read = regmap_mmio_read8;
-		ctx->reg_write = regmap_mmio_write8;
-		break;
-	case 16:
-		ctx->reg_read = regmap_mmio_read16le;
-		ctx->reg_write = regmap_mmio_write16le;
-		break;
-	case 32:
-		ctx->reg_read = regmap_mmio_read32le;
-		ctx->reg_write = regmap_mmio_write32le;
-		break;
+	switch (regmap_get_val_endian(dev, &regmap_mmio, config)) {
+	case REGMAP_ENDIAN_DEFAULT:
+	case REGMAP_ENDIAN_LITTLE:
+#ifdef __LITTLE_ENDIAN
+	case REGMAP_ENDIAN_NATIVE:
+#endif
+		switch (config->val_bits) {
+		case 8:
+			ctx->reg_read = regmap_mmio_read8;
+			ctx->reg_write = regmap_mmio_write8;
+			break;
+		case 16:
+			ctx->reg_read = regmap_mmio_read16le;
+			ctx->reg_write = regmap_mmio_write16le;
+			break;
+		case 32:
+			ctx->reg_read = regmap_mmio_read32le;
+			ctx->reg_write = regmap_mmio_write32le;
+			break;
 #ifdef CONFIG_64BIT
-	case 64:
-		ctx->reg_read = regmap_mmio_read64le;
-		ctx->reg_write = regmap_mmio_write64le;
+		case 64:
+			ctx->reg_read = regmap_mmio_read64le;
+			ctx->reg_write = regmap_mmio_write64le;
+			break;
+#endif
+		default:
+			ret = -EINVAL;
+			goto err_free;
+		}
 		break;
+	case REGMAP_ENDIAN_BIG:
+#ifdef __BIG_ENDIAN
+	case REGMAP_ENDIAN_NATIVE:
 #endif
+		switch (config->val_bits) {
+		case 8:
+			ctx->reg_read = regmap_mmio_read8;
+			ctx->reg_write = regmap_mmio_write8;
+			break;
+		case 16:
+			ctx->reg_read = regmap_mmio_read16be;
+			ctx->reg_write = regmap_mmio_write16be;
+			break;
+		case 32:
+			ctx->reg_read = regmap_mmio_read32be;
+			ctx->reg_write = regmap_mmio_write32be;
+			break;
+		default:
+			ret = -EINVAL;
+			goto err_free;
+		}
+		break;
 	default:
 		ret = -EINVAL;
 		goto err_free;
@@ -223,7 +283,7 @@ struct regmap *regmap_init_mmio_clk(struct device_d *dev,
 {
 	struct regmap_mmio_context *ctx;
 
-	ctx = regmap_mmio_gen_context(regs, config);
+	ctx = regmap_mmio_gen_context(dev, regs, config);
 	if (IS_ERR(ctx))
 		return ERR_CAST(ctx);
 
@@ -245,7 +305,7 @@ struct regmap *of_regmap_init_mmio_clk(struct device_node *np,
 {
 	struct regmap_mmio_context *ctx;
 
-	ctx = regmap_mmio_gen_context(regs, config);
+	ctx = regmap_mmio_gen_context(NULL, regs, config);
 	if (IS_ERR(ctx))
 		return ERR_CAST(ctx);
 
diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index dc7b4f276f..374d3ea3d6 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -28,6 +28,50 @@
 
 static LIST_HEAD(regmaps);
 
+enum regmap_endian regmap_get_val_endian(struct device_d *dev,
+					 const struct regmap_bus *bus,
+					 const struct regmap_config *config)
+{
+	struct device_node *np;
+	enum regmap_endian endian;
+
+	/* Retrieve the endianness specification from the regmap config */
+	endian = config->val_format_endian;
+
+	/* If the regmap config specified a non-default value, use that */
+	if (endian != REGMAP_ENDIAN_DEFAULT)
+		return endian;
+
+	/* If the dev and dev->device_node exist try to get endianness from DT */
+	if (dev && dev->device_node) {
+		np = dev->device_node;
+
+		/* Parse the device's DT node for an endianness specification */
+		if (of_property_read_bool(np, "big-endian"))
+			endian = REGMAP_ENDIAN_BIG;
+		else if (of_property_read_bool(np, "little-endian"))
+			endian = REGMAP_ENDIAN_LITTLE;
+		else if (of_property_read_bool(np, "native-endian"))
+			endian = REGMAP_ENDIAN_NATIVE;
+
+		/* If the endianness was specified in DT, use that */
+		if (endian != REGMAP_ENDIAN_DEFAULT)
+			return endian;
+	}
+
+	/* Retrieve the endianness specification from the bus config */
+	if (bus && bus->val_format_endian_default)
+		endian = bus->val_format_endian_default;
+
+	/* If the bus specified a non-default value, use that */
+	if (endian != REGMAP_ENDIAN_DEFAULT)
+		return endian;
+
+	/* Use this if no other value was found */
+	return REGMAP_ENDIAN_BIG;
+}
+EXPORT_SYMBOL_GPL(regmap_get_val_endian);
+
 /*
  * regmap_init - initialize and register a regmap
  *
diff --git a/include/regmap.h b/include/regmap.h
index 3bcd9fe038..139ac33ec3 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -2,6 +2,14 @@
 #ifndef __REGMAP_H
 #define __REGMAP_H
 
+enum regmap_endian {
+	/* Unspecified -> 0 -> Backwards compatible default */
+	REGMAP_ENDIAN_DEFAULT = 0,
+	REGMAP_ENDIAN_BIG,
+	REGMAP_ENDIAN_LITTLE,
+	REGMAP_ENDIAN_NATIVE,
+};
+
 /**
  * Configuration for the register map of a device.
  *
@@ -26,6 +34,9 @@ struct regmap_config {
 	int val_bits;
 
 	unsigned int max_register;
+
+	enum regmap_endian reg_format_endian;
+	enum regmap_endian val_format_endian;
 };
 
 typedef int (*regmap_hw_reg_read)(void *context, unsigned int reg,
@@ -36,6 +47,8 @@ typedef int (*regmap_hw_reg_write)(void *context, unsigned int reg,
 struct regmap_bus {
 	regmap_hw_reg_write reg_write;
 	regmap_hw_reg_read reg_read;
+	enum regmap_endian reg_format_endian_default;
+	enum regmap_endian val_format_endian_default;
 };
 
 struct device_d;
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
