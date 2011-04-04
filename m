Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6l3F-0003Tp-4b
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:46:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 16:46:36 +0200
Message-Id: <1301928401-13571-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301928401-13571-1-git-send-email-s.hauer@pengutronix.de>
References: <1301928401-13571-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] nand: do not fall through in nand_scan_tail()
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c |   38 ++++++++++++++++++++++----------------
 1 files changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 9946066..af77868 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -2288,6 +2288,23 @@ int nand_scan_ident(struct mtd_info *mtd, int maxchips)
 	return 0;
 }
 
+static void __maybe_unused nand_check_hwecc(struct mtd_info *mtd, struct nand_chip *chip)
+{
+	if ((!chip->ecc.calculate || !chip->ecc.correct ||
+	     !chip->ecc.hwctl) &&
+	    (!chip->ecc.read_page || !chip->ecc.write_page)) {
+		printk(KERN_WARNING "No ECC functions supplied, "
+		       "Hardware ECC not possible\n");
+		BUG();
+	}
+
+	if (mtd->writesize < chip->ecc.size) {
+		printk(KERN_WARNING "%d byte HW ECC not possible on "
+		       "%d byte page size\n",
+			chip->ecc.size, mtd->writesize);
+		BUG();
+	}
+}
 
 /**
  * nand_scan_tail - [NAND Interface] Scan for the NAND device
@@ -2356,17 +2373,10 @@ int nand_scan_tail(struct mtd_info *mtd)
 		if (!chip->ecc.write_oob)
 			chip->ecc.write_oob = nand_write_oob_std;
 
+		nand_check_hwecc(mtd, chip);
+		break;
+
 	case NAND_ECC_HW_SYNDROME:
-		if ((!chip->ecc.calculate || !chip->ecc.correct ||
-		     !chip->ecc.hwctl) &&
-		    (!chip->ecc.read_page ||
-		     chip->ecc.read_page == nand_read_page_hwecc ||
-		     !chip->ecc.write_page ||
-		     chip->ecc.write_page == nand_write_page_hwecc)) {
-			printk(KERN_WARNING "No ECC functions supplied, "
-			       "Hardware ECC not possible\n");
-			BUG();
-		}
 		/* Use standard syndrome read/write page function ? */
 		if (!chip->ecc.read_page)
 			chip->ecc.read_page = nand_read_page_syndrome;
@@ -2377,12 +2387,8 @@ int nand_scan_tail(struct mtd_info *mtd)
 		if (!chip->ecc.write_oob)
 			chip->ecc.write_oob = nand_write_oob_syndrome;
 
-		if (mtd->writesize >= chip->ecc.size)
-			break;
-		printk(KERN_WARNING "%d byte HW ECC not possible on "
-		       "%d byte page size, fallback to SW ECC\n",
-		       chip->ecc.size, mtd->writesize);
-		chip->ecc.mode = NAND_ECC_SOFT;
+		nand_check_hwecc(mtd, chip);
+		break;
 
 	case NAND_ECC_SOFT:
 		chip->ecc.calculate = nand_calculate_ecc;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
