Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xK-000548-Nc
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:36 +0100
Message-Id: <20201106133900.2656-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/26] mtd: nand: remove unused header file
To: Barebox List <barebox@lists.infradead.org>

nand.h is unused, remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand.h | 32 --------------------------------
 1 file changed, 32 deletions(-)
 delete mode 100644 drivers/mtd/nand/nand.h

diff --git a/drivers/mtd/nand/nand.h b/drivers/mtd/nand/nand.h
deleted file mode 100644
index eb6652c14f..0000000000
--- a/drivers/mtd/nand/nand.h
+++ /dev/null
@@ -1,32 +0,0 @@
-#ifndef __NAND_H
-#define __NAND_H
-
-int nand_read_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
-			     int page, int sndcmd);
-int nand_write_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
-			      int page);
-int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs);
-int nand_block_checkbad(struct mtd_info *mtd, loff_t ofs, int getchip,
-			       int allowbbt);
-int nand_block_isbad(struct mtd_info *mtd, loff_t offs);
-int nand_block_markbad(struct mtd_info *mtd, loff_t ofs);
-void nand_write_buf(struct mtd_info *mtd, const uint8_t *buf, int len);
-void nand_write_buf16(struct mtd_info *mtd, const uint8_t *buf, int len);
-void single_erase_cmd(struct mtd_info *mtd, int page);
-void multi_erase_cmd(struct mtd_info *mtd, int page);
-void nand_write_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
-				const uint8_t *buf);
-int nand_write_page(struct mtd_info *mtd, struct nand_chip *chip,
-		uint32_t offset, int data_len, const uint8_t *buf,
-		int oob_required, int page, int cached, int raw);
-int nand_erase(struct mtd_info *mtd, struct erase_info *instr);
-int nand_write(struct mtd_info *mtd, loff_t to, size_t len,
-			  size_t *retlen, const uint8_t *buf);
-int nand_write_oob(struct mtd_info *mtd, loff_t to,
-			  struct mtd_oob_ops *ops);
-
-void nand_init_ecc_hw(struct nand_chip *chip);
-void nand_init_ecc_soft(struct nand_chip *chip);
-void nand_init_ecc_hw_syndrome(struct nand_chip *chip);
-
-#endif /* __NAND_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
