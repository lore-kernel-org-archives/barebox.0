Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFSjv-00064u-Lo
 for barebox@lists.infradead.org; Wed, 24 Oct 2018 23:39:05 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23994573AbeJXXjDHzGG1 (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Thu, 25 Oct 2018 01:39:03 +0200
Date: Thu, 25 Oct 2018 01:39:02 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181024233902.GB17799@lenoch>
References: <20181024233754.GA17799@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181024233754.GA17799@lenoch>
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
Subject: [PATCH 2/3] mtd: nand: add accessors, macros for in-memory BBT
To: barebox@lists.infradead.org

Linux commit 771c568bcf91:

  There is an abundance of magic numbers and complicated shifting/masking
  logic in the in-memory BBT code which makes the code unnecessary complex
  and hard to read.

  This patch adds macros to represent the 00b, 01b, 10b, and 11b
  memory-BBT magic numbers, as well as two accessor functions for reading
  and marking the memory-BBT bitfield for a given block.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_bbt.c | 70 +++++++++++++++++++++++++------------
 1 file changed, 48 insertions(+), 22 deletions(-)

diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index 1357c5cc6..ce1d22e5c 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -69,6 +69,28 @@
 #include <errno.h>
 #include <malloc.h>
 
+#define BBT_BLOCK_GOOD		0x00
+#define BBT_BLOCK_WORN		0x01
+#define BBT_BLOCK_RESERVED	0x02
+#define BBT_BLOCK_FACTORY_BAD	0x03
+
+#define BBT_ENTRY_MASK		0x03
+#define BBT_ENTRY_SHIFT		2
+
+static inline uint8_t bbt_get_entry(struct nand_chip *chip, int block)
+{
+	uint8_t entry = chip->bbt[block >> BBT_ENTRY_SHIFT];
+	entry >>= (block & BBT_ENTRY_MASK) * 2;
+	return entry & BBT_ENTRY_MASK;
+}
+
+static inline void bbt_mark_entry(struct nand_chip *chip, int block,
+		uint8_t mark)
+{
+	uint8_t msk = (mark & BBT_ENTRY_MASK) << ((block & BBT_ENTRY_MASK) * 2);
+	chip->bbt[block >> BBT_ENTRY_SHIFT] |= msk;
+}
+
 static int check_pattern_no_oob(uint8_t *buf, struct nand_bbt_descr *td)
 {
 	if (memcmp(buf, td->pattern, td->len))
@@ -214,7 +236,9 @@ static int read_bbt(struct mtd_info *mtd, uint8_t *buf, int page, int num,
 				if (reserved_block_code && (tmp == reserved_block_code)) {
 					pr_info("nand_read_bbt: reserved block at 0x%012llx\n",
 						 (loff_t)((offs << 2) + (act >> 1)) << this->bbt_erase_shift);
-					this->bbt[offs + (act >> 3)] |= 0x2 << (act & 0x06);
+					bbt_mark_entry(this, (offs << 2) +
+							(act >> 1),
+							BBT_BLOCK_RESERVED);
 					mtd->ecc_stats.bbtblocks++;
 					continue;
 				}
@@ -222,9 +246,13 @@ static int read_bbt(struct mtd_info *mtd, uint8_t *buf, int page, int num,
 					 (loff_t)((offs << 2) + (act >> 1)) << this->bbt_erase_shift);
 				/* Factory marked bad or worn out? */
 				if (tmp == 0)
-					this->bbt[offs + (act >> 3)] |= 0x3 << (act & 0x06);
+					bbt_mark_entry(this, (offs << 2) +
+							(act >> 1),
+							BBT_BLOCK_FACTORY_BAD);
 				else
-					this->bbt[offs + (act >> 3)] |= 0x1 << (act & 0x06);
+					bbt_mark_entry(this, (offs << 2) +
+							(act >> 1),
+							BBT_BLOCK_WORN);
 				mtd->ecc_stats.badblocks++;
 			}
 		}
@@ -520,7 +548,7 @@ static int create_bbt(struct mtd_info *mtd, uint8_t *buf,
 			return ret;
 
 		if (ret) {
-			this->bbt[i >> 3] |= 0x03 << (i & 0x6);
+			bbt_mark_entry(this, i >> 1, BBT_BLOCK_FACTORY_BAD);
 			pr_warn("Bad eraseblock %d at 0x%012llx\n",
 				i >> 1, (unsigned long long)from);
 			mtd->ecc_stats.badblocks++;
@@ -704,10 +732,9 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 		for (i = 0; i < td->maxblocks; i++) {
 			int block = startblock + dir * i;
 			/* Check, if the block is bad */
-			switch ((this->bbt[block >> 2] >>
-				 (2 * (block & 0x03))) & 0x03) {
-			case 0x01:
-			case 0x03:
+			switch (bbt_get_entry(this, block)) {
+			case BBT_BLOCK_WORN:
+			case BBT_BLOCK_FACTORY_BAD:
 				continue;
 			}
 			page = block <<
@@ -807,7 +834,7 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 		/* Walk through the memory table */
 		for (i = 0; i < numblocks;) {
 			uint8_t dat;
-			dat = this->bbt[bbtoffs + (i >> 2)];
+			dat = bbt_get_entry(this, (bbtoffs << 2) + i);
 			for (j = 0; j < 4; j++, i++) {
 				int sftcnt = (i << (3 - sft)) & sftmsk;
 				/* Do not store the reserved bbt blocks! */
@@ -1000,7 +1027,7 @@ static void mark_bbt_region(struct mtd_info *mtd, struct nand_bbt_descr *td)
 {
 	struct nand_chip *this = mtd->priv;
 	int i, j, chips, block, nrblocks, update;
-	uint8_t oldval, newval;
+	uint8_t oldval;
 
 	/* Do we have a bbt per chip? */
 	if (td->options & NAND_BBT_PERCHIP) {
@@ -1018,10 +1045,10 @@ static void mark_bbt_region(struct mtd_info *mtd, struct nand_bbt_descr *td)
 				continue;
 			block = td->pages[i] >> (this->bbt_erase_shift - this->page_shift);
 			block <<= 1;
-			oldval = this->bbt[(block >> 3)];
-			newval = oldval | (0x2 << (block & 0x06));
-			this->bbt[(block >> 3)] = newval;
-			if ((oldval != newval) && td->reserved_block_code)
+			oldval = bbt_get_entry(this, block >> 1);
+			bbt_mark_entry(this, block >> 1, BBT_BLOCK_RESERVED);
+			if ((oldval != BBT_BLOCK_RESERVED) &&
+					td->reserved_block_code)
 				nand_update_bbt(mtd, (loff_t)block << (this->bbt_erase_shift - 1));
 			continue;
 		}
@@ -1032,10 +1059,9 @@ static void mark_bbt_region(struct mtd_info *mtd, struct nand_bbt_descr *td)
 			block = i * nrblocks;
 		block <<= 1;
 		for (j = 0; j < td->maxblocks; j++) {
-			oldval = this->bbt[(block >> 3)];
-			newval = oldval | (0x2 << (block & 0x06));
-			this->bbt[(block >> 3)] = newval;
-			if (oldval != newval)
+			oldval = bbt_get_entry(this, block >> 1);
+			bbt_mark_entry(this, block >> 1, BBT_BLOCK_RESERVED);
+			if (oldval != BBT_BLOCK_RESERVED)
 				update = 1;
 			block += 2;
 		}
@@ -1352,18 +1378,18 @@ int nand_isbad_bbt(struct mtd_info *mtd, loff_t offs, int allowbbt)
 
 	/* Get block number * 2 */
 	block = (int)(offs >> (this->bbt_erase_shift - 1));
-	res = (this->bbt[block >> 3] >> (block & 0x06)) & 0x03;
+	res = bbt_get_entry(this, block >> 1);
 
 	pr_debug("nand_isbad_bbt(): bbt info for offs 0x%08x: "
 			"(block %d) 0x%02x\n",
 			(unsigned int)offs, block >> 1, res);
 
 	switch ((int)res) {
-	case 0x00:
+	case BBT_BLOCK_GOOD:
 		return 0;
-	case 0x01:
+	case BBT_BLOCK_WORN:
 		return 1;
-	case 0x02:
+	case BBT_BLOCK_RESERVED:
 		return allowbbt ? 0 : 1;
 	}
 	return 1;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
