Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xL-00054P-OP
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:56 +0100
Message-Id: <20201106133900.2656-23-s.hauer@pengutronix.de>
In-Reply-To: <20201106133900.2656-1-s.hauer@pengutronix.de>
References: <20201106133900.2656-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/26] mtd: nand: atmel: Return number of bitflips
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/atmel_nand.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 6903fb4c9d..5351667bdc 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -574,7 +574,7 @@ static int pmecc_correction(struct mtd_info *mtd, u32 pmecc_stat, uint8_t *buf)
 {
 	struct nand_chip *nand_chip = mtd_to_nand(mtd);
 	struct atmel_nand_host *host = nand_chip->priv;
-	int i, err_nbr, ret;
+	int i, err_nbr, ret, bitflips = 0;
 	uint8_t *buf_pos;
 	uint8_t *ecc_code = host->ecc_code;
 
@@ -603,17 +603,18 @@ normal_check:
 			if (err_nbr == -1) {
 				dev_err(host->dev, "PMECC: Too many errors\n");
 				mtd->ecc_stats.failed++;
-				return -EIO;
+				return -EBADMSG;
 			} else {
 				pmecc_correct_data(mtd, buf_pos, ecc_code, i,
 					host->pmecc_bytes_per_sector, err_nbr);
 				mtd->ecc_stats.corrected += err_nbr;
+				bitflips += err_nbr;
 			}
 		}
 		pmecc_stat >>= 1;
 	}
 
-	return 0;
+	return bitflips;
 }
 
 static int atmel_nand_pmecc_read_page(struct nand_chip *chip, uint8_t *buf,
@@ -647,8 +648,7 @@ static int atmel_nand_pmecc_read_page(struct nand_chip *chip, uint8_t *buf,
 
 	stat = pmecc_readl_relaxed(host->ecc, ISR);
 	if (stat != 0)
-		if (pmecc_correction(mtd, stat, buf) != 0)
-			return -EIO;
+		return pmecc_correction(mtd, stat, buf);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
