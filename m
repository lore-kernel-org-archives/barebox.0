Delivery-date: Fri, 30 Sep 2022 14:17:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExj-001PQO-Be
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 14:17:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExh-0003ei-Kd
	for lore@pengutronix.de; Fri, 30 Sep 2022 14:17:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Im/8MxbwXnsSwVajdPBrnVfdcJUT5zUkkP9qYL+iCG8=; b=zOYXzimrcQZSUj
	OHNFxweUH/67TsZDiyPLkS0FpVHRYtBthVW978glCIpasPaRThtVtlO27In7jobSFTNurMQcVmENG
	QyI6qCtfqZVudb1eemnkMhzW5HbF/zKL16LJHKbgBLDjJP0FOKDybB428zsvRFiIXf5ei3S7USVNf
	9boYp/LsWUWFMRJVCZBvtUdA2xdHZlD/RkuUbBMYR1yBDUPZCSUJgLbhZ6yjLImRHytWuwqUCEDE3
	xuCQQA5z7g+8sGQ3W1R73RVZ9cPtJB+egtl768M5gOVMpO6S+HhQIzDtxb0vD+0GMnHMu+B0vRtuX
	NNL8rNaNEcITkUVdz85Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEwH-0094ls-I6; Fri, 30 Sep 2022 12:16:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEvv-0094Zg-Eq
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 12:16:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvs-00030U-07; Fri, 30 Sep 2022 14:15:56 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvs-003nUh-QZ; Fri, 30 Sep 2022 14:15:55 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvq-001QvK-4k; Fri, 30 Sep 2022 14:15:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 30 Sep 2022 14:15:52 +0200
Message-Id: <20220930121553.335796-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220930121553.335796-1-s.hauer@pengutronix.de>
References: <20220930121553.335796-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_051559_757757_21ACE232 
X-CRM114-Status: GOOD (  23.63  )
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
Cc: Johannes Zink <j.zink@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] imx-bbu-nand-fcb: add fcb_read/fcb_write function hooks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Reading the FCB on i.MX7 needs special tweaks. As we already have two
different variants of how the the FCB is read/written already, make
function hooks from it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 144 ++++++++++++++++++++++++++++----------
 1 file changed, 106 insertions(+), 38 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 002e35bde9..5d4841a554 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -45,6 +45,8 @@ struct imx_nand_fcb_bbu_handler {
 
 	void (*fcb_create)(struct imx_nand_fcb_bbu_handler *imx_handler,
 		struct fcb_block *fcb, struct mtd_info *mtd);
+	int (*fcb_read)(struct mtd_info *mtd, int block, struct fcb_block **retfcb);
+	int (*fcb_write)(struct mtd_info *mtd, int block, struct fcb_block *fcb);
 	enum filetype filetype;
 };
 
@@ -123,7 +125,7 @@ static void encode_bch_ecc(void *buf, struct fcb_block *fcb, int eccbits)
 	free_bch(bch);
 }
 
-static struct fcb_block *read_fcb_bch(void *rawpage, int eccbits)
+static struct fcb_block *fcb_decode_bch(void *rawpage, int eccbits)
 {
 	int i, j, ret, errbit, m = 13;
 	int blocksize = 128;
@@ -227,7 +229,7 @@ static uint32_t calc_chksum(void *buf, size_t size)
 	return ~chksum;
 }
 
-static struct fcb_block *read_fcb_hamming_13_8(void *rawpage)
+static struct fcb_block *fcb_decode_hamming_13_8(void *rawpage)
 {
 	int i;
 	int bitflips = 0, bit_to_flip;
@@ -367,7 +369,7 @@ static ssize_t raw_write_page(struct mtd_info *mtd, void *buf, loff_t offset)
         return ret;
 }
 
