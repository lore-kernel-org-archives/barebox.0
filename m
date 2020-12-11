Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kndaS-00088R-AV
 for barebox@lists.infradead.org; Fri, 11 Dec 2020 08:15:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Dec 2020 09:15:33 +0100
Message-Id: <20201211081533.7372-5-s.hauer@pengutronix.de>
In-Reply-To: <20201211081533.7372-1-s.hauer@pengutronix.de>
References: <20201211081533.7372-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] mtd: nand: Make write support optional
To: Barebox List <barebox@lists.infradead.org>

NAND write support used to be optional and the correspoding
CONFIG_MTD_WRITE option still exists. Bail out early from the write
functions when CONFIG_MTD_WRITE is disabled like we used to before the
last NAND layer update.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 45 ++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index e190db7308..5db0b5625e 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -3415,6 +3415,9 @@ int nand_write_oob_std(struct nand_chip *chip, int page)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	return nand_prog_page_op(chip, page, mtd->writesize, chip->oob_poi,
 				 mtd->oobsize);
 }
@@ -3434,6 +3437,9 @@ static int nand_write_oob_syndrome(struct nand_chip *chip, int page)
 	int ret, i, len, pos, sndcmd = 0, steps = chip->ecc.steps;
 	const uint8_t *bufpoi = chip->oob_poi;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	/*
 	 * data-ecc-data-ecc ... ecc-oob
 	 * or
@@ -3635,6 +3641,9 @@ int nand_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ret = nand_prog_page_begin_op(chip, page, 0, buf, mtd->writesize);
 	if (ret)
 		return ret;
@@ -3673,6 +3682,9 @@ int nand_monolithic_write_page_raw(struct nand_chip *chip, const u8 *buf,
 	unsigned int size = mtd->writesize;
 	u8 *write_buf = (u8 *)buf;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	if (oob_required) {
 		size += mtd->oobsize;
 
@@ -3705,6 +3717,9 @@ static int nand_write_page_raw_syndrome(struct nand_chip *chip,
 	uint8_t *oob = chip->oob_poi;
 	int steps, size, ret;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ret = nand_prog_page_begin_op(chip, page, 0, NULL, 0);
 	if (ret)
 		return ret;
@@ -3767,6 +3782,9 @@ static int nand_write_page_swecc(struct nand_chip *chip, const uint8_t *buf,
 	uint8_t *ecc_calc = chip->ecc.calc_buf;
 	const uint8_t *p = buf;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	/* Software ECC calculation */
 	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
 		chip->ecc.calculate(chip, p, &ecc_calc[i]);
@@ -3796,6 +3814,9 @@ static int nand_write_page_hwecc(struct nand_chip *chip, const uint8_t *buf,
 	uint8_t *ecc_calc = chip->ecc.calc_buf;
 	const uint8_t *p = buf;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ret = nand_prog_page_begin_op(chip, page, 0, NULL, 0);
 	if (ret)
 		return ret;
@@ -3847,6 +3868,9 @@ static int nand_write_subpage_hwecc(struct nand_chip *chip, uint32_t offset,
 	int oob_bytes       = mtd->oobsize / ecc_steps;
 	int step, ret;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ret = nand_prog_page_begin_op(chip, page, 0, NULL, 0);
 	if (ret)
 		return ret;
@@ -3914,6 +3938,9 @@ static int nand_write_page_syndrome(struct nand_chip *chip, const uint8_t *buf,
 	uint8_t *oob = chip->oob_poi;
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ret = nand_prog_page_begin_op(chip, page, 0, NULL, 0);
 	if (ret)
 		return ret;
@@ -3980,6 +4007,9 @@ static int nand_write_page(struct nand_chip *chip, uint32_t offset,
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	int status, subpage;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	if (!(chip->options & NAND_NO_SUBPAGE_WRITE) &&
 		chip->ecc.write_subpage)
 		subpage = offset || (data_len < mtd->writesize);
@@ -4026,6 +4056,9 @@ static int nand_do_write_ops(struct nand_chip *chip, loff_t to,
 	int ret;
 	int oob_required = oob ? 1 : 0;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ops->retlen = 0;
 	if (!writelen)
 		return 0;
@@ -4143,6 +4176,9 @@ static int nand_write_oob(struct mtd_info *mtd, loff_t to,
 	struct nand_chip *chip = mtd_to_nand(mtd);
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ops->retlen = 0;
 
 	ret = nand_get_device(chip);
@@ -4178,6 +4214,9 @@ out:
  */
 static int nand_erase(struct mtd_info *mtd, struct erase_info *instr)
 {
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	return nand_erase_nand(mtd_to_nand(mtd), instr, 0);
 }
 
@@ -4197,6 +4236,9 @@ int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 	int page, pages_per_block, ret, chipnr;
 	loff_t len;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	pr_debug("%s: start = 0x%012llx, len = %llu\n",
 			__func__, (unsigned long long)instr->addr,
 			(unsigned long long)instr->len);
@@ -4335,6 +4377,9 @@ static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
 {
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ret = nand_block_isbad(mtd, ofs);
 	if (ret) {
 		/* If it was bad already, return success and do nothing */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
