Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b016V-0000Q1-7C
 for barebox@lists.infradead.org; Tue, 10 May 2016 06:25:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 May 2016 08:24:41 +0200
Message-Id: <1462861483-19983-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1462861483-19983-1-git-send-email-s.hauer@pengutronix.de>
References: <1462861483-19983-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] mtd: nand: Pass page argument to read_subpage hook
To: Barebox List <barebox@lists.infradead.org>

Similar to what the kernel does in e004debda (mtd: nand: add "page" argument for
read_subpage hook).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 4 ++--
 include/linux/mtd/nand.h     | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 79c1edd..670720a 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1185,7 +1185,7 @@ static __maybe_unused int nand_read_page_swecc(struct mtd_info *mtd,
  */
 static __maybe_unused int nand_read_subpage(struct mtd_info *mtd,
 		struct nand_chip *chip, uint32_t data_offs, uint32_t readlen,
-		uint8_t *bufpoi)
+		uint8_t *bufpoi, int page)
 {
 	int start_step, end_step, num_steps;
 	uint32_t *eccpos = chip->ecc.layout->eccpos;
@@ -1540,7 +1540,7 @@ static int nand_do_read_ops(struct mtd_info *mtd, loff_t from,
 			else if (!aligned && NAND_HAS_SUBPAGE_READ(chip) &&
 				 !oob)
 				ret = chip->ecc.read_subpage(mtd, chip,
-							col, bytes, bufpoi);
+							col, bytes, bufpoi, page);
 			else
 				ret = chip->ecc.read_page(mtd, chip, bufpoi,
 							  oob_required, page);
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 5beec39..dfb94d7 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -352,7 +352,7 @@ struct nand_ecc_ctrl {
 	int (*read_page)(struct mtd_info *mtd, struct nand_chip *chip,
 			uint8_t *buf, int oob_required, int page);
 	int (*read_subpage)(struct mtd_info *mtd, struct nand_chip *chip,
-			uint32_t offs, uint32_t len, uint8_t *buf);
+			uint32_t offs, uint32_t len, uint8_t *buf, int page);
 	int (*write_subpage)(struct mtd_info *mtd, struct nand_chip *chip,
 			uint32_t offset, uint32_t data_len,
 			const uint8_t *data_buf, int oob_required);
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
