Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from www153.your-server.de ([213.133.104.153])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEVmw-0005P8-Lv
 for barebox@lists.infradead.org; Tue, 23 Feb 2021 11:23:36 +0000
From: Edoardo Scaglia <scaglia@amelchem.com>
Date: Tue, 23 Feb 2021 12:22:53 +0100
Message-Id: <20210223112253.5468-1-scaglia@amelchem.com>
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
Subject: [PATCH] mtd: nand: fix hardware ECC support in atmel_nand driver
To: barebox@lists.infradead.org
Cc: Edoardo Scaglia <scaglia@amelchem.com>

When using a NAND memory with hardware ECC enabled on a Atmel SoC
probing fails during barebox boot with following error:

nand_base: device found, Manufacturer ID: 0x2c, Chip ID: 0xdc
nand_base: Micron MT29F4G08ABAEAWP
nand_base: 512 MiB, SLC, erase size: 256 KiB, page size: 4096, OOB size: 224
WARNING: at drivers/mtd/nand/nand_base.c:5594/nand_scan_tail()!
WARNING: No oob scheme defined for oobsize 224
atmel_nand atmel_nand0: probe failed: No such device or address

The problem arises from commit b6bcd96de5a75bdc5d06a06f2efffc2d89e346ec
which among several changes dropped CONFIG_NAND_ECC_HW symbol, however
two references remained in atmel_nand driver causing the failure of NAND
probing when hardware ECC is configured in a Atmel SoC.

Signed-off-by: Edoardo Scaglia <scaglia@amelchem.com>
---
 drivers/mtd/nand/atmel_nand.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index db13f5b7e4..58d53b7a78 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1351,8 +1351,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 	nand_chip->ecc.strength = pdata->ecc_strength ? : 1;
 	nand_chip->ecc.size = 1 << pdata->ecc_size_shift ? : 512;
 
-	if (IS_ENABLED(CONFIG_NAND_ECC_HW) &&
-	    pdata->ecc_mode == NAND_ECC_HW) {
+	if (pdata->ecc_mode == NAND_ECC_HW) {
 		nand_chip->ecc.mode = NAND_ECC_HW;
 	}
 
@@ -1411,8 +1410,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 
 	host->ecc_code = xmalloc(mtd->oobsize);
 
-	if (IS_ENABLED(CONFIG_NAND_ECC_HW) &&
-	    nand_chip->ecc.mode == NAND_ECC_HW) {
+	if (nand_chip->ecc.mode == NAND_ECC_HW) {
 		if (IS_ENABLED(CONFIG_NAND_ATMEL_PMECC) && pdata->has_pmecc)
 			res = atmel_pmecc_nand_init_params(dev, host);
 		else
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
