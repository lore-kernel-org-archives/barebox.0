Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xL-00054H-6r
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:40 +0100
Message-Id: <20201106133900.2656-7-s.hauer@pengutronix.de>
In-Reply-To: <20201106133900.2656-1-s.hauer@pengutronix.de>
References: <20201106133900.2656-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/26] mtd: Add underscore prefix to mtd hooks
To: Barebox List <barebox@lists.infradead.org>

In the Kernel the mtd function hooks begin with an underscore. Do the
same in barebox to be better comparable to the Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c                  | 36 +++++++++++-----------
 drivers/mtd/devices/docg3.c         | 12 ++++----
 drivers/mtd/devices/mtd_dataflash.c |  6 ++--
 drivers/mtd/devices/mtdram.c        |  6 ++--
 drivers/mtd/mtdconcat.c             | 34 ++++++++++-----------
 drivers/mtd/nand/nand_base.c        | 22 +++++++-------
 drivers/mtd/nand/nand_mxs.c         | 18 +++++------
 drivers/mtd/nor/cfi_flash.c         | 10 +++----
 drivers/mtd/partition.c             | 46 ++++++++++++++---------------
 drivers/mtd/spi-nor/spi-nor.c       | 12 ++++----
 include/linux/mtd/mtd.h             | 46 ++++++++++++++---------------
 11 files changed, 124 insertions(+), 124 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 13f3d61f00..71c602dbb7 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -199,7 +199,7 @@ static int mtd_op_erase(struct cdev *cdev, loff_t count, loff_t offset)
 	erase.mtd = mtd;
 	addr = offset;
 
