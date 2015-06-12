Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3IZc-0006vX-It
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 06:36:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 08:35:38 +0200
Message-Id: <1434090946-6574-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
References: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] mtd: partition: implement write_oob
To: Barebox List <barebox@lists.infradead.org>

To enable mtd_write_oob for partitions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/partition.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 98b9081..c11a3db 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -31,6 +31,16 @@ static int mtd_part_write(struct mtd_info *mtd, loff_t to, size_t len,
 					len, retlen, buf);
 }
 
+static int mtd_part_write_oob(struct mtd_info *mtd, loff_t to,
+		struct mtd_oob_ops *ops)
+{
+	if (to >= mtd->size)
+		return -EINVAL;
+	if (ops->datbuf && to + ops->len > mtd->size)
+		return -EINVAL;
+	return mtd->master->write_oob(mtd->master, to + mtd->master_offset, ops);
+}
+
 static int mtd_part_erase(struct mtd_info *mtd, struct erase_info *instr)
 {
 	int ret;
@@ -160,6 +170,9 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 		part->block_markbad = mtd->block_markbad ? mtd_part_block_markbad : NULL;
 	}
 
+	if (mtd->write_oob)
+		part->write_oob = mtd_part_write_oob;
+
 	part->block_isbad = mtd->block_isbad ? mtd_part_block_isbad : NULL;
 	part->size = size;
 	part->name = xstrdup(name);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
