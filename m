Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Ggv-00021u-7s
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:33 +0200
Message-Id: <20180403074851.5411-2-s.hauer@pengutronix.de>
In-Reply-To: <20180403074851.5411-1-s.hauer@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/19] rename file_operations -> cdev_operations
To: Barebox List <barebox@lists.infradead.org>

Linux also has struct file_operations which are something different.
Rename our file_operations to cdev_operations which better matches
what we have.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/ocotp.c     | 2 +-
 arch/sandbox/board/hostfile.c | 2 +-
 commands/mem.c                | 2 +-
 commands/stddev.c             | 8 ++++----
 common/block.c                | 2 +-
 common/firmware.c             | 2 +-
 drivers/base/regmap/regmap.c  | 2 +-
 drivers/eeprom/at24.c         | 2 +-
 drivers/eeprom/at25.c         | 2 +-
 drivers/hw_random/core.c      | 2 +-
 drivers/mfd/act8846.c         | 2 +-
 drivers/mfd/lp3972.c          | 2 +-
 drivers/mfd/mc34704.c         | 2 +-
 drivers/mfd/mc9sdz60.c        | 2 +-
 drivers/mfd/stmpe-i2c.c       | 2 +-
 drivers/mfd/twl-core.c        | 2 +-
 drivers/misc/jtag.c           | 2 +-
 drivers/misc/sram.c           | 2 +-
 drivers/mtd/core.c            | 2 +-
 drivers/mtd/mtdoob.c          | 2 +-
 drivers/mtd/mtdraw.c          | 4 ++--
 drivers/mtd/nand/nand-bb.c    | 2 +-
 drivers/mtd/ubi/barebox.c     | 4 ++--
 drivers/net/e1000/eeprom.c    | 4 ++--
 drivers/net/ksz8864rmn.c      | 2 +-
 drivers/net/phy/mdio_bus.c    | 2 +-
 drivers/nvmem/core.c          | 2 +-
 drivers/video/fb.c            | 2 +-
 drivers/w1/slaves/w1_ds2431.c | 2 +-
 drivers/w1/slaves/w1_ds2433.c | 2 +-
 fs/devfs-core.c               | 2 +-
 include/console.h             | 2 +-
 include/driver.h              | 4 ++--
 include/mfd/twl-core.h        | 2 +-
 34 files changed, 41 insertions(+), 41 deletions(-)

diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index 72f3e8240b..b41fde9919 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -172,7 +172,7 @@ free_mem:
 	return ret;
 }
 
-static struct file_operations mxs_ocotp_ops = {
+static struct cdev_operations mxs_ocotp_ops = {
 	.read	= mxs_ocotp_cdev_read,
 	.lseek	= dev_lseek_default,
 };
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index e7d92ea031..3fc1503799 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -64,7 +64,7 @@ static void hf_info(struct device_d *dev)
 	printf("file: %s\n", priv->filename);
 }
 
