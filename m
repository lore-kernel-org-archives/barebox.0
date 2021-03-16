Delivery-date: Tue, 16 Mar 2021 13:37:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM8x7-0002gA-IM
	for lore@lore.pengutronix.de; Tue, 16 Mar 2021 13:37:37 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM8x6-0002yH-Ki
	for lore@pengutronix.de; Tue, 16 Mar 2021 13:37:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u3zXuXTAfbyHaqU/qNwpLHQTW2+oLmhQCkzq8KNmlEw=; b=DZ3IpUnZ4tdJehgUG6lKn9h+Fe
	3qNCBHNBw8x+ivFaqgQBCqD8soQZ/Miq9ba2UuxYRCgzQfC1t4sYodcps6x7ory5odivsQTO9SyWG
	mfny0ABgg2jPKvoOoF1+qvZSY6AkJLx7Q4lHyUx5fZhLDqQsEn2c6Krl3AWJ8AyigAEpWAS44Bx6l
	N0mUm+7kfmO/hR23B6zOatpXY4JKSkErrljRqdWhHo9+DEps9y6t1WjXX3rzibO0sIi4Oac4zb4/4
	kxuMJ2cwFyzCkb7bTxjKc3KHPI+SK3qBrbPwqQ5yP0peiaxldL3oi0a7AJsUlehQ5XWRafdk9Nlb1
	7QtHG9zA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM8w7-000iYH-Ve; Tue, 16 Mar 2021 12:36:36 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM8w0-000iXM-U8
 for barebox@lists.infradead.org; Tue, 16 Mar 2021 12:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1615898188; x=1618490188;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GsNIMtbjO/bb95WijiNPDautBgRTymq1VAVnDoQ4vt4=;
 b=iWCDN75zSkgd5WnOpqTR3a2fRE90GhO02qERfroGjypmVbxWhsrIf4P7nOJQKwj3
 uQi/TEBIfReTYJJNWM/WAqSADSAfcc7yYYaUbkXCkpuLMvl6lPzE2NzwXrwe/dzT
 ib7GqbMK08YR0cLtT4PyplFnZpfhvJzyJDOydSUt85w=;
X-AuditID: c39127d2-0d3b770000001c86-6d-6050a64cdb50
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 9A.F1.07302.C46A0506;
 Tue, 16 Mar 2021 13:36:28 +0100 (CET)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2021031613374253-157533 ;
 Tue, 16 Mar 2021 13:37:42 +0100 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: barebox@lists.infradead.org
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 16 Mar 2021 13:36:25 +0100
Message-Id: <20210316123626.25872-1-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 16.03.2021 13:37:42,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 16.03.2021 13:37:42
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEJMWRmVeSWpSXmKPExsWyRoCBS9dnWUCCwbSpahYnFvczOzB6bF5S
 H8AYxWWTkpqTWZZapG+XwJXx6sgvpoIz+hXLuyawNDAuU+9i5OSQEDCRaPrSzAxiCwlsZZRo
 W1wHYV9jlDh7JwnEZhMwklgwrZEJxBYRkJeYu7+NFcRmFjCQuN6wGiwuLOAkca3lPSOIzSKg
 KjH1x3kgm52DV8BGojsZYpO8xMxL39lBbF4BQYmTM5+wdDFyAcWvMEocP7+FHaJISOL04rPM
 EOO1JZYtfM08gZFvFpKeWUhSCxiZVjEK5WYmZ6cWZWbrFWRUlqQm66WkbmIEhsvhieqXdjD2
 zfE4xMjEwXiIUYKDWUmE1zQvIEGINyWxsiq1KD++qDQntfgQozQHi5I47wbekjAhgfTEktTs
 1NSC1CKYLBMHp1QDo0zxxK/1Lz/+8pF9msyaVfbN2XaSg2eF/Z6F01WmNtiU8NgeyVH66dvQ
 deSuzATJjUFvle+92Hmk7HLk0vAd5i/F3O5eaTgs/vPXI+2jos5Ott2ez9Kvb467uaW16e+a
 8y3RZYJBs0/c8WVTE2E32Tg9aL7Jr273y3OObfr9NX5W4YesiUf07yuxFGckGmoxFxUnAgC4
 lJgrBQIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_123629_086362_59AE271C 
X-CRM114-Status: GOOD (  24.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] nand: nand-mxs: Fix marking BBT blocks as bad
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently the nand-mxs driver uses a hook function to the
mtd->_block_markbad function to allow write access to the OOB bytes only
if it is to mark a block as bad.

This hook is not called when a Bad Block Table block is marked bad since
this routine directly calls nand_markbad_bbm.

The chip->legacy.block_markbad hook gives a driver the ability to
implement a custom block_markbad function. Since this is used by
nand_markbad_bbm, if it exists, replace the mtd->_block_markbad hook by
a chip->legacy.block_markbad function. The gpmi-nand Linux implementation
of this driver uses the same mechanism.

This fixes an issue where marking Bad Block Table blocks as bad fails
with:
	NXS NAND: Writing OOB isn't supported