-static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
+static int fcb_read_hamming_13_8(struct mtd_info *mtd, int block, struct fcb_block **retfcb)
 {
 	int ret;
 	struct fcb_block *fcb;
@@ -377,19 +379,71 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
 
 	rawpage = xmalloc(mtd->writesize + mtd->oobsize);
 
-	ret = raw_read_page(mtd, rawpage, mtd->erasesize * num);
+	ret = raw_read_page(mtd, rawpage, mtd->erasesize * block);
 	if (ret) {
-		pr_err("Cannot read block %d\n", num);
+		pr_err("Cannot read block %d\n", block);
 		goto err;
 	}
 
-	if (fcb_is_bch_encoded())
-		fcb = read_fcb_bch(rawpage, 40);
-	else
-		fcb = read_fcb_hamming_13_8(rawpage);
+	fcb = fcb_decode_hamming_13_8(rawpage);
+	if (IS_ERR(fcb)) {
+		pr_err("Cannot decode fcb on block %d\n", block);
+		ret = PTR_ERR(fcb);
+		goto err;
+	}
+
+	*retfcb = fcb;
+	ret = 0;
+err:
+	free(rawpage);
+
+	return ret;
+}
+
+static int fcb_write_hamming_13_8(struct mtd_info *mtd, int block, struct fcb_block *fcb)
+{
+	void *fcb_raw_page = xzalloc(mtd->writesize + mtd->oobsize);
+	int ret;
+
+	memcpy(fcb_raw_page + 12, fcb, sizeof(struct fcb_block));
+
+	/*
+	 * Set the first and second byte of OOB data to 0xFF, not 0x00. These
+	 * bytes are used as the Manufacturers Bad Block Marker (MBBM). Since
+	 * the FCB is mostly written to the first page in a block, a scan for
+	 * factory bad blocks will detect these blocks as bad, e.g. when
+	 * function nand_scan_bbt() is executed to build a new bad block table.
+	 */
+	memset(fcb_raw_page + mtd->writesize, 0xFF, 2);
+
+	encode_hamming_13_8(fcb_raw_page + 12, fcb_raw_page + 12 + 512, 512);
+
+	ret = raw_write_page(mtd, fcb_raw_page, block * mtd->erasesize);
+
+	free(fcb_raw_page);
+
+	return ret;
+}
 
+static int fcb_read_bch(struct mtd_info *mtd, int block, struct fcb_block **retfcb)
+{
+	int ret;
+	struct fcb_block *fcb;
+	void *rawpage;
+
+	*retfcb = NULL;
+
+	rawpage = xmalloc(mtd->writesize + mtd->oobsize);
+
+	ret = raw_read_page(mtd, rawpage, mtd->erasesize * block);
+	if (ret) {
+		pr_err("Cannot read block %d\n", block);
+		goto err;
+	}
+
+	fcb = fcb_decode_bch(rawpage, 40);
 	if (IS_ERR(fcb)) {
-		pr_err("Cannot read fcb on block %d\n", num);
+		pr_err("Cannot decode fcb on block %d\n", block);
 		ret = PTR_ERR(fcb);
 		goto err;
 	}
@@ -402,6 +456,31 @@ err:
 	return ret;
 }
 
