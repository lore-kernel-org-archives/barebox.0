Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjbqt-0006N6-Nl
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 19:55:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Jun 2012 21:54:56 +0200
Message-Id: <1340740503-7003-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
References: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/10] use loff_t for file offsets
To: barebox@lists.infradead.org

This is a first step for 64bit file support: Make the file sizes/offsets
64bit.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c       |    8 ++++----
 arch/arm/mach-mxs/ocotp.c     |    4 ++--
 arch/sandbox/board/hostfile.c |    4 ++--
 commands/mem.c                |    2 +-
 common/block.c                |    4 ++--
 drivers/eeprom/at25.c         |    8 ++++----
 drivers/mfd/lp3972.c          |    2 +-
 drivers/mfd/mc13xxx.c         |    4 ++--
 drivers/mfd/mc34704.c         |    4 ++--
 drivers/mfd/mc34708.c         |    6 ++++--
 drivers/mfd/mc9sdz60.c        |    4 ++--
 drivers/mfd/twl-core.c        |    4 ++--
 drivers/mtd/core.c            |   17 ++++++++++-------
 drivers/mtd/mtdoob.c          |    3 ++-
 drivers/mtd/mtdraw.c          |    9 ++++++---
 drivers/mtd/nand/nand-bb.c    |   10 +++++-----
 drivers/mtd/ubi/cdev.c        |    8 ++++----
 drivers/net/miidev.c          |    4 ++--
 drivers/nor/cfi_flash.c       |    8 ++++----
 drivers/nor/m25p80.c          |   16 ++++++++++------
 fs/cramfs/cramfs.c            |    2 +-
 fs/devfs.c                    |    6 +++---
 fs/fat/fat.c                  |    6 +++---
 fs/fs.c                       |   10 +++++-----
 fs/nfs.c                      |    2 +-
 fs/ramfs.c                    |    2 +-
 fs/tftp.c                     |    2 +-
 include/driver.h              |   16 ++++++++--------
 include/fs.h                  |   12 ++++++------
 29 files changed, 100 insertions(+), 87 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index f2ace8a..0da8ea0 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -84,7 +84,7 @@ static int do_fuse_sense(void __iomem *reg_base, unsigned int bank,
 }
 
 static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t count,
