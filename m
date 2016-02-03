Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aR0AV-0004II-LC
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 16:20:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Feb 2016 17:20:10 +0100
Message-Id: <1454516411-22858-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] mfd: mc13xxx: Switch to regmap support
To: Barebox List <barebox@lists.infradead.org>

This moves the mc13xxx driver over to regmap.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/mc13xxx.c | 123 +++++++++++++++++++++-----------------------------
 1 file changed, 52 insertions(+), 71 deletions(-)

diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 0ebfc9e..496fcbb 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -22,6 +22,7 @@
 #include <errno.h>
 #include <malloc.h>
 #include <of.h>
+#include <regmap.h>
 
 #include <i2c/i2c.h>
 #include <spi/spi.h>
@@ -29,15 +30,16 @@
 
 #define DRIVERNAME		"mc13xxx"
 
+#define MC13XXX_NUMREGS		0x3f
+
 struct mc13xxx {
-	struct cdev			cdev;
+	struct device_d			*dev;
+	struct regmap			*map;
 	union {
 		struct i2c_client	*client;
 		struct spi_device	*spi;
 	};
 	int				revision;
-	int				(*reg_read)(struct mc13xxx*, u8, u32*);
-	int				(*reg_write)(struct mc13xxx*, u8, u32);
 };
 
 struct mc13xxx_devtype {
@@ -100,8 +102,9 @@ static int spi_rw(struct spi_device *spi, void * buf, size_t len)
 #define MXC_PMIC_REG_NUM(reg)	(((reg) & 0x3f) << 25)
 #define MXC_PMIC_WRITE		(1 << 31)
 
-static int mc13xxx_spi_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val)
+static int mc13xxx_spi_reg_read(void *ctx, unsigned int reg, unsigned int *val)
 {
+	struct mc13xxx *mc13xxx = ctx;
 	uint32_t buf;
 
 	buf = MXC_PMIC_REG_NUM(reg);
@@ -113,8 +116,9 @@ static int mc13xxx_spi_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val)
 	return 0;
 }
 
-static int mc13xxx_spi_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val)
+static int mc13xxx_spi_reg_write(void *ctx, unsigned int reg, unsigned int val)
 {
+	struct mc13xxx *mc13xxx = ctx;
 	uint32_t buf = MXC_PMIC_REG_NUM(reg) | MXC_PMIC_WRITE | (val & 0xffffff);
 
 	spi_rw(mc13xxx->spi, &buf, 4);
@@ -124,8 +128,9 @@ static int mc13xxx_spi_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val)
 #endif
 
 #ifdef CONFIG_I2C
-static int mc13xxx_i2c_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val)
+static int mc13xxx_i2c_reg_read(void *ctx, unsigned int reg, unsigned int *val)
 {
+	struct mc13xxx *mc13xxx = ctx;
 	u8 buf[3];
 	int ret;
 
@@ -135,8 +140,9 @@ static int mc13xxx_i2c_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val)
 	return ret == 3 ? 0 : ret;
 }
 
-static int mc13xxx_i2c_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val)
+static int mc13xxx_i2c_reg_write(void *ctx, unsigned int reg, unsigned int val)
 {
+	struct mc13xxx *mc13xxx = ctx;
 	u8 buf[] = {
 		val >> 16,
 		val >>  8,
@@ -152,13 +158,13 @@ static int mc13xxx_i2c_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val)
 
 int mc13xxx_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val)
 {
-	return mc13xxx->reg_write(mc13xxx, reg, val);
+	return regmap_write(mc13xxx->map, reg, val);
 }
 EXPORT_SYMBOL(mc13xxx_reg_write);
 
 int mc13xxx_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val)
 {
-	return mc13xxx->reg_read(mc13xxx, reg, val);
+	return regmap_read(mc13xxx->map, reg, val);
 }
 EXPORT_SYMBOL(mc13xxx_reg_read);
 
@@ -177,54 +183,6 @@ int mc13xxx_set_bits(struct mc13xxx *mc13xxx, u8 reg, u32 mask, u32 val)
 }
 EXPORT_SYMBOL(mc13xxx_set_bits);
 
-static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
-{
-	struct mc13xxx *mc13xxx = to_mc13xxx(cdev);
-	u32 *buf = _buf;
-	size_t i = count >> 2;
-	int err;
-
-	offset >>= 2;
-
-	while (i) {
-		err = mc13xxx_reg_read(mc13xxx, offset, buf);
-		if (err)
-			return (ssize_t)err;
-		buf++;
-		i--;
-		offset++;
-	}
-
-	return count;
-}
-
-static ssize_t mc_write(struct cdev *cdev, const void *_buf, size_t count, loff_t offset, ulong flags)
-{
-	struct mc13xxx *mc13xxx = to_mc13xxx(cdev);
-	const u32 *buf = _buf;
-	size_t i = count >> 2;
-	int err;
-
-	offset >>= 2;
-
-	while (i) {
-		err = mc13xxx_reg_write(mc13xxx, offset, *buf);
-		if (err)
-			return (ssize_t)err;
-		buf++;
-		i--;
-		offset++;
-	}
-
-	return count;
-}
-
-static struct file_operations mc_fops = {
-	.lseek	= dev_lseek_default,
-	.read	= mc_read,
-	.write	= mc_write,
-};
-
 static int __init mc13783_revision(struct mc13xxx *mc13xxx)
 {
 	unsigned int rev_id;
@@ -245,7 +203,7 @@ static int __init mc13783_revision(struct mc13xxx *mc13xxx)
 	} else
 		sprintf(revstr, "%d.%d", rev / 0x10, rev % 10);
 
