Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agVne-0000UO-U1
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 11:09:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Mar 2016 12:08:36 +0100
Message-Id: <1458212919-30507-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458212919-30507-1-git-send-email-s.hauer@pengutronix.de>
References: <1458212919-30507-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] mtd: nand-imx: remove dead code
To: Barebox List <barebox@lists.infradead.org>

Neither CONFIG_MXC_NAND_LOW_LEVEL_ERASE nor CONFIG_MTD_NAND_MXC_FORCE_CE
are defined anywhere, remove the code inside the ifdefs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c | 45 ---------------------------------------------
 1 file changed, 45 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index fd80c72..77c0ad8 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -691,26 +691,6 @@ static void copy_spare(struct mtd_info *mtd, int bfrom)
  */
 static void imx_nand_select_chip(struct mtd_info *mtd, int chip)
 {
-#ifdef CONFIG_MTD_NAND_MXC_FORCE_CE
-	u16 tmp;
-
-	if (chip > 0) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0,
-		      "ERROR:  Illegal chip select (chip = %d)\n", chip);
-		return;
-	}
-
-	if (chip == -1) {
-		tmp = readw(host->regs + NFC_CONFIG1);
-		tmp &= ~NFC_CE;
-		writew(tmp, host->regs + NFC_CONFIG1);
-		return;
-	}
-
-	tmp = readw(host->regs + NFC_CONFIG1);
-	tmp |= NFC_CE;
-	writew(tmp, host->regs + NFC_CONFIG1);
-#endif
 }
 
 static void mxc_do_addr_cycle(struct mtd_info *mtd, int column, int page_addr)
@@ -1019,31 +999,6 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 	}
 }
 
-#ifdef CONFIG_MXC_NAND_LOW_LEVEL_ERASE
-static void imx_low_erase(struct mtd_info *mtd)
-{
-
-	struct nand_chip *this = mtd->priv;
-	unsigned int page_addr, addr;
-	u_char status;
-
-	MTD_DEBUG(MTD_DEBUG_LEVEL0, "MXC_ND : imx_low_erase:Erasing NAND\n");
-	for (addr = 0; addr < this->chipsize; addr += mtd->erasesize) {
-		page_addr = addr / mtd->writesize;
-		imx_nand_command(mtd, NAND_CMD_ERASE1, -1, page_addr);
-		imx_nand_command(mtd, NAND_CMD_ERASE2, -1, -1);
-		imx_nand_command(mtd, NAND_CMD_STATUS, -1, -1);
-		status = imx_nand_read_byte(mtd);
-		if (status & NAND_STATUS_FAIL) {
-			printk(KERN_ERR
-			       "ERASE FAILED(block = %d,status = 0x%x)\n",
-			       addr / mtd->erasesize, status);
-		}
-	}
-
-}
-#endif
-
 /*
  * The generic flash bbt decriptors overlap with our ecc
  * hardware, so define some i.MX specific ones.
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
