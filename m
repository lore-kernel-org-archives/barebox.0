Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43mG-0002eo-AI
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 14:23:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Feb 2020 15:23:02 +0100
Message-Id: <20200218142305.26992-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200218142305.26992-1-a.fatoum@pengutronix.de>
References: <20200218142305.26992-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/6] regmap: add support for regmap_init_mmio_clk
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

regmap-mmio is used in Linux for clocked memory mapped I/O regions.
Port it over, so we can more easily port drivers using it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/Makefile      |   3 +-
 drivers/base/regmap/regmap-mmio.c | 271 ++++++++++++++++++++++++++++++
 include/regmap.h                  |  50 ++++++
 3 files changed, 323 insertions(+), 1 deletion(-)
 create mode 100644 drivers/base/regmap/regmap-mmio.c

diff --git a/drivers/base/regmap/Makefile b/drivers/base/regmap/Makefile
index 4dc3d8c510ae..ab2387037d37 100644
--- a/drivers/base/regmap/Makefile
+++ b/drivers/base/regmap/Makefile
@@ -1 +1,2 @@
-obj-y	+= regmap.o
\ No newline at end of file
+obj-y	+= regmap.o
+obj-y	+= regmap-mmio.o
diff --git a/drivers/base/regmap/regmap-mmio.c b/drivers/base/regmap/regmap-mmio.c
new file mode 100644
index 000000000000..f8d2cda84353
--- /dev/null
+++ b/drivers/base/regmap/regmap-mmio.c
@@ -0,0 +1,271 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Register map access API - MMIO support
+//
+// Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <io.h>
+#include <regmap.h>
+
+#include "internal.h"
+
+struct regmap_mmio_context {
+	void __iomem *regs;
+	unsigned val_bytes;
+
+	struct clk *clk;
+
+	void (*reg_write)(struct regmap_mmio_context *ctx,
+			  unsigned int reg, unsigned int val);
+	unsigned int (*reg_read)(struct regmap_mmio_context *ctx,
+			         unsigned int reg);
+};
+
+static int regmap_mmio_regbits_check(size_t reg_bits)
+{
+	switch (reg_bits) {
+	case 8:
+	case 16:
+	case 32:
+#ifdef CONFIG_64BIT
+	case 64:
+#endif
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int regmap_mmio_get_min_stride(size_t val_bits)
+{
+	int min_stride;
+
+	switch (val_bits) {
+	case 8:
+		/* The core treats 0 as 1 */
+		min_stride = 0;
+		return 0;
+	case 16:
+		min_stride = 2;
+		break;
+	case 32:
+		min_stride = 4;
+		break;
+#ifdef CONFIG_64BIT
+	case 64:
+		min_stride = 8;
+		break;
+#endif
+	default:
+		return -EINVAL;
+	}
+
+	return min_stride;
+}
+
+static void regmap_mmio_write8(struct regmap_mmio_context *ctx,
+				unsigned int reg,
+				unsigned int val)
+{
+	writeb(val, ctx->regs + reg);
+}
+
+static void regmap_mmio_write16le(struct regmap_mmio_context *ctx,
+				  unsigned int reg,
+				  unsigned int val)
+{
+	writew(val, ctx->regs + reg);
+}
+
+static void regmap_mmio_write32le(struct regmap_mmio_context *ctx,
+				  unsigned int reg,
+				  unsigned int val)
+{
+	writel(val, ctx->regs + reg);
+}
+
+#ifdef CONFIG_64BIT
+static void regmap_mmio_write64le(struct regmap_mmio_context *ctx,
+				  unsigned int reg,
+				  unsigned int val)
+{
+	writeq(val, ctx->regs + reg);
+}
+#endif
+
+static int regmap_mmio_write(void *context, unsigned int reg, unsigned int val)
+{
+	struct regmap_mmio_context *ctx = context;
+	int ret;
+
+	ret = clk_enable(ctx->clk);
+	if (ret < 0)
+		return ret;
+
+	ctx->reg_write(ctx, reg, val);
+
+	clk_disable(ctx->clk);
+
+	return 0;
+}
+
+static unsigned int regmap_mmio_read8(struct regmap_mmio_context *ctx,
+				      unsigned int reg)
+{
+	return readb(ctx->regs + reg);
+}
+
+static unsigned int regmap_mmio_read16le(struct regmap_mmio_context *ctx,
+				         unsigned int reg)
+{
+	return readw(ctx->regs + reg);
+}
+
+static unsigned int regmap_mmio_read32le(struct regmap_mmio_context *ctx,
+				         unsigned int reg)
+{
+	return readl(ctx->regs + reg);
+}
+
+#ifdef CONFIG_64BIT
+static unsigned int regmap_mmio_read64le(struct regmap_mmio_context *ctx,
+				         unsigned int reg)
+{
+	return readq(ctx->regs + reg);
+}
+#endif
+
+static int regmap_mmio_read(void *context, unsigned int reg, unsigned int *val)
+{
+	struct regmap_mmio_context *ctx = context;
+	int ret;
+
+	ret = clk_enable(ctx->clk);
+	if (ret < 0)
+		return ret;
+
+	*val = ctx->reg_read(ctx, reg);
+
+	clk_disable(ctx->clk);
+
+	return 0;
+}
+
+static const struct regmap_bus regmap_mmio = {
+	.reg_write = regmap_mmio_write,
+	.reg_read = regmap_mmio_read,
+};
+
+static struct regmap_mmio_context *regmap_mmio_gen_context(void __iomem *regs,
+					const struct regmap_config *config)
+{
+	struct regmap_mmio_context *ctx;
+	int min_stride;
+	int ret;
+
+	ret = regmap_mmio_regbits_check(config->reg_bits);
+	if (ret)
+		return ERR_PTR(ret);
+
+	if (config->pad_bits)
+		return ERR_PTR(-EINVAL);
+
+	min_stride = regmap_mmio_get_min_stride(config->val_bits);
+	if (min_stride < 0)
+		return ERR_PTR(min_stride);
+
+	if (config->reg_stride < min_stride)
+		return ERR_PTR(-EINVAL);
+
+	ctx = xzalloc(sizeof(*ctx));
+
+	ctx->regs = regs;
+	ctx->val_bytes = config->val_bits / 8;
+
+	switch (config->val_bits) {
+	case 8:
+		ctx->reg_read = regmap_mmio_read8;
+		ctx->reg_write = regmap_mmio_write8;
+		break;
+	case 16:
+		ctx->reg_read = regmap_mmio_read16le;
+		ctx->reg_write = regmap_mmio_write16le;
+		break;
+	case 32:
+		ctx->reg_read = regmap_mmio_read32le;
+		ctx->reg_write = regmap_mmio_write32le;
+		break;
+	default:
+		ret = -EINVAL;
+		goto err_free;
+	}
+
+	return ctx;
+
+err_free:
+	kfree(ctx);
+
+	return ERR_PTR(ret);
+}
+
+struct regmap *regmap_init_mmio_clk(struct device_d *dev,
+				    const char *clk_id,
+				    void __iomem *regs,
+				    const struct regmap_config *config)
+{
+	struct regmap_mmio_context *ctx;
+
+	ctx = regmap_mmio_gen_context(regs, config);
+	if (IS_ERR(ctx))
+		return ERR_CAST(ctx);
+
+	if (clk_id) {
+		ctx->clk = clk_get(dev, clk_id);
+		if (IS_ERR(ctx->clk)) {
+			kfree(ctx);
+			return ERR_CAST(ctx->clk);
+		}
+	}
+
+	return regmap_init(dev, &regmap_mmio, ctx, config);
+}
+
+struct regmap *of_regmap_init_mmio_clk(struct device_node *np,
+				       const char *clk_id,
+				       void __iomem *regs,
+				       const struct regmap_config *config)
+{
+	struct regmap_mmio_context *ctx;
+
+	ctx = regmap_mmio_gen_context(regs, config);
+	if (IS_ERR(ctx))
+		return ERR_CAST(ctx);
+
+	if (clk_id) {
+		ctx->clk = of_clk_get_by_name(np, clk_id);
+		if (IS_ERR(ctx->clk)) {
+			kfree(ctx);
+			return ERR_CAST(ctx->clk);
+		}
+	}
+
+	return regmap_init(NULL, &regmap_mmio, ctx, config);
+}
+
+int regmap_mmio_attach_clk(struct regmap *map, struct clk *clk)
+{
+	struct regmap_mmio_context *ctx = map->bus_context;
+
+	ctx->clk = clk;
+
+	return 0;
+}
+
+void regmap_mmio_detach_clk(struct regmap *map)
+{
+	struct regmap_mmio_context *ctx = map->bus_context;
+
+	ctx->clk = NULL;
+}
diff --git a/include/regmap.h b/include/regmap.h
index 049ac0210e43..48ec5b077e3d 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -44,6 +44,56 @@ struct regmap *regmap_init(struct device_d *dev,
 			     const struct regmap_bus *bus,
 			     void *bus_context,
 			     const struct regmap_config *config);
+
+struct clk;
+
+/**
+ * of_regmap_init_mmio_clk() - Initialise register map with register clock
+ *
+ * @np: Device node that will be interacted with
+ * @clk_id: register clock consumer ID
+ * @regs: Pointer to memory-mapped IO region
+ * @config: Configuration for register map
+ *
+ * The return value will be an ERR_PTR() on error or a valid pointer to
+ * a struct regmap.
+ */
+struct regmap *of_regmap_init_mmio_clk(struct device_node *np, const char *clk_id,
+				       void __iomem *regs,
+				       const struct regmap_config *config);
+
+/**
+ * regmap_init_mmio_clk() - Initialise register map with register clock
+ *
+ * @dev: Device that will be interacted with
+ * @clk_id: register clock consumer ID
+ * @regs: Pointer to memory-mapped IO region
+ * @config: Configuration for register map
+ *
+ * The return value will be an ERR_PTR() on error or a valid pointer to
+ * a struct regmap.
+ */
+struct regmap *regmap_init_mmio_clk(struct device_d *dev, const char *clk_id,
+				    void __iomem *regs,
+				    const struct regmap_config *config);
+
+/**
+ * regmap_init_mmio() - Initialise register map
+ *
+ * @dev: Device that will be interacted with
+ * @regs: Pointer to memory-mapped IO region
+ * @config: Configuration for register map
+ *
+ * The return value will be an ERR_PTR() on error or a valid pointer to
+ * a struct regmap.
+ */
+#define regmap_init_mmio(dev, regs, config)		\
+	regmap_init_mmio_clk(dev, NULL, regs, config)
+
+
+int regmap_mmio_attach_clk(struct regmap *map, struct clk *clk);
+void regmap_mmio_detach_clk(struct regmap *map);
+
 void regmap_exit(struct regmap *map);
 
 struct regmap *dev_get_regmap(struct device_d *dev, const char *name);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
