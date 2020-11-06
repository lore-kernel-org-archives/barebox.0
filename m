Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xL-00054B-2V
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:43 +0100
Message-Id: <20201106133900.2656-10-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/26] mtd: rename master to parent
To: Barebox List <barebox@lists.infradead.org>

In Linux mtd->parent is what in barebox is mtd->master. Rename this
to get closer to the Linux mtd layer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c      | 12 ++++++------
 drivers/mtd/mtdoob.c    |  4 ++--
 drivers/mtd/mtdraw.c    |  4 ++--
 drivers/mtd/partition.c | 30 +++++++++++++++---------------
 drivers/mtd/ubi/build.c |  4 ++--
 include/linux/mtd/mtd.h |  8 +++++++-
 6 files changed, 34 insertions(+), 28 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 9d3b62762c..8d018fde57 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -210,7 +210,7 @@ static int mtd_op_erase(struct cdev *cdev, loff_t count, loff_t offset)
 	while (count > 0) {
 		dev_dbg(cdev->dev, "erase 0x%08llx len: 0x%08llx\n", addr, erase.len);
 
-		if (mtd->allow_erasebad || (mtd->master && mtd->master->allow_erasebad))
+		if (mtd->allow_erasebad || (mtd->parent && mtd->parent->allow_erasebad))
 			ret = 0;
 		else
 			ret = mtd_block_isbad(mtd, addr);
@@ -652,10 +652,10 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 	if (ret)
 		goto err;
 
-	if (mtd->master && !(mtd->cdev.flags & DEVFS_PARTITION_FIXED)) {
+	if (mtd->parent && !(mtd->cdev.flags & DEVFS_PARTITION_FIXED)) {
 		struct mtd_info *mtdpart;
 
-		list_for_each_entry(mtdpart, &mtd->master->partitions, partitions_entry) {
+		list_for_each_entry(mtdpart, &mtd->parent->partitions, partitions_entry) {
 			if (mtdpart->master_offset + mtdpart->size <= mtd->master_offset)
 				continue;
 			if (mtd->master_offset + mtd->size <= mtdpart->master_offset)
@@ -665,13 +665,13 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 			goto err1;
 		}
 
-		list_add_sort(&mtd->partitions_entry, &mtd->master->partitions, mtd_part_compare);
+		list_add_sort(&mtd->partitions_entry, &mtd->parent->partitions, mtd_part_compare);
 	}
 
 	if (mtd_can_have_bb(mtd))
 		mtd->cdev_bb = mtd_add_bb(mtd, NULL);
 
-	if (mtd->dev.parent && !mtd->master) {
+	if (mtd->dev.parent && !mtd->parent) {
 		dev_add_param_string(&mtd->dev, "partitions", mtd_partition_set, mtd_partition_get, &mtd->partition_string, mtd);
 		of_parse_partitions(&mtd->cdev, mtd->dev.parent->device_node);
 		if (IS_ENABLED(CONFIG_OFDEVICE) && mtd->dev.parent->device_node) {
@@ -710,7 +710,7 @@ int del_mtd_device (struct mtd_info *mtd)
 	unregister_device(&mtd->dev);
 	free(mtd->param_size.value);
 	free(mtd->cdev.name);
-	if (mtd->master)
+	if (mtd->parent)
 		list_del(&mtd->partitions_entry);
 
 	return 0;
diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index 3229a1cce5..04e064b227 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -72,7 +72,7 @@ static int add_mtdoob_device(struct mtd_info *mtd, const char *devname, void **p
 {
 	struct mtdoob *mtdoob;
 
-	if (mtd->master || mtd->oobsize == 0)
+	if (mtd->parent || mtd->oobsize == 0)
 		return 0;
 
 	mtdoob = xzalloc(sizeof(*mtdoob));
@@ -92,7 +92,7 @@ static int del_mtdoob_device(struct mtd_info *mtd, void **priv)
 {
 	struct mtdoob *mtdoob;
 
-	if (mtd->master || mtd->oobsize == 0)
+	if (mtd->parent || mtd->oobsize == 0)
 		return 0;
 
 	mtdoob = *priv;
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 6bebe0409e..19a24cc650 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -297,7 +297,7 @@ static int add_mtdraw_device(struct mtd_info *mtd, const char *devname, void **p
 {
 	struct mtdraw *mtdraw;
 
-	if (mtd->master || mtd->oobsize == 0)
+	if (mtd->parent || mtd->oobsize == 0)
 		return 0;
 
 	mtdraw = xzalloc(sizeof(*mtdraw));
@@ -321,7 +321,7 @@ static int del_mtdraw_device(struct mtd_info *mtd, void **priv)
 {
 	struct mtdraw *mtdraw;
 
-	if (mtd->master || mtd->oobsize == 0)
+	if (mtd->parent || mtd->oobsize == 0)
 		return 0;
 
 	mtdraw = *priv;
diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 6a6988432c..917122a844 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -13,7 +13,7 @@ static int mtd_part_read(struct mtd_info *mtd, loff_t from, size_t len,
 		len = 0;
 	else if (from + len > mtd->size)
 		len = mtd->size - from;
-	res = mtd->master->_read(mtd->master, from + mtd->master_offset,
+	res = mtd->parent->_read(mtd->parent, from + mtd->master_offset,
 				len, retlen, buf);
 	return res;
 }
@@ -28,7 +28,7 @@ static int mtd_part_read_oob(struct mtd_info *mtd, loff_t from,
 	if (ops->datbuf && from + ops->len > mtd->size)
 		return -EINVAL;
 
-	res = mtd->master->_read_oob(mtd->master, from + mtd->master_offset, ops);
+	res = mtd->parent->_read_oob(mtd->parent, from + mtd->master_offset, ops);
 	if (unlikely(res)) {
 		if (mtd_is_bitflip(res))
 			mtd->ecc_stats.corrected++;
@@ -47,7 +47,7 @@ static int mtd_part_write(struct mtd_info *mtd, loff_t to, size_t len,
 		len = 0;
 	else if (to + len > mtd->size)
 		len = mtd->size - to;
-	return mtd->master->_write(mtd->master, to + mtd->master_offset,
+	return mtd->parent->_write(mtd->parent, to + mtd->master_offset,
 					len, retlen, buf);
 }
 
@@ -58,7 +58,7 @@ static int mtd_part_write_oob(struct mtd_info *mtd, loff_t to,
 		return -EINVAL;
 	if (ops->datbuf && to + ops->len > mtd->size)
 		return -EINVAL;
-	return mtd->master->_write_oob(mtd->master, to + mtd->master_offset, ops);
+	return mtd->parent->_write_oob(mtd->parent, to + mtd->master_offset, ops);
 }
 
 static int mtd_part_erase(struct mtd_info *mtd, struct erase_info *instr)
@@ -70,7 +70,7 @@ static int mtd_part_erase(struct mtd_info *mtd, struct erase_info *instr)
 	if (instr->addr >= mtd->size)
 		return -EINVAL;
 	instr->addr += mtd->master_offset;
-	ret = mtd->master->_erase(mtd->master, instr);
+	ret = mtd->parent->_erase(mtd->parent, instr);
 	if (ret) {
 		if (instr->fail_addr != 0xffffffff)
 			instr->fail_addr -= mtd->master_offset;
@@ -81,7 +81,7 @@ static int mtd_part_erase(struct mtd_info *mtd, struct erase_info *instr)
 
 static int mtd_part_lock(struct mtd_info *mtd, loff_t offset, size_t len)
 {
-	if (!mtd->master->_lock)
+	if (!mtd->parent->_lock)
 		return -ENOSYS;
 
 	if (!(mtd->flags & MTD_WRITEABLE))
@@ -92,12 +92,12 @@ static int mtd_part_lock(struct mtd_info *mtd, loff_t offset, size_t len)
 
 	offset += mtd->master_offset;
 
-	return mtd->master->_lock(mtd->master, offset, len);
+	return mtd->parent->_lock(mtd->parent, offset, len);
 }
 
 static int mtd_part_unlock(struct mtd_info *mtd, loff_t offset, size_t len)
 {
-	if (!mtd->master->_unlock)
+	if (!mtd->parent->_unlock)
 		return -ENOSYS;
 
 	if (!(mtd->flags & MTD_WRITEABLE))
@@ -108,7 +108,7 @@ static int mtd_part_unlock(struct mtd_info *mtd, loff_t offset, size_t len)
 
 	offset += mtd->master_offset;
 
-	return mtd->master->_unlock(mtd->master, offset, len);
+	return mtd->parent->_unlock(mtd->parent, offset, len);
 }
 
 static int mtd_part_block_isbad(struct mtd_info *mtd, loff_t ofs)
@@ -116,7 +116,7 @@ static int mtd_part_block_isbad(struct mtd_info *mtd, loff_t ofs)
 	if (ofs >= mtd->size)
 		return -EINVAL;
 	ofs += mtd->master_offset;
-	return mtd_block_isbad(mtd->master, ofs);
+	return mtd_block_isbad(mtd->parent, ofs);
 }
 
 static int mtd_part_block_markbad(struct mtd_info *mtd, loff_t ofs)
@@ -128,7 +128,7 @@ static int mtd_part_block_markbad(struct mtd_info *mtd, loff_t ofs)
 	if (ofs >= mtd->size)
 		return -EINVAL;
 	ofs += mtd->master_offset;
-	res = mtd->master->_block_markbad(mtd->master, ofs);
+	res = mtd->parent->_block_markbad(mtd->parent, ofs);
 	if (!res)
 		mtd->ecc_stats.badblocks++;
 	return res;
@@ -143,7 +143,7 @@ static int mtd_part_block_markgood(struct mtd_info *mtd, loff_t ofs)
 	if (ofs >= mtd->size)
 		return -EINVAL;
 	ofs += mtd->master_offset;
-	res = mtd->master->_block_markgood(mtd->master, ofs);
+	res = mtd->parent->_block_markgood(mtd->parent, ofs);
 	if (!res)
 		mtd->ecc_stats.badblocks--;
 	return res;
@@ -216,7 +216,7 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 	part->name = xstrdup(name);
 
 	part->master_offset = offset;
-	part->master = mtd;
+	part->parent = mtd;
 
 	if (!strncmp(mtd->cdev.name, name, strlen(mtd->cdev.name)))
 		part->cdev.partname = xstrdup(name + strlen(mtd->cdev.name) + 1);
@@ -225,7 +225,7 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 	if (ret)
 		goto err;
 
-	part->cdev.master = &part->master->cdev;
+	part->cdev.master = &part->parent->cdev;
 
 	return part;
 err:
@@ -238,7 +238,7 @@ err:
 
 int mtd_del_partition(struct mtd_info *part)
 {
-	if (!part->master)
+	if (!part->parent)
 		return -EINVAL;
 
 	del_mtd_device(part);
diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 8a6d0ebde0..75fdee3692 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -241,8 +241,8 @@ static int get_bad_peb_limit(const struct ubi_device *ubi, int max_beb_per1024)
 	 * is that all the bad eraseblocks of the chip are in
 	 * the MTD partition we are attaching (ubi->mtd).
 	 */
-	if (ubi->mtd->master)
-		device_size = ubi->mtd->master->size;
+	if (ubi->mtd->parent)
+		device_size = ubi->mtd->parent->size;
 	else
 		device_size = ubi->mtd->size;
 
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index e4ce2ae233..75407a9790 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -205,7 +205,13 @@ struct mtd_info {
 	bool allow_erasebad;
 	int p_allow_erasebad;
 
-	struct mtd_info *master;
+	/*
+	 * Parent device from the MTD partition point of view.
+	 *
+	 * MTD masters do not have any parent, MTD partitions do. The parent
+	 * MTD device can itself be a partition.
+	 */
+	struct mtd_info *parent;
 	loff_t master_offset;
 
 	struct list_head partitions;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
