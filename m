Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxI-0005IJ-Tf
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:21 +0100
Message-Id: <1458040534-6171-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/16] mtd: mtdpart: Add oob_read function
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/partition.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 261e35c..777cb75 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -18,6 +18,26 @@ static int mtd_part_read(struct mtd_info *mtd, loff_t from, size_t len,
 	return res;
 }
 
+static int mtd_part_read_oob(struct mtd_info *mtd, loff_t from,
+		struct mtd_oob_ops *ops)
+{
+	int res;
+
+	if (from >= mtd->size)
+		return -EINVAL;
+	if (ops->datbuf && from + ops->len > mtd->size)
+		return -EINVAL;
+
+	res = mtd->master->read_oob(mtd->master, from + mtd->master_offset, ops);
+	if (unlikely(res)) {
+		if (mtd_is_bitflip(res))
+			mtd->ecc_stats.corrected++;
+		if (mtd_is_eccerr(res))
+			mtd->ecc_stats.failed++;
+	}
+	return res;
+}
+
 static int mtd_part_write(struct mtd_info *mtd, loff_t to, size_t len,
                 size_t *retlen, const u_char *buf)
 {
@@ -188,6 +208,8 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 
 	if (mtd->write_oob)
 		part->write_oob = mtd_part_write_oob;
+	if (mtd->read_oob)
+		part->read_oob = mtd_part_read_oob;
 
 	part->block_isbad = mtd->block_isbad ? mtd_part_block_isbad : NULL;
 	part->size = size;
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
