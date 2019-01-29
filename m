Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJo-00057D-IS
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:40 +0000
Received: by mail-pf1-x442.google.com with SMTP id q1so9233525pfi.5
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:24 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:39 -0800
Message-Id: <20190129065549.29161-10-andrew.smirnov@gmail.com>
In-Reply-To: <20190129065549.29161-1-andrew.smirnov@gmail.com>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 09/19] devfs: Drop dev_lseek_default()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Only the following cdevs do not declare an .lseek() operation:

  - Console devices in common/console.c
  - Firmware framework in common/firmware.c
  - JTAG driver in drivers/misc/jtag.c
  - UBI in drivers/mtd/ubi/barebox.c

Of those four, first two are marked DEVFS_IS_CHARACTER_DEV and
implement only .write() operation and the last two don't implement
anything but .ioctl(). While there's probably no meaningful way to use
lseek() against any of those devices, there doesn't seem to be any
harm in allowing it either.

Change devfs_lseek() to ignore absense of .lseek() callback and drop
dev_lseek_default() and all references to it in the codebase.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-mxs/ocotp.c     | 1 -
 arch/sandbox/board/hostfile.c | 1 -
 commands/stddev.c             | 4 ----
 common/block.c                | 1 -
 drivers/base/regmap/regmap.c  | 1 -
 drivers/eeprom/at24.c         | 1 -
 drivers/eeprom/at25.c         | 1 -
 drivers/hw_random/core.c      | 1 -
 drivers/mfd/act8846.c         | 1 -
 drivers/mfd/lp3972.c          | 1 -
 drivers/mfd/mc34704.c         | 1 -
 drivers/mfd/mc9sdz60.c        | 1 -
 drivers/mfd/stmpe-i2c.c       | 1 -
 drivers/mfd/twl-core.c        | 1 -
 drivers/misc/mem.c            | 1 -
 drivers/misc/sram.c           | 1 -
 drivers/mtd/core.c            | 1 -
 drivers/mtd/mtdoob.c          | 1 -
 drivers/mtd/mtdraw.c          | 1 -
 drivers/net/e1000/eeprom.c    | 2 --
 drivers/net/ksz8864rmn.c      | 1 -
 drivers/net/phy/mdio_bus.c    | 1 -
 drivers/nvmem/core.c          | 1 -
 drivers/video/fb.c            | 1 -
 drivers/w1/slaves/w1_ds2431.c | 1 -
 drivers/w1/slaves/w1_ds2433.c | 1 -
 fs/devfs-core.c               | 1 -
 fs/devfs.c                    | 2 --
 include/driver.h              | 5 -----
 29 files changed, 38 deletions(-)

diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index 01db73116..f230d9ad8 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -174,7 +174,6 @@ free_mem:
 
 static struct cdev_operations mxs_ocotp_ops = {
 	.read	= mxs_ocotp_cdev_read,
-	.lseek	= dev_lseek_default,
 };
 
 static int mxs_ocotp_probe(struct device_d *dev)
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 3fc150379..745f078d1 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -67,7 +67,6 @@ static void hf_info(struct device_d *dev)
 static struct cdev_operations hf_fops = {
 	.read  = hf_read,
 	.write = hf_write,
-	.lseek = dev_lseek_default,
 };
 
 static int hf_probe(struct device_d *dev)