-		ulong offset, ulong flags)
+		loff_t offset, ulong flags)
 {
 	ulong size, i;
 	struct iim_priv *priv = cdev->priv;
@@ -94,7 +94,7 @@ static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t count,
 	if ((sense_param = dev_get_param(cdev->dev, "explicit_sense_enable")))
 		explicit_sense = simple_strtoul(sense_param, NULL, 0);
 
-	size = min((ulong)count, priv->banksize - offset);
+	size = min((loff_t)count, priv->banksize - offset);
 	if (explicit_sense) {
 		for (i = 0; i < size; i++) {
 			int row_val;
@@ -176,7 +176,7 @@ out:
 #endif /* CONFIG_IMX_IIM_FUSE_BLOW */
 
 static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t count,
-		ulong offset, ulong flags)
+		loff_t offset, ulong flags)
 {
 	ulong size, i;
 	struct iim_priv *priv = cdev->priv;
@@ -186,7 +186,7 @@ static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t cou
 	if ((write_param = dev_get_param(cdev->dev, "permanent_write_enable")))
 		blow_enable = simple_strtoul(write_param, NULL, 0);
 
-	size = min((ulong)count, priv->banksize - offset);
+	size = min((loff_t)count, priv->banksize - offset);
 #ifdef CONFIG_IMX_IIM_FUSE_BLOW
 	if (blow_enable) {
 		for (i = 0; i < size; i++) {
diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index 38f9ffd..86e63dc 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -40,11 +40,11 @@ struct ocotp_priv {
 };
 
 static ssize_t mxs_ocotp_cdev_read(struct cdev *cdev, void *buf, size_t count,
-		ulong offset, ulong flags)
+		loff_t offset, ulong flags)
 {
 	struct ocotp_priv *priv = cdev->priv;
 	void __iomem *base = priv->base;
-	size_t size = min((ulong)count, cdev->size - offset);
+	size_t size = min((loff_t)count, cdev->size - offset);
 	uint64_t start;
 	int i;
 
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 90a9741..96fa100 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -34,7 +34,7 @@ struct hf_priv {
 	struct hf_platform_data *pdata;
 };
 
-static ssize_t hf_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
+static ssize_t hf_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
 {
 	struct hf_platform_data *hf = cdev->priv;
 	int fd = hf->fd;
@@ -45,7 +45,7 @@ static ssize_t hf_read(struct cdev *cdev, void *buf, size_t count, ulong offset,
 	return linux_read(fd, buf, count);
 }
 
-static ssize_t hf_write(struct cdev *cdev, const void *buf, size_t count, ulong offset, ulong flags)
+static ssize_t hf_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
 {
 	struct hf_platform_data *hf = cdev->priv;
 	int fd = hf->fd;
diff --git a/commands/mem.c b/commands/mem.c
index 080bfde..649d5bf 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -624,7 +624,7 @@ static int mem_init(void)
 
 device_initcall(mem_init);
 
-static ssize_t zero_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
+static ssize_t zero_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
 {
 	memset(buf, 0, count);
 	return count;
diff --git a/common/block.c b/common/block.c
index 71ecfd5..1db06cc 100644
--- a/common/block.c
+++ b/common/block.c
@@ -179,7 +179,7 @@ static void *block_get(struct block_device *blk, int block)
 }
 
 static ssize_t block_read(struct cdev *cdev, void *buf, size_t count,
-		unsigned long offset, unsigned long flags)
+		loff_t offset, unsigned long flags)
 {
 	struct block_device *blk = cdev->priv;
 	unsigned long mask = BLOCKSIZE(blk) - 1;
@@ -256,7 +256,7 @@ static int block_put(struct block_device *blk, const void *buf, int block)
 }
 
 static ssize_t block_write(struct cdev *cdev, const void *buf, size_t count,
-		unsigned long offset, ulong flags)
+		loff_t offset, ulong flags)
 {
 	struct block_device *blk = cdev->priv;
 	unsigned long mask = BLOCKSIZE(blk) - 1;
diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 8a979d5..03d191e 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -67,7 +67,7 @@ struct at25_data {
 static ssize_t at25_ee_read(struct cdev *cdev,
 			    void *buf,
 			    size_t count,
-			    ulong offset,
+			    loff_t offset,
 			    ulong flags)
 {
 	u8			command[EE_MAXADDRLEN + 1];
@@ -117,7 +117,7 @@ static ssize_t at25_ee_read(struct cdev *cdev,
 	 */
 	status = spi_sync(at25->spi, &m);
 	dev_dbg(at25->cdev.dev,
-		"read %d bytes at %lu --> %d\n",
+		"read %d bytes at %llu --> %d\n",
 		count, offset, (int) status);
 
 	return status ? status : count;
@@ -126,7 +126,7 @@ static ssize_t at25_ee_read(struct cdev *cdev,
 static ssize_t at25_ee_write(struct cdev *cdev,
 			     const void *buf,
 			     size_t count,
-			     ulong off,
+			     loff_t off,
 			     ulong flags)
 {
 	ssize_t			status = 0;
@@ -232,7 +232,7 @@ static ssize_t at25_ee_write(struct cdev *cdev,
 	return written ? written : status;
 }
 
-static off_t at25_ee_lseek(struct cdev *cdev, off_t off)
+static loff_t at25_ee_lseek(struct cdev *cdev, loff_t off)
 {
 	return off;
 }
diff --git a/drivers/mfd/lp3972.c b/drivers/mfd/lp3972.c
index 9826699..0f3093b 100644
--- a/drivers/mfd/lp3972.c
+++ b/drivers/mfd/lp3972.c
@@ -58,7 +58,7 @@ static u32 lp_read_reg(struct lp_priv *lp, int reg)
 	return buf;
 }
 
-static ssize_t lp_read(struct cdev *cdev, void *_buf, size_t count, ulong offset, ulong flags)
+static ssize_t lp_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
 {
 	struct lp_priv *priv = to_lp_priv(cdev);
 	int i = count;
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index f9477a3..2934e9d 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -160,7 +160,7 @@ int mc13xxx_set_bits(struct mc13xxx *mc13xxx, u8 reg, u32 mask, u32 val)
 }
 EXPORT_SYMBOL(mc13xxx_set_bits);
 
-static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, ulong offset, ulong flags)
+static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
 {
 	struct mc13xxx *priv = to_mc13xxx(cdev);
 	u32 *buf = _buf;
@@ -181,7 +181,7 @@ static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, ulong offset
 	return count;
 }
 
-static ssize_t mc_write(struct cdev *cdev, const void *_buf, size_t count, ulong offset, ulong flags)
+static ssize_t mc_write(struct cdev *cdev, const void *_buf, size_t count, loff_t offset, ulong flags)
 {
 	struct mc13xxx *mc13xxx = to_mc13xxx(cdev);
 	const u32 *buf = _buf;
diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
index a2171b3..20c01e2 100644
--- a/drivers/mfd/mc34704.c
+++ b/drivers/mfd/mc34704.c
@@ -65,7 +65,7 @@ int mc34704_reg_write(struct mc34704 *mc34704, u8 reg, u8 val)
 EXPORT_SYMBOL(mc34704_reg_write)
 
 static ssize_t mc34704_read(struct cdev *cdev, void *_buf, size_t count,
-		ulong offset, ulong flags)
+		loff_t offset, ulong flags)
 {
 	struct mc34704 *priv = to_mc34704(cdev);
 	u8 *buf = _buf;
@@ -85,7 +85,7 @@ static ssize_t mc34704_read(struct cdev *cdev, void *_buf, size_t count,
 }
 
 static ssize_t mc34704_write(struct cdev *cdev, const void *_buf, size_t count,
-		ulong offset, ulong flags)
+		loff_t offset, ulong flags)
 {
 	struct mc34704 *mc34704 = to_mc34704(cdev);
 	const u8 *buf = _buf;
diff --git a/drivers/mfd/mc34708.c b/drivers/mfd/mc34708.c
index e7f40c0..02c58a9 100644
--- a/drivers/mfd/mc34708.c
+++ b/drivers/mfd/mc34708.c
@@ -163,7 +163,8 @@ int mc34708_set_bits(struct mc34708 *mc34708, enum mc34708_reg reg, u32 mask, u3
 }
 EXPORT_SYMBOL(mc34708_set_bits);
 
-static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, ulong offset, ulong flags)
+static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count,
+		loff_t offset, ulong flags)
 {
 	struct mc34708 *priv = to_mc34708(cdev);
 	u32 *buf = _buf;
@@ -184,7 +185,8 @@ static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, ulong offset
 	return count;
 }
 
-static ssize_t mc_write(struct cdev *cdev, const void *_buf, size_t count, ulong offset, ulong flags)
+static ssize_t mc_write(struct cdev *cdev, const void *_buf, size_t count,
+		loff_t offset, ulong flags)
 {
 	struct mc34708 *mc34708 = to_mc34708(cdev);
 	const u32 *buf = _buf;
diff --git a/drivers/mfd/mc9sdz60.c b/drivers/mfd/mc9sdz60.c
index db208ec..0cd5007 100644
--- a/drivers/mfd/mc9sdz60.c
+++ b/drivers/mfd/mc9sdz60.c
@@ -78,7 +78,7 @@ int mc9sdz60_set_bits(struct mc9sdz60 *mc9sdz60, enum mc9sdz60_reg reg, u8 mask,
 }
 EXPORT_SYMBOL(mc9sdz60_set_bits);
 
-static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, ulong offset, ulong flags)
+static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
 {
 	struct mc9sdz60 *mc9sdz60 = to_mc9sdz60(cdev);
 	u8 *buf = _buf;
@@ -97,7 +97,7 @@ static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, ulong offset
 	return count;
 }
 
-static ssize_t mc_write(struct cdev *cdev, const void *_buf, size_t count, ulong offset, ulong flags)
+static ssize_t mc_write(struct cdev *cdev, const void *_buf, size_t count, loff_t offset, ulong flags)
 {
 	struct mc9sdz60 *mc9sdz60 = to_mc9sdz60(cdev);
 	const u8 *buf = _buf;
diff --git a/drivers/mfd/twl-core.c b/drivers/mfd/twl-core.c
index cb2c03d..20bde2c 100644
--- a/drivers/mfd/twl-core.c
+++ b/drivers/mfd/twl-core.c
@@ -112,7 +112,7 @@ int twlcore_set_bits(struct twlcore *twlcore, u16 reg, u8 mask, u8 val)
 EXPORT_SYMBOL(twlcore_set_bits);
 
 static ssize_t twl_read(struct cdev *cdev, void *_buf, size_t count,
-		ulong offset, ulong flags)
+		loff_t offset, ulong flags)
 {
 	struct twlcore *priv = to_twlcore(cdev);
 	u8 *buf = _buf;
@@ -131,7 +131,7 @@ static ssize_t twl_read(struct cdev *cdev, void *_buf, size_t count,
 }
 
 static ssize_t twl_write(struct cdev *cdev, const void *_buf, size_t count,
-		ulong offset, ulong flags)
+		loff_t offset, ulong flags)
 {
 	struct twlcore *twlcore = to_twlcore(cdev);
 	const u8 *buf = _buf;
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 2ce08a6..5510439 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -31,11 +31,12 @@
 static LIST_HEAD(mtd_register_hooks);
 
 static 	ssize_t mtd_read(struct cdev *cdev, void* buf, size_t count,
-			  ulong offset, ulong flags)
+			  loff_t _offset, ulong flags)
 {
 	struct mtd_info *mtd = cdev->priv;
 	size_t retlen;
 	int ret;
+	unsigned long offset = _offset;
 
 	debug("mtd_read: 0x%08lx 0x%08x\n", offset, count);
 
@@ -64,13 +65,14 @@ static int all_ff(const void *buf, int len)
 }
 
 static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
-			  ulong offset, ulong flags)
+			  loff_t _offset, ulong flags)
 {
 	struct mtd_info *mtd = cdev->priv;
 	size_t retlen, now;
 	int ret = 0;
 	void *wrbuf = NULL;
 	size_t count = _count;
+	unsigned long offset = _offset;
 
 	if (NOTALIGNED(offset)) {
 		printf("offset 0x%0lx not page aligned\n", offset);
@@ -123,16 +125,16 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 	struct mtd_ecc_stats *ecc = buf;
 #endif
 	struct region_info_user *reg = buf;
-	off_t *offset = buf;
+	loff_t *offset = buf;
 
 	switch (request) {
 	case MEMGETBADBLOCK:
-		dev_dbg(cdev->dev, "MEMGETBADBLOCK: 0x%08lx\n", (off_t)buf);
+		dev_dbg(cdev->dev, "MEMGETBADBLOCK: 0x%08llx\n", *offset);
 		ret = mtd->block_isbad(mtd, *offset);
 		break;
 #ifdef CONFIG_MTD_WRITE
 	case MEMSETBADBLOCK:
-		dev_dbg(cdev->dev, "MEMSETBADBLOCK: 0x%08lx\n", (off_t)buf);
+		dev_dbg(cdev->dev, "MEMSETBADBLOCK: 0x%08llx\n", *offset);
 		ret = mtd->block_markbad(mtd, *offset);
 		break;
 #endif
@@ -157,9 +159,10 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 #endif
 	case MEMGETREGIONINFO:
 		if (cdev->mtd) {
+			unsigned long size = cdev->size;
 			reg->offset = cdev->offset;
 			reg->erasesize = cdev->mtd->erasesize;
-			reg->numblocks = cdev->size/reg->erasesize;
+			reg->numblocks = size / reg->erasesize;
 			reg->regionindex = cdev->mtd->index;
 		}
 		break;
@@ -171,7 +174,7 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 }
 
 #ifdef CONFIG_MTD_WRITE
-static ssize_t mtd_erase(struct cdev *cdev, size_t count, unsigned long offset)
+static ssize_t mtd_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	struct mtd_info *mtd = cdev->priv;
 	struct erase_info erase;
diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index be656a4..e4dd1a0 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -38,11 +38,12 @@ static struct mtd_info *to_mtd(struct cdev *cdev)
 }
 
 static ssize_t mtd_read_oob(struct cdev *cdev, void *buf, size_t count,
-			     ulong offset, ulong flags)
+			     loff_t _offset, ulong flags)
 {
 	struct mtd_info *mtd = to_mtd(cdev);
 	struct mtd_oob_ops ops;
 	int ret;
+	unsigned long offset = _offset;
 
 	if (count < mtd->oobsize)
 		return -EINVAL;
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 7abe235..24f7358 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -116,12 +116,13 @@ err:
 }
 
 static ssize_t mtdraw_read(struct cdev *cdev, void *buf, size_t count,
-			    ulong offset, ulong flags)
+			    loff_t _offset, ulong flags)
 {
 	struct mtd_info *mtd = to_mtd(cdev);
 	ssize_t retlen = 0, ret = 1, toread;
 	ulong numpage;
 	int skip;
+	unsigned long offset = _offset;
 
 	numpage = offset / (mtd->writesize + mtd->oobsize);
 	skip = offset % (mtd->writesize + mtd->oobsize);
@@ -167,13 +168,14 @@ static void mtdraw_fillbuf(struct mtdraw *mtdraw, const void *src, int nbbytes)
 }
 
 static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
-			    ulong offset, ulong flags)
+			    loff_t _offset, ulong flags)
 {
 	struct mtdraw *mtdraw = to_mtdraw(cdev);
 	struct mtd_info *mtd = to_mtd(cdev);
 	int bsz = mtd->writesize + mtd->oobsize;
 	ulong numpage;
 	size_t retlen = 0, tofill;
+	unsigned long offset = _offset;
 	int ret = 0;
 
 	if (mtdraw->write_fill &&
@@ -220,10 +222,11 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 	}
 }
 
-static ssize_t mtdraw_erase(struct cdev *cdev, size_t count, ulong offset)
+static ssize_t mtdraw_erase(struct cdev *cdev, size_t count, loff_t _offset)
 {
 	struct mtd_info *mtd = to_mtd(cdev);
 	struct erase_info erase;
+	unsigned long offset = _offset;
 	int ret;
 
 	offset = offset / (mtd->writesize + mtd->oobsize) * mtd->writesize;
diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index 0377f1e..d272749 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -54,7 +54,7 @@ struct nand_bb {
 };
 
 static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
-	unsigned long offset, ulong flags)
+	loff_t offset, ulong flags)
 {
 	struct nand_bb *bb = cdev->priv;
 	struct cdev *parent = bb->cdev_parent;
@@ -123,12 +123,12 @@ static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
 }
 
 static ssize_t nand_bb_write(struct cdev *cdev, const void *buf, size_t count,
-	unsigned long offset, ulong flags)
+	loff_t offset, ulong flags)
 {
 	struct nand_bb *bb = cdev->priv;
 	int bytes = count, now, wroffs, ret;
 
-	debug("%s offset: 0x%08x count: 0x%08x\n", __func__, offset, count);
+	debug("%s offset: 0x%08llx count: 0x%08x\n", __func__, offset, count);
 
 	while (count) {
 		wroffs = bb->offset % BB_WRITEBUF_SIZE;
@@ -152,7 +152,7 @@ static ssize_t nand_bb_write(struct cdev *cdev, const void *buf, size_t count,
 	return bytes;
 }
 
-static int nand_bb_erase(struct cdev *cdev, size_t count, unsigned long offset)
+static int nand_bb_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	struct nand_bb *bb = cdev->priv;
 
@@ -213,7 +213,7 @@ static int nand_bb_calc_size(struct nand_bb *bb)
 	return 0;
 }
 
-static off_t nand_bb_lseek(struct cdev *cdev, off_t __offset)
+static loff_t nand_bb_lseek(struct cdev *cdev, loff_t __offset)
 {
 	struct nand_bb *bb = cdev->priv;
 	unsigned long raw_pos = 0;
diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
index 95bef1f..c99b64d 100644
--- a/drivers/mtd/ubi/cdev.c
+++ b/drivers/mtd/ubi/cdev.c
@@ -12,7 +12,7 @@ struct ubi_volume_cdev_priv {
 };
 
 static ssize_t ubi_volume_cdev_read(struct cdev *cdev, void *buf, size_t size,
-		unsigned long offset, unsigned long flags)
+		loff_t offset, unsigned long flags)
 {
 	struct ubi_volume_cdev_priv *priv = cdev->priv;
 	struct ubi_volume *vol = priv->vol;
@@ -23,7 +23,7 @@ static ssize_t ubi_volume_cdev_read(struct cdev *cdev, void *buf, size_t size,
 	loff_t offp = offset;
 	int usable_leb_size = vol->usable_leb_size;
 
-	printf("%s: %d @ 0x%08lx\n", __func__, size, offset);
+	printf("%s: %d @ 0x%08llx\n", __func__, size, offset);
 
 	len = size > usable_leb_size ? usable_leb_size : size;
 
@@ -56,7 +56,7 @@ static ssize_t ubi_volume_cdev_read(struct cdev *cdev, void *buf, size_t size,
 }
 
 static ssize_t ubi_volume_cdev_write(struct cdev* cdev, const void *buf,
-		size_t size, unsigned long offset, unsigned long flags)
+		size_t size, loff_t offset, unsigned long flags)
 {
 	struct ubi_volume_cdev_priv *priv = cdev->priv;
 	struct ubi_volume *vol = priv->vol;
@@ -121,7 +121,7 @@ static int ubi_volume_cdev_close(struct cdev *cdev)
 	return 0;
 }
 
-static off_t ubi_volume_cdev_lseek(struct cdev *cdev, off_t ofs)
+static loff_t ubi_volume_cdev_lseek(struct cdev *cdev, loff_t ofs)
 {
 	struct ubi_volume_cdev_priv *priv = cdev->priv;
 
diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index f47fc9e..d23775b 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -180,7 +180,7 @@ int miidev_print_status(struct mii_device *mdev)
 	return 0;
 }
 
-static ssize_t miidev_read(struct cdev *cdev, void *_buf, size_t count, ulong offset, ulong flags)
+static ssize_t miidev_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
 {
 	int i = count;
 	uint16_t *buf = _buf;
@@ -196,7 +196,7 @@ static ssize_t miidev_read(struct cdev *cdev, void *_buf, size_t count, ulong of
 	return count;
 }
 
-static ssize_t miidev_write(struct cdev *cdev, const void *_buf, size_t count, ulong offset, ulong flags)
+static ssize_t miidev_write(struct cdev *cdev, const void *_buf, size_t count, loff_t offset, ulong flags)
 {
 	int i = count;
 	const uint16_t *buf = _buf;
diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 654e647..227ea7b 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -456,7 +456,7 @@ flash_sect_t find_sector (struct flash_info *info, ulong addr)
 	return sector;
 }
 
-static int __cfi_erase(struct cdev *cdev, size_t count, unsigned long offset,
+static int __cfi_erase(struct cdev *cdev, size_t count, loff_t offset,
 		int verbose)
 {
         struct flash_info *finfo = (struct flash_info *)cdev->priv;
@@ -491,7 +491,7 @@ out:
         return ret;
 }
 
-static int cfi_erase(struct cdev *cdev, size_t count, unsigned long offset)
+static int cfi_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	return __cfi_erase(cdev, count, offset, 1);
 }
@@ -628,7 +628,7 @@ static int flash_real_protect (struct flash_info *info, long sector, int prot)
 	return retcode;
 }
 
-static int cfi_protect(struct cdev *cdev, size_t count, unsigned long offset, int prot)
+static int cfi_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
 {
 	struct flash_info *finfo = (struct flash_info *)cdev->priv;
 	unsigned long start, end;
@@ -651,7 +651,7 @@ out:
 	return ret;
 }
 
-static ssize_t cfi_write(struct cdev *cdev, const void *buf, size_t count, unsigned long offset, ulong flags)
+static ssize_t cfi_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
 {
         struct flash_info *finfo = (struct flash_info *)cdev->priv;
         int ret;
diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index 77669c2..1440227 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -194,13 +194,14 @@ static int erase_sector(struct m25p *flash, u32 offset)
  * Erase an address range on the flash chip.  The address range may extend
  * one or more erase sectors.  Return an error is there is a problem erasing.
  */
-static ssize_t m25p80_erase(struct cdev *cdev, size_t count, unsigned long offset)
+static ssize_t m25p80_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	struct m25p *flash = cdev->priv;
 	u32 addr, len;
 	u32 start_sector;
 	u32 end_sector;
 	u32 progress = 0;
+	int eraseshift = ffs(flash->erasesize) - 1;
 
 	dev_dbg(&flash->spi->dev, "%s %s 0x%llx, len %lld\n",
 		__func__, "at", (long long)offset, (long long)count);
@@ -212,8 +213,8 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, unsigned long offse
 	addr = offset;
 	len = count;
 
-	start_sector = offset / flash->erasesize;
-	end_sector = (offset + count - 1) / flash->erasesize;
+	start_sector = offset >> eraseshift;
+	end_sector = (offset + count - 1) >> eraseshift;
 	init_progression_bar(end_sector - start_sector + 1);
 
 	/* whole-chip erase? */
@@ -250,7 +251,8 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, unsigned long offse
 	return 0;
 }
 
-ssize_t m25p80_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
+ssize_t m25p80_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
+		ulong flags)
 {
 	struct m25p *flash = cdev->priv;
 	struct spi_transfer t[2];
@@ -302,7 +304,8 @@ ssize_t m25p80_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ul
 	return retlen;
 }
 
-ssize_t m25p80_write(struct cdev *cdev, const void *buf, size_t count, ulong offset, ulong flags)
+ssize_t m25p80_write(struct cdev *cdev, const void *buf, size_t count,
+		loff_t offset, ulong flags)
 {
 	struct m25p *flash = cdev->priv;
 	struct spi_transfer t[2];
@@ -381,7 +384,8 @@ ssize_t m25p80_write(struct cdev *cdev, const void *buf, size_t count, ulong off
 	return retlen;
 }
 #ifdef CONFIG_MTD_SST25L
-ssize_t sst_write(struct cdev *cdev, const void *buf, size_t count, ulong offset, ulong flags)
+ssize_t sst_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset,
+		ulong flags)
 {
 	struct m25p *flash = cdev->priv;
 	struct spi_transfer t[2];
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index c7c798b..99f6d49 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -358,7 +358,7 @@ static int cramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
 	return outsize;
 }
 
-static off_t cramfs_lseek(struct device_d *dev, FILE *f, off_t pos)
+static loff_t cramfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
 	f->pos = pos;
 	return f->pos;
diff --git a/fs/devfs.c b/fs/devfs.c
index ae48451..863f4ec 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -52,7 +52,7 @@ static int devfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t s
 	return cdev_write(cdev, buf, size, f->pos, f->flags);
 }
 
