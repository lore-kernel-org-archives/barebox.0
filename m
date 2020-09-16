Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIXrd-00088T-By
 for barebox@lists.infradead.org; Wed, 16 Sep 2020 13:52:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Sep 2020 15:50:34 +0200
Message-Id: <20200916135035.7089-10-a.fatoum@pengutronix.de>
In-Reply-To: <20200916135035.7089-1-a.fatoum@pengutronix.de>
References: <20200916135035.7089-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 09/10] power: reset: syscon-reboot-mode: support multi-word
 reboot modes
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

SoCs like the i.MX6 have their BootROM consult two distinct 32-bit
registers to determine the reboot mode. Extend the driver to support
this. While backwards compatible, this is not so far supported by the
upstream binding, which is why a new barebox,syscon-reboot-mode is
introduced. This new compatible be inhibit used to inhibit fixup
into a kernel device tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/power/reset/syscon-reboot-mode.c | 91 +++++++++++++++++-------
 1 file changed, 65 insertions(+), 26 deletions(-)

diff --git a/drivers/power/reset/syscon-reboot-mode.c b/drivers/power/reset/syscon-reboot-mode.c
index bd4f1a3d04b0..0cbc9d0803ff 100644
--- a/drivers/power/reset/syscon-reboot-mode.c
+++ b/drivers/power/reset/syscon-reboot-mode.c
@@ -10,75 +10,114 @@
 #include <regmap.h>
 #include <mfd/syscon.h>
 #include <linux/reboot-mode.h>
+#include <linux/overflow.h>
+
+struct mode_reg {
+	u32 offset;
+	u32 mask;
+};
 
 struct syscon_reboot_mode {
 	struct regmap *map;
 	struct reboot_mode_driver reboot;
-	u32 offset;
-	u32 mask;
+	struct mode_reg reg[];
 };
 
 static int syscon_reboot_mode_write(struct reboot_mode_driver *reboot,
 				    const u32 *magic)
 {
 	struct syscon_reboot_mode *syscon_rbm;
-	int ret;
+	size_t i;
+	int ret = 0;
 
 	syscon_rbm = container_of(reboot, struct syscon_reboot_mode, reboot);
 
-	ret = regmap_update_bits(syscon_rbm->map, syscon_rbm->offset,
-				 syscon_rbm->mask, *magic);
-	if (ret < 0)
-		dev_err(reboot->dev, "update reboot mode bits failed\n");
+	for (i = 0; i < reboot->nelems; i++) {
+		struct mode_reg *reg = &syscon_rbm->reg[i];
+
+		ret = regmap_update_bits(syscon_rbm->map, reg->offset,
+					 reg->mask, *magic++);
+		if (ret < 0) {
+			dev_err(reboot->dev, "update reboot mode bits failed\n");
+			break;
+		}
+	}
 
 	return ret;
 }
 
 static int syscon_reboot_mode_probe(struct device_d *dev)
 {
-	int ret;
+	int ret, i, nelems;
 	struct syscon_reboot_mode *syscon_rbm;
+	struct reboot_mode_driver *reboot_template;
 	struct device_node *np = dev->device_node;
-	size_t nelems;
-	u32 magic;
+	u32 *magic;
 
 	nelems = of_property_count_elems_of_size(np, "offset", sizeof(__be32));
-	if (nelems != 1)
+	if (nelems <= 0)
 		return -EINVAL;
 
-	syscon_rbm = xzalloc(sizeof(*syscon_rbm));
+	syscon_rbm = xzalloc(struct_size(syscon_rbm, reg, nelems));
+
+	ret = dev_get_drvdata(dev, (const void **)&reboot_template);
+	if (ret)
+		return ret;
 
+	syscon_rbm->reboot = *reboot_template;
 	syscon_rbm->reboot.dev = dev;
-	syscon_rbm->reboot.write = syscon_reboot_mode_write;
-	syscon_rbm->mask = 0xffffffff;
 
 	syscon_rbm->map = syscon_node_to_regmap(dev->parent->device_node);
 	if (IS_ERR(syscon_rbm->map))
 		return PTR_ERR(syscon_rbm->map);
 
-	if (of_property_read_u32(np, "offset", &syscon_rbm->offset))
-		return -EINVAL;
+	magic = xzalloc(nelems * sizeof(*magic));
 
-	of_property_read_u32(np, "mask", &syscon_rbm->mask);
+	for (i = 0; i < nelems; i++) {
+		struct mode_reg *reg = &syscon_rbm->reg[i];
 
-	ret = regmap_read(syscon_rbm->map, syscon_rbm->offset, &magic);
-	if (ret) {
-		dev_err(dev, "error reading reboot mode: %s\n",
-			strerror(-ret));
-		return ret;
-	}
+		ret = of_property_read_u32_index(np, "offset", i, &reg->offset);
+		if (ret)
+			goto free_magic;
 
-	magic &= syscon_rbm->mask;
+		reg->mask = 0xffffffff;
+		of_property_read_u32_index(np, "mask", i, &reg->mask);
+
+		ret = regmap_read(syscon_rbm->map, reg->offset, &magic[i]);
+		if (ret) {
+			dev_err(dev, "error reading reboot mode: %s\n",
+				strerror(-ret));
+			goto free_magic;
+		}
+
+		magic[i] &= reg->mask;
+	}
 
-	ret = reboot_mode_register(&syscon_rbm->reboot, &magic, 1);
+	ret = reboot_mode_register(&syscon_rbm->reboot, magic, nelems);
 	if (ret)
 		dev_err(dev, "can't register reboot mode\n");
 
+free_magic:
+	free(magic);
 	return ret;
+
 }
 
+static struct reboot_mode_driver reboot_fixup  = {
+	.write = syscon_reboot_mode_write,
+	.priority = 100,
+	.no_fixup = false,
+};
+
+static struct reboot_mode_driver reboot_nofixup  = {
+	.write = syscon_reboot_mode_write,
+	.priority = 50,
+	.no_fixup = true,
+};
+
 static const struct of_device_id syscon_reboot_mode_of_match[] = {
-	{ .compatible = "syscon-reboot-mode" },
+	{ .compatible = "syscon-reboot-mode", .data = &reboot_fixup },
+	{ .compatible = "barebox,syscon-reboot-mode", .data = &reboot_nofixup },
 	{ /* sentinel */ }
 };
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
