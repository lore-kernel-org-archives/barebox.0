Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wk7hc-0000U7-Fq
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:04:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 May 2014 10:04:22 +0200
Message-Id: <1399968262-889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: partitions: only add write functions when mtd write
 support is enabled
To: barebox@lists.infradead.org

Makes the binary a few bytes smaller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/partition.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index c2461a0..7c19766 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -112,10 +112,13 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 	part->numeraseregions = end - start;
 
 	part->read = mtd_part_read;
-	part->write = mtd_part_write;
-	part->erase = mtd_part_erase;
+	if (IS_ENABLED(CONFIG_MTD_WRITE)) {
+		part->write = mtd_part_write;
+		part->erase = mtd_part_erase;
+		part->block_markbad = mtd->block_markbad ? mtd_part_block_markbad : NULL;
+	}
+
 	part->block_isbad = mtd->block_isbad ? mtd_part_block_isbad : NULL;
-	part->block_markbad = mtd->block_markbad ? mtd_part_block_markbad : NULL;
 	part->size = size;
 	part->name = strdup(name);
 
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
