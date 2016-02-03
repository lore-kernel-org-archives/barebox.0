Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aR0AV-0004IG-LF
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 16:20:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Feb 2016 17:20:11 +0100
Message-Id: <1454516411-22858-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454516411-22858-1-git-send-email-s.hauer@pengutronix.de>
References: <1454516411-22858-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: i.MX ocotp: Switch to regmap support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/ocotp.c | 146 ++++++++++++++++++----------------------------
 1 file changed, 57 insertions(+), 89 deletions(-)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index c99a003..c6c341d 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -26,6 +26,7 @@
 #include <io.h>
 #include <of.h>
 #include <clock.h>
+#include <regmap.h>
 #include <linux/clk.h>
 
 /*
@@ -71,7 +72,7 @@
 #define MAC_BYTES			8
 
 struct ocotp_priv {
-	struct cdev cdev;
+	struct regmap *map;
 	void __iomem *base;
 	struct clk *clk;
 	struct device_d dev;
@@ -159,53 +160,42 @@ int imx6_ocotp_read_one_u32(u32 index, u32 *pdata, struct ocotp_priv *priv)
 
 	ret = imx6_ocotp_prepare(priv);
 	if (ret) {
-		dev_err(priv->cdev.dev, "failed to prepare read fuse 0x%08x\n",
+		dev_err(&priv->dev, "failed to prepare read fuse 0x%08x\n",
 				index);
 		return ret;
 	}
 
 	ret = fuse_read_addr(index, pdata, priv);
 	if (ret) {
-		dev_err(priv->cdev.dev, "failed to read fuse 0x%08x\n", index);
+		dev_err(&priv->dev, "failed to read fuse 0x%08x\n", index);
 		return ret;
 	}
 
 	if (readl(priv->base) & OCOTP_CTRL_ERROR) {
-		dev_err(priv->cdev.dev, "bad read status at fuse 0x%08x\n", index);
+		dev_err(&priv->dev, "bad read status at fuse 0x%08x\n", index);
 		return -EFAULT;
 	}
 
 	return 0;
 }
 
-static ssize_t imx6_ocotp_cdev_read(struct cdev *cdev, void *buf,
-		size_t count, loff_t offset, unsigned long flags)
+static int imx_ocotp_reg_read(void *ctx, unsigned int reg, unsigned int *val)
 {
+	struct ocotp_priv *priv = ctx;
 	u32 index;
-	ssize_t read_count = 0;
-	int ret, i;
-	struct ocotp_priv *priv = container_of(cdev, struct ocotp_priv, cdev);
-
-	index = offset >> 2;
-	count >>= 2;
-
-	if (count > (FUSE_REGS_COUNT - index))
-		count = FUSE_REGS_COUNT - index - 1;
-
-	for (i = index; i < (index + count); i++) {
-		if (priv->sense_enable) {
-			ret = imx6_ocotp_read_one_u32(i, buf, priv);
-			if (ret)
-				return ret;
-		} else {
-			*(u32 *)buf = readl(priv->base + 0x400 + i * 0x10);
-		}
+	int ret;
 
-		buf += 4;
-		read_count++;
+	index = reg >> 2;
+
+	if (priv->sense_enable) {
+		ret = imx6_ocotp_read_one_u32(index, val, priv);
+		if (ret)
+			return ret;
+	} else {
+		*(u32 *)val = readl(priv->base + 0x400 + index * 0x10);
 	}
 
-	return read_count << 2;
+	return 0;
 }
 
 static int fuse_blow_addr(u32 addr, u32 value, struct ocotp_priv *priv)
@@ -232,7 +222,7 @@ static int fuse_blow_addr(u32 addr, u32 value, struct ocotp_priv *priv)
 
 static int imx6_ocotp_reload_shadow(struct ocotp_priv *priv)
 {
-	dev_info(priv->cdev.dev, "reloading shadow registers...\n");
+	dev_info(&priv->dev, "reloading shadow registers...\n");
 	writel(OCOTP_CTRL_RELOAD_SHADOWS, priv->base + OCOTP_CTRL_SET);
 	udelay(1);
 
@@ -246,18 +236,18 @@ int imx6_ocotp_blow_one_u32(u32 index, u32 data, u32 *pfused_value,
 
 	ret = imx6_ocotp_prepare(priv);
 	if (ret) {
-		dev_err(priv->cdev.dev, "prepare to write failed\n");
+		dev_err(&priv->dev, "prepare to write failed\n");
 		return ret;
 	}
 
 	ret = fuse_blow_addr(index, data, priv);
 	if (ret) {
-		dev_err(priv->cdev.dev, "fuse blow failed\n");
+		dev_err(&priv->dev, "fuse blow failed\n");
 		return ret;
 	}
 
 	if (readl(priv->base) & OCOTP_CTRL_ERROR) {
-		dev_err(priv->cdev.dev, "bad write status\n");
+		dev_err(&priv->dev, "bad write status\n");
 		return -EFAULT;
 	}
 
@@ -266,60 +256,29 @@ int imx6_ocotp_blow_one_u32(u32 index, u32 data, u32 *pfused_value,
 	return ret;
 }
 
-static ssize_t imx6_ocotp_cdev_write(struct cdev *cdev, const void *buf,
-		size_t count, loff_t offset, unsigned long flags)
+static int imx_ocotp_reg_write(void *ctx, unsigned int reg, unsigned int val)
 {
-	struct ocotp_priv *priv = cdev->priv;
-	int index, i;
-	ssize_t write_count = 0;
-	const u32 *data;
+	struct ocotp_priv *priv = ctx;
+	int index;
 	u32 pfuse;
 	int ret;
 
-	/* We could do better, but currently this is what's implemented */
-	if (offset & 0x3 || count & 0x3) {
-		dev_err(cdev->dev, "only u32 aligned writes allowed\n");
-		return -EINVAL;
-	}
-
-	index = offset >> 2;
-	count >>= 2;
-
-	if (count > (FUSE_REGS_COUNT - index))
-		count = FUSE_REGS_COUNT - index - 1;
+	index = reg >> 2;
 
