Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RbfgF-0001zX-2p
 for barebox@lists.infradead.org; Fri, 16 Dec 2011 21:51:05 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Fri, 16 Dec 2011 22:50:29 +0100
Message-Id: <1324072234-31634-4-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1324072234-31634-1-git-send-email-robert.jarzmik@free.fr>
References: <1324072234-31634-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH V2 3/8] drivers/mtd: transfer NAND notions to MTD core
To: barebox@lists.infradead.org

Change NAND_WRITE into MTD_WRITE.
Change "page_shift" references in the core, which are purely
NAND, into mtd->writesize which is MTD generic.
Rename all "info" (struct mtd_info) into "mtd".

Beware, bisection is broken here as driver name changes from
/dev/nand<N> into /dev/mtd<N>.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/Kconfig                    |   10 ++
 drivers/mtd/core.c                     |  149 ++++++++++++++++----------------
 drivers/mtd/nand/Kconfig               |   10 --
 drivers/mtd/nand/Makefile              |    2 +-
 drivers/mtd/nand/nand-bb.c             |    6 +-
 drivers/mtd/nand/nand_base.c           |   14 ++--
 drivers/mtd/nand/nand_bbt.c            |    2 +-
 drivers/mtd/nand/nand_hwecc.c          |    4 +-
 drivers/mtd/nand/nand_hwecc_syndrome.c |    6 +-
 drivers/mtd/nand/nand_swecc.c          |    4 +-
 10 files changed, 104 insertions(+), 103 deletions(-)

diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
index 562f0cd..81282ab 100644
--- a/drivers/mtd/Kconfig
+++ b/drivers/mtd/Kconfig
@@ -3,6 +3,16 @@ menuconfig MTD
 
 if MTD
 
+config MTD_WRITE
+	bool
+	default y
+	prompt "Support writing to MTD devices"
+
+config MTD_READ_OOB
+	bool
+	default y
+	prompt "Create a device for reading the OOB data"
+
 source "drivers/mtd/nand/Kconfig"
 source "drivers/mtd/ubi/Kconfig"
 
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 3bfcaf4..cea5231 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -26,16 +26,16 @@
 #include <nand.h>
 #include <errno.h>
 
