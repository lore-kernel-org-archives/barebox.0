Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SvOEE-0004nj-Ks
 for barebox@lists.infradead.org; Sun, 29 Jul 2012 07:47:55 +0000
Received: by mail-pb0-f49.google.com with SMTP id rq13so8523321pbb.36
 for <barebox@lists.infradead.org>; Sun, 29 Jul 2012 00:47:49 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sun, 29 Jul 2012 17:41:52 +1000
Message-Id: <1343547714-32740-6-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
References: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/7] nand: fix build error when BBT not enabled.
To: barebox@lists.infradead.org

This fixes following error when bad blocks config option is not enabled:

drivers/built-in.o: In function `nand_erase_nand':
drivers/mtd/nand/nand_write.c:721: undefined reference to `nand_update_bbt'
drivers/built-in.o: In function `nand_default_block_markbad':
drivers/mtd/nand/nand_write.c:76: undefined reference to `nand_update_bbt'
make: *** [barebox] Error 1

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 drivers/mtd/nand/nand_write.c |   12 ++++++++++--
 1 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index 13b6c89..0fd49d6 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -72,9 +72,15 @@ int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
 		chip->bbt[block >> 2] |= 0x01 << ((block & 0x03) << 1);
 
 	/* Do we have a flash based bad block table ? */
-	if (chip->options & NAND_USE_FLASH_BBT)
+	if (chip->options & NAND_USE_FLASH_BBT) {
+#if defined(CONFIG_NAND_BBT)
 		ret = nand_update_bbt(mtd, ofs);
-	else {
+#else
+		printk(KERN_WARNING "NAND trying to use BBT,"
+				"but not supported\n");
+		ret = 0;
+#endif
+	} else {
 		/* We write two bytes, so we dont have to mess with 16 bit
 		 * access
 		 */
@@ -714,11 +720,13 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 	for (chipnr = 0; chipnr < chip->numchips; chipnr++) {
 		if (!rewrite_bbt[chipnr])
 			continue;
+#if defined(CONFIG_NAND_BBT)
 		/* update the BBT for chip */
 		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase_nand: nand_update_bbt "
 		      "(%d:0x%0x 0x%0x)\n", chipnr, rewrite_bbt[chipnr],
 		      chip->bbt_td->pages[chipnr]);
 		nand_update_bbt(mtd, rewrite_bbt[chipnr]);
+#endif
 	}
 
 	/* Return more or less happy */
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
