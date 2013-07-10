Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uws0r-0000LG-Tr
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 10:52:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 12:52:06 +0200
Message-Id: <1373453528-3723-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
References: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] mci: set partnames of eMMC boot partitions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 67668d5..02e6216 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -406,7 +406,7 @@ static int mci_calc_blk_cnt(uint64_t cap, unsigned shift)
 }
 
 static void mci_part_add(struct mci *mci, uint64_t size,
-                        unsigned int part_cfg, char *name, int idx, bool ro,
+                        unsigned int part_cfg, char *name, char *partname, int idx, bool ro,
                         int area_type)
 {
 	struct mci_part *part = &mci->part[mci->nr_parts];
@@ -414,6 +414,7 @@ static void mci_part_add(struct mci *mci, uint64_t size,
 	part->mci = mci;
 	part->size = size;
 	part->blk.cdev.name = name;
+	part->blk.cdev.partname = partname;
 	part->blk.blockbits = SECTOR_SHIFT;
 	part->blk.num_blocks = mci_calc_blk_cnt(size, part->blk.blockbits);
 	part->area_type = area_type;
@@ -482,13 +483,14 @@ static int mmc_change_freq(struct mci *mci)
 		unsigned int part_size;
 
 		for (idx = 0; idx < MMC_NUM_BOOT_PARTITION; idx++) {
-			char *name;
+			char *name, *partname;
 			part_size = mci->ext_csd[EXT_CSD_BOOT_MULT] << 17;
 
-			name = asprintf("%s.boot%d", mci->cdevname, idx);
+			partname = asprintf("boot%d", idx);
+			name = asprintf("%s.%s", mci->cdevname, partname);
 			mci_part_add(mci, part_size,
 					EXT_CSD_PART_CONFIG_ACC_BOOT0 + idx,
-					name, idx, true,
+					name, partname, idx, true,
 					MMC_BLK_DATA_AREA_BOOT);
 		}
 
@@ -1104,7 +1106,7 @@ static int mci_startup(struct mci *mci)
 	err = mci_set_blocklen(mci, mci->read_bl_len);
 
 	mci_part_add(mci, mci->capacity, 0,
-			mci->cdevname, 0, true,
+			mci->cdevname, NULL, 0, true,
 			MMC_BLK_DATA_AREA_MAIN);
 
 	return err;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
