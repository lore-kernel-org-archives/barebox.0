Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZMs0L-0005ZW-BN
 for barebox@lists.infradead.org; Wed, 05 Aug 2015 06:16:46 +0000
Received: by labjt7 with SMTP id jt7so4377958lab.0
 for <barebox@lists.infradead.org>; Tue, 04 Aug 2015 23:16:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  5 Aug 2015 09:10:34 +0300
Message-Id: <1438755034-22236-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] mtd: nand_base: replace ifdef with IS_ENABLE
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/mtd/nand/nand_base.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 2b3f9a9..bf4110a 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -445,15 +445,15 @@ static int nand_block_checkbad(struct mtd_info *mtd, loff_t ofs, int getchip,
 {
 	struct nand_chip *chip = mtd->priv;
 
-#ifdef CONFIG_NAND_BBT
-	if (!chip->bbt)
-		return chip->block_bad(mtd, ofs, getchip);
+	if (IS_ENABLED(CONFIG_NAND_BBT)) {
+		if (!chip->bbt)
+			return chip->block_bad(mtd, ofs, getchip);
+
+		/* Return info from the table */
+		return nand_isbad_bbt(mtd, ofs, allowbbt);
+	}
 
-	/* Return info from the table */
-	return nand_isbad_bbt(mtd, ofs, allowbbt);
-#else
 	return chip->block_bad(mtd, ofs, getchip);
-#endif
 }
 
 /* Wait for the ready pin, after a command. The timeout is caught later. */
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
