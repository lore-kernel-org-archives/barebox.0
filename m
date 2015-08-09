Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp03.smtpout.orange.fr ([80.12.242.125]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZOYc0-0008Mr-2s
 for barebox@lists.infradead.org; Sun, 09 Aug 2015 21:58:37 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sun,  9 Aug 2015 23:54:18 +0200
Message-Id: <1439157258-28579-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] mtd: nand: mrvl-nand: create initial empty bbt
To: barebox@lists.infradead.org

When creating an initial bad blocks table, create it empty. This is
necessary because when the bad block table blocks are not
initialized (all ff) while some partitions are, all the blocks which
have an OOB data not beginning with 0xff 0xff will be marked as bad
blocks in the initial bad blocks scan.

As a consequence, any existing blocks are impossible to erase
anymore. Fix this by fixing the BBT creation flag.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 258ff75..1ec48cc 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -881,8 +881,9 @@ static int mrvl_nand_scan(struct mtd_info *mtd)
 		 * We'll use a bad block table stored in-flash and don't
 		 * allow writing the bad block marker to the flash.
 		 */
-		chip->bbt_options |= NAND_BBT_USE_FLASH |
-				     NAND_BBT_NO_OOB_BBM;
+		chip->bbt_options |=
+			NAND_BBT_USE_FLASH | NAND_BBT_NO_OOB_BBM |
+			NAND_BBT_CREATE_EMPTY;
 		chip->bbt_td = &bbt_main_descr;
 		chip->bbt_md = &bbt_mirror_descr;
 	}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
