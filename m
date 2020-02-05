Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKpy-0002xp-Gk
 for barebox@lists.infradead.org; Wed, 05 Feb 2020 13:35:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  5 Feb 2020 14:35:19 +0100
Message-Id: <20200205133521.29951-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] mtd: nand-imx: do not use blocks reserved for BBT
To: Barebox List <barebox@lists.infradead.org>
Cc: ukl@pengutronix.de

Due to the differences of the logical page format and the raw page
format on NAND the generic nand support can't read the bad block marker
on the NAND. For this reason we cleared the NAND_BBT_CREATE flag and
have the imx_nand_bbm command to create a BBT if none is found in the
flash. We have also cleared the NAND_BBT_WRITE flag which causes
problems.  Normally a BBT occupies two blocks in NAND, but to have some
space for the BBT when one of these becomes bad we normally reserve 4
blocks for the BBT. In case we want to write the BBT to flash we have to
reserve them from being written to by general NAND operations. In case
we don't ever write to the BBT, as indicated by a cleared NAND_BBT_WRITE
flag, the reserved blocks can be used by the general NAND operations.
This way it happens that barebox uses the reserved blocks for data
storage, but Linux (which has NAND_BBT_WRITE set) can't read any data
from it.  This results in corrupted UBI images.

It's not necessary to clear the NAND_BBT_WRITE flag, all we really have
to do is to prevent the BBT layer from creating a new BBT. For this it's
enough to clear the NAND_BBT_CREATE flag.

Fixes: 545453ddae ("mtd: nand: Add command to generate a flash BBT")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c     | 11 ++++-------
 drivers/mtd/nand/nand_imx_bbm.c |  4 ++--
 2 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 1a065cb46f..8e1558da6b 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1072,7 +1072,7 @@ static uint8_t bbt_pattern[] = { 'B', 'b', 't', '0' };
 static uint8_t mirror_pattern[] = { '1', 't', 'b', 'B' };
 
 static struct nand_bbt_descr bbt_main_descr = {
-	.options = NAND_BBT_LASTBLOCK
+	.options = NAND_BBT_LASTBLOCK | NAND_BBT_WRITE
 		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
 	.offs = 0,
 	.len = 4,
@@ -1082,7 +1082,7 @@ static struct nand_bbt_descr bbt_main_descr = {
 };
 
 static struct nand_bbt_descr bbt_mirror_descr = {
-	.options = NAND_BBT_LASTBLOCK
+	.options = NAND_BBT_LASTBLOCK | NAND_BBT_WRITE
 		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
 	.offs = 0,
 	.len = 4,
@@ -1312,8 +1312,8 @@ static int __init imxnd_probe(struct device_d *dev)
 		if (nfc_is_v21())
 			writew(NFC_V2_SPAS_SPARESIZE(64), host->regs + NFC_V2_SPAS);
 	} else {
-		bbt_main_descr.options |= NAND_BBT_WRITE | NAND_BBT_CREATE;
-		bbt_mirror_descr.options |= NAND_BBT_WRITE | NAND_BBT_CREATE;
+		bbt_main_descr.options |= NAND_BBT_CREATE;
+		bbt_mirror_descr.options |= NAND_BBT_CREATE;
 
 		if (nfc_is_v21())
 			writew(NFC_V2_SPAS_SPARESIZE(16), host->regs + NFC_V2_SPAS);
@@ -1330,9 +1330,6 @@ static int __init imxnd_probe(struct device_d *dev)
 
 	if (host->flash_bbt && this->bbt_td->pages[0] == -1 && this->bbt_md->pages[0] == -1) {
 		dev_warn(dev, "no BBT found. create one using the imx_nand_bbm command\n");
-	} else {
-		bbt_main_descr.options |= NAND_BBT_WRITE | NAND_BBT_CREATE;
-		bbt_mirror_descr.options |= NAND_BBT_WRITE | NAND_BBT_CREATE;
 	}
 
 	add_mtd_nand_device(mtd, "nand");
diff --git a/drivers/mtd/nand/nand_imx_bbm.c b/drivers/mtd/nand/nand_imx_bbm.c
index c005482b06..582b4c069a 100644
--- a/drivers/mtd/nand/nand_imx_bbm.c
+++ b/drivers/mtd/nand/nand_imx_bbm.c
@@ -124,8 +124,8 @@ static int attach_bbt(struct mtd_info *mtd, void *bbt)
 {
 	struct nand_chip *chip = mtd_to_nand(mtd);
 
-	chip->bbt_td->options |= NAND_BBT_WRITE | NAND_BBT_CREATE;
-	chip->bbt_md->options |= NAND_BBT_WRITE | NAND_BBT_CREATE;
+	chip->bbt_td->options |= NAND_BBT_CREATE;
+	chip->bbt_md->options |= NAND_BBT_CREATE;
 	free(chip->bbt);
 	chip->bbt = bbt;
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