-	data = buf;
-
-	for (i = index; i < (index + count); i++) {
-		if (priv->permanent_write_enable) {
-			ret = imx6_ocotp_blow_one_u32(i, *data,
-					&pfuse, priv);
-			if (ret < 0) {
-				goto out;
-			}
-		} else {
-			writel(*data, priv->base + 0x400 + i * 0x10);
-		}
-
-		data++;
-		write_count++;
+	if (priv->permanent_write_enable) {
+		ret = imx6_ocotp_blow_one_u32(index, val, &pfuse, priv);
+		if (ret < 0)
+			return ret;
+	} else {
+		writel(val, priv->base + 0x400 + index * 0x10);
 	}
 
-	ret = 0;
-
-out:
 	if (priv->permanent_write_enable)
 		imx6_ocotp_reload_shadow(priv);
 
-	return ret < 0 ? ret : (write_count << 2);
+	return 0;
 }
 
-static struct file_operations imx6_ocotp_ops = {
-	.read	= imx6_ocotp_cdev_read,
-	.write	= imx6_ocotp_cdev_write,
-	.lseek	= dev_lseek_default,
-};
-
 static uint32_t inc_offset(uint32_t offset)
 {
 	if ((offset & 0x3) == 0x3)
@@ -373,9 +332,11 @@ static int imx_ocotp_get_mac(struct param_d *param, void *priv)
 {
 	struct ocotp_priv *ocotp_priv = priv;
 	char buf[8];
-	int i;
+	int i, ret;
 
-	imx6_ocotp_cdev_read(&ocotp_priv->cdev, buf, MAC_BYTES, MAC_OFFSET, 0);
+	ret = regmap_bulk_read(ocotp_priv->map, MAC_OFFSET, buf, MAC_BYTES);
+	if (ret < 0)
+		return ret;
 
 	for (i = 0; i < 6; i++)
 		ocotp_priv->ethaddr[i] = buf[5 - i];
@@ -393,18 +354,29 @@ static int imx_ocotp_set_mac(struct param_d *param, void *priv)
 		buf[5 - i] = ocotp_priv->ethaddr[i];
 	buf[6] = 0; buf[7] = 0;
 
-	ret = imx6_ocotp_cdev_write(&ocotp_priv->cdev, buf, MAC_BYTES, MAC_OFFSET, 0);
+	ret = regmap_bulk_write(ocotp_priv->map, MAC_OFFSET, buf, MAC_BYTES);
 	if (ret < 0)
 		return ret;
 
 	return 0;
 }
 
+static struct regmap_bus imx_ocotp_regmap_bus = {
+	.reg_write = imx_ocotp_reg_write,
+	.reg_read = imx_ocotp_reg_read,
+};
+
+static const struct regmap_config imx_ocotp_regmap_config = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.max_register = 0xbc,
+};
+
 static int imx_ocotp_probe(struct device_d *dev)
 {
 	void __iomem *base;
 	struct ocotp_priv *priv;
-	struct cdev *cdev;
 	int ret = 0;
 
 	base = dev_request_mem_region(dev, 0);
@@ -420,22 +392,18 @@ static int imx_ocotp_probe(struct device_d *dev)
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
 
-	cdev		= &priv->cdev;
-	cdev->dev	= dev;
-	cdev->ops	= &imx6_ocotp_ops;
-	cdev->priv	= priv;
-	cdev->size	= 192;
-	cdev->name	= "imx-ocotp";
-
-	ret = devfs_create(cdev);
-
-	if (ret < 0)
-		return ret;
-
 	strcpy(priv->dev.name, "ocotp");
 	priv->dev.parent = dev;
 	register_device(&priv->dev);
 
+	priv->map = regmap_init(dev, &imx_ocotp_regmap_bus, priv, &imx_ocotp_regmap_config);
+	if (IS_ERR(priv->map))
+		return PTR_ERR(priv->map);
+
+	ret = regmap_register_cdev(priv->map, "imx-ocotp");
+        if (ret)
+                return ret;
+
 	if (IS_ENABLED(CONFIG_IMX_OCOTP_WRITE)) {
 		dev_add_param_bool(&(priv->dev), "permanent_write_enable",
 				NULL, NULL, &priv->permanent_write_enable, NULL);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
