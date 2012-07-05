Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmrrU-0006bW-Da
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:54 +0200
Message-Id: <1341517020-5581-24-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
References: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 24/30] mtd omap: add prefix to omap specific decode_bch
 function
To: barebox@lists.infradead.org

So that it does not collide with our generic decode_bch function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_bch_decoder.c |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c        |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_bch_decoder.c b/drivers/mtd/nand/nand_omap_bch_decoder.c
index d1455e4..64e8031 100644
--- a/drivers/mtd/nand/nand_omap_bch_decoder.c
+++ b/drivers/mtd/nand/nand_omap_bch_decoder.c
@@ -366,7 +366,7 @@ static void syndrome(unsigned int select_4_8,
  * Number of errors that can be corrected: 4- or 8-bits
  * Length of information bit: kk = nn - rr
  */
-int decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc)
+int omap_gpmc_decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc)
 {
 	int no_of_err;
 	unsigned int syn[16] = {0,};	/* 16 Syndromes */
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index d55dcaa..86d4574 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -90,7 +90,7 @@
 #define GPMC_ECC_SIZE_CONFIG_ECCSIZE0(x)	((x) << 12)
 #define GPMC_ECC_SIZE_CONFIG_ECCSIZE1(x)	((x) << 22)
 
-int decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc);
+int omap_gpmc_decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc);
 
 static char *ecc_mode_strings[] = {
 	"software",
@@ -400,7 +400,7 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 
 		count = 0;
 		if (eccflag == 1) {
-			count = decode_bch(select_4_8, calc_ecc, err_loc);
+			count = omap_gpmc_decode_bch(select_4_8, calc_ecc, err_loc);
 			if (count < 0)
 				return count;
 			else
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
