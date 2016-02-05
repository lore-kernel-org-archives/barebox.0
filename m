Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aRb4p-0007xO-Hm
 for barebox@lists.infradead.org; Fri, 05 Feb 2016 07:45:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Feb 2016 08:44:47 +0100
Message-Id: <1454658287-8726-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: iim: Switch to regmap support
To: Barebox List <barebox@lists.infradead.org>

To provide consumers easier access to the IIM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 121 +++++++++++++++++++++++++-----------------------
 1 file changed, 62 insertions(+), 59 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index c5751fe..ecbe5d5 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -26,6 +26,7 @@
 #include <malloc.h>
 #include <of.h>
 #include <io.h>
+#include <regmap.h>
 #include <regulator.h>
 #include <linux/err.h>
 
@@ -40,14 +41,13 @@
 struct iim_priv;
 
 struct iim_bank {
-	struct cdev cdev;
+	struct regmap *map;
 	void __iomem *bankbase;
 	int bank;
 	struct iim_priv *iim;
 };
 
 struct iim_priv {
-	struct cdev cdev;
 	struct device_d dev;
 	void __iomem *base;
 	void __iomem *bankbase;
@@ -102,34 +102,28 @@ static int imx_iim_fuse_sense(struct iim_bank *bank, unsigned int row)
 	return readb(reg_base + IIM_SDAT);
 }
 
-static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t count,
-		loff_t offset, ulong flags)
+static int imx_iim_reg_read(void *ctx, unsigned int reg, unsigned int *val)
 {
-	ulong size, i;
-	struct iim_bank *bank = container_of(cdev, struct iim_bank, cdev);
+	struct iim_bank *bank = ctx;
 
-	size = min((loff_t)count, 32 - offset);
 	if (bank->iim->sense_enable) {
-		for (i = 0; i < size; i++) {
-			int row_val;
-
-			row_val = imx_iim_fuse_sense(bank, offset + i);
-			if (row_val < 0)
-				return row_val;
-			((u8 *)buf)[i] = (u8)row_val;
-		}
+		int row_val;
+		row_val = imx_iim_fuse_sense(bank, reg);
+		if (row_val < 0)
+			return row_val;
+		*val = (u8)row_val;
 	} else {
-		for (i = 0; i < size; i++)
-			((u8 *)buf)[i] = ((u8 *)bank->bankbase)[(offset+i)*4];
+		*val = readl(bank->bankbase + reg * 4);
 	}
 
-	return size;
+	return 0;
 }
 
 int imx_iim_read(unsigned int banknum, int offset, void *buf, int count)
 {
 	struct iim_priv *iim = imx_iim;
 	struct iim_bank *bank;
+	int ret;
 
 	if (!imx_iim)
 		return -ENODEV;
@@ -139,7 +133,11 @@ int imx_iim_read(unsigned int banknum, int offset, void *buf, int count)
 
 	bank = iim->bank[banknum];
 
-	return imx_iim_cdev_read(&bank->cdev, buf, count, offset, 0);
+	ret = regmap_bulk_read(bank->map, offset, buf, count);
+	if (ret)
+		return ret;
+
+	return count;
 }
 
 static int imx_iim_fuse_blow_one(struct iim_bank *bank, unsigned int row, u8 value)
@@ -198,11 +196,10 @@ out:
 	return ret;
 }
 