-	if (!mtd->block_isbad) {
+	if (!mtd->_block_isbad) {
 		erase.addr = addr;
 		erase.len = count;
 		return mtd_erase(mtd, &erase);
@@ -236,7 +236,7 @@ static int mtd_op_protect(struct cdev *cdev, size_t count, loff_t offset, int pr
 {
 	struct mtd_info *mtd = cdev->priv;
 
-	if (!mtd->unlock || !mtd->lock)
+	if (!mtd->_unlock || !mtd->_lock)
 		return -ENOSYS;
 
 	if (prot)
@@ -318,35 +318,35 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 
 int mtd_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 {
-	if (!mtd->lock)
+	if (!mtd->_lock)
 		return -EOPNOTSUPP;
 	if (ofs < 0 || ofs > mtd->size || len > mtd->size - ofs)
 		return -EINVAL;
 	if (!len)
 		return 0;
-	return mtd->lock(mtd, ofs, len);
+	return mtd->_lock(mtd, ofs, len);
 }
 
 int mtd_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 {
-	if (!mtd->unlock)
+	if (!mtd->_unlock)
 		return -EOPNOTSUPP;
 	if (ofs < 0 || ofs > mtd->size || len > mtd->size - ofs)
 		return -EINVAL;
 	if (!len)
 		return 0;
-	return mtd->unlock(mtd, ofs, len);
+	return mtd->_unlock(mtd, ofs, len);
 }
 
 int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs)
 {
-	if (!mtd->block_isbad)
+	if (!mtd->_block_isbad)
 		return 0;
 
 	if (ofs < 0 || ofs > mtd->size)
 		return -EINVAL;
 
-	return mtd->block_isbad(mtd, ofs);
+	return mtd->_block_isbad(mtd, ofs);
 }
 
 int mtd_block_markbad(struct mtd_info *mtd, loff_t ofs)
@@ -356,8 +356,8 @@ int mtd_block_markbad(struct mtd_info *mtd, loff_t ofs)
 	if (ofs < 0 || ofs >= mtd->size)
 		return -EINVAL;
 
-	if (mtd->block_markbad)
-		ret = mtd->block_markbad(mtd, ofs);
+	if (mtd->_block_markbad)
+		ret = mtd->_block_markbad(mtd, ofs);
 	else
 		ret = -ENOSYS;
 
@@ -368,8 +368,8 @@ int mtd_block_markgood(struct mtd_info *mtd, loff_t ofs)
 {
 	int ret;
 
-	if (mtd->block_markgood)
-		ret = mtd->block_markgood(mtd, ofs);
+	if (mtd->_block_markgood)
+		ret = mtd->_block_markgood(mtd, ofs);
 	else
 		ret = -ENOSYS;
 
@@ -392,7 +392,7 @@ int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
 	 * representing the maximum number of bitflips that were corrected on
 	 * any one ecc region (if applicable; zero otherwise).
 	 */
-	ret_code = mtd->read(mtd, from, len, retlen, buf);
+	ret_code = mtd->_read(mtd, from, len, retlen, buf);
 	if (unlikely(ret_code < 0))
 		return ret_code;
 	if (mtd->ecc_strength == 0)
@@ -407,12 +407,12 @@ int mtd_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
 
 	if (to < 0 || to >= mtd->size || len > mtd->size - to)
 		return -EINVAL;
-	if (!mtd->write || !(mtd->flags & MTD_WRITEABLE))
+	if (!mtd->_write || !(mtd->flags & MTD_WRITEABLE))
 		return -EROFS;
 	if (!len)
 		return 0;
 
-	return mtd->write(mtd, to, len, retlen, buf);
+	return mtd->_write(mtd, to, len, retlen, buf);
 }
 
 int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
@@ -425,7 +425,7 @@ int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 	if (!instr->len)
 		return 0;
 
-	return mtd->erase(mtd, instr);
+	return mtd->_erase(mtd, instr);
 }
 
 int mtd_read_oob(struct mtd_info *mtd, loff_t from, struct mtd_oob_ops *ops)
@@ -433,7 +433,7 @@ int mtd_read_oob(struct mtd_info *mtd, loff_t from, struct mtd_oob_ops *ops)
 	int ret_code;
 
 	ops->retlen = ops->oobretlen = 0;
-	if (!mtd->read_oob)
+	if (!mtd->_read_oob)
 		return -EOPNOTSUPP;
 	/*
 	 * In cases where ops->datbuf != NULL, mtd->_read_oob() has semantics
@@ -441,7 +441,7 @@ int mtd_read_oob(struct mtd_info *mtd, loff_t from, struct mtd_oob_ops *ops)
 	 * representing max bitflips. In other cases, mtd->_read_oob() may
 	 * return -EUCLEAN. In all cases, perform similar logic to mtd_read().
 	 */
-	ret_code = mtd->read_oob(mtd, from, ops);
+	ret_code = mtd->_read_oob(mtd, from, ops);
 	if (unlikely(ret_code < 0))
 		return ret_code;
 	if (mtd->ecc_strength == 0)
diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index 8921086a63..9b1e774995 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -1069,13 +1069,13 @@ static void __init doc_set_driver_info(int chip_id, struct mtd_info *mtd)
 		mtd->erasesize /= 2;
 	mtd->writesize = DOC_LAYOUT_PAGE_SIZE;
 	mtd->oobsize = DOC_LAYOUT_OOB_SIZE;
-	mtd->read = doc_read;
-	mtd->read_oob = doc_read_oob;
-	mtd->block_isbad = doc_block_isbad;
+	mtd->_read = doc_read;
+	mtd->_read_oob = doc_read_oob;
+	mtd->_block_isbad = doc_block_isbad;
 #ifdef CONFIG_MTD_WRITE
-	mtd->erase = doc_erase;
-	mtd->write = doc_write;
-	mtd->write_oob = doc_write_oob;
+	mtd->_erase = doc_erase;
+	mtd->_write = doc_write;
+	mtd->_write_oob = doc_write_oob;
 #endif
 }
 
diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index cd5ab6c972..77af940644 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -627,9 +627,9 @@ add_dataflash_otp(struct spi_device *spi, char *name,
 	device->writesize = pagesize;
 	device->type = MTD_DATAFLASH;
 	device->flags = MTD_WRITEABLE;
-	device->erase = dataflash_erase;
-	device->read = dataflash_read;
-	device->write = dataflash_write;
+	device->_erase = dataflash_erase;
+	device->_read = dataflash_read;
+	device->_write = dataflash_write;
 	device->priv = priv;
 
 	device->parent = &spi->dev;
diff --git a/drivers/mtd/devices/mtdram.c b/drivers/mtd/devices/mtdram.c
index 783e1448d6..854aee4773 100644
--- a/drivers/mtd/devices/mtdram.c
+++ b/drivers/mtd/devices/mtdram.c
@@ -86,9 +86,9 @@ static int mtdram_probe(struct device_d *dev)
 	mtd->flags = MTD_CAP_RAM;
 	mtd->size = size;
 
-	mtd->read = ram_read;
-	mtd->write = ram_write;
-	mtd->erase = ram_erase;
+	mtd->_read = ram_read;
+	mtd->_write = ram_write;
+	mtd->_erase = ram_erase;
 	mtd->erasesize = 1;
 
 	mtd->parent = dev;
diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
index d53c4b22e1..3032c5a16d 100644
--- a/drivers/mtd/mtdconcat.c
+++ b/drivers/mtd/mtdconcat.c
@@ -577,16 +577,16 @@ struct mtd_info *mtd_concat_create(struct mtd_info *subdev[],	/* subdevices to c
 	concat->mtd.subpage_sft = subdev[0]->subpage_sft;
 	concat->mtd.oobsize = subdev[0]->oobsize;
 	concat->mtd.oobavail = subdev[0]->oobavail;
-	if (subdev[0]->read_oob)
-		concat->mtd.read_oob = concat_read_oob;
-	if (subdev[0]->write_oob)
-		concat->mtd.write_oob = concat_write_oob;
-	if (subdev[0]->block_isbad)
-		concat->mtd.block_isbad = concat_block_isbad;
-	if (subdev[0]->block_markbad)
-		concat->mtd.block_markbad = concat_block_markbad;
-	if (subdev[0]->block_markgood)
-		concat->mtd.block_markgood = concat_block_markgood;
+	if (subdev[0]->_read_oob)
+		concat->mtd._read_oob = concat_read_oob;
+	if (subdev[0]->_write_oob)
+		concat->mtd._write_oob = concat_write_oob;
+	if (subdev[0]->_block_isbad)
+		concat->mtd._block_isbad = concat_block_isbad;
+	if (subdev[0]->_block_markbad)
+		concat->mtd._block_markbad = concat_block_markbad;
+	if (subdev[0]->_block_markgood)
+		concat->mtd._block_markgood = concat_block_markgood;
 
 	concat->mtd.ecc_stats.badblocks = subdev[0]->ecc_stats.badblocks;
 
@@ -623,8 +623,8 @@ struct mtd_info *mtd_concat_create(struct mtd_info *subdev[],	/* subdevices to c
 		if (concat->mtd.writesize   !=  subdev[i]->writesize ||
 		    concat->mtd.subpage_sft != subdev[i]->subpage_sft ||
 		    concat->mtd.oobsize    !=  subdev[i]->oobsize ||
-		    !concat->mtd.read_oob  != !subdev[i]->read_oob ||
-		    !concat->mtd.write_oob != !subdev[i]->write_oob) {
+		    !concat->mtd._read_oob  != !subdev[i]->_read_oob ||
+		    !concat->mtd._write_oob != !subdev[i]->_write_oob) {
 			kfree(concat);
 			printk("Incompatible OOB or ECC data on \"%s\"\n",
 			       subdev[i]->name);
@@ -639,11 +639,11 @@ struct mtd_info *mtd_concat_create(struct mtd_info *subdev[],	/* subdevices to c
 	concat->num_subdev = num_devs;
 	concat->mtd.name = xstrdup(name);
 
-	concat->mtd.erase = concat_erase;
-	concat->mtd.read = concat_read;
-	concat->mtd.write = concat_write;
-	concat->mtd.lock = concat_lock;
-	concat->mtd.unlock = concat_unlock;
+	concat->mtd._erase = concat_erase;
+	concat->mtd._read = concat_read;
+	concat->mtd._write = concat_write;
+	concat->mtd._lock = concat_lock;
+	concat->mtd._unlock = concat_unlock;
 
 	/*
 	 * Combine the erase block size info of the subdevices:
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index ef0b15d64e..b8438b2891 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -3799,17 +3799,17 @@ int nand_scan_tail(struct nand_chip *chip)
 	mtd->type = MTD_NANDFLASH;
 	mtd->flags = (chip->options & NAND_ROM) ? MTD_CAP_ROM :
 						MTD_CAP_NANDFLASH;
-	mtd->erase = nand_erase;
-	mtd->read = nand_read;
-	mtd->write = nand_write;
-	mtd->read_oob = nand_read_oob;
-	mtd->write_oob = nand_write_oob;
-	mtd->sync = nand_sync;
-	mtd->lock = NULL;
-	mtd->unlock = NULL;
-	mtd->block_isbad = nand_block_isbad;
-	mtd->block_markbad = nand_block_markbad;
-	mtd->block_markgood = nand_block_markgood;
+	mtd->_erase = nand_erase;
+	mtd->_read = nand_read;
+	mtd->_write = nand_write;
+	mtd->_read_oob = nand_read_oob;
+	mtd->_write_oob = nand_write_oob;
+	mtd->_sync = nand_sync;
+	mtd->_lock = NULL;
+	mtd->_unlock = NULL;
+	mtd->_block_isbad = nand_block_isbad;
+	mtd->_block_markbad = nand_block_markbad;
+	mtd->_block_markgood = nand_block_markgood;
 	mtd->writebufsize = mtd->writesize;
 
 	/* propagate ecc info to mtd_info */
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index dd4ea73b78..d4f0262755 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1257,19 +1257,19 @@ static int mxs_nand_scan_bbt(struct nand_chip *chip)
 	writel(BCH_CTRL_COMPLETE_IRQ_EN, bch_regs + BCH_CTRL + STMP_OFFSET_REG_SET);
 
 	/* Hook some operations at the MTD level. */
-	if (mtd->read_oob != mxs_nand_hook_read_oob) {
-		nand_info->hooked_read_oob = mtd->read_oob;
-		mtd->read_oob = mxs_nand_hook_read_oob;
+	if (mtd->_read_oob != mxs_nand_hook_read_oob) {
+		nand_info->hooked_read_oob = mtd->_read_oob;
+		mtd->_read_oob = mxs_nand_hook_read_oob;
 	}
 
-	if (mtd->write_oob != mxs_nand_hook_write_oob) {
-		nand_info->hooked_write_oob = mtd->write_oob;
-		mtd->write_oob = mxs_nand_hook_write_oob;
+	if (mtd->_write_oob != mxs_nand_hook_write_oob) {
+		nand_info->hooked_write_oob = mtd->_write_oob;
+		mtd->_write_oob = mxs_nand_hook_write_oob;
 	}
 
-	if (mtd->block_markbad != mxs_nand_hook_block_markbad) {
-		nand_info->hooked_block_markbad = mtd->block_markbad;
-		mtd->block_markbad = mxs_nand_hook_block_markbad;
+	if (mtd->_block_markbad != mxs_nand_hook_block_markbad) {
+		nand_info->hooked_block_markbad = mtd->_block_markbad;
+		mtd->_block_markbad = mxs_nand_hook_block_markbad;
 	}
 
 	/* We use the reference implementation for bad block management. */
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 0988e67347..5ee05e1e6e 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -932,11 +932,11 @@ static void cfi_init_mtd(struct flash_info *info)
 	u32 erasesize;
 	int i;
 
-	mtd->read = cfi_mtd_read;
-	mtd->write = cfi_mtd_write;
-	mtd->erase = cfi_mtd_erase;
-	mtd->lock = cfi_mtd_lock;
-	mtd->unlock = cfi_mtd_unlock;
+	mtd->_read = cfi_mtd_read;
+	mtd->_write = cfi_mtd_write;
+	mtd->_erase = cfi_mtd_erase;
+	mtd->_lock = cfi_mtd_lock;
+	mtd->_unlock = cfi_mtd_unlock;
 	mtd->size = info->size;
 
 	erasesize = 0;
diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 013697732d..27ff9f039f 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -13,7 +13,7 @@ static int mtd_part_read(struct mtd_info *mtd, loff_t from, size_t len,
 		len = 0;
 	else if (from + len > mtd->size)
 		len = mtd->size - from;
-	res = mtd->master->read(mtd->master, from + mtd->master_offset,
+	res = mtd->master->_read(mtd->master, from + mtd->master_offset,
 				len, retlen, buf);
 	return res;
 }
@@ -28,7 +28,7 @@ static int mtd_part_read_oob(struct mtd_info *mtd, loff_t from,
 	if (ops->datbuf && from + ops->len > mtd->size)
 		return -EINVAL;
 
-	res = mtd->master->read_oob(mtd->master, from + mtd->master_offset, ops);
+	res = mtd->master->_read_oob(mtd->master, from + mtd->master_offset, ops);
 	if (unlikely(res)) {
 		if (mtd_is_bitflip(res))
 			mtd->ecc_stats.corrected++;
@@ -47,7 +47,7 @@ static int mtd_part_write(struct mtd_info *mtd, loff_t to, size_t len,
 		len = 0;
 	else if (to + len > mtd->size)
 		len = mtd->size - to;
-	return mtd->master->write(mtd->master, to + mtd->master_offset,
+	return mtd->master->_write(mtd->master, to + mtd->master_offset,
 					len, retlen, buf);
 }
 
@@ -58,7 +58,7 @@ static int mtd_part_write_oob(struct mtd_info *mtd, loff_t to,
 		return -EINVAL;
 	if (ops->datbuf && to + ops->len > mtd->size)
 		return -EINVAL;
-	return mtd->master->write_oob(mtd->master, to + mtd->master_offset, ops);
+	return mtd->master->_write_oob(mtd->master, to + mtd->master_offset, ops);
 }
 
 static int mtd_part_erase(struct mtd_info *mtd, struct erase_info *instr)
@@ -70,7 +70,7 @@ static int mtd_part_erase(struct mtd_info *mtd, struct erase_info *instr)
 	if (instr->addr >= mtd->size)
 		return -EINVAL;
 	instr->addr += mtd->master_offset;
-	ret = mtd->master->erase(mtd->master, instr);
+	ret = mtd->master->_erase(mtd->master, instr);
 	if (ret) {
 		if (instr->fail_addr != 0xffffffff)
 			instr->fail_addr -= mtd->master_offset;
@@ -81,7 +81,7 @@ static int mtd_part_erase(struct mtd_info *mtd, struct erase_info *instr)
 
 static int mtd_part_lock(struct mtd_info *mtd, loff_t offset, size_t len)
 {
-	if (!mtd->master->lock)
+	if (!mtd->master->_lock)
 		return -ENOSYS;
 
 	if (!(mtd->flags & MTD_WRITEABLE))
@@ -92,12 +92,12 @@ static int mtd_part_lock(struct mtd_info *mtd, loff_t offset, size_t len)
 
 	offset += mtd->master_offset;
 
-	return mtd->master->lock(mtd->master, offset, len);
+	return mtd->master->_lock(mtd->master, offset, len);
 }
 
 static int mtd_part_unlock(struct mtd_info *mtd, loff_t offset, size_t len)
 {
-	if (!mtd->master->unlock)
+	if (!mtd->master->_unlock)
 		return -ENOSYS;
 
 	if (!(mtd->flags & MTD_WRITEABLE))
@@ -108,7 +108,7 @@ static int mtd_part_unlock(struct mtd_info *mtd, loff_t offset, size_t len)
 
 	offset += mtd->master_offset;
 
-	return mtd->master->unlock(mtd->master, offset, len);
+	return mtd->master->_unlock(mtd->master, offset, len);
 }
 
 static int mtd_part_block_isbad(struct mtd_info *mtd, loff_t ofs)
@@ -128,7 +128,7 @@ static int mtd_part_block_markbad(struct mtd_info *mtd, loff_t ofs)
 	if (ofs >= mtd->size)
 		return -EINVAL;
 	ofs += mtd->master_offset;
-	res = mtd->master->block_markbad(mtd->master, ofs);
+	res = mtd->master->_block_markbad(mtd->master, ofs);
 	if (!res)
 		mtd->ecc_stats.badblocks++;
 	return res;
@@ -143,7 +143,7 @@ static int mtd_part_block_markgood(struct mtd_info *mtd, loff_t ofs)
 	if (ofs >= mtd->size)
 		return -EINVAL;
 	ofs += mtd->master_offset;
-	res = mtd->master->block_markgood(mtd->master, ofs);
+	res = mtd->master->_block_markgood(mtd->master, ofs);
 	if (!res)
 		mtd->ecc_stats.badblocks--;
 	return res;
@@ -196,22 +196,22 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 		part->erasesize = mtd->erasesize;
 	}
 
-	part->read = mtd_part_read;
+	part->_read = mtd_part_read;
 	if (IS_ENABLED(CONFIG_MTD_WRITE)) {
-		part->write = mtd_part_write;
-		part->erase = mtd_part_erase;
-		part->lock = mtd_part_lock;
-		part->unlock = mtd_part_unlock;
-		part->block_markbad = mtd->block_markbad ? mtd_part_block_markbad : NULL;
-		part->block_markgood = mtd->block_markgood ? mtd_part_block_markgood : NULL;
+		part->_write = mtd_part_write;
+		part->_erase = mtd_part_erase;
+		part->_lock = mtd_part_lock;
+		part->_unlock = mtd_part_unlock;
+		part->_block_markbad = mtd->_block_markbad ? mtd_part_block_markbad : NULL;
+		part->_block_markgood = mtd->_block_markgood ? mtd_part_block_markgood : NULL;
 	}
 
-	if (mtd->write_oob)
-		part->write_oob = mtd_part_write_oob;
-	if (mtd->read_oob)
-		part->read_oob = mtd_part_read_oob;
+	if (mtd->_write_oob)
+		part->_write_oob = mtd_part_write_oob;
+	if (mtd->_read_oob)
+		part->_read_oob = mtd_part_read_oob;
 
-	part->block_isbad = mtd->block_isbad ? mtd_part_block_isbad : NULL;
+	part->_block_isbad = mtd->_block_isbad ? mtd_part_block_isbad : NULL;
 	part->size = size;
 	part->name = xstrdup(name);
 
diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 528cd9c399..350b82a6be 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1437,20 +1437,20 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	mtd->writesize = 1;
 	mtd->flags = MTD_CAP_NORFLASH;
 	mtd->size = params.size;
-	mtd->erase = spi_nor_erase;
-	mtd->read = spi_nor_read;
+	mtd->_erase = spi_nor_erase;
+	mtd->_read = spi_nor_read;
 
 	/* nor protection support for STmicro chips */
 	if (JEDEC_MFR(info) == CFI_MFR_ST) {
-		mtd->lock = spi_nor_lock;
-		mtd->unlock = spi_nor_unlock;
+		mtd->_lock = spi_nor_lock;
+		mtd->_unlock = spi_nor_unlock;
 	}
 
 	/* sst nor chips use AAI word program */
 	if (info->flags & SST_WRITE)
-		mtd->write = sst_write;
+		mtd->_write = sst_write;
 	else
-		mtd->write = spi_nor_write;
+		mtd->_write = spi_nor_write;
 
 	if (info->flags & USE_FSR)
 		nor->flags |= SNOR_F_USE_FSR;
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 8257403335..4a14cfd9d0 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -133,10 +133,10 @@ struct mtd_info {
 	int numeraseregions;
 	struct mtd_erase_region_info *eraseregions;
 
-	int (*erase) (struct mtd_info *mtd, struct erase_info *instr);
+	int (*_erase) (struct mtd_info *mtd, struct erase_info *instr);
 
-	int (*read) (struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen, u_char *buf);
-	int (*write) (struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen, const u_char *buf);
+	int (*_read) (struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen, u_char *buf);
+	int (*_write) (struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen, const u_char *buf);
 
 	/* In blackbox flight recorder like scenarios we want to make successful
 	   writes in interrupt context. panic_write() is only intended to be
@@ -145,11 +145,11 @@ struct mtd_info {
 	   longer, this function can break locks and delay to ensure the write
 	   succeeds (but not sleep). */
 
-	int (*panic_write) (struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen, const u_char *buf);
+	int (*_panic_write) (struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen, const u_char *buf);
 
-	int (*read_oob) (struct mtd_info *mtd, loff_t from,
+	int (*_read_oob) (struct mtd_info *mtd, loff_t from,
 			 struct mtd_oob_ops *ops);
-	int (*write_oob) (struct mtd_info *mtd, loff_t to,
+	int (*_write_oob) (struct mtd_info *mtd, loff_t to,
 			 struct mtd_oob_ops *ops);
 
 	/*
@@ -157,24 +157,24 @@ struct mtd_info {
 	 * flash devices. The user data is one time programmable but the
 	 * factory data is read only.
 	 */
-	int (*get_fact_prot_info) (struct mtd_info *mtd, struct otp_info *buf, size_t len);
-	int (*read_fact_prot_reg) (struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen, u_char *buf);
-	int (*get_user_prot_info) (struct mtd_info *mtd, struct otp_info *buf, size_t len);
-	int (*read_user_prot_reg) (struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen, u_char *buf);
-	int (*write_user_prot_reg) (struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen, u_char *buf);
-	int (*lock_user_prot_reg) (struct mtd_info *mtd, loff_t from, size_t len);
+	int (*_get_fact_prot_info) (struct mtd_info *mtd, struct otp_info *buf, size_t len);
+	int (*_read_fact_prot_reg) (struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen, u_char *buf);
+	int (*_get_user_prot_info) (struct mtd_info *mtd, struct otp_info *buf, size_t len);
+	int (*_read_user_prot_reg) (struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen, u_char *buf);
+	int (*_write_user_prot_reg) (struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen, u_char *buf);
+	int (*_lock_user_prot_reg) (struct mtd_info *mtd, loff_t from, size_t len);
 
 	/* Sync */
-	void (*sync) (struct mtd_info *mtd);
+	void (*_sync) (struct mtd_info *mtd);
 
 	/* Chip-supported device locking */
-	int (*lock) (struct mtd_info *mtd, loff_t ofs, size_t len);
-	int (*unlock) (struct mtd_info *mtd, loff_t ofs, size_t len);
+	int (*_lock) (struct mtd_info *mtd, loff_t ofs, size_t len);
+	int (*_unlock) (struct mtd_info *mtd, loff_t ofs, size_t len);
 
 	/* Bad block management functions */
-	int (*block_isbad) (struct mtd_info *mtd, loff_t ofs);
-	int (*block_markbad) (struct mtd_info *mtd, loff_t ofs);
-	int (*block_markgood) (struct mtd_info *mtd, loff_t ofs);
+	int (*_block_isbad) (struct mtd_info *mtd, loff_t ofs);
+	int (*_block_markbad) (struct mtd_info *mtd, loff_t ofs);
+	int (*_block_markgood) (struct mtd_info *mtd, loff_t ofs);
 
 	/* ECC status information */
 	struct mtd_ecc_stats ecc_stats;
@@ -190,8 +190,8 @@ struct mtd_info {
 	 * its own reference counting. The below functions are only for driver.
 	 * The driver may register its callbacks. These callbacks are not
 	 * supposed to be called by MTD users */
-	int (*get_device) (struct mtd_info *mtd);
-	void (*put_device) (struct mtd_info *mtd);
+	int (*_get_device) (struct mtd_info *mtd);
+	void (*_put_device) (struct mtd_info *mtd);
 
 	struct device_d class_dev;
 	struct device_d *parent;
@@ -229,16 +229,16 @@ static inline int mtd_write_oob(struct mtd_info *mtd, loff_t to,
 				struct mtd_oob_ops *ops)
 {
 	ops->retlen = ops->oobretlen = 0;
-	if (!mtd->write_oob)
+	if (!mtd->_write_oob)
 		return -EOPNOTSUPP;
 	if (!(mtd->flags & MTD_WRITEABLE))
 		return -EROFS;
-	return mtd->write_oob(mtd, to, ops);
+	return mtd->_write_oob(mtd, to, ops);
 }
 
 static inline int mtd_can_have_bb(const struct mtd_info *mtd)
 {
-	return !!mtd->block_isbad;
+	return !!mtd->_block_isbad;
 }
 
 static inline uint32_t mtd_div_by_eb(uint64_t sz, struct mtd_info *mtd)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
