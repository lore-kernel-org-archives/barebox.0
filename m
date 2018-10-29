Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gH5xU-0002xa-Lz
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 11:43:52 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23992446AbeJ2LnfTB9rO (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Mon, 29 Oct 2018 12:43:35 +0100
Date: Mon, 29 Oct 2018 12:43:29 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181029114329.GA12977@lenoch>
References: <20181028211947.GA14788@lenoch> <20181028212213.GD14788@lenoch>
 <20181029100702.GA7947@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181029100702.GA7947@lenoch>
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
Subject: Re: [PATCH 03/16] mtd: nand: hide in-memory BBT implementation details
To: barebox@lists.infradead.org

On Mon, Oct 29, 2018 at 11:07:02AM +0100, Ladislav Michl wrote:
> On Sun, Oct 28, 2018 at 10:22:13PM +0100, Ladislav Michl wrote:
> > Linux commit b32843b772db adapted for Barebox:
> 
> Hmm, there's something fishy with markgood functions (trying different board).
> Debugging now...
> 
> >   nand_base.c shouldn't have to know the implementation details of
> >   nand_bbt's in-memory BBT. Specifically, nand_base shouldn't perform the
> >   bit masking and shifting to isolate a BBT entry.
> > 
> >   Instead, just move some of the BBT code into a new nand_markbad_bbt()
> >   interface. This interface allows external users (i.e., nand_base) to
> >   mark a single block as bad in the BBT. Then nand_bbt will take care of
> >   modifying the in-memory BBT and updating the flash-based BBT (if
> >   applicable).

Two bugs spotted:
1) we need to select chip again after erase
2) Linux cares only about marking block bad in BBT while Barebox supports
   also unmarking it. Thus we need a bit more complicated version of
   bbt_mark_entry.

Incremental patch bellow. Please let me know if there are another issues
with this serie, I'll squash it for v2.

Thank you.

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index e290081bb..6004f423b 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -447,8 +447,11 @@ static int nand_block_markgood_lowlevel(struct mtd_info *mtd, loff_t ofs)
 		nand_erase_nand(mtd, &einfo, 0);
 		mtd->allow_erasebad = allow_erasebad;
 
-		/* Still bad? */
-		ret = chip->block_bad(mtd, ofs, 0);
+		/*
+		 * Verify erase succeded. We need to select chip again,
+		 * as nand_erase_nand deselected it.
+		 */
+		ret = chip->block_bad(mtd, ofs, 1);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index b4f3b7e95..65870d3ec 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -89,8 +89,14 @@ static inline uint8_t bbt_get_entry(struct nand_chip *chip, int block)
 static inline void bbt_mark_entry(struct nand_chip *chip, int block,
 		uint8_t mark)
 {
-	uint8_t msk = (mark & BBT_ENTRY_MASK) << ((block & BBT_ENTRY_MASK) * 2);
-	chip->bbt[block >> BBT_ENTRY_SHIFT] |= msk;
+	/*
+	 * Unlike original Linux implementation, Barebox needs also
+	 * mark block as good again, so mask entry comletely.
+	 */
+	int index = block >> BBT_ENTRY_SHIFT;
+	int shift = (block & BBT_ENTRY_MASK) * 2;
+	chip->bbt[index] &= ~(BBT_ENTRY_MASK << shift);
+	chip->bbt[index] |= (mark & BBT_ENTRY_MASK) << shift;
 }
 
 static int check_pattern_no_oob(uint8_t *buf, struct nand_bbt_descr *td)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