-static off_t devfs_lseek(struct device_d *_dev, FILE *f, off_t pos)
+static loff_t devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
 {
 	struct cdev *cdev = f->inode;
 	off_t ret = -1;
@@ -66,7 +66,7 @@ static off_t devfs_lseek(struct device_d *_dev, FILE *f, off_t pos)
 	return ret - cdev->offset;
 }
 
-static int devfs_erase(struct device_d *_dev, FILE *f, size_t count, unsigned long offset)
+static int devfs_erase(struct device_d *_dev, FILE *f, size_t count, loff_t offset)
 {
 	struct cdev *cdev = f->inode;
 
@@ -79,7 +79,7 @@ static int devfs_erase(struct device_d *_dev, FILE *f, size_t count, unsigned lo
 	return cdev->ops->erase(cdev, count, offset + cdev->offset);
 }
 
-static int devfs_protect(struct device_d *_dev, FILE *f, size_t count, unsigned long offset, int prot)
+static int devfs_protect(struct device_d *_dev, FILE *f, size_t count, loff_t offset, int prot)
 {
 	struct cdev *cdev = f->inode;
 
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 21464bd..5e6c81c 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -49,7 +49,7 @@ DRESULT disk_read(FATFS *fat, BYTE *buf, DWORD sector, BYTE count)
 
 	debug("%s: sector: %ld count: %d\n", __func__, sector, count);
 
-	ret = cdev_read(priv->cdev, buf, count << 9, sector * 512, 0);
+	ret = cdev_read(priv->cdev, buf, count << 9, (loff_t)sector * 512, 0);
 	if (ret != count << 9)
 		return ret;
 
@@ -64,7 +64,7 @@ DRESULT disk_write(FATFS *fat, const BYTE *buf, DWORD sector, BYTE count)
 	debug("%s: buf: %p sector: %ld count: %d\n",
 			__func__, buf, sector, count);
 
-	ret = cdev_write(priv->cdev, buf, count << 9, sector * 512, 0);
+	ret = cdev_write(priv->cdev, buf, count << 9, (loff_t)sector * 512, 0);
 	if (ret != count << 9)
 		return ret;
 
@@ -271,7 +271,7 @@ static int fat_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 	return outsize;
 }
 
-static off_t fat_lseek(struct device_d *dev, FILE *f, off_t pos)
+static loff_t fat_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
 	FIL *f_file = f->inode;
 	int ret;
diff --git a/fs/fs.c b/fs/fs.c
index af73c8c..6d1d703 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -692,7 +692,7 @@ int flush(int fd)
 	return ret;
 }
 