diff --git a/commands/stddev.c b/commands/stddev.c
index 4d1b6f510..2b3d084c8 100644
--- a/commands/stddev.c
+++ b/commands/stddev.c
@@ -27,7 +27,6 @@ static ssize_t zero_read(struct cdev *cdev, void *buf, size_t count, loff_t offs
 
 static struct cdev_operations zeroops = {
 	.read  = zero_read,
-	.lseek = dev_lseek_default,
 };
 
 static int zero_init(void)
@@ -55,7 +54,6 @@ static ssize_t full_read(struct cdev *cdev, void *buf, size_t count, loff_t offs
 
 static struct cdev_operations fullops = {
 	.read  = full_read,
-	.lseek = dev_lseek_default,
 };
 
 static int full_init(void)
@@ -82,7 +80,6 @@ static ssize_t null_write(struct cdev *cdev, const void *buf, size_t count, loff
 
 static struct cdev_operations nullops = {
 	.write = null_write,
-	.lseek = dev_lseek_default,
 };
 
 static int null_init(void)
@@ -110,7 +107,6 @@ static ssize_t prng_read(struct cdev *cdev, void *buf, size_t count, loff_t offs
 
 static struct cdev_operations prngops = {
 	.read  = prng_read,
-	.lseek = dev_lseek_default,
 };
 
 static int prng_init(void)
diff --git a/common/block.c b/common/block.c
index 291721876..97cf5dc4d 100644
--- a/common/block.c
+++ b/common/block.c
@@ -349,7 +349,6 @@ static struct cdev_operations block_ops = {
 #endif
 	.close	= block_op_close,
 	.flush	= block_op_flush,
-	.lseek	= dev_lseek_default,
 };
 
 int blockdevice_register(struct block_device *blk)
diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 8bbc2373f..d2f8ec70e 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -353,7 +353,6 @@ static ssize_t regmap_cdev_write(struct cdev *cdev, const void *buf, size_t coun
 }
 
 static struct cdev_operations regmap_fops = {
-	.lseek	= dev_lseek_default,
 	.read	= regmap_cdev_read,
 	.write	= regmap_cdev_write,
 };
diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 1f6676eb5..d2fcd645b 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -440,7 +440,6 @@ static int at24_probe(struct device_d *dev)
 	at24->cdev.priv = at24;
 	at24->cdev.dev = dev;
 	at24->cdev.ops = &at24->fops;
-	at24->fops.lseek = dev_lseek_default;
 	at24->fops.read	= at24_cdev_read,
 	at24->fops.protect = at24_cdev_protect,
 	at24->cdev.size = chip.byte_len;
diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index a9050d6c1..1c9ef1232 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -235,7 +235,6 @@ static ssize_t at25_ee_write(struct cdev *cdev,
 static struct cdev_operations at25_fops = {
 	.read	= at25_ee_read,
 	.write	= at25_ee_write,
-	.lseek	= dev_lseek_default,
 };
 
 static int at25_np_to_chip(struct device_d *dev,
diff --git a/drivers/hw_random/core.c b/drivers/hw_random/core.c
index f870a15b5..a1c414984 100644
--- a/drivers/hw_random/core.c
+++ b/drivers/hw_random/core.c
@@ -63,7 +63,6 @@ static ssize_t rng_dev_read(struct cdev *cdev, void *buf, size_t size,
 
 static struct cdev_operations rng_chrdev_ops = {
 	.read  = rng_dev_read,
-	.lseek = dev_lseek_default,
 };
 
 static int hwrng_register_cdev(struct hwrng *rng)
diff --git a/drivers/mfd/act8846.c b/drivers/mfd/act8846.c
index 53ab70f5c..b7a64c739 100644
--- a/drivers/mfd/act8846.c
+++ b/drivers/mfd/act8846.c
@@ -117,7 +117,6 @@ static ssize_t act8846_write(struct cdev *cdev, const void *_buf, size_t count,
 }
 
 static struct cdev_operations act8846_fops = {
-	.lseek	= dev_lseek_default,
 	.read	= act8846_read,
 	.write	= act8846_write,
 };
diff --git a/drivers/mfd/lp3972.c b/drivers/mfd/lp3972.c
index 42b28070a..3ae9d1ac6 100644
--- a/drivers/mfd/lp3972.c
+++ b/drivers/mfd/lp3972.c
@@ -70,7 +70,6 @@ static ssize_t lp_read(struct cdev *cdev, void *_buf, size_t count, loff_t offse
 }
 
 static struct cdev_operations lp_fops = {
-	.lseek	= dev_lseek_default,
 	.read	= lp_read,
 };
 
diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
index f15f37ef6..4aa02b74f 100644
--- a/drivers/mfd/mc34704.c
+++ b/drivers/mfd/mc34704.c
@@ -100,7 +100,6 @@ static ssize_t mc34704_write(struct cdev *cdev, const void *_buf, size_t count,
 }
 
 static struct cdev_operations mc34704_fops = {
-	.lseek	= dev_lseek_default,
 	.read	= mc34704_read,
 	.write	= mc34704_write,
 };
diff --git a/drivers/mfd/mc9sdz60.c b/drivers/mfd/mc9sdz60.c
index 2cb38d978..408d74645 100644
--- a/drivers/mfd/mc9sdz60.c
+++ b/drivers/mfd/mc9sdz60.c
@@ -112,7 +112,6 @@ static ssize_t mc_write(struct cdev *cdev, const void *_buf, size_t count, loff_
 }
 
 static struct cdev_operations mc_fops = {
-	.lseek	= dev_lseek_default,
 	.read	= mc_read,
 	.write	= mc_write,
 };
diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index 084e4b43b..f140f1bbc 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -101,7 +101,6 @@ static ssize_t stmpe_write(struct cdev *cdev, const void *_buf, size_t count, lo
 }
 
 static struct cdev_operations stmpe_fops = {
-	.lseek	= dev_lseek_default,
 	.read	= stmpe_read,
 	.write	= stmpe_write,
 };
diff --git a/drivers/mfd/twl-core.c b/drivers/mfd/twl-core.c
index fb435f510..c3240b854 100644
--- a/drivers/mfd/twl-core.c
+++ b/drivers/mfd/twl-core.c
@@ -150,7 +150,6 @@ static ssize_t twl_write(struct cdev *cdev, const void *_buf, size_t count,
 }
 
 struct cdev_operations twl_fops = {
-	.lseek	= dev_lseek_default,
 	.read	= twl_read,
 	.write	= twl_write,
 };
diff --git a/drivers/misc/mem.c b/drivers/misc/mem.c
index d829af724..60981a3e9 100644
--- a/drivers/misc/mem.c
+++ b/drivers/misc/mem.c
@@ -11,7 +11,6 @@ static struct cdev_operations memops = {
 	.read  = mem_read,
 	.write = mem_write,
 	.memmap = generic_memmap_rw,
-	.lseek = dev_lseek_default,
 };
 
 static int mem_probe(struct device_d *dev)
diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
index 27b4c681f..053b35150 100644
--- a/drivers/misc/sram.c
+++ b/drivers/misc/sram.c
@@ -29,7 +29,6 @@ static struct cdev_operations memops = {
 	.read  = mem_read,
 	.write = mem_write,
 	.memmap = generic_memmap_rw,
-	.lseek = dev_lseek_default,
 };
 
 static int sram_probe(struct device_d *dev)
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index f44c6cfc6..881b5f486 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -462,7 +462,6 @@ static struct cdev_operations mtd_ops = {
 	.protect = mtd_op_protect,
 #endif
 	.ioctl  = mtd_ioctl,
-	.lseek  = dev_lseek_default,
 };
 
 static int mtd_partition_set(struct param_d *p, void *priv)
diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index ffaf9506f..4aef84448 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -66,7 +66,6 @@ static ssize_t mtd_op_read_oob(struct cdev *cdev, void *buf, size_t count,
 static struct cdev_operations mtd_ops_oob = {
 	.read   = mtd_op_read_oob,
 	.ioctl  = mtd_ioctl,
-	.lseek  = dev_lseek_default,
 };
 
 static int add_mtdoob_device(struct mtd_info *mtd, const char *devname, void **priv)
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 6e36dc533..f63da7b3b 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -291,7 +291,6 @@ static const struct cdev_operations mtd_raw_fops = {
 	.read		= mtdraw_read,
 	.write		= mtdraw_write,
 	.erase		= mtdraw_erase,
-	.lseek		= dev_lseek_default,
 };
 
 static int add_mtdraw_device(struct mtd_info *mtd, const char *devname, void **priv)
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 36d818b3f..5b34e9b8d 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -1326,7 +1326,6 @@ exit:
 static struct cdev_operations e1000_invm_ops = {
 	.read	= e1000_invm_cdev_read,
 	.write	= e1000_invm_cdev_write,
-	.lseek	= dev_lseek_default,
 };
 
 static ssize_t e1000_eeprom_cdev_read(struct cdev *cdev, void *buf,
@@ -1351,7 +1350,6 @@ static ssize_t e1000_eeprom_cdev_read(struct cdev *cdev, void *buf,
 
 static struct cdev_operations e1000_eeprom_ops = {
 	.read = e1000_eeprom_cdev_read,
-	.lseek = dev_lseek_default,
 };
 
 static int e1000_mtd_read_or_write(bool read,
diff --git a/drivers/net/ksz8864rmn.c b/drivers/net/ksz8864rmn.c
index 4a19dd873..85063ff0d 100644
--- a/drivers/net/ksz8864rmn.c
+++ b/drivers/net/ksz8864rmn.c
@@ -113,7 +113,6 @@ static ssize_t micel_switch_write(struct cdev *cdev, const void *_buf, size_t co
 static struct cdev_operations micrel_switch_ops = {
 	.read  = micel_switch_read,
 	.write = micel_switch_write,
-	.lseek = dev_lseek_default,
 };
 
 static int micrel_switch_probe(struct device_d *dev)
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index e1dd8f0ae..3480e2ffb 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -392,7 +392,6 @@ static ssize_t phydev_write(struct cdev *cdev, const void *_buf, size_t count, l
 static struct cdev_operations phydev_ops = {
 	.read  = phydev_read,
 	.write = phydev_write,
-	.lseek = dev_lseek_default,
 };
 
 static void of_set_phy_supported(struct phy_device *phydev)
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 9fd599095..6cf98f62a 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -85,7 +85,6 @@ static ssize_t nvmem_cdev_write(struct cdev *cdev, const void *buf, size_t count
 static struct cdev_operations nvmem_chrdev_ops = {
 	.read  = nvmem_cdev_read,
 	.write  = nvmem_cdev_write,
-	.lseek = dev_lseek_default,
 };
 
 static int nvmem_register_cdev(struct nvmem_device *nvmem, const char *name)
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 72f33a6db..2d82bc01f 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -228,7 +228,6 @@ static struct cdev_operations fb_ops = {
 	.read	= mem_read,
 	.write	= mem_write,
 	.memmap	= generic_memmap_rw,
-	.lseek	= dev_lseek_default,
 	.ioctl	= fb_ioctl,
 	.close  = fb_close,
 	.flush  = fb_op_flush,
diff --git a/drivers/w1/slaves/w1_ds2431.c b/drivers/w1/slaves/w1_ds2431.c
index 13691d7ba..6446f4ba0 100644
--- a/drivers/w1/slaves/w1_ds2431.c
+++ b/drivers/w1/slaves/w1_ds2431.c
@@ -260,7 +260,6 @@ out_up:
 static struct cdev_operations ds2431_ops = {
 	.read	= ds2431_cdev_read,
 	.write	= ds2431_cdev_write,
-	.lseek	= dev_lseek_default,
 };
 
 static int ds2431_probe(struct w1_device *dev)
diff --git a/drivers/w1/slaves/w1_ds2433.c b/drivers/w1/slaves/w1_ds2433.c
index f521a46a7..b24fb5b3b 100644
--- a/drivers/w1/slaves/w1_ds2433.c
+++ b/drivers/w1/slaves/w1_ds2433.c
@@ -159,7 +159,6 @@ out_up:
 static struct cdev_operations ds2433_ops = {
 	.read	= ds2433_cdev_read,
 	.write	= ds2433_cdev_write,
-	.lseek	= dev_lseek_default,
 };
 
 static int ds2433_cdev_create(struct w1_device *dev, int size, int id)
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 74e1b37b4..5dbb67b43 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -476,7 +476,6 @@ static const struct cdev_operations loop_ops = {
 	.read = loop_read,
 	.write = loop_write,
 	.memmap = generic_memmap_rw,
-	.lseek = dev_lseek_default,
 };
 
 struct cdev *cdev_create_loop(const char *path, ulong flags, loff_t offset)
diff --git a/fs/devfs.c b/fs/devfs.c
index 6acbbd7ad..5599f39e8 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -66,8 +66,6 @@ static loff_t devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
 		ret = cdev->ops->lseek(cdev, pos + cdev->offset);
 		if (ret < 0)
 			return ret;
-	} else {
-		return -ENOSYS;
 	}
 
 	return pos;
diff --git a/include/driver.h b/include/driver.h
index 3d9970df5..72741a964 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -360,11 +360,6 @@ int dummy_probe(struct device_d *);
 int generic_memmap_ro(struct cdev *dev, void **map, int flags);
 int generic_memmap_rw(struct cdev *dev, void **map, int flags);
 
-static inline loff_t dev_lseek_default(struct cdev *cdev, loff_t ofs)
-{
-	return ofs;
-}
-
 static inline int dev_open_default(struct device_d *dev, struct filep *f)
 {
 	return 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
