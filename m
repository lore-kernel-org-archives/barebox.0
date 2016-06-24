Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGPBO-0005h7-Hs
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 11:21:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Jun 2016 13:21:34 +0200
Message-Id: <1466767295-25040-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: nand: Set ONFI function hooks earlier
To: Barebox List <barebox@lists.infradead.org>

Make the ONFI function hooks available after nand_scan_ident() but
before nand_scan_tail(). Based on the kernel commit:
4204ccc mtd: set ONFI nand's default hooks in nand_set_defaults()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 670720a..d327a7b 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -2891,6 +2891,13 @@ static void nand_set_defaults(struct nand_chip *chip, int busw)
 
 	if (!chip->select_chip)
 		chip->select_chip = nand_select_chip;
+
+	/* set for ONFI nand */
+	if (!chip->onfi_set_features)
+		chip->onfi_set_features = nand_onfi_set_features;
+	if (!chip->onfi_get_features)
+		chip->onfi_get_features = nand_onfi_get_features;
+
 	if (!chip->read_byte)
 		chip->read_byte = busw ? nand_read_byte16 : nand_read_byte;
 	if (!chip->read_word)
@@ -3546,12 +3553,6 @@ int nand_scan_tail(struct mtd_info *mtd)
 	if (!chip->write_page)
 		chip->write_page = nand_write_page;
 
-	/* set for ONFI nand */
-	if (!chip->onfi_set_features)
-		chip->onfi_set_features = nand_onfi_set_features;
-	if (!chip->onfi_get_features)
-		chip->onfi_get_features = nand_onfi_get_features;
-
 	/*
 	 * Check ECC mode, default to software if 3byte/512byte hardware ECC is
 	 * selected and we have 256 byte pagesize fallback to software ECC
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