-static struct file_operations hf_fops = {
+static struct cdev_operations hf_fops = {
 	.read  = hf_read,
 	.write = hf_write,
 	.lseek = dev_lseek_default,
diff --git a/commands/mem.c b/commands/mem.c
index 29eaa80b23..eb91ade05a 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -81,7 +81,7 @@ int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 	return 0;
 }
 
-static struct file_operations memops = {
+static struct cdev_operations memops = {
 	.read  = mem_read,
 	.write = mem_write,
 	.memmap = generic_memmap_rw,
diff --git a/commands/stddev.c b/commands/stddev.c
index 93da2c7398..4d1b6f5108 100644
--- a/commands/stddev.c
+++ b/commands/stddev.c
@@ -25,7 +25,7 @@ static ssize_t zero_read(struct cdev *cdev, void *buf, size_t count, loff_t offs
 	return count;
 }
 
-static struct file_operations zeroops = {
+static struct cdev_operations zeroops = {
 	.read  = zero_read,
 	.lseek = dev_lseek_default,
 };
@@ -53,7 +53,7 @@ static ssize_t full_read(struct cdev *cdev, void *buf, size_t count, loff_t offs
 	return count;
 }
 
-static struct file_operations fullops = {
+static struct cdev_operations fullops = {
 	.read  = full_read,
 	.lseek = dev_lseek_default,
 };
@@ -80,7 +80,7 @@ static ssize_t null_write(struct cdev *cdev, const void *buf, size_t count, loff
 	return count;
 }
 
-static struct file_operations nullops = {
+static struct cdev_operations nullops = {
 	.write = null_write,
 	.lseek = dev_lseek_default,
 };
@@ -108,7 +108,7 @@ static ssize_t prng_read(struct cdev *cdev, void *buf, size_t count, loff_t offs
 	return count;
 }
 
-static struct file_operations prngops = {
+static struct cdev_operations prngops = {
 	.read  = prng_read,
 	.lseek = dev_lseek_default,
 };
diff --git a/common/block.c b/common/block.c
index e2ba9d4296..55d8d1637e 100644
--- a/common/block.c
+++ b/common/block.c
@@ -332,7 +332,7 @@ static int block_op_flush(struct cdev *cdev)
 	return writebuffer_flush(blk);
 }
 
-static struct file_operations block_ops = {
+static struct cdev_operations block_ops = {
 	.read	= block_op_read,
 #ifdef CONFIG_BLOCK_WRITE
 	.write	= block_op_write,
diff --git a/common/firmware.c b/common/firmware.c
index 664f9107d0..250fef5378 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -153,7 +153,7 @@ static int firmware_close(struct cdev *cdev)
 	return 0;
 }
 
-static struct file_operations firmware_ops = {
+static struct cdev_operations firmware_ops = {
 	.open = firmware_open,
 	.write = firmware_write,
 	.close = firmware_close,
diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 67d95fe30a..8bbc2373fc 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -352,7 +352,7 @@ static ssize_t regmap_cdev_write(struct cdev *cdev, const void *buf, size_t coun
 	return count;
 }
 
-static struct file_operations regmap_fops = {
+static struct cdev_operations regmap_fops = {
 	.lseek	= dev_lseek_default,
 	.read	= regmap_cdev_read,
 	.write	= regmap_cdev_write,
diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 11f23319b6..4fae3a12e4 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -52,7 +52,7 @@ struct at24_data {
 	struct at24_platform_data chip;
 
 	struct cdev		cdev;
-	struct file_operations	fops;
+	struct cdev_operations	fops;
 
 	u8 *writebuf;
 	unsigned write_max;
diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 9f16f964a8..a9050d6c16 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -232,7 +232,7 @@ static ssize_t at25_ee_write(struct cdev *cdev,
 	return written ? written : status;
 }
 
-static struct file_operations at25_fops = {
+static struct cdev_operations at25_fops = {
 	.read	= at25_ee_read,
 	.write	= at25_ee_write,
 	.lseek	= dev_lseek_default,
diff --git a/drivers/hw_random/core.c b/drivers/hw_random/core.c
index ef2a988c76..1c68a379f7 100644
--- a/drivers/hw_random/core.c
+++ b/drivers/hw_random/core.c
@@ -61,7 +61,7 @@ static ssize_t rng_dev_read(struct cdev *cdev, void *buf, size_t size,
 	return cur;
 }
 
-static struct file_operations rng_chrdev_ops = {
+static struct cdev_operations rng_chrdev_ops = {
 	.read  = rng_dev_read,
 	.lseek = dev_lseek_default,
 };
diff --git a/drivers/mfd/act8846.c b/drivers/mfd/act8846.c
index 60029acf76..dfca0498b1 100644
--- a/drivers/mfd/act8846.c
+++ b/drivers/mfd/act8846.c
@@ -117,7 +117,7 @@ static ssize_t act8846_write(struct cdev *cdev, const void *_buf, size_t count,
 	return count;
 }
 
-static struct file_operations act8846_fops = {
+static struct cdev_operations act8846_fops = {
 	.lseek	= dev_lseek_default,
 	.read	= act8846_read,
 	.write	= act8846_write,
diff --git a/drivers/mfd/lp3972.c b/drivers/mfd/lp3972.c
index ee794df2d8..054713b942 100644
--- a/drivers/mfd/lp3972.c
+++ b/drivers/mfd/lp3972.c
@@ -70,7 +70,7 @@ static ssize_t lp_read(struct cdev *cdev, void *_buf, size_t count, loff_t offse
 	return count;
 }
 
-static struct file_operations lp_fops = {
+static struct cdev_operations lp_fops = {
 	.lseek	= dev_lseek_default,
 	.read	= lp_read,
 };
diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
index 3dc85f5474..bfda169aaa 100644
--- a/drivers/mfd/mc34704.c
+++ b/drivers/mfd/mc34704.c
@@ -100,7 +100,7 @@ static ssize_t mc34704_write(struct cdev *cdev, const void *_buf, size_t count,
 	return count;
 }
 
-static struct file_operations mc34704_fops = {
+static struct cdev_operations mc34704_fops = {
 	.lseek	= dev_lseek_default,
 	.read	= mc34704_read,
 	.write	= mc34704_write,
diff --git a/drivers/mfd/mc9sdz60.c b/drivers/mfd/mc9sdz60.c
index 0d2c56b480..9993efc5de 100644
--- a/drivers/mfd/mc9sdz60.c
+++ b/drivers/mfd/mc9sdz60.c
@@ -112,7 +112,7 @@ static ssize_t mc_write(struct cdev *cdev, const void *_buf, size_t count, loff_
 	return count;
 }
 
-static struct file_operations mc_fops = {
+static struct cdev_operations mc_fops = {
 	.lseek	= dev_lseek_default,
 	.read	= mc_read,
 	.write	= mc_write,
diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index fb91ffa008..51c56bbf56 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -101,7 +101,7 @@ static ssize_t stmpe_write(struct cdev *cdev, const void *_buf, size_t count, lo
 	return count;
 }
 
-static struct file_operations stmpe_fops = {
+static struct cdev_operations stmpe_fops = {
 	.lseek	= dev_lseek_default,
 	.read	= stmpe_read,
 	.write	= stmpe_write,
diff --git a/drivers/mfd/twl-core.c b/drivers/mfd/twl-core.c
index 20bde2cf89..fb435f510f 100644
--- a/drivers/mfd/twl-core.c
+++ b/drivers/mfd/twl-core.c
@@ -149,7 +149,7 @@ static ssize_t twl_write(struct cdev *cdev, const void *_buf, size_t count,
 	return count;
 }
 
-struct file_operations twl_fops = {
+struct cdev_operations twl_fops = {
 	.lseek	= dev_lseek_default,
 	.read	= twl_read,
 	.write	= twl_write,
diff --git a/drivers/misc/jtag.c b/drivers/misc/jtag.c
index f5d0c72ed5..9accefa342 100644
--- a/drivers/misc/jtag.c
+++ b/drivers/misc/jtag.c
@@ -265,7 +265,7 @@ static int jtag_ioctl(struct cdev *inode, int cmd, void *arg)
 	return ret;
 }
 
-static struct file_operations jtag_operations = {
+static struct cdev_operations jtag_operations = {
 	.ioctl = jtag_ioctl,
 };
 
diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
index 4fb6f801d2..27b4c681fd 100644
--- a/drivers/misc/sram.c
+++ b/drivers/misc/sram.c
@@ -25,7 +25,7 @@ struct sram {
 	struct cdev cdev;
 };
 
-static struct file_operations memops = {
+static struct cdev_operations memops = {
 	.read  = mem_read,
 	.write = mem_write,
 	.memmap = generic_memmap_rw,
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 1950ee87ee..d2012b5f70 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -438,7 +438,7 @@ int mtd_read_oob(struct mtd_info *mtd, loff_t from, struct mtd_oob_ops *ops)
 	return ret_code >= mtd->bitflip_threshold ? -EUCLEAN : 0;
 }
 
-static struct file_operations mtd_ops = {
+static struct cdev_operations mtd_ops = {
 	.read   = mtd_op_read,
 #ifdef CONFIG_MTD_WRITE
 	.write  = mtd_op_write,
diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index 86076f028d..ffaf9506f3 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -63,7 +63,7 @@ static ssize_t mtd_op_read_oob(struct cdev *cdev, void *buf, size_t count,
 	return mtd->oobsize;
 }
 
-static struct file_operations mtd_ops_oob = {
+static struct cdev_operations mtd_ops_oob = {
 	.read   = mtd_op_read_oob,
 	.ioctl  = mtd_ioctl,
 	.lseek  = dev_lseek_default,
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index ab360b7862..4f7c3b836c 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -287,7 +287,7 @@ static ssize_t mtdraw_erase(struct cdev *cdev, loff_t count, loff_t offset)
 }
 #endif
 
-static const struct file_operations mtd_raw_fops = {
+static const struct cdev_operations mtd_raw_fops = {
 	.read		= mtdraw_read,
 	.write		= mtdraw_write,
 	.erase		= mtdraw_erase,
@@ -305,7 +305,7 @@ static int add_mtdraw_device(struct mtd_info *mtd, const char *devname, void **p
 	mtdraw->writebuf = xmalloc(RAW_WRITEBUF_SIZE);
 	mtdraw->mtd = mtd;
 
-	mtdraw->cdev.ops = (struct file_operations *)&mtd_raw_fops;
+	mtdraw->cdev.ops = (struct cdev_operations *)&mtd_raw_fops;
 	mtdraw->cdev.size = mtd_div_by_wb(mtd->size, mtd) *
 		(mtd->writesize + mtd->oobsize);
 	mtdraw->cdev.name = basprintf("%s.raw", mtd->cdev.name);
diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index a1523c3c89..c1977381d4 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -264,7 +264,7 @@ static loff_t nand_bb_lseek(struct cdev *cdev, loff_t __offset)
 	return -EINVAL;
 }
 
-static struct file_operations nand_bb_ops = {
+static struct cdev_operations nand_bb_ops = {
 	.open   = nand_bb_open,
 	.close  = nand_bb_close,
 	.read  	= nand_bb_read,
diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index d67e566db6..65f5456455 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -218,7 +218,7 @@ static int ubi_volume_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
 	return err;
 }
 
-static struct file_operations ubi_volume_fops = {
+static struct cdev_operations ubi_volume_fops = {
 	.open	= ubi_volume_cdev_open,
 	.close	= ubi_volume_cdev_close,
 	.read   = ubi_volume_cdev_read,
@@ -467,7 +467,7 @@ static int ubi_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
 	return 0;
 }
 
-static struct file_operations ubi_fops = {
+static struct cdev_operations ubi_fops = {
 	.ioctl	= ubi_cdev_ioctl,
 };
 
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 319910103e..3f39db7164 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -1294,7 +1294,7 @@ exit:
 	return ret;
 }
 
-static struct file_operations e1000_invm_ops = {
+static struct cdev_operations e1000_invm_ops = {
 	.read	= e1000_invm_cdev_read,
 	.write	= e1000_invm_cdev_write,
 	.lseek	= dev_lseek_default,
@@ -1320,7 +1320,7 @@ static ssize_t e1000_eeprom_cdev_read(struct cdev *cdev, void *buf,
 		return (count / 2) * 2;
 };
 
-static struct file_operations e1000_eeprom_ops = {
+static struct cdev_operations e1000_eeprom_ops = {
 	.read = e1000_eeprom_cdev_read,
 	.lseek = dev_lseek_default,
 };
diff --git a/drivers/net/ksz8864rmn.c b/drivers/net/ksz8864rmn.c
index 860af448ea..8b9d66019b 100644
--- a/drivers/net/ksz8864rmn.c
+++ b/drivers/net/ksz8864rmn.c
@@ -120,7 +120,7 @@ static ssize_t micel_switch_write(struct cdev *cdev, const void *_buf, size_t co
 	return count;
 }
 
-static struct file_operations micrel_switch_ops = {
+static struct cdev_operations micrel_switch_ops = {
 	.read  = micel_switch_read,
 	.write = micel_switch_write,
 	.lseek = dev_lseek_default,
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index d209716a14..5d4218f7c0 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -285,7 +285,7 @@ static ssize_t phydev_write(struct cdev *cdev, const void *_buf, size_t count, l
 	return count;
 }
 
-static struct file_operations phydev_ops = {
+static struct cdev_operations phydev_ops = {
 	.read  = phydev_read,
 	.write = phydev_write,
 	.lseek = dev_lseek_default,
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 4e50a8843f..172fa8b720 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -82,7 +82,7 @@ static ssize_t nvmem_cdev_write(struct cdev *cdev, const void *buf, size_t count
 	return retlen;
 }
 
-static struct file_operations nvmem_chrdev_ops = {
+static struct cdev_operations nvmem_chrdev_ops = {
 	.read  = nvmem_cdev_read,
 	.write  = nvmem_cdev_write,
 	.lseek = dev_lseek_default,
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 004df1e604..5e829e832d 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -221,7 +221,7 @@ static int fb_set_modename(struct param_d *param, void *priv)
 	return 0;
 }
 
-static struct file_operations fb_ops = {
+static struct cdev_operations fb_ops = {
 	.read	= mem_read,
 	.write	= mem_write,
 	.memmap	= generic_memmap_rw,
diff --git a/drivers/w1/slaves/w1_ds2431.c b/drivers/w1/slaves/w1_ds2431.c
index e3e929670d..13691d7bab 100644
--- a/drivers/w1/slaves/w1_ds2431.c
+++ b/drivers/w1/slaves/w1_ds2431.c
@@ -257,7 +257,7 @@ out_up:
 #define ds2431_cdev_write NULL
 #endif
 
-static struct file_operations ds2431_ops = {
+static struct cdev_operations ds2431_ops = {
 	.read	= ds2431_cdev_read,
 	.write	= ds2431_cdev_write,
 	.lseek	= dev_lseek_default,
diff --git a/drivers/w1/slaves/w1_ds2433.c b/drivers/w1/slaves/w1_ds2433.c
index a907c6bf3c..f521a46a75 100644
--- a/drivers/w1/slaves/w1_ds2433.c
+++ b/drivers/w1/slaves/w1_ds2433.c
@@ -156,7 +156,7 @@ out_up:
 #define ds2433_cdev_write NULL
 #endif
 
-static struct file_operations ds2433_ops = {
+static struct cdev_operations ds2433_ops = {
 	.read	= ds2433_cdev_read,
 	.write	= ds2433_cdev_write,
 	.lseek	= dev_lseek_default,
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index ea5887c720..d06a534b57 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -457,7 +457,7 @@ static ssize_t loop_write(struct cdev *cdev, const void *buf, size_t count,
 	return write(priv->fd, buf, count);
 }
 
-static const struct file_operations loop_ops = {
+static const struct cdev_operations loop_ops = {
 	.read = loop_read,
 	.write = loop_write,
 	.memmap = generic_memmap_rw,
diff --git a/include/console.h b/include/console.h
index a8b2663a4c..3c14e35935 100644
--- a/include/console.h
+++ b/include/console.h
@@ -63,7 +63,7 @@ struct console_device {
 	const char *linux_console_name;
 
 	struct cdev devfs;
-	struct file_operations fops;
+	struct cdev_operations fops;
 };
 
 int console_register(struct console_device *cdev);
diff --git a/include/driver.h b/include/driver.h
index f37805db17..91653b7946 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -420,7 +420,7 @@ int platform_driver_register(struct driver_d *drv);
 
 int platform_device_register(struct device_d *new_device);
 
-struct file_operations {
+struct cdev_operations {
 	/*! Called in response of reading from this device. Required */
 	ssize_t (*read)(struct cdev*, void* buf, size_t count, loff_t offset, ulong flags);
 
@@ -441,7 +441,7 @@ struct file_operations {
 #define MAX_PARTUUID_STR	sizeof("00112233-4455-6677-8899-AABBCCDDEEFF")
 
 struct cdev {
-	const struct file_operations *ops;
+	const struct cdev_operations *ops;
 	void *priv;
 	struct device_d *dev;
 	struct device_node *device_node;
diff --git a/include/mfd/twl-core.h b/include/mfd/twl-core.h
index f090032b3f..88d29f019b 100644
--- a/include/mfd/twl-core.h
+++ b/include/mfd/twl-core.h
@@ -21,7 +21,7 @@ struct twlcore {
 	struct i2c_client	*client;
 };
 
-extern struct file_operations twl_fops;
+extern struct cdev_operations twl_fops;
 
 extern int twlcore_reg_read(struct twlcore *twlcore, u16 reg, u8 *val);
 extern int twlcore_reg_write(struct twlcore *twlcore, u16 reg, u8 val);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
