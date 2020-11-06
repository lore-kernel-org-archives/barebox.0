Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xM-00054U-55
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:50 +0100
Message-Id: <20201106133900.2656-17-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/26] mtd: nand: denali: Drop multichip support
To: Barebox List <barebox@lists.infradead.org>

Current multichip support doesn't fir well into the coming update to the
NAND layer. Remove it for now, it will be added back when the denali
NAND driver is updated to current Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_denali.c | 24 ++++++++----------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
index 1bacbd3be2..bffcbd8a7f 100644
--- a/drivers/mtd/nand/nand_denali.c
+++ b/drivers/mtd/nand/nand_denali.c
@@ -1435,17 +1435,13 @@ int denali_init(struct denali_nand_info *denali)
 	 * the real pagesize and anything necessery
 	 */
 	denali->devnum = ioread32(denali->flash_reg + DEVICES_CONNECTED);
-	nand->chipsize <<= (denali->devnum - 1);
-	nand->page_shift += (denali->devnum - 1);
-	nand->pagemask = (nand->chipsize >> nand->page_shift) - 1;
-	nand->bbt_erase_shift += (denali->devnum - 1);
-	nand->phys_erase_shift = nand->bbt_erase_shift;
-	nand->chip_shift += (denali->devnum - 1);
-	mtd->writesize <<= (denali->devnum - 1);
-	mtd->oobsize <<= (denali->devnum - 1);
-	mtd->erasesize <<= (denali->devnum - 1);
-	mtd->size = nand->numchips * nand->chipsize;
-	denali->bbtskipbytes *= denali->devnum;
+	if (denali->devnum != 1) {
+		ret = -EINVAL;
+		dev_err(denali->dev,
+			"Multiple devices (%d) detected, not yet supported\n",
+			denali->devnum);
+		goto failed_req_irq;
+	}
 
 	/*
 	 * second stage of the NAND scan
@@ -1496,10 +1492,6 @@ int denali_init(struct denali_nand_info *denali)
 		iowrite32(8, denali->flash_reg + ECC_CORRECTION);
 	}
 
-	nand->ecc.bytes *= denali->devnum;
-	nand->ecc.strength *= denali->devnum;
-	nand->ecc.layout->eccbytes *=
-		mtd->writesize / ECC_SECTOR_SIZE;
 	nand->ecc.layout->oobfree[0].offset =
 		denali->bbtskipbytes + nand->ecc.layout->eccbytes;
 	nand->ecc.layout->oobfree[0].length =
@@ -1515,7 +1507,7 @@ int denali_init(struct denali_nand_info *denali)
 	denali->blksperchip = denali->totalblks / nand->numchips;
 
 	/* override the default read operations */
-	nand->ecc.size = ECC_SECTOR_SIZE * denali->devnum;
+	nand->ecc.size = ECC_SECTOR_SIZE;
 	nand->ecc.read_page = denali_read_page;
 	nand->ecc.read_page_raw = denali_read_page_raw;
 	nand->ecc.write_page = denali_write_page;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
