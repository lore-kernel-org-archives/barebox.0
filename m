Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtUV-0001IO-UX
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:26:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:25:28 +0100
Message-Id: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] mtd: Simplify partitions
To: barebox@lists.infradead.org

Embed the partition information in struct mtd_info. This makes the
mtd partition code simpler.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/partition.c | 75 ++++++++++++++++++++-----------------------------
 include/linux/mtd/mtd.h |  5 +++-
 2 files changed, 34 insertions(+), 46 deletions(-)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 85f486d..7431fc1 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -4,29 +4,19 @@
 #include <linux/err.h>
 #include <linux/mtd/mtd.h>
 
-struct mtd_part {
-	struct mtd_info mtd;
-	struct mtd_info *master;
-	uint64_t offset;
-	struct list_head list;
-};
-
-#define PART(x)  ((struct mtd_part *)(x))
-
 static int mtd_part_read(struct mtd_info *mtd, loff_t from, size_t len,
                 size_t *retlen, u_char *buf)
 {
-	struct mtd_part *part = PART(mtd);
 	struct mtd_ecc_stats stats;
 	int res;
 
-	stats = part->master->ecc_stats;
+	stats = mtd->master->ecc_stats;
 
 	if (from >= mtd->size)
 		len = 0;
 	else if (from + len > mtd->size)
 		len = mtd->size - from;
-	res = part->master->read(part->master, from + part->offset,
+	res = mtd->master->read(mtd->master, from + mtd->master_offset,
 				len, retlen, buf);
 	return res;
 }
@@ -34,57 +24,52 @@ static int mtd_part_read(struct mtd_info *mtd, loff_t from, size_t len,
 static int mtd_part_write(struct mtd_info *mtd, loff_t to, size_t len,
                 size_t *retlen, const u_char *buf)
 {
-	struct mtd_part *part = PART(mtd);
-
 	if (!(mtd->flags & MTD_WRITEABLE))
 		return -EROFS;
 	if (to >= mtd->size)
 		len = 0;
 	else if (to + len > mtd->size)
 		len = mtd->size - to;
-	return part->master->write(part->master, to + part->offset,
+	return mtd->master->write(mtd->master, to + mtd->master_offset,
 					len, retlen, buf);
 }
 
 static int mtd_part_erase(struct mtd_info *mtd, struct erase_info *instr)
 {
-	struct mtd_part *part = PART(mtd);
 	int ret;
 
 	if (!(mtd->flags & MTD_WRITEABLE))
 		return -EROFS;
 	if (instr->addr >= mtd->size)
 		return -EINVAL;
-	instr->addr += part->offset;
-	ret = part->master->erase(part->master, instr);
+	instr->addr += mtd->master_offset;
+	ret = mtd->master->erase(mtd->master, instr);
 	if (ret) {
 		if (instr->fail_addr != 0xffffffff)
-			instr->fail_addr -= part->offset;
-		instr->addr -= part->offset;
+			instr->fail_addr -= mtd->master_offset;
+		instr->addr -= mtd->master_offset;
 	}
 	return ret;
 }
 
 static int mtd_part_block_isbad(struct mtd_info *mtd, loff_t ofs)
 {
-	struct mtd_part *part = PART(mtd);
 	if (ofs >= mtd->size)
 		return -EINVAL;
-	ofs += part->offset;
-	return mtd_block_isbad(part->master, ofs);
+	ofs += mtd->master_offset;
+	return mtd_block_isbad(mtd->master, ofs);
 }
 
 static int mtd_part_block_markbad(struct mtd_info *mtd, loff_t ofs)
 {
-	struct mtd_part *part = PART(mtd);
 	int res;
 
 	if (!(mtd->flags & MTD_WRITEABLE))
 		return -EROFS;
 	if (ofs >= mtd->size)
 		return -EINVAL;
-	ofs += part->offset;
-	res = part->master->block_markbad(part->master, ofs);
+	ofs += mtd->master_offset;
+	res = mtd->master->block_markbad(mtd->master, ofs);
 	if (!res)
 		mtd->ecc_stats.badblocks++;
 	return res;
@@ -93,14 +78,12 @@ static int mtd_part_block_markbad(struct mtd_info *mtd, loff_t ofs)
 struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset, size_t size,
 		unsigned long flags, const char *name)
 {
-	struct mtd_part *slave;
-	struct mtd_info *slave_mtd;
+	struct mtd_info *part;
 	int start = 0, end = 0, i;
 
-	slave = xzalloc(sizeof(*slave));
-	slave_mtd = &slave->mtd;
+	part = xzalloc(sizeof(*part));
 
-	memcpy(slave_mtd, mtd, sizeof(*slave));
+	memcpy(part, mtd, sizeof(*part));
 
 	/*
 	 * find the number of eraseregions the partition includes.
@@ -118,26 +101,28 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset, size_t si
 			end = i;
 	}
 
-	slave_mtd->numeraseregions = end - start;
+	part->numeraseregions = end - start;
 
-	slave_mtd->read = mtd_part_read;
-	slave_mtd->write = mtd_part_write;
-	slave_mtd->erase = mtd_part_erase;
-	slave_mtd->block_isbad = mtd->block_isbad ? mtd_part_block_isbad : NULL;
-	slave_mtd->block_markbad = mtd->block_markbad ? mtd_part_block_markbad : NULL;
-	slave_mtd->size = size;
-	slave_mtd->name = strdup(name);
+	part->read = mtd_part_read;
+	part->write = mtd_part_write;
+	part->erase = mtd_part_erase;
+	part->block_isbad = mtd->block_isbad ? mtd_part_block_isbad : NULL;
+	part->block_markbad = mtd->block_markbad ? mtd_part_block_markbad : NULL;
+	part->size = size;
+	part->name = strdup(name);
 
-	slave->offset = offset;
-	slave->master = mtd;
+	part->master_offset = offset;
+	part->master = mtd;
 
-	return slave_mtd;
+	return part;
 }
 
-void mtd_del_partition(struct mtd_info *mtd)
+int mtd_del_partition(struct mtd_info *part)
 {
-	struct mtd_part *part = PART(mtd);
+	if (!part->master)
+		return -EINVAL;
 
-	free(mtd->name);
 	free(part);
+
+	return 0;
 }
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 402e497..347443b 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -217,6 +217,9 @@ struct mtd_info {
 	/* If true erasing bad blocks is allowed, this is set via a device parameter */
 	bool allow_erasebad;
 	int p_allow_erasebad;
+
+	struct mtd_info *master;
+	uint64_t master_offset;
 };
 
 int mtd_erase(struct mtd_info *mtd, struct erase_info *instr);
@@ -272,7 +275,7 @@ struct mtd_notifier {
 
 struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset, size_t size,
 		unsigned long flags, const char *name);
-void mtd_del_partition(struct mtd_info *mtd);
+int mtd_del_partition(struct mtd_info *mtd);
 
 extern void register_mtd_user (struct mtd_notifier *new);
 extern int unregister_mtd_user (struct mtd_notifier *old);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