-off_t lseek(int fildes, off_t offset, int whence)
+loff_t lseek(int fildes, loff_t offset, int whence)
 {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
@@ -1243,7 +1243,7 @@ static void memcpy_sz(void *_dst, const void *_src, ulong count, ulong rwsize)
 	}
 }
 
-ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
+ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
 {
 	ulong size;
 	struct device_d *dev;
@@ -1252,13 +1252,13 @@ ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong
 		return -1;
 	dev = cdev->dev;
 
-	size = min((ulong)count, dev->resource[0].size - offset);
+	size = min((loff_t)count, dev->resource[0].size - offset);
 	memcpy_sz(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWSIZE_MASK);
 	return size;
 }
 EXPORT_SYMBOL(mem_read);
 
-ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, ulong offset, ulong flags)
+ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
 {
 	ulong size;
 	struct device_d *dev;
@@ -1267,7 +1267,7 @@ ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, ulong offset
 		return -1;
 	dev = cdev->dev;
 
-	size = min((ulong)count, dev->resource[0].size - offset);
+	size = min((loff_t)count, dev->resource[0].size - offset);
 	memcpy_sz(dev_get_mem_region(dev, 0) + offset, buf, size, flags & O_RWSIZE_MASK);
 	return size;
 }
diff --git a/fs/nfs.c b/fs/nfs.c
index 75a8f25..79e667f 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -805,7 +805,7 @@ static int nfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
 	return outsize;
 }
 
