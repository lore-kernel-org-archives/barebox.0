Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzyxy-0005xP-Ib
 for barebox@lists.infradead.org; Thu, 14 Jan 2021 09:30:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Jan 2021 10:30:40 +0100
Message-Id: <20210114093040.9480-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: nand: fix NAND_ECC_HW mode
To: Barebox List <barebox@lists.infradead.org>

6748f466a3 made NAND_ECC_HW_SYNDROME mode optional by bailing out
with -ENOSYS when the mode is not enabled in Kconfig. Unfortunately
with NAND_ECC_HW mode the code falls through to this test, so with
NAND_ECC_HW_SYNDROME support disabled NAND_ECC_HW stopped working as
well. Fix this.

fixes: 6748f466a3 ("mtd: nand: Make support for syndrome hardware ecc optional")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 35 ++++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 427aa7f0ec..b37017372f 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -5622,10 +5622,6 @@ int nand_scan_tail(struct nand_chip *chip)
 		if (!ecc->write_subpage && ecc->hwctl && ecc->calculate)
 			ecc->write_subpage = nand_write_subpage_hwecc;
 	case NAND_ECC_HW_SYNDROME:
-		if (!IS_ENABLED(CONFIG_NAND_ECC_HW_SYNDROME)) {
-			ret = -ENOSYS;
-			goto err_nand_manuf_cleanup;
-		}
 		if ((!ecc->calculate || !ecc->correct || !ecc->hwctl) &&
 		    (!ecc->read_page ||
 		     ecc->read_page == nand_read_page_hwecc ||
@@ -5635,19 +5631,24 @@ int nand_scan_tail(struct nand_chip *chip)
 			ret = -EINVAL;
 			goto err_nand_manuf_cleanup;
 		}
-		/* Use standard syndrome read/write page function? */
-		if (!ecc->read_page)
-			ecc->read_page = nand_read_page_syndrome;
-		if (!ecc->write_page)
-			ecc->write_page = nand_write_page_syndrome;
-		if (!ecc->read_page_raw)
-			ecc->read_page_raw = nand_read_page_raw_syndrome;
-		if (!ecc->write_page_raw)
-			ecc->write_page_raw = nand_write_page_raw_syndrome;
-		if (!ecc->read_oob)
-			ecc->read_oob = nand_read_oob_syndrome;
-		if (!ecc->write_oob)
-			ecc->write_oob = nand_write_oob_syndrome;
+		if (IS_ENABLED(CONFIG_NAND_ECC_HW_SYNDROME)) {
+			/* Use standard syndrome read/write page function? */
+			if (!ecc->read_page)
+				ecc->read_page = nand_read_page_syndrome;
+			if (!ecc->write_page)
+				ecc->write_page = nand_write_page_syndrome;
+			if (!ecc->read_page_raw)
+				ecc->read_page_raw = nand_read_page_raw_syndrome;
+			if (!ecc->write_page_raw)
+				ecc->write_page_raw = nand_write_page_raw_syndrome;
+			if (!ecc->read_oob)
+				ecc->read_oob = nand_read_oob_syndrome;
+			if (!ecc->write_oob)
+				ecc->write_oob = nand_write_oob_syndrome;
+		} else if (ecc->mode == NAND_ECC_HW_SYNDROME) {
+			ret = -ENOSYS;
+			goto err_nand_manuf_cleanup;
+		}
 
 		if (mtd->writesize >= ecc->size) {
 			if (!ecc->strength) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
