Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WuKf3-0007xi-7S
 for barebox@lists.infradead.org; Tue, 10 Jun 2014 11:56:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 Jun 2014 13:55:53 +0200
Message-Id: <1402401353-13704-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1402401353-13704-1-git-send-email-s.hauer@pengutronix.de>
References: <1402401353-13704-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: partition: implement lock/unlock
To: barebox@lists.infradead.org

CFI Nor flashes need lock/unlock which is not implemented for partitions.
Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/partition.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 52d0c94..5c0d46f 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -49,6 +49,32 @@ static int mtd_part_erase(struct mtd_info *mtd, struct erase_info *instr)
 	return ret;
 }
 
+static int mtd_part_lock(struct mtd_info *mtd, loff_t offset, size_t len)
+{
+	if (!(mtd->flags & MTD_WRITEABLE))
+		return -EROFS;
+
+	if (offset + len > mtd->size)
+		return -EINVAL;
+
+	offset += mtd->master_offset;
+
+	return mtd->master->lock(mtd->master, offset, len);
+}
+
+static int mtd_part_unlock(struct mtd_info *mtd, loff_t offset, size_t len)
+{
+	if (!(mtd->flags & MTD_WRITEABLE))
+		return -EROFS;
+
+	if (offset + len > mtd->size)
+		return -EINVAL;
+
+	offset += mtd->master_offset;
+
+	return mtd->master->unlock(mtd->master, offset, len);
+}
+
 static int mtd_part_block_isbad(struct mtd_info *mtd, loff_t ofs)
 {
 	if (ofs >= mtd->size)
@@ -122,6 +148,8 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 	if (IS_ENABLED(CONFIG_MTD_WRITE)) {
 		part->write = mtd_part_write;
 		part->erase = mtd_part_erase;
+		part->lock = mtd_part_lock;
+		part->unlock = mtd_part_unlock;
 		part->block_markbad = mtd->block_markbad ? mtd_part_block_markbad : NULL;
 	}
 
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
