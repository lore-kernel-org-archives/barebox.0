Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcmbj-0006Z8-FZ
 for barebox@lists.infradead.org; Wed, 11 Nov 2020 09:40:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Nov 2020 10:40:00 +0100
Message-Id: <20201111094000.20680-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: nand: Fix dependeny on CONFIG_NAND_BBT
To: Barebox List <barebox@lists.infradead.org>

CONFIG_NAND_BBT no longer exists, so remove the remaining occurences.

Fixes: b6bcd96de5 ("mtd: nand: Update to Linux-5.9")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Kconfig     | 1 -
 drivers/mtd/nand/nand_base.c | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 6a162f81f6..97819e5c0b 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -28,7 +28,6 @@ config NAND_IMX
 
 config NAND_MXS
 	bool
-	select NAND_BBT
 	select STMP_DEVICE
 	prompt "i.MX23/28/6 NAND driver"
 	depends on MXS_APBH_DMA
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index e9c3d7e7c8..2c3c0b360f 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -688,7 +688,7 @@ static int nand_block_markgood_lowlevel(struct nand_chip *chip, loff_t ofs)
 	}
 
 	/* Mark block good in BBT */
-	if (IS_ENABLED(CONFIG_NAND_BBT) && chip->bbt) {
+	if (chip->bbt) {
 		ret = nand_markgood_bbt(chip, ofs);
 		if (ret)
 			return ret;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
