Delivery-date: Tue, 30 Apr 2024 11:46:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1k3l-00A4vJ-2L
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 11:46:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1k3h-00022h-0C
	for lore@pengutronix.de; Tue, 30 Apr 2024 11:46:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=He+2j3dQDRhHCdv+bBihiVB8Ip//MjLI1wNkrMh6oqE=; b=n3r80/+6bvOSMgkS+WdXgAzRQr
	CtBCvzrA2t9vXsWZrhGq5Z2lSvIizZcyepKzC0XZ6Ved6TMTDz+qeWi9v+mkJJ49WN0QeKmON1HOP
	1V2u6qNR6b7fQqMMkZZrAB5Sh+66yWQfyK3DruW8S7Eoq/KwOrvKpBT50Z3k119RqwRVM/k/gVDL6
	U7Zp3hly0HgfqPNsL1Ridz+2U2iHMe66Vcwy+44L/MbbsBIpzxGBFQTYDWbvRqmjDycsEqMOaDq3c
	sHWItOUhP2r4T3+m0ioIcS9khgaj9/cqLrZxXHhEHGNBHZEcEgl4UmsisH82WtfDSTdM1YE35XGKB
	umrkdctg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1k2y-00000005tAE-0rcM;
	Tue, 30 Apr 2024 09:45:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1k2q-00000005t7N-2oJR
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 09:45:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1k2n-0001nQ-8q; Tue, 30 Apr 2024 11:45:01 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1k2m-00F8e4-Sb; Tue, 30 Apr 2024 11:45:00 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1k2m-00C2vV-2Y;
	Tue, 30 Apr 2024 11:45:00 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 30 Apr 2024 11:44:53 +0200
Message-ID: <20240430094451.1038256-5-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240430094451.1038256-4-u.kleine-koenig@pengutronix.de>
References: <20240430094451.1038256-4-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1939; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=dpFynrHrNXeBCJCx1N4ULgy28/QaPk+OSu2Xnt/4i9Y=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmML2VAA7/QLrNyQSoX41BnKW49BylLNNnAu9nX +TEH7PQDb6JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZjC9lQAKCRCPgPtYfRL+ TlqdB/9B+As8/9QWtm+T+ZJbXgyAO3bBDQcdrSCg/jgu2ICBq1J0CK+NiBbnHMqqbp0HoIQmJdG fOAiLnvKoO38YkU1rAWFRdp9F6VuY0WDFlDuPku3M/NfpOYFGSFHKIFQ5uiAXKzsV+9gsCAWv9m ZCIYkJwEp0U+ejoAGYq50XAo8t/m2mYnOieBh6w08jvQW56CzIMGzNqI+A/FX+tuHih0N+dsIbU p+IcX3EqsoolPu8jqGq9InKh0fTI8opF1Tdt6ZKWfnuLcVDQCHCXY5tZ1Kd1/x7oBNsAYsQ7G5D TeVbIw+8kvBmRFLJFtmCx5/jn7FK9Yh3BWKgdiLuCe+5EjAz
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_024504_786669_9AFDE728 
X-CRM114-Status: GOOD (  15.32  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] mtd: mxc-nand: Cleanup code creating bad block table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Let the variable "numblocks" contain the number of blocks of the NAND
device (and not twice this value). Also the loop variable counts blocks
now instead of the doubled value. Further calculate the offset of the
i-th block from i instead of incrementing in each step and pick a more
sensbile variable name for it.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/mtd/nand/raw/mxc_nand.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index da1c426d1951..a72275480144 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1583,31 +1583,31 @@ static int imxnd_create_bbt(struct nand_chip *chip)
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
+		ret = checkbad(chip, ofs);
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