-static int imx_iim_fuse_blow(struct iim_bank *bank, unsigned offset, const void *buf,
-		unsigned size)
+static int imx_iim_fuse_blow(struct iim_bank *bank, unsigned offset, unsigned val)
 {
 	struct iim_priv *iim = bank->iim;
-	int ret, i;
+	int ret;
 
 	if (IS_ERR(iim->fuse_supply)) {
 		iim->fuse_supply = regulator_get(iim->dev.parent, "vdd-fuse");
@@ -218,11 +215,9 @@ static int imx_iim_fuse_blow(struct iim_bank *bank, unsigned offset, const void
 	if (iim->supply)
 		iim->supply(1);
 
-	for (i = 0; i < size; i++) {
-		ret = imx_iim_fuse_blow_one(bank, offset + i, ((u8 *)buf)[i]);
-		if (ret < 0)
-			goto err_out;
-	}
+	ret = imx_iim_fuse_blow_one(bank, offset, val);
+	if (ret < 0)
+		goto err_out;
 
 	if (iim->supply)
 		iim->supply(0);
@@ -235,52 +230,61 @@ err_out:
 	return ret;
 }
 
-static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t count,
-		loff_t offset, ulong flags)
+static ssize_t imx_iim_reg_write(void *ctx, unsigned int reg, unsigned int val)
 {
-	ulong size, i;
-	struct iim_bank *bank = container_of(cdev, struct iim_bank, cdev);
-
-	size = min((loff_t)count, 32 - offset);
+	struct iim_bank *bank = ctx;
 
-	if (IS_ENABLED(CONFIG_IMX_IIM_FUSE_BLOW) && bank->iim->write_enable) {
-		return imx_iim_fuse_blow(bank, offset, buf, size);
-	} else {
-		for (i = 0; i < size; i++)
-			((u8 *)bank->bankbase)[(offset+i)*4] = ((u8 *)buf)[i];
-	}
+	if (IS_ENABLED(CONFIG_IMX_IIM_FUSE_BLOW) && bank->iim->write_enable)
+		return imx_iim_fuse_blow(bank, reg, val);
+	else
+		writel(val, bank->bankbase + reg * 4);
 
-	return size;
+	return 0;
 }
 
-static struct file_operations imx_iim_ops = {
-	.read	= imx_iim_cdev_read,
-	.write	= imx_iim_cdev_write,
-	.lseek	= dev_lseek_default,
+static struct regmap_bus imx_iim_regmap_bus = {
+	.reg_write = imx_iim_reg_write,
+	.reg_read = imx_iim_reg_read,
+};
+
+static const struct regmap_config imx_iim_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.reg_stride = 1,
+	.max_register = 31,
 };
 
 static int imx_iim_add_bank(struct iim_priv *iim, int num)
 {
 	struct iim_bank *bank;
-	struct cdev *cdev;
+	char *name;
+	int ret;
 
 	bank = xzalloc(sizeof (*bank));
 
 	bank->bankbase	= iim->base + 0x800 + 0x400 * num;
 	bank->bank	= num;
 	bank->iim	= iim;
-	cdev = &bank->cdev;
-	cdev->ops	= &imx_iim_ops;
-	cdev->size	= 32;
-	cdev->name	= asprintf(DRIVERNAME "_bank%d", num);
-	if (cdev->name == NULL)
-		return -ENOMEM;
 
 	iim->bank[num] = bank;
 
-	return devfs_create(cdev);
+	bank->map = regmap_init(&iim->dev, &imx_iim_regmap_bus, bank, &imx_iim_regmap_config);
+	if (IS_ERR(bank->map))
+		return PTR_ERR(bank->map);
+
+	name = xasprintf(DRIVERNAME "_bank%d", num);
+
+	ret = regmap_register_cdev(bank->map, name);
+
+	free(name);
+
+	if (ret)
+		return ret;
+
+	return 0;
 }
 
+
 #if IS_ENABLED(CONFIG_OFDEVICE)
 
 #define MAC_BYTES	6
@@ -297,7 +301,7 @@ static int imx_iim_get_mac(struct param_d *param, void *priv)
 	struct iim_bank *bank = iimmac->bank;
 	int ret;
 
-	ret = imx_iim_cdev_read(&bank->cdev, iimmac->ethaddr, MAC_BYTES, iimmac->offset, 0);
+	ret = regmap_bulk_read(bank->map, iimmac->offset, iimmac->ethaddr, MAC_BYTES);
 	if (ret < 0)
 		return ret;
 
@@ -310,7 +314,7 @@ static int imx_iim_set_mac(struct param_d *param, void *priv)
 	struct iim_bank *bank = iimmac->bank;
 	int ret;
 
-	ret = imx_iim_cdev_write(&bank->cdev, iimmac->ethaddr, MAC_BYTES, iimmac->offset, 0);
+	ret = regmap_bulk_write(bank->map, iimmac->offset, iimmac->ethaddr, MAC_BYTES);
 	if (ret < 0)
 		return ret;
 
@@ -364,12 +368,11 @@ static void imx_iim_init_dt(struct device_d *dev, struct iim_priv *iim)
 		bank = be32_to_cpup(prop++);
 		offset = be32_to_cpup(prop++);
 
-		ret = imx_iim_read(bank, offset, mac, 6);
-		if (ret == 6) {
-			of_eth_register_ethaddr(rnode, mac);
-		} else {
+		ret = regmap_bulk_read(iim->bank[bank]->map, offset, mac, MAC_BYTES);
+		if (ret)
 			dev_err(dev, "cannot read: %s\n", strerror(-ret));
-		}
+		else
+			of_eth_register_ethaddr(rnode, mac);
 
 		if (IS_ENABLED(CONFIG_NET))
 			imx_iim_add_mac_param(iim, macnum, bank, offset);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
