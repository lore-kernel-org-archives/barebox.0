Delivery-date: Wed, 24 Apr 2024 18:48:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzfnP-00F6zB-1Y
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 18:48:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzfnO-0003EL-Na
	for lore@pengutronix.de; Wed, 24 Apr 2024 18:48:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fgf0F98j94QOJuCjoak7I8/yTebnT9/LZlvmaEffuMc=; b=kfjr40Q5YoC/j/IbceN2gVQLFv
	o2yEUzmCsuLVUKUSQOJF1BzEOIl9tt8wxYMZdmx9psbSZwebD3mIvSekTvHDy7gAc7/cC/eLNs6dr
	G4xagWLOHDZlJ/YJgVmuxkHsQaCXx10KS217YUzONNFmXMi12akfLAh04wttOPYdmuGGhmeGjtMd1
	lfub2QwxIQmMu/12hj1wODtu7aOE0dVNfsHXFOASTJflgcmHmKpK0rNe+SiGln/4BXEZtQbHdJb9Q
	7I85GuwkgUsmeKiBkpAuXh7UmOhv0iobHg8xfTtpp6cATHP8GETx5HGS/RBlMQGpL/rq8VBvpUpUe
	BndIMePw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzfms-000000050sw-0xCk;
	Wed, 24 Apr 2024 16:48:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzfmn-000000050qK-36sH
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 16:47:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rzfml-0002cl-TQ; Wed, 24 Apr 2024 18:47:55 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rzfml-00E73F-H8; Wed, 24 Apr 2024 18:47:55 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rzfml-007tnp-1S;
	Wed, 24 Apr 2024 18:47:55 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 24 Apr 2024 18:47:43 +0200
Message-ID: <20240424164743.586410-3-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2041; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=N5eUWadh4eMRTOA26Ffysd6jWEkjdtZ8zI7hV/Qw+hE=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmKTevO1XAOVLL8LAAyZntJge43GiovzAxraSpr Kxofur/6/WJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZik3rwAKCRCPgPtYfRL+ TnMvB/9IWA/kU+am3efto57YwGmqEe4KuuCa1mtdNCS/QLgiiBMooYiWt0enOukVGN0MW8qU6ij M71gZVM3QN7SNPXHbSTe3XBQ9ThbcSLORGz2pA8FPbvzzq/dstMgLV/iCGU01HUN8cM5yw9vvBp y2rWHihzEG4ISwkl/C4GOlBStXv+k9NBbRT95M27q+xAi4O5fbs61tr8a1jqZd/OY9AaJ2ZMeLh JjLkU8YXbq80O2H3PAF65IkstjhoDYpTpf3r1a0OYJwGsSMr590LE64UayTXcGzvOJgyW847IUs kbk1YvkLqnJE9sT6u87R3IPwl5fPxMfQsVuKt0HcGsqiuX9m
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_094757_849178_683247E1 
X-CRM114-Status: GOOD (  14.78  )
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
Subject: [PATCH 1/2] mtd: nand-imx: Cleanup and simplify code creating bad block table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Let the variable "numblocks" contain the number of blocks of the NAND
device (and not twice this value). Also the loop variable counts blocks
now instead of the doubled value. Further calculate the offset of the
i-th block from i instead of incrementing in each step and pick a more
sensbile variable name for it.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 77655daa4efe..b26889358b3f 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1194,31 +1194,31 @@ static int imxnd_create_bbt(struct nand_chip *chip)
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

base-commit: f40319c8e157c90117d32aed1dae5549a723c63e
prerequisite-patch-id: acee91c52d3f79ce61961584c6712403adad66ef
-- 
2.43.0