+static int fcb_write_bch(struct mtd_info *mtd, int block, struct fcb_block *fcb)
+{
+	void *fcb_raw_page = xzalloc(mtd->writesize + mtd->oobsize);
+	int ret;
+
+	/* 40 bit BCH, for i.MX6UL(L) */
+	encode_bch_ecc(fcb_raw_page + 32, fcb, 40);
+
+	/*
+	 * Set the first and second byte of OOB data to 0xFF, not 0x00. These
+	 * bytes are used as the Manufacturers Bad Block Marker (MBBM). Since
+	 * the FCB is mostly written to the first page in a block, a scan for
+	 * factory bad blocks will detect these blocks as bad, e.g. when
+	 * function nand_scan_bbt() is executed to build a new bad block table.
+	 */
+	memset(fcb_raw_page + mtd->writesize, 0xFF, 2);
+
+	ret = raw_write_page(mtd, fcb_raw_page, block * mtd->erasesize);
+
+	free(fcb_raw_page);
+
+	return ret;
+}
+
+
 static int fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 		struct fcb_block *fcb, struct mtd_info *mtd)
 {
@@ -651,7 +730,7 @@ static void imx28_dbbt_create(struct dbbt_block *dbbt, int num_bad_blocks)
  * imx_bbu_write_fcb - Write FCB and DBBT raw data to the device
  * @mtd: The mtd Nand device
  * @block: The block to write to
- * @fcb_raw_page: The raw FCB data
+ * @fcb: FCB
  * @dbbt_data_page: The DBBT data
  *
  * This function writes the FCB/DBBT data to the block given in @block
@@ -660,7 +739,8 @@ static void imx28_dbbt_create(struct dbbt_block *dbbt, int num_bad_blocks)
  *
  * return: 0 on success or a negative error code otherwise.
  */
-static int imx_bbu_write_fcb(struct mtd_info *mtd, int block, void *fcb_raw_page,
+static int imx_bbu_write_fcb(struct imx_nand_fcb_bbu_handler *imx_handler,
+			     struct mtd_info *mtd, int block, struct fcb_block *fcb,
 			     void *dbbt_data_page)
 {
 	struct dbbt_block *dbbt;
@@ -682,7 +762,7 @@ again:
 	if (ret)
 		return ret;
 
-	ret = raw_write_page(mtd, fcb_raw_page, block * mtd->erasesize);
+	ret = imx_handler->fcb_write(mtd, block, fcb);
 	if (ret) {
 		pr_err("Writing FCB on block %d failed with %s\n",
 		       block, strerror(-ret));
@@ -850,7 +930,7 @@ static int fcb_dbbt_check(struct imx_nand_fcb_bbu_handler *imx_handler,
 	struct fcb_block *f;
 	int pages_per_block = mtd->erasesize / mtd->writesize;
 
-	ret = read_fcb(mtd, num, &f);
+	ret = imx_handler->fcb_read(mtd, num, &f);
 	if (ret)
 		return ret;
 
@@ -891,7 +971,6 @@ static int imx_bbu_write_fcbs_dbbts(struct imx_nand_fcb_bbu_handler *imx_handler
 {
 	void *dbbt = NULL;
 	int i, ret, valid = 0;
-	void *fcb_raw_page;
 
 	/*
 	 * The DBBT search start page is configurable in the FCB block.
@@ -901,28 +980,8 @@ static int imx_bbu_write_fcbs_dbbts(struct imx_nand_fcb_bbu_handler *imx_handler
 	if (fcb->DBBTSearchAreaStartAddress != 1)
 		return -EINVAL;
 
-	fcb_raw_page = xzalloc(mtd->writesize + mtd->oobsize);
-
-	if (fcb_is_bch_encoded()) {
-		/* 40 bit BCH, for i.MX6UL(L) */
-		encode_bch_ecc(fcb_raw_page + 32, fcb, 40);
-	} else {
-		memcpy(fcb_raw_page + 12, fcb, sizeof(struct fcb_block));
-		encode_hamming_13_8(fcb_raw_page + 12,
-				    fcb_raw_page + 12 + 512, 512);
-	}
-
 	dbbt = dbbt_data_create(mtd);
 
-	/*
-	 * Set the first and second byte of OOB data to 0xFF, not 0x00. These
-	 * bytes are used as the Manufacturers Bad Block Marker (MBBM). Since
-	 * the FCB is mostly written to the first page in a block, a scan for
-	 * factory bad blocks will detect these blocks as bad, e.g. when
-	 * function nand_scan_bbt() is executed to build a new bad block table.
-	 */
-	memset(fcb_raw_page + mtd->writesize, 0xFF, 2);
-
 	pr_info("Writing FCBs/DBBTs with primary/secondary Firmwares at pages %d/%d\n",
 		fcb->Firmware1_startingPage, fcb->Firmware2_startingPage);
 
@@ -938,14 +997,13 @@ static int imx_bbu_write_fcbs_dbbts(struct imx_nand_fcb_bbu_handler *imx_handler
 
 		pr_info("Writing FCB/DBBT on block %d\n", i);
 
-		ret = imx_bbu_write_fcb(mtd, i, fcb_raw_page, dbbt);
+		ret = imx_bbu_write_fcb(imx_handler, mtd, i, fcb, dbbt);
 		if (ret)
 			pr_err("Writing FCB/DBBT %d failed with: %s\n", i, strerror(-ret));
 		else
 			valid++;
 	}
 
-	free(fcb_raw_page);
 	free(dbbt);
 
 	if (!valid)
@@ -1185,7 +1243,7 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	}
 
 	for (i = 0; i < 4; i++) {
-		read_fcb(mtd, i, &fcb);
+		imx_handler->fcb_read(mtd, i, &fcb);
 		if (fcb)
 			break;
 	}
@@ -1382,6 +1440,14 @@ int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 	imx_handler->fcb_create = imx6_fcb_create;
 	imx_handler->filetype = filetype_arm_barebox;
 
+	if (fcb_is_bch_encoded()) {
+		imx_handler->fcb_read = fcb_read_bch;
+		imx_handler->fcb_write = fcb_write_bch;
+	} else {
+		imx_handler->fcb_read = fcb_read_hamming_13_8;
+		imx_handler->fcb_write = fcb_write_hamming_13_8;
+	}
+
 	handler = &imx_handler->handler;
 	handler->devicefile = "nand0.barebox";
 	handler->name = name;
@@ -1462,6 +1528,8 @@ int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
 
 	imx_handler = xzalloc(sizeof(*imx_handler));
 	imx_handler->fcb_create = imx28_fcb_create;
+	imx_handler->fcb_read = fcb_read_hamming_13_8;
+	imx_handler->fcb_write = fcb_write_hamming_13_8;
 
 	imx_handler->filetype = filetype_mxs_bootstream;
 
-- 
2.30.2



