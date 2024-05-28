Delivery-date: Tue, 28 May 2024 13:52:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBvNG-000udE-2t
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 13:52:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBvNG-0004Mr-5T
	for lore@pengutronix.de; Tue, 28 May 2024 13:52:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+IUQ2RiYo6+i5YMcDNezSAgaQbpWvGnEm6fnwM0Y6k4=; b=riDRGT5lAHCqejQrObbwr0WAqI
	kDrysDw8Zkr5IMZAv/KN+vu+WbEa6gqZpNDWm9GOR1Nf0jvKufduZs8jxPe7QpoUrVGda01/DMsEr
	wuF8eNiAehY4Jy7qaN36S6GZS+Mpp99zRWD4o6RZBAdNTqP2dAFxUHD4t4Bc8FR53BD6DgvB+qoIN
	yfzRWNAkxpXFWWgzJBtOO11tLbD0uIWj2b2kiqizApwTy0hcUICGhYX8ioCO+/ASxzFcznyIyL8Kl
	XdQmdPaEoSFX/MYm4uPXYkvfAVEuJTS8gJLg6Jp9gLn59M3gIyqBUjCVtv3C1SfhCDd+to3NDYEM+
	w0Xj3Fag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBvMn-00000000SFk-3BwK;
	Tue, 28 May 2024 11:51:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBvMl-00000000SF6-3b6O
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 11:51:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sBvMk-0004Gh-8d; Tue, 28 May 2024 13:51:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sBvMj-003Jxb-SZ; Tue, 28 May 2024 13:51:41 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sBvMj-008EIy-2Z;
	Tue, 28 May 2024 13:51:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 28 May 2024 13:51:41 +0200
Message-Id: <20240528115141.1961600-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_045143_926005_31B8276C 
X-CRM114-Status: GOOD (  15.12  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] mtd: nand: reinstate raw NAND IS_ENABLED(CONFIG_MTD_WRITE) checks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some barebox configurations like OMAP MLO require no MTD write support
to chainload the bigger second stage barebox. As these configurations
are often size limited by On-Chip SRAM, drivers are expected to guard
write-related code behind CONFIG_MTD_WRITE. This got lost with the
recent NAND sync leading to multiple kilobytes in increased code size.

Reinstate the IS_ENABLED(CONFIG_MTD_WRITE) checks to counteract this
somewhat. There's likely more opportunity to slim down nand_base as we
are still above the original size, but this here is the lowest hanging
fruit.

Fixes: 78c57f8acd69 ("mtd: nand: update to Linux-6.9-rc2")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/nand/raw/nand_base.c | 45 ++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 0e214edac876..69451b87d19e 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -3695,6 +3695,9 @@ int nand_write_oob_std(struct nand_chip *chip, int page)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	return nand_prog_page_op(chip, page, mtd->writesize, chip->oob_poi,
 				 mtd->oobsize);
 }
@@ -3714,6 +3717,9 @@ static int nand_write_oob_syndrome(struct nand_chip *chip, int page)
 	int ret, i, len, pos, sndcmd = 0, steps = chip->ecc.steps;
 	const uint8_t *bufpoi = chip->oob_poi;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	/*
 	 * data-ecc-data-ecc ... ecc-oob
 	 * or
@@ -3916,6 +3922,9 @@ int nand_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ret = nand_prog_page_begin_op(chip, page, 0, buf, mtd->writesize);
 	if (ret)
 		return ret;
@@ -3954,6 +3963,9 @@ int nand_monolithic_write_page_raw(struct nand_chip *chip, const u8 *buf,
 	unsigned int size = mtd->writesize;
 	u8 *write_buf = (u8 *)buf;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	if (oob_required) {
 		size += mtd->oobsize;
 
@@ -3986,6 +3998,9 @@ static int nand_write_page_raw_syndrome(struct nand_chip *chip,
 	uint8_t *oob = chip->oob_poi;
 	int steps, size, ret;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ret = nand_prog_page_begin_op(chip, page, 0, NULL, 0);
 	if (ret)
 		return ret;
@@ -4048,6 +4063,9 @@ static int nand_write_page_swecc(struct nand_chip *chip, const uint8_t *buf,
 	uint8_t *ecc_calc = chip->ecc.calc_buf;
 	const uint8_t *p = buf;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	/* Software ECC calculation */
 	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
 		chip->ecc.calculate(chip, p, &ecc_calc[i]);
@@ -4077,6 +4095,9 @@ static int nand_write_page_hwecc(struct nand_chip *chip, const uint8_t *buf,
 	uint8_t *ecc_calc = chip->ecc.calc_buf;
 	const uint8_t *p = buf;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ret = nand_prog_page_begin_op(chip, page, 0, NULL, 0);
 	if (ret)
 		return ret;
@@ -4128,6 +4149,9 @@ static int nand_write_subpage_hwecc(struct nand_chip *chip, uint32_t offset,
 	int oob_bytes       = mtd->oobsize / ecc_steps;
 	int step, ret;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ret = nand_prog_page_begin_op(chip, page, 0, NULL, 0);
 	if (ret)
 		return ret;
@@ -4195,6 +4219,9 @@ static int nand_write_page_syndrome(struct nand_chip *chip, const uint8_t *buf,
 	uint8_t *oob = chip->oob_poi;
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ret = nand_prog_page_begin_op(chip, page, 0, NULL, 0);
 	if (ret)
 		return ret;
@@ -4261,6 +4288,9 @@ static int nand_write_page(struct nand_chip *chip, uint32_t offset,
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	int status, subpage;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	if (!(chip->options & NAND_NO_SUBPAGE_WRITE) &&
 		chip->ecc.write_subpage)
 		subpage = offset || (data_len < mtd->writesize);
@@ -4307,6 +4337,9 @@ static int nand_do_write_ops(struct nand_chip *chip, loff_t to,
 	int ret;
 	int oob_required = oob ? 1 : 0;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ops->retlen = 0;
 	if (!writelen)
 		return 0;
@@ -4424,6 +4457,9 @@ static int nand_write_oob(struct mtd_info *mtd, loff_t to,
 	struct nand_chip *chip = mtd_to_nand(mtd);
 	int ret = 0;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ops->retlen = 0;
 
 	nand_get_device(chip);
@@ -4457,6 +4493,9 @@ static int nand_write_oob(struct mtd_info *mtd, loff_t to,
  */
 static int nand_erase(struct mtd_info *mtd, struct erase_info *instr)
 {
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	return nand_erase_nand(mtd_to_nand(mtd), instr, 0);
 }
 
@@ -4475,6 +4514,9 @@ int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 	int page, pages_per_block, ret, chipnr;
 	loff_t len;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	pr_debug("%s: start = 0x%012llx, len = %llu\n",
 			__func__, (unsigned long long)instr->addr,
 			(unsigned long long)instr->len);
@@ -4610,6 +4652,9 @@ static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
 {
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
 	ret = nand_block_isbad(mtd, ofs);
 	if (ret) {
 		/* If it was bad already, return success and do nothing */
-- 
2.39.2