Tested on PHYTEC phyCORE-i.MX 6Q.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 drivers/mtd/nand/nand_mxs.c | 87 +++++++++++++++----------------------
 1 file changed, 34 insertions(+), 53 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 434da49d3ea9..96ae71364efb 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -215,7 +215,6 @@ struct mxs_nand_info {
 	uint8_t		*data_buf;
 	uint8_t		*oob_buf;
 
-	uint8_t		marking_block_bad;
 	uint8_t		raw_oob_mode;
 
 	/* Functions with altered behaviour */
@@ -223,8 +222,6 @@ struct mxs_nand_info {
 				loff_t from, struct mtd_oob_ops *ops);
 	int		(*hooked_write_oob)(struct mtd_info *mtd,
 				loff_t to, struct mtd_oob_ops *ops);
-	int		(*hooked_block_markbad)(struct mtd_info *mtd,
-				loff_t ofs);
 
 	/* DMA descriptors */
 	struct mxs_dma_desc	**desc;
@@ -1073,27 +1070,6 @@ static int mxs_nand_hook_write_oob(struct mtd_info *mtd, loff_t to,
 	return ret;
 }
 
-/*
- * Mark a block bad in NAND.
- *
- * This function is a veneer that replaces the function originally installed by
- * the NAND Flash MTD code.
- */
-static int mxs_nand_hook_block_markbad(struct mtd_info *mtd, loff_t ofs)
-{
-	struct nand_chip *chip = mtd_to_nand(mtd);
-	struct mxs_nand_info *nand_info = chip->priv;
-	int ret;
-
-	nand_info->marking_block_bad = 1;
-
-	ret = nand_info->hooked_block_markbad(mtd, ofs);
-
-	nand_info->marking_block_bad = 0;
-
-	return ret;
-}
-
 /*
  * There are several places in this driver where we have to handle the OOB and
  * block marks. This is the function where things are the most complicated, so
@@ -1177,36 +1153,14 @@ static int mxs_nand_ecc_read_oob(struct nand_chip *chip, int page)
  */
 static int mxs_nand_ecc_write_oob(struct nand_chip *chip, int page)
 {
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct mxs_nand_info *nand_info = chip->priv;
-	int column;
-	uint8_t block_mark = 0;
-
 	/*
 	 * There are fundamental incompatibilities between the i.MX GPMI NFC and
 	 * the NAND Flash MTD model that make it essentially impossible to write
 	 * the out-of-band bytes.
-	 *
-	 * We permit *ONE* exception. If the *intent* of writing the OOB is to
-	 * mark a block bad, we can do that.
 	 */
 
-	if (!nand_info->marking_block_bad) {
-		printf("NXS NAND: Writing OOB isn't supported\n");
-		return -EIO;
-	}
-
-	column = nand_info->version == GPMI_VERSION_TYPE_MX23 ? 0 : mtd->writesize;
-	/* Write the block mark. */
-	chip->legacy.cmdfunc(chip, NAND_CMD_SEQIN, column, page);
-	chip->legacy.write_buf(chip, &block_mark, 1);
-	chip->legacy.cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
-
-	/* Check if it worked. */
-	if (chip->legacy.waitfunc(chip) & NAND_STATUS_FAIL)
-		return -EIO;
-
-	return 0;
+	printf("MXS NAND: Writing OOB isn't supported\n");
+	return -EIO;
 }
 
 /*
@@ -1227,6 +1181,37 @@ static int mxs_nand_block_bad(struct nand_chip *chip , loff_t ofs)
 	return 0;
 }
 
+/*
+ * Mark a block as bad in NAND.
+ */
+static int mxs_nand_block_markbad(struct nand_chip *chip , loff_t ofs)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct mxs_nand_info *nand_info = chip->priv;
+	int column, page, chipnr, status;
+	uint8_t block_mark = 0;
+
+	chipnr = (int)(ofs >> chip->chip_shift);
+	nand_select_target(chip, chipnr);
+
+	column = nand_info->version == GPMI_VERSION_TYPE_MX23 ? 0 : mtd->writesize;
+	page = (int)(ofs >> chip->page_shift);
+	/* Write the block mark. */
+	chip->legacy.cmdfunc(chip, NAND_CMD_SEQIN, column, page);
+	chip->legacy.write_buf(chip, &block_mark, 1);
+	chip->legacy.cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
+
+	/* Check if it worked. */
+	status = chip->legacy.waitfunc(chip);
+
+	nand_deselect_target(chip);
+
+	if (status & NAND_STATUS_FAIL)
+		return -EIO;
+
+	return 0;
+}
+
 /*
  * Nominally, the purpose of this function is to look for or create the bad
  * block table. In fact, since the we call this function at the very end of
@@ -1273,11 +1258,6 @@ static int mxs_nand_scan_bbt(struct nand_chip *chip)
 		mtd->_write_oob = mxs_nand_hook_write_oob;
 	}
 
-	if (mtd->_block_markbad != mxs_nand_hook_block_markbad) {
-		nand_info->hooked_block_markbad = mtd->_block_markbad;
-		mtd->_block_markbad = mxs_nand_hook_block_markbad;
-	}
-
 	/* We use the reference implementation for bad block management. */
 	return nand_create_bbt(chip);
 }
@@ -2201,6 +2181,7 @@ static int mxs_nand_probe(struct device_d *dev)
 	chip->legacy.dev_ready		= mxs_nand_device_ready;
 	chip->legacy.select_chip	= mxs_nand_select_chip;
 	chip->legacy.block_bad		= mxs_nand_block_bad;
+	chip->legacy.block_markbad	= mxs_nand_block_markbad;
 
 	chip->legacy.read_byte		= mxs_nand_read_byte;
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

