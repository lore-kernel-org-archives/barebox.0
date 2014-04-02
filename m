Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og110.obsmtp.com ([64.18.0.20])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WVLv2-0005AC-93
 for barebox@lists.infradead.org; Wed, 02 Apr 2014 14:13:32 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed,  2 Apr 2014 15:13:01 +0100
Message-Id: <1396447981-18092-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH] mtd: add mtd partition lock/unlock support
To: barebox@lists.infradead.org

This patch adds support to lock/unlock mtd partitions following changes
in the partition registration.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 drivers/mtd/partition.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 351c583..618e9c4 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -75,6 +75,22 @@ static int mtd_part_block_markbad(struct mtd_info *mtd, loff_t ofs)
 	return res;
 }
 
+static int mtd_part_lock(struct mtd_info *mtd, loff_t ofs, size_t len)
+{
+	if (ofs >= mtd->size)
+		return -EINVAL;
+
+	return mtd->master->lock(mtd->master, ofs + mtd->master_offset, len);
+}
+
+static int mtd_part_unlock(struct mtd_info *mtd, loff_t ofs, size_t len)
+{
+	if (ofs >= mtd->size)
+		return -EINVAL;
+
+	return mtd->master->unlock(mtd->master, ofs + mtd->master_offset, len);
+}
+
 struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset, size_t size,
 		unsigned long flags, const char *name)
 {
@@ -95,6 +111,8 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset, size_t si
 	part->ecclayout = mtd->ecclayout;
 	part->ecc_strength = mtd->ecc_strength;
 	part->subpage_sft = mtd->subpage_sft;
+	part->lock = mtd_part_lock;
+	part->unlock = mtd_part_unlock;
 
 	/*
 	 * find the number of eraseregions the partition includes.
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