-static off_t nfs_lseek(struct device_d *dev, FILE *file, off_t pos)
+static loff_t nfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
 {
 	struct file_priv *priv = file->inode;
 
diff --git a/fs/ramfs.c b/fs/ramfs.c
index cec5e76..91d06b8 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -428,7 +428,7 @@ static int ramfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t i
 	return insize;
 }
 
-static off_t ramfs_lseek(struct device_d *dev, FILE *f, off_t pos)
+static loff_t ramfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
 	f->pos = pos;
 	return f->pos;
diff --git a/fs/tftp.c b/fs/tftp.c
index 6586270..b58d6fc 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -569,7 +569,7 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 	return outsize;
 }
 
-static off_t tftp_lseek(struct device_d *dev, FILE *f, off_t pos)
+static loff_t tftp_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
 	/* not implemented in tftp protocol */
 	return -ENOSYS;
diff --git a/include/driver.h b/include/driver.h
index 09dd1e4..4a8d48a 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -301,8 +301,8 @@ struct cdev;
 int     dev_protect(struct device_d *dev, size_t count, unsigned long offset, int prot);
 
 /* These are used by drivers which work with direct memory accesses */
-ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags);
-ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, ulong offset, ulong flags);
+ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
+ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
 int mem_memmap(struct cdev *cdev, void **map, int flags);
 
 /* Use this if you have nothing to do in your drivers probe function */
