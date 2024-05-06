Delivery-date: Mon, 06 May 2024 16:48:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3zda-0069HZ-2V
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 16:48:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3zda-0003Dl-43
	for lore@pengutronix.de; Mon, 06 May 2024 16:48:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nm8AOk8aNS+XIi8W+kJ6DprxajyN9fqQrJMWmhk2fKM=; b=kJBNa4by8BMI1zxgBwinAaXS4N
	i5EXafS72CkZzSZ9obRV8Dc3MzMBnWYzIA3nIxCbfCog6nzPkcUjV6Z2r5OP4m+FGJ5gPVQtjhfIG
	ZK5AQbzc+WFYB/UvCJiJmSCZZAHQ2pvpmcjgahtkUq6iWIeoDJCE6iKiyVSH3jtnah/7RIemOs5Cr
	yr1ijXmao+XDDAIlNvsyW51srthoBc4oQNqjMFsz+usF6t8R0DgFk9gZJSsu1yG9IWuWP7yyzFses
	jAiiPK+1uC4fqOf2geQteE94qTb/P6XURjMHBe0o9xb7n2WSGyRdUfezwHiSiQHdMeNtSYV3v3Ye1
	oZC5J76A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zcx-00000007jjo-3STw;
	Mon, 06 May 2024 14:47:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zct-00000007jg4-2Hb1
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 14:47:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcq-0002rr-Ji; Mon, 06 May 2024 16:47:32 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcq-00GHbY-7C; Mon, 06 May 2024 16:47:32 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcq-00GqIO-0T;
	Mon, 06 May 2024 16:47:32 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  6 May 2024 16:46:09 +0200
Message-ID: <20240506144606.1562643-8-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240506144606.1562643-6-u.kleine-koenig@pengutronix.de>
References: <20240506144606.1562643-6-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3081; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=3WiQXegVNv+X0SDH5KN6rV068B+gSD9W6pYn8dx05Kk=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmOO0x+6KNSwtdV2TNJQcBUwe/HmT7nB8j6gFlr qe0GQhKtB2JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZjjtMQAKCRCPgPtYfRL+ TphPB/0Z5dbK2ME7RTFekBM1IP6+gbWLdfUC0Bm3tVVoiwyyaC7PeW8FcpdrvC+YsD31KT2gGYs C5ZB4DH4lBtksigxrYN+Ue4aWVJWPDGDBQt0hkmLGJZZZgwW5p+DqmjzA2LeGoQZZXTOYQcsgGu MY0sfa4t+0JzepTBX4bf8uThwYCilw56RQm0Da4eVC6XYF967nsxBGxiKhrG4SEGJ8A2gqjP1D9 n6jtzz2YdzTsSRnW8ZViAjjw2bOniSxp//UEW5FWWvLDaXYJ873sEC4QHGuBFdvAkc96iWm1rWf 8i4umTV0r/VktzaZweuK/LJfreCe/DKNxuLLGkn7O+BQ90m8
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_074735_667708_07717FFC 
X-CRM114-Status: GOOD (  16.17  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/4] mtd: nand: mxc_nand: Cleanup code creating bad block table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Let the variable "numblocks" contain the number of blocks of the NAND
device (and not twice this value). Also the loop variable counts blocks
now instead of the doubled value. Further calculate the offset of the
i-th block from i instead of incrementing in each step and pick a more
sensbile variable name for it.

Also checkbad() only makes use of *mtd which is already available in the
caller, so pass that one directly. Additionally initialize the struct
mtd_oob_ops in the declarator (which has the nice side effect of zeroing
the members not mentioned) and improve code comments.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/mtd/nand/raw/mxc_nand.c | 41 ++++++++++++++++-----------------
 1 file changed, 20 insertions(+), 21 deletions(-)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index f7ef2e4374a9..8e564fa76a33 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1555,19 +1555,18 @@ static const struct nand_controller_ops mxcnd_controller_ops = {
  * From this point on we can forget about the BBMs and rely completely
  * on the flash BBT.
  */
-static int checkbad(struct nand_chip *chip, loff_t ofs)
+static int checkbad(struct mtd_info *mtd, loff_t ofs)
 {
-	struct mtd_info *mtd = nand_to_mtd(chip);
 	int ret;
 	uint8_t buf[mtd->writesize + mtd->oobsize];
-	struct mtd_oob_ops ops;
-
-	ops.mode = MTD_OPS_RAW;
-	ops.ooboffs = 0;
-	ops.datbuf = buf;
-	ops.len = mtd->writesize;
-	ops.oobbuf = buf + mtd->writesize;
-	ops.ooblen = mtd->oobsize;
+	struct mtd_oob_ops ops = {
+		.mode = MTD_OPS_RAW,
+		.ooboffs = 0,
+		.datbuf = buf,
+		.len = mtd->writesize,
+		.oobbuf = buf + mtd->writesize,
+		.ooblen = mtd->oobsize,
+	};
 
 	ret = mtd_read_oob(mtd, ofs, &ops);
 	if (ret < 0)
@@ -1585,31 +1584,31 @@ static int imxnd_create_bbt(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	int len, i, numblocks, ret;
-	loff_t from = 0;
 	uint8_t *bbt;
 
-	len = mtd->size >> (chip->bbt_erase_shift + 2);
+	numblocks = mtd->size >> chip->bbt_erase_shift;
 
-	/* Allocate memory (2bit per block) and clear the memory bad block table */
+	/*
+	 * Allocate memory (2bit per block = 1 byte per 4 blocks) and clear the
+	 * memory bad block table
+	 */
+	len = (numblocks + 3) >> 2;
 	bbt = kzalloc(len, GFP_KERNEL);
 	if (!bbt)
 		return -ENOMEM;
 
-	numblocks = mtd->size >> (chip->bbt_erase_shift - 1);
+	for (i = 0; i < numblocks; ++i) {
+		loff_t ofs = i << chip->bbt_erase_shift;
 
-	for (i = 0; i < numblocks;) {
-		ret = checkbad(chip, from);
+		ret = checkbad(mtd, ofs);
 		if (ret < 0)
 			goto out;
 
 		if (ret) {
-			bbt[i >> 3] |= 0x03 << (i & 0x6);
+			bbt[i >> 2] |= 0x03 << (2 * (i & 0x3));
 			dev_info(mtd->dev.parent, "Bad eraseblock %d at 0x%08x\n",
-				 i >> 1, (unsigned int)from);
+				 i, (unsigned int)ofs);
 		}
-
-		i += 2;
-		from += (1 << chip->bbt_erase_shift);
 	}
 
 	chip->bbt_td->options |= NAND_BBT_CREATE;
-- 
2.43.0



