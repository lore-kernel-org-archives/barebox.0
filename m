Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dIH4A-0006mS-DZ
 for barebox@lists.infradead.org; Tue, 06 Jun 2017 16:10:48 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 25ADFA00269
 for <barebox@lists.infradead.org>; Tue,  6 Jun 2017 18:11:26 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Tue, 6 Jun 2017 18:10:25 +0200
Message-Id: <1496765425-9702-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH] mtd: nand: omap: Fix BCH bit correction
To: barebox@lists.infradead.org

After commit dec7b4d2bf9 was applied our barebox only corrected the
first 512 Bytes of NAND pages.

This patch separates between Hamming and BCH when finding out the
eccsteps, because BCH always works with 2kB pages.

Before this patch:

barebox@Phytec phyCORE AM335x:/ nand_bitflip -r -n 5 /dev/nand0.barebox
nand0.barebox: Flipping bit 5 @ 1796
nand0.barebox: Flipping bit 6 @ 1258
nand0.barebox: Flipping bit 5 @ 1062
nand0.barebox: Flipping bit 2 @ 1399
nand0.barebox: Flipping bit 6 @ 1243
No bitflips found on block 0, offset 0x00000000
barebox@Phytec phyCORE AM335x:/ nand_bitflip -r -n 5 /dev/nand0.barebox
nand0.barebox: Flipping bit 2 @ 872
nand0.barebox: Flipping bit 4 @ 252
nand0.barebox: Flipping bit 3 @ 568
nand0.barebox: Flipping bit 2 @ 247
nand0.barebox: Flipping bit 5 @ 401
page at block 0, offset 0x00000000 has 3 bitflips

After this patch:

barebox@Phytec phyCORE AM335x:/ nand_bitflip -r -n 5 /dev/nand0.barebox
nand0.barebox: Flipping bit 2 @ 1962
nand0.barebox: Flipping bit 0 @ 1563
nand0.barebox: Flipping bit 0 @ 1808
nand0.barebox: Flipping bit 6 @ 1460
nand0.barebox: Flipping bit 7 @ 2034
page at block 0, offset 0x00000000 has 5 bitflips
barebox@Phytec phyCORE AM335x:/ nand_bitflip -r -n 5 /dev/nand0.barebox
nand0.barebox: Flipping bit 1 @ 1352
nand0.barebox: Flipping bit 7 @ 1542
nand0.barebox: Flipping bit 2 @ 1021
nand0.barebox: Flipping bit 7 @ 691
nand0.barebox: Flipping bit 6 @ 1196
page at block 0, offset 0x00000000 has 10 bitflips, needs cleanup

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 05c8486..61220da 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -302,10 +302,17 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 	unsigned int err_loc[8];
 	int bitflip_count;
 	int bch_max_err;
+	int eccsteps;
 
-	int eccsteps = (nand->ecc.mode == NAND_ECC_HW) &&
-			(nand->ecc.size == 2048) ? 4 : 1;
 	int eccsize = oinfo->nand.ecc.bytes;
+	if (oinfo->ecc_mode == OMAP_ECC_HAMMING_CODE_HW_ROMCODE)
+		if ((nand->ecc.mode == NAND_ECC_HW) &&
+				(nand->ecc.size == 2048))
+			eccsteps = 4;
+		else
+			eccsteps = 1;
+	else
+		eccsteps = oinfo->nand.ecc.steps;
 
 	switch (oinfo->ecc_mode) {
 	case OMAP_ECC_BCH8_CODE_HW:
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