@@ -316,7 +316,7 @@ void devices_shutdown(void);
 int generic_memmap_ro(struct cdev *dev, void **map, int flags);
 int generic_memmap_rw(struct cdev *dev, void **map, int flags);
 
-static inline off_t dev_lseek_default(struct cdev *cdev, off_t ofs)
+static inline loff_t dev_lseek_default(struct cdev *cdev, loff_t ofs)
 {
 	return ofs;
 }
@@ -373,18 +373,18 @@ extern struct bus_type platform_bus;
 
 struct file_operations {
 	/*! Called in response of reading from this device. Required */
-	ssize_t (*read)(struct cdev*, void* buf, size_t count, ulong offset, ulong flags);
+	ssize_t (*read)(struct cdev*, void* buf, size_t count, loff_t offset, ulong flags);
 
 	/*! Called in response of write to this device. Required */
-	ssize_t (*write)(struct cdev*, const void* buf, size_t count, ulong offset, ulong flags);
+	ssize_t (*write)(struct cdev*, const void* buf, size_t count, loff_t offset, ulong flags);
 
 	int (*ioctl)(struct cdev*, int, void *);
-	off_t (*lseek)(struct cdev*, off_t);
+	loff_t (*lseek)(struct cdev*, loff_t);
 	int (*open)(struct cdev*, unsigned long flags);
 	int (*close)(struct cdev*);
 	int (*flush)(struct cdev*);
-	int (*erase)(struct cdev*, size_t count, unsigned long offset);
-	int (*protect)(struct cdev*, size_t count, unsigned long offset, int prot);
+	int (*erase)(struct cdev*, size_t count, loff_t offset);
+	int (*protect)(struct cdev*, size_t count, loff_t offset, int prot);
 	int (*memmap)(struct cdev*, void **map, int flags);
 };
 
