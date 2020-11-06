Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xM-00054T-1x
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:57 +0100
Message-Id: <20201106133900.2656-24-s.hauer@pengutronix.de>
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
Subject: [PATCH 23/26] mtd: nand: atmel: drop dead code
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/atmel_nand.c | 22 ----------------------
 1 file changed, 22 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 5351667bdc..438a967bd6 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1026,21 +1026,6 @@ static int atmel_nand_read_page(struct nand_chip *chip, uint8_t *buf,
 
 	nand_read_page_op(chip, page, 0, NULL, 0);
 
-	/*
-	 * Errata: ALE is incorrectly wired up to the ECC controller
-	 * on the AP7000, so it will include the address cycles in the
-	 * ECC calculation.
-	 *
-	 * Workaround: Reset the parity registers before reading the
-	 * actual data.
-	 */
-#if 0
-	if (cpu_is_at32ap7000()) {
-		struct atmel_nand_host *host = chip->priv;
-		ecc_writel(host->ecc, CR, ATMEL_ECC_RST);
-	}
-#endif
-
 	/* read the page */
 	chip->legacy.read_buf(chip, p, eccsize);
 
@@ -1157,13 +1142,6 @@ static int atmel_nand_correct(struct nand_chip *nand_chip, u_char *dat,
  */
 static void atmel_nand_hwctl(struct nand_chip *nand_chip, int mode)
 {
-#if 0
-	if (cpu_is_at32ap7000()) {
-		struct nand_chip *nand_chip = mtd_to_nand(mtd);
-		struct atmel_nand_host *host = nand_chip->priv;
-		ecc_writel(host->ecc, CR, ATMEL_ECC_RST);
-	}
-#endif
 }
 
 static int atmel_nand_of_init(struct atmel_nand_host *host, struct device_node *np)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
