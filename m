Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsX1-0004G5-OW
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:23:37 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23991063AbeJ1VXXxR-W- (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:23:23 +0100
Date: Sun, 28 Oct 2018 22:23:22 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212322.GG14788@lenoch>
References: <20181028211947.GA14788@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181028211947.GA14788@lenoch>
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
Subject: [PATCH 06/16] mtd: atmel_nand: Add per board ECC setup
To: barebox@lists.infradead.org

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 arch/arm/mach-at91/include/mach/board.h | 2 ++
 drivers/mtd/nand/atmel_nand.c           | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 5d76e00ae..b7adb173a 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -64,6 +64,8 @@ struct atmel_nand_data {
 	u8		cle;		/* address line number connected to CLE */
 	u8		bus_width_16;	/* buswidth is 16 bit */
 	u8		ecc_mode;	/* NAND_ECC_* */
+	u8		ecc_strength;	/* number of bits to correct per ECC step */
+	u8		ecc_size_shift;	/* data bytes covered by a single ECC step.*/
 	u8		on_flash_bbt;	/* Use flash based bbt */
 	u8		has_pmecc;	/* Use PMECC */
 	u8		bus_on_d0;
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 797cdc2ba..50c541122 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1298,6 +1298,7 @@ static int atmel_hw_nand_init_params(struct device_d *dev,
 	nand_chip->ecc.hwctl = atmel_nand_hwctl;
 	nand_chip->ecc.read_page = atmel_nand_read_page;
 	nand_chip->ecc.bytes = 4;
+	nand_chip->ecc.strength = 1;
 
 	return 0;
 }
@@ -1388,6 +1389,8 @@ static int __init atmel_nand_probe(struct device_d *dev)
 	}
 
 	nand_chip->ecc.mode = pdata->ecc_mode;
+	nand_chip->ecc.strength = pdata->ecc_strength ? : 1;
+	nand_chip->ecc.size = 1 << pdata->ecc_size_shift ? : 512;
 
 	if (IS_ENABLED(CONFIG_NAND_ECC_HW) &&
 	    pdata->ecc_mode == NAND_ECC_HW) {
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