diff --git a/include/fs.h b/include/fs.h
index d82f026..2b1023e 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -23,8 +23,8 @@ typedef struct dir {
 
 typedef struct filep {
 	struct device_d *dev; /* The device this FILE belongs to              */
-	ulong pos;            /* current position in stream                   */
-	ulong size;           /* The size of this inode                       */
+	loff_t pos;            /* current position in stream                   */
+	loff_t size;           /* The size of this inode                       */
 	ulong flags;          /* the O_* flags from open                      */
 
 	void *inode;         /* private to the filesystem driver              */
@@ -54,7 +54,7 @@ struct fs_driver_d {
 	int (*read)(struct device_d *dev, FILE *f, void *buf, size_t size);
 	int (*write)(struct device_d *dev, FILE *f, const void *buf, size_t size);
 	int (*flush)(struct device_d *dev, FILE *f);
-	off_t (*lseek)(struct device_d *dev, FILE *f, off_t pos);
+	loff_t (*lseek)(struct device_d *dev, FILE *f, loff_t pos);
 
 	struct dir* (*opendir)(struct device_d *dev, const char *pathname);
 	struct dirent* (*readdir)(struct device_d *dev, struct dir *dir);
@@ -63,9 +63,9 @@ struct fs_driver_d {
 
 	int (*ioctl)(struct device_d *dev, FILE *f, int request, void *buf);
 	int (*erase)(struct device_d *dev, FILE *f, size_t count,
-			unsigned long offset);
+			loff_t offset);
 	int (*protect)(struct device_d *dev, FILE *f, size_t count,
-			unsigned long offset, int prot);
+			loff_t offset, int prot);
 
 	int (*memmap)(struct device_d *dev, FILE *f, void **map, int flags);
 
@@ -109,7 +109,7 @@ ssize_t write(int fd, const void *buf, size_t count);
 #define SEEK_CUR	2
 #define SEEK_END	3
 
-off_t lseek(int fildes, off_t offset, int whence);
+loff_t lseek(int fildes, loff_t offset, int whence);
 int mkdir (const char *pathname, mode_t mode);
 
 /* Create a directory and its parents */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
