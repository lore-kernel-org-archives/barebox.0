Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kndaS-00088T-AX
 for barebox@lists.infradead.org; Fri, 11 Dec 2020 08:15:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Dec 2020 09:15:30 +0100
Message-Id: <20201211081533.7372-2-s.hauer@pengutronix.de>
In-Reply-To: <20201211081533.7372-1-s.hauer@pengutronix.de>
References: <20201211081533.7372-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 2/5] nand: omap: Fix BCH16 read
To: Barebox List <barebox@lists.infradead.org>

When reading in BCH16 mode the ECC for the first 512 byte fails. I am
pretty sure this must have worked once and I can't see why it doesn't
now. Change reading in BCH16 mode to the same way as the kernel driver
does: Instead of using wrap mode 4 to skip ECC when reading the first
OOB bytes, just use wrap mode 1 and skip reading the first OOB bytes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index e3d36a1cf4..1d81500bce 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -91,6 +91,8 @@
 
 #define BCH8_MAX_ERROR	8	/* upto 8 bit correctable */
 
+#define BADBLOCK_MARKER_LENGTH 2
+
 static const uint8_t bch8_vector[] = {0xf3, 0xdb, 0x14, 0x16, 0x8b, 0xd2,
 		0xbe, 0xcc, 0xac, 0x6b, 0xff, 0x99, 0x7b};
 static u_char bch16_vector[] = {0xf5, 0x24, 0x1c, 0xd0, 0x61, 0xb3, 0xf1, 0x55,
@@ -497,9 +499,9 @@ static void omap_enable_hwecc(struct nand_chip *nand, int mode)
 	case OMAP_ECC_BCH16_CODE_HW:
 		bch_mod = 2;
 		if (mode == NAND_ECC_READ) {
-			bch_wrapmode = 4;
-			eccsize0 = 4; /* ECC bits in nibbles per sector */
-			eccsize1 = 52;  /* non-ECC bits in nibbles per sector */
+			bch_wrapmode = 1;
+			eccsize0 = 52; /* ECC bits in nibbles per sector */
+			eccsize1 = 0;  /* non-ECC bits in nibbles per sector */
 		} else {
 			bch_wrapmode = 4;
 			eccsize0 = 4;  /* extra bits in nibbles per sector */
@@ -964,7 +966,12 @@ static int gpmc_read_page_hwecc_elm(struct nand_chip *chip, uint8_t *buf,
 	nand_read_page_op(chip, page, 0, NULL, 0);
 
 	chip->legacy.read_buf(chip, buf, mtd->writesize);
-	chip->legacy.read_buf(chip, chip->oob_poi, mtd->oobsize);
+
+	/* Read oob bytes */
+	nand_change_read_column_op(chip,
+				mtd->writesize + BADBLOCK_MARKER_LENGTH,
+				chip->oob_poi + BADBLOCK_MARKER_LENGTH,
+				chip->ecc.total, false);
 
 	ret = mtd_ooblayout_get_eccbytes(mtd, ecc_code, chip->oob_poi, 0,
                                   chip->ecc.total);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