-	dev_info(mc_dev->cdev.dev, "Found MC13783 ID: 0x%06x [Rev: %s]\n",
+	dev_info(mc_dev->dev, "Found MC13783 ID: 0x%06x [Rev: %s]\n",
 		 rev_id, revstr);
 
 	return rev;
@@ -297,7 +255,7 @@ static int __init mc13892_revision(struct mc13xxx *mc13xxx)
 		}
 	}
 
-	dev_info(mc_dev->cdev.dev, "Found MC13892 ID: 0x%06x [Rev: %s]\n",
+	dev_info(mc_dev->dev, "Found MC13892 ID: 0x%06x [Rev: %s]\n",
 		 rev_id, revstr);
 
 	return rev;
@@ -312,11 +270,34 @@ static int __init mc34708_revision(struct mc13xxx *mc13xxx)
 	if (rev_id > 0xfff)
 		return -ENODEV;
 
-	dev_info(mc_dev->cdev.dev, "Found MC34708 ID: 0x%03x\n", rev_id);
+	dev_info(mc_dev->dev, "Found MC34708 ID: 0x%03x\n", rev_id);
 
 	return (int)rev_id;
 }
 
+static struct regmap_bus regmap_mc13xxx_spi_bus = {
+	.reg_write = mc13xxx_spi_reg_write,
+	.reg_read = mc13xxx_spi_reg_read,
+};
+
+static const struct regmap_config mc13xxx_regmap_spi_config = {
+	.reg_bits = 7,
+	.pad_bits = 1,
+	.val_bits = 24,
+	.max_register = MC13XXX_NUMREGS,
+};
+
+static struct regmap_bus regmap_mc13xxx_i2c_bus = {
+	.reg_write = mc13xxx_i2c_reg_write,
+	.reg_read = mc13xxx_i2c_reg_read,
+};
+
+static const struct regmap_config mc13xxx_regmap_i2c_config = {
+	.reg_bits = 8,
+	.val_bits = 24,
+	.max_register = MC13XXX_NUMREGS,
+};
+
 static int __init mc13xxx_probe(struct device_d *dev)
 {
 	struct mc13xxx_devtype *devtype;
@@ -330,13 +311,14 @@ static int __init mc13xxx_probe(struct device_d *dev)
 		return ret;
 
 	mc_dev = xzalloc(sizeof(*mc_dev));
-	mc_dev->cdev.name = DRIVERNAME;
+	mc_dev->dev = dev;
 
 #ifdef CONFIG_I2C
 	if (dev->bus == &i2c_bus) {
 		mc_dev->client = to_i2c_client(dev);
-		mc_dev->reg_read = mc13xxx_i2c_reg_read;
-		mc_dev->reg_write = mc13xxx_i2c_reg_write;
+
+		mc_dev->map = regmap_init(dev, &regmap_mc13xxx_i2c_bus,
+			     mc_dev, &mc13xxx_regmap_i2c_config);
 	}
 #endif
 #ifdef CONFIG_SPI
@@ -345,25 +327,24 @@ static int __init mc13xxx_probe(struct device_d *dev)
 		mc_dev->spi->mode = SPI_MODE_0 | SPI_CS_HIGH;
 		mc_dev->spi->bits_per_word = 32;
 		mc_dev->spi->max_speed_hz = 20000000;
-		mc_dev->reg_read = mc13xxx_spi_reg_read;
-		mc_dev->reg_write = mc13xxx_spi_reg_write;
+		mc_dev->map = regmap_init(dev, &regmap_mc13xxx_spi_bus,
+			     mc_dev, &mc13xxx_regmap_spi_config);
 	}
 #endif
 
-	mc_dev->cdev.size = 256;
-	mc_dev->cdev.dev = dev;
-	mc_dev->cdev.ops = &mc_fops;
-
 	rev = devtype->revision(mc_dev);
 	if (rev < 0) {
-		dev_err(mc_dev->cdev.dev, "No PMIC detected.\n");
+		dev_err(mc_dev->dev, "No PMIC detected.\n");
 		free(mc_dev);
 		mc_dev = NULL;
 		return rev;
 	}
 
 	mc_dev->revision = rev;
-	devfs_create(&mc_dev->cdev);
+
+	ret = regmap_register_cdev(mc_dev->map, NULL);
+	if (ret)
+		return ret;
 
 	if (mc13xxx_init_callback)
 		mc13xxx_init_callback(mc_dev);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