-static 	ssize_t nand_read(struct cdev *cdev, void* buf, size_t count,
+static 	ssize_t mtd_read(struct cdev *cdev, void* buf, size_t count,
 			  ulong offset, ulong flags)
 {
-	struct mtd_info *info = cdev->priv;
+	struct mtd_info *mtd = cdev->priv;
 	size_t retlen;
 	int ret;
 
-	debug("nand_read: 0x%08lx 0x%08x\n", offset, count);
+	debug("mtd_read: 0x%08lx 0x%08x\n", offset, count);
 
-	ret = info->read(info, offset, count, &retlen, buf);
+	ret = mtd->read(mtd, offset, count, &retlen, buf);
 
 	if(ret) {
 		printf("err %d\n", ret);
@@ -44,10 +44,10 @@ static 	ssize_t nand_read(struct cdev *cdev, void* buf, size_t count,
 	return retlen;
 }
 
-#define NOTALIGNED(x) (x & (info->writesize - 1)) != 0
-#define MTDPGALG(x) ((x) & (info->writesize - 1))
+#define NOTALIGNED(x) (x & (mtd->writesize - 1)) != 0
+#define MTDPGALG(x) ((x) & (mtd->writesize - 1))
 
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 static int all_ff(const void *buf, int len)
 {
 	int i;
@@ -59,10 +59,10 @@ static int all_ff(const void *buf, int len)
 	return 1;
 }
 
-static ssize_t nand_write(struct cdev* cdev, const void *buf, size_t _count,
+static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
 			  ulong offset, ulong flags)
 {
-	struct mtd_info *info = cdev->priv;
+	struct mtd_info *mtd = cdev->priv;
 	size_t retlen, now;
 	int ret = 0;
 	void *wrbuf = NULL;
@@ -75,23 +75,23 @@ static ssize_t nand_write(struct cdev* cdev, const void *buf, size_t _count,
 
 	dev_dbg(cdev->dev, "write: 0x%08lx 0x%08x\n", offset, count);
 	while (count) {
-		now = count > info->writesize ? info->writesize : count;
+		now = count > mtd->writesize ? mtd->writesize : count;
 
 		if (NOTALIGNED(now)) {
 			dev_dbg(cdev->dev, "not aligned: %d %ld\n",
-				info->writesize,
-				(offset % info->writesize));
-			wrbuf = xmalloc(info->writesize);
-			memset(wrbuf, 0xff, info->writesize);
-			memcpy(wrbuf + (offset % info->writesize), buf, now);
-			if (!all_ff(wrbuf, info->writesize))
-				ret = info->write(info, MTDPGALG(offset),
-						  info->writesize, &retlen,
+				mtd->writesize,
+				(offset % mtd->writesize));
+			wrbuf = xmalloc(mtd->writesize);
+			memset(wrbuf, 0xff, mtd->writesize);
+			memcpy(wrbuf + (offset % mtd->writesize), buf, now);
+			if (!all_ff(wrbuf, mtd->writesize))
+				ret = mtd->write(mtd, MTDPGALG(offset),
+						  mtd->writesize, &retlen,
 						  wrbuf);
 			free(wrbuf);
 		} else {
-			if (!all_ff(buf, info->writesize))
-				ret = info->write(info, offset, now, &retlen,
+			if (!all_ff(buf, mtd->writesize))
+				ret = mtd->write(mtd, offset, now, &retlen,
 						  buf);
 			dev_dbg(cdev->dev,
 				"offset: 0x%08lx now: 0x%08x retlen: 0x%08x\n",
@@ -110,27 +110,27 @@ out:
 }
 #endif
 
-static int nand_ioctl(struct cdev *cdev, int request, void *buf)
+static int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 {
-	struct mtd_info *info = cdev->priv;
+	struct mtd_info *mtd = cdev->priv;
 	struct mtd_info_user *user = buf;
 
 	switch (request) {
 	case MEMGETBADBLOCK:
 		dev_dbg(cdev->dev, "MEMGETBADBLOCK: 0x%08lx\n", (off_t)buf);
-		return info->block_isbad(info, (off_t)buf);
-#ifdef CONFIG_NAND_WRITE
+		return mtd->block_isbad(mtd, (off_t)buf);
+#ifdef CONFIG_MTD_WRITE
 	case MEMSETBADBLOCK:
 		dev_dbg(cdev->dev, "MEMSETBADBLOCK: 0x%08lx\n", (off_t)buf);
-		return info->block_markbad(info, (off_t)buf);
+		return mtd->block_markbad(mtd, (off_t)buf);
 #endif
 	case MEMGETINFO:
-		user->type	= info->type;
-		user->flags	= info->flags;
-		user->size	= info->size;
-		user->erasesize	= info->erasesize;
-		user->oobsize	= info->oobsize;
-		user->mtd	= info;
+		user->type	= mtd->type;
+		user->flags	= mtd->flags;
+		user->size	= mtd->size;
+		user->erasesize	= mtd->erasesize;
+		user->oobsize	= mtd->oobsize;
+		user->mtd	= mtd;
 		/* The below fields are obsolete */
 		user->ecctype	= -1;
 		user->eccsize	= 0;
@@ -140,88 +140,89 @@ static int nand_ioctl(struct cdev *cdev, int request, void *buf)
 	return 0;
 }
 
-#ifdef CONFIG_NAND_WRITE
-static ssize_t nand_erase(struct cdev *cdev, size_t count, unsigned long offset)
+#ifdef CONFIG_MTD_WRITE
+static ssize_t mtd_erase(struct cdev *cdev, size_t count, unsigned long offset)
 {
-	struct mtd_info *info = cdev->priv;
+	struct mtd_info *mtd = cdev->priv;
 	struct erase_info erase;
 	int ret;
 
 	memset(&erase, 0, sizeof(erase));
-	erase.mtd = info;
+	erase.mtd = mtd;
 	erase.addr = offset;
-	erase.len = info->erasesize;
+	erase.len = mtd->erasesize;
 
 	while (count > 0) {
 		dev_dbg(cdev->dev, "erase %d %d\n", erase.addr, erase.len);
 
-		ret = info->block_isbad(info, erase.addr);
+		ret = mtd->block_isbad(mtd, erase.addr);
 		if (ret > 0) {
 			printf("Skipping bad block at 0x%08x\n", erase.addr);
 		} else {
-			ret = info->erase(info, &erase);
+			ret = mtd->erase(mtd, &erase);
 			if (ret)
 				return ret;
 		}
 
-		erase.addr += info->erasesize;
-		count -= count > info->erasesize ? info->erasesize : count;
+		erase.addr += mtd->erasesize;
+		count -= count > mtd->erasesize ? mtd->erasesize : count;
 	}
 
 	return 0;
 }
 #endif
 
-static struct file_operations nand_ops = {
-	.read   = nand_read,
-#ifdef CONFIG_NAND_WRITE
-	.write  = nand_write,
-	.erase  = nand_erase,
+static struct file_operations mtd_ops = {
+	.read   = mtd_read,
+#ifdef CONFIG_MTD_WRITE
+	.write  = mtd_write,
+	.erase  = mtd_erase,
 #endif
-	.ioctl  = nand_ioctl,
+	.ioctl  = mtd_ioctl,
 	.lseek  = dev_lseek_default,
 };
 
-#ifdef CONFIG_NAND_READ_OOB
-static ssize_t nand_read_oob(struct cdev *cdev, void *buf, size_t count,
+#ifdef CONFIG_MTD_READ_OOB
+static ssize_t mtd_read_oob(struct cdev *cdev, void *buf, size_t count,
 			     ulong offset, ulong flags)
 {
-	struct mtd_info *info = cdev->priv;
-	struct nand_chip *chip = info->priv;
+	struct mtd_info *mtd = cdev->priv;
 	struct mtd_oob_ops ops;
 	int ret;
 
-	if (count < info->oobsize)
+	if (count < mtd->oobsize)
 		return -EINVAL;
 
 	ops.mode = MTD_OOB_RAW;
 	ops.ooboffs = 0;
-	ops.ooblen = info->oobsize;
+	ops.ooblen = mtd->oobsize;
 	ops.oobbuf = buf;
 	ops.datbuf = NULL;
-	ops.len = info->oobsize;
-
-	offset /= info->oobsize;
-	ret = info->read_oob(info, offset << chip->page_shift, &ops);
+	ops.len = mtd->oobsize;
+
+	offset /= mtd->oobsize;
+	/*
+	 * This seems suspicious, shouldn't it be :
+	 *   offset / mtd->oobsize * mtd->writesize
+	 */
+	ret = mtd->read_oob(mtd, offset * mtd->writesize, &ops);
 	if (ret)
 		return ret;
 
-	return info->oobsize;
+	return mtd->oobsize;
 }
 
-static struct file_operations nand_ops_oob = {
-	.read   = nand_read_oob,
-	.ioctl  = nand_ioctl,
+static struct file_operations mtd_ops_oob = {
+	.read   = mtd_read_oob,
+	.ioctl  = mtd_ioctl,
 	.lseek  = dev_lseek_default,
 };
 
-static int nand_init_oob_cdev(struct mtd_info *mtd)
+static int mtd_init_oob_cdev(struct mtd_info *mtd)
 {
-	struct nand_chip *chip = mtd->priv;
-
-	mtd->cdev_oob.ops = &nand_ops_oob;
-	mtd->cdev_oob.size = (mtd->size >> chip->page_shift) * mtd->oobsize;
-	mtd->cdev_oob.name = asprintf("nand_oob%d", mtd->class_dev.id);
+	mtd->cdev_oob.ops = &mtd_ops_oob;
+	mtd->cdev_oob.size = (mtd->size / mtd->writesize) * mtd->oobsize;
+	mtd->cdev_oob.name = asprintf("mtd_oob%d", mtd->class_dev.id);
 	mtd->cdev_oob.priv = mtd;
 	mtd->cdev_oob.dev = &mtd->class_dev;
 	devfs_create(&mtd->cdev_oob);
@@ -229,18 +230,18 @@ static int nand_init_oob_cdev(struct mtd_info *mtd)
 	return 0;
 }
 
-static void nand_exit_oob_cdev(struct mtd_info *mtd)
+static void mtd_exit_oob_cdev(struct mtd_info *mtd)
 {
 	free(mtd->cdev_oob.name);
 }
 #else
 
-static int nand_init_oob_cdev(struct mtd_info *mtd)
+static int mtd_init_oob_cdev(struct mtd_info *mtd)
 {
 	return 0;
 }
 
-static void nand_exit_oob_cdev(struct mtd_info *mtd)
+static void mtd_exit_oob_cdev(struct mtd_info *mtd)
 {
 	return;
 }
@@ -250,12 +251,12 @@ int add_mtd_device(struct mtd_info *mtd)
 {
 	char str[16];
 
-	strcpy(mtd->class_dev.name, "nand");
+	strcpy(mtd->class_dev.name, "mtd");
 	register_device(&mtd->class_dev);
 
-	mtd->cdev.ops = &nand_ops;
+	mtd->cdev.ops = &mtd_ops;
 	mtd->cdev.size = mtd->size;
-	mtd->cdev.name = asprintf("nand%d", mtd->class_dev.id);
+	mtd->cdev.name = asprintf("mtd%d", mtd->class_dev.id);
 	mtd->cdev.priv = mtd;
 	mtd->cdev.dev = &mtd->class_dev;
 	mtd->cdev.mtd = mtd;
@@ -271,7 +272,7 @@ int add_mtd_device(struct mtd_info *mtd)
 
 	devfs_create(&mtd->cdev);
 
-	nand_init_oob_cdev(mtd);
+	mtd_init_oob_cdev(mtd);
 
 	return 0;
 }
@@ -279,7 +280,7 @@ int add_mtd_device(struct mtd_info *mtd)
 int del_mtd_device (struct mtd_info *mtd)
 {
 	unregister_device(&mtd->class_dev);
-	nand_exit_oob_cdev(mtd);
+	mtd_exit_oob_cdev(mtd);
 	free(mtd->param_size.value);
 	free(mtd->cdev.name);
 	return 0;
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 20f9f33..43fa620 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -8,11 +8,6 @@ menuconfig NAND
 
 if NAND
 
-config NAND_WRITE
-	bool
-	default y
-	prompt "Support writing to Nand"
-
 config NAND_ECC_SOFT
 	bool
 	default y
@@ -49,11 +44,6 @@ config NAND_BBT
 	  Say y here to include support for bad block tables. This speeds
 	  up the process of checking for bad blocks
 
-config NAND_READ_OOB
-	bool
-	default y
-	prompt "create a device for reading the OOB data"
-
 config NAND_IMX
 	bool
 	prompt "i.MX NAND driver"
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index 26b65a7..00b7b27 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -1,7 +1,7 @@
 
 # Generic NAND options
 obj-$(CONFIG_NAND)			+= nand_ecc.o
-obj-$(CONFIG_NAND_WRITE)		+= nand_write.o
+obj-$(CONFIG_MTD_WRITE)			+= nand_write.o
 obj-$(CONFIG_NAND_ECC_SOFT)		+= nand_ecc.o nand_swecc.o
 obj-$(CONFIG_NAND_ECC_HW)		+= nand_hwecc.o
 obj-$(CONFIG_NAND_ECC_HW_SYNDROME)	+= nand_hwecc_syndrome.o
diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index dbfb8e3..dab0f38 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -89,7 +89,7 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 /* Must be a multiple of the largest NAND page size */
 #define BB_WRITEBUF_SIZE	4096
 
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
 {
 	int ret, now;
@@ -183,7 +183,7 @@ static int nand_bb_close(struct cdev *cdev)
 {
 	struct nand_bb *bb = cdev->priv;
 
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 	if (bb->needs_write)
 		nand_bb_write_buf(bb, bb->offset % BB_WRITEBUF_SIZE);
 #endif
@@ -215,7 +215,7 @@ static struct file_operations nand_bb_ops = {
 	.open   = nand_bb_open,
 	.close  = nand_bb_close,
 	.read  	= nand_bb_read,
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 	.write 	= nand_bb_write,
 	.erase	= nand_bb_erase,
 #endif
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index ec0f4a3..c4eca0d 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1006,7 +1006,7 @@ static void nand_set_defaults(struct nand_chip *chip, int busw)
 		chip->read_word = nand_read_word;
 	if (!chip->block_bad)
 		chip->block_bad = nand_block_bad;
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 	if (!chip->block_markbad)
 		chip->block_markbad = nand_default_block_markbad;
 	if (!chip->write_buf)
@@ -1168,7 +1168,7 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 	if (*maf_id != NAND_MFR_SAMSUNG && !type->pagesize)
 		chip->options &= ~NAND_SAMSUNG_LP_OPTIONS;
 
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 	/* Check for AND chips with 4 page planes */
 	if (chip->options & NAND_4PAGE_ARRAY)
 		chip->erase_cmd = multi_erase_cmd;
@@ -1297,7 +1297,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 		}
 	}
 
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 	if (!chip->write_page)
 		chip->write_page = nand_write_page;
 #endif
@@ -1308,7 +1308,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 	 */
 	if (!chip->ecc.read_page_raw)
 		chip->ecc.read_page_raw = nand_read_page_raw;
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 	if (!chip->ecc.write_page_raw)
 		chip->ecc.write_page_raw = nand_write_page_raw;
 #endif
@@ -1335,7 +1335,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 		printk(KERN_WARNING "NAND_ECC_NONE selected by board driver. "
 		       "This is not recommended !!\n");
 		chip->ecc.read_page = nand_read_page_raw;
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 		chip->ecc.write_page = nand_write_page_raw;
 		chip->ecc.write_oob = nand_write_oob_std;
 #endif
@@ -1401,7 +1401,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 	/* Fill in remaining MTD driver data */
 	mtd->type = MTD_NANDFLASH;
 	mtd->flags = MTD_CAP_NANDFLASH;
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 	mtd->erase = nand_erase;
 	mtd->write = nand_write;
 	mtd->write_oob = nand_write_oob;
@@ -1413,7 +1413,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 	mtd->lock = NULL;
 	mtd->unlock = NULL;
 	mtd->block_isbad = nand_block_isbad;
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 	mtd->block_markbad = nand_block_markbad;
 #endif
 	/* propagate ecc.layout to mtd_info */
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index bf3a7db..c1696ee 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -557,7 +557,7 @@ static int search_read_bbts(struct mtd_info *mtd, uint8_t * buf, struct nand_bbt
  * (Re)write the bad block table
  *
 */
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 		     struct nand_bbt_descr *td, struct nand_bbt_descr *md,
 		     int chipsel)
diff --git a/drivers/mtd/nand/nand_hwecc.c b/drivers/mtd/nand/nand_hwecc.c
index 5ead49c..a48efa1 100644
--- a/drivers/mtd/nand/nand_hwecc.c
+++ b/drivers/mtd/nand/nand_hwecc.c
@@ -61,7 +61,7 @@ static int nand_read_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
  * @chip:	nand chip info structure
  * @buf:	data buffer
  */
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 static void nand_write_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
 				  const uint8_t *buf)
 {
@@ -94,7 +94,7 @@ void nand_init_ecc_hw(struct nand_chip *chip)
 	if (!chip->ecc.read_oob)
 		chip->ecc.read_oob = nand_read_oob_std;
 #endif
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 	if (!chip->ecc.write_oob)
 		chip->ecc.write_oob = nand_write_oob_std;
 	if (!chip->ecc.write_page)
diff --git a/drivers/mtd/nand/nand_hwecc_syndrome.c b/drivers/mtd/nand/nand_hwecc_syndrome.c
index dd067c9..1493b88 100644
--- a/drivers/mtd/nand/nand_hwecc_syndrome.c
+++ b/drivers/mtd/nand/nand_hwecc_syndrome.c
@@ -72,7 +72,7 @@ static int nand_read_page_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
  * The hw generator calculates the error syndrome automatically. Therefor
  * we need a special oob layout and handling.
  */
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 static void nand_write_page_syndrome(struct mtd_info *mtd,
 				    struct nand_chip *chip, const uint8_t *buf)
 {
@@ -155,7 +155,7 @@ static int nand_read_oob_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
  * @chip:	nand chip info structure
  * @page:	page number to write
  */
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 static int nand_write_oob_syndrome(struct mtd_info *mtd,
 				   struct nand_chip *chip, int page)
 {
@@ -216,7 +216,7 @@ void nand_init_ecc_hw_syndrome(struct nand_chip *chip)
 		chip->ecc.read_page = nand_read_page_syndrome;
 	if (!chip->ecc.read_oob)
 		chip->ecc.read_oob = nand_read_oob_syndrome;
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 	if (!chip->ecc.write_page)
 		chip->ecc.write_page = nand_write_page_syndrome;
 	if (!chip->ecc.write_oob)
diff --git a/drivers/mtd/nand/nand_swecc.c b/drivers/mtd/nand/nand_swecc.c
index a5edffa..95dfbd8 100644
--- a/drivers/mtd/nand/nand_swecc.c
+++ b/drivers/mtd/nand/nand_swecc.c
@@ -57,7 +57,7 @@ static int nand_read_page_swecc(struct mtd_info *mtd, struct nand_chip *chip,
  * @chip:	nand chip info structure
  * @buf:	data buffer
  */
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 static void nand_write_page_swecc(struct mtd_info *mtd, struct nand_chip *chip,
 				  const uint8_t *buf)
 {
@@ -85,7 +85,7 @@ void nand_init_ecc_soft(struct nand_chip *chip)
 	chip->ecc.correct = nand_correct_data;
 	chip->ecc.read_page = nand_read_page_swecc;
 	chip->ecc.read_oob = nand_read_oob_std;
-#ifdef CONFIG_NAND_WRITE
+#ifdef CONFIG_MTD_WRITE
 	chip->ecc.write_page = nand_write_page_swecc;
 	chip->ecc.write_oob = nand_write_oob_std;
 #endif
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
