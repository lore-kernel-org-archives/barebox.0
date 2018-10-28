Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsZK-00068T-9m
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:26:07 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990392AbeJ1VZ6F8Fhf (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:25:58 +0100
Date: Sun, 28 Oct 2018 22:25:56 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212556.GM14788@lenoch>
References: <20181028211947.GA14788@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181028211947.GA14788@lenoch>
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
Subject: [PATCH 12/16] mtd: nand_bbt: Move BBT block selection logic out of
 write_bbt()
To: barebox@lists.infradead.org

Linux commit c3baf278d3bf adapted for Barebox:

  This clarifies the write_bbt() function by removing the write label
  and simplifying the error/exit path.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_bbt.c | 110 ++++++++++++++++++++++++------------
 1 file changed, 74 insertions(+), 36 deletions(-)

diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index bcd54d7a9..1d3551b4e 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -599,6 +599,69 @@ static void search_read_bbts(struct mtd_info *mtd, uint8_t *buf,
 		search_bbt(mtd, buf, md);
 }
 
+/**
+ * get_bbt_block - Get the first valid eraseblock suitable to store a BBT
+ * @this: the NAND device
+ * @td: the BBT description
+ * @md: the mirror BBT descriptor
+ * @chip: the CHIP selector
+ *
+ * This functions returns a positive block number pointing a valid eraseblock
+ * suitable to store a BBT (i.e. in the range reserved for BBT), or -ENOSPC if
+ * all blocks are already used of marked bad. If td->pages[chip] was already
+ * pointing to a valid block we re-use it, otherwise we search for the next
+ * valid one.
+ */
+static int get_bbt_block(struct nand_chip *this, struct nand_bbt_descr *td,
+			 struct nand_bbt_descr *md, int chip)
+{
+	int startblock, dir, page, numblocks, i;
+
+	/*
+	 * There was already a version of the table, reuse the page. This
+	 * applies for absolute placement too, as we have the page number in
+	 * td->pages.
+	 */
+	if (td->pages[chip] != -1)
+		return td->pages[chip] >>
+				(this->bbt_erase_shift - this->page_shift);
+
+	numblocks = (int)(this->chipsize >> this->bbt_erase_shift);
+	if (!(td->options & NAND_BBT_PERCHIP))
+		numblocks *= this->numchips;
+
+	/*
+	 * Automatic placement of the bad block table. Search direction
+	 * top -> down?
+	 */
+	if (td->options & NAND_BBT_LASTBLOCK) {
+		startblock = numblocks * (chip + 1) - 1;
+		dir = -1;
+	} else {
+		startblock = chip * numblocks;
+		dir = 1;
+	}
+
+	for (i = 0; i < td->maxblocks; i++) {
+		int block = startblock + dir * i;
+
+		/* Check, if the block is bad */
+		switch (bbt_get_entry(this, block)) {
+		case BBT_BLOCK_WORN:
+		case BBT_BLOCK_FACTORY_BAD:
+			continue;
+		}
+
+		page = block << (this->bbt_erase_shift - this->page_shift);
+
+		/* Check, if the block is used by the mirror table */
+		if (!md || md->pages[chip] != page)
+			return block;
+	}
+
+	return -ENOSPC;
+}
+
 /**
  * write_bbt - [GENERIC] (Re)write the bad block table
  * @mtd: MTD device structure
@@ -616,7 +679,7 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 	struct nand_chip *this = mtd->priv;
 	struct erase_info einfo;
 	int i, res, chip = 0;
-	int bits, startblock, dir, page, offs, numblocks, sft, sftmsk;
+	int bits, page, offs, numblocks, sft, sftmsk;
 	int nrchips, pageoffs, ooboffs;
 	uint8_t msk[4];
 	uint8_t rcode = td->reserved_block_code;
@@ -648,45 +711,20 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 
 	/* Loop through the chips */
 	for (; chip < nrchips; chip++) {
-		/*
-		 * There was already a version of the table, reuse the page
-		 * This applies for absolute placement too, as we have the
-		 * page nr. in td->pages.
-		 */
-		if (td->pages[chip] != -1) {
-			page = td->pages[chip];
-			goto write;
+		int block;
+
+		block = get_bbt_block(this, td, md, chip);
+		if (block < 0) {
+			pr_err("No space left to write bad block table\n");
+			res = block;
+			goto outerr;
 		}
 
 		/*
-		 * Automatic placement of the bad block table. Search direction
-		 * top -> down?
+		 * get_bbt_block() returns a block number, shift the value to
+		 * get a page number.
 		 */
-		if (td->options & NAND_BBT_LASTBLOCK) {
-			startblock = numblocks * (chip + 1) - 1;
-			dir = -1;
-		} else {
-			startblock = chip * numblocks;
-			dir = 1;
-		}
-
-		for (i = 0; i < td->maxblocks; i++) {
-			int block = startblock + dir * i;
-			/* Check, if the block is bad */
-			switch (bbt_get_entry(this, block)) {
-			case BBT_BLOCK_WORN:
-			case BBT_BLOCK_FACTORY_BAD:
-				continue;
-			}
-			page = block <<
-				(this->bbt_erase_shift - this->page_shift);
-			/* Check, if the block is used by the mirror table */
-			if (!md || md->pages[chip] != page)
-				goto write;
-		}
-		pr_err("No space left to write bad block table\n");
-		return -ENOSPC;
-	write:
+		page = block << (this->bbt_erase_shift - this->page_shift);
 
 		/* Set up shift count and masks for the flash table */
 		bits = td->options & NAND_BBT_NRBITS_MSK;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
