Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WuKf3-0007xh-7T
 for barebox@lists.infradead.org; Tue, 10 Jun 2014 11:56:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 Jun 2014 13:55:52 +0200
Message-Id: <1402401353-13704-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: partition: Fix multi eraseregion chips
To: barebox@lists.infradead.org

The current code counts the eraseregions a new partition spans and
sets the partitions number of eraseregions accordingly, but the code
forgets to allocate and fill in the eraseregions for the partition
mtd device. This makes the erase operation crash with a NULL pointer
exception.
This patch fixes this with the same approach the kernel uses: Set
the number of eraseregions to 1 unconditionally and the eraseregion
size to the maximum of the eraseregions found in the partition.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/partition.c | 41 ++++++++++++++++++++++++-----------------
 1 file changed, 24 insertions(+), 17 deletions(-)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 7c19766..52d0c94 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -76,7 +76,6 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 		uint64_t size, unsigned long flags, const char *name)
 {
 	struct mtd_info *part;
-	int start = 0, end = 0, i;
 
 	part = xzalloc(sizeof(*part));
 
@@ -93,24 +92,32 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 	part->ecc_strength = mtd->ecc_strength;
 	part->subpage_sft = mtd->subpage_sft;
 
-	/*
-	 * find the number of eraseregions the partition includes.
-	 * Do not bother to create the mtd_erase_region_infos as
-	 * ubi is only interested in its number. UBI does not
-	 * yet support multiple erase regions.
-	 */
-	for (i = mtd->numeraseregions - 1; i >= 0; i--) {
-		struct mtd_erase_region_info *region = &mtd->eraseregions[i];
-		if (offset >= region->offset &&
-		    offset < region->offset + region->erasesize * region->numblocks)
-			start = i;
-		if (offset + size >= region->offset &&
-		    offset + size <= region->offset + region->erasesize * region->numblocks)
-			end = i;
+	if (mtd->numeraseregions > 1) {
+		/* Deal with variable erase size stuff */
+		int i, max = mtd->numeraseregions;
+		u64 end = offset + size;
+		struct mtd_erase_region_info *regions = mtd->eraseregions;
+
+		/* Find the first erase regions which is part of this
+		 * partition. */
+		for (i = 0; i < max && regions[i].offset <= offset; i++)
+			;
+		/* The loop searched for the region _behind_ the first one */
+		if (i > 0)
+			i--;
+
+		/* Pick biggest erasesize */
+		for (; i < max && regions[i].offset < end; i++) {
+			if (part->erasesize < regions[i].erasesize) {
+				part->erasesize = regions[i].erasesize;
+			}
+		}
+		BUG_ON(part->erasesize == 0);
+	} else {
+		/* Single erase size */
+		part->erasesize = mtd->erasesize;
 	}
 
-	part->numeraseregions = end - start;
-
 	part->read = mtd_part_read;
 	if (IS_ENABLED(CONFIG_MTD_WRITE)) {
 		part->write = mtd_part_write;
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
