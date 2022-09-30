Delivery-date: Fri, 30 Sep 2022 14:17:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExh-001PQ2-VS
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 14:17:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExg-0003dq-Jj
	for lore@pengutronix.de; Fri, 30 Sep 2022 14:17:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+s4jpDIqIHN7Sid76uwn3juS3LhGBxX33P9rq68P20w=; b=qmoWyFMLVJ14mnHJEU1pWjf1Bi
	vfjh/CAInq49iFkpQZfsHEkgItUeZHIygd+afmivDoFDHD6s4lfS5KgNauIiYdw5fCZ6iIYjQ4ElL
	qTeI5Q/I4hcsSswDVZ/YdM+xZ0Iv4UU9rUZzWwpmgjE9xPu7AiXH8CMj1MDTcGIF8D6INkkN61a/Y
	6r6/6dkdhTMmFsm013fOHCcZY66bQzFuFV7e3NERsmKeG+8OrYHuzy3pJQZL5TBjD8vz7nbJ8g2J/
	n8rXAe2IHArdn06Tc3IjXb1oCwTRwHzknFhNpveDRs8Jjuop9pRXy5NsgCjNQGZTH2oaS1NR2qau0
	SchQbi6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEw7-0094f7-HD; Fri, 30 Sep 2022 12:16:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEvv-0094Zf-Fx
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 12:16:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvr-00030T-V3; Fri, 30 Sep 2022 14:15:55 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvs-003nUe-Pl; Fri, 30 Sep 2022 14:15:55 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvq-001Quz-1Q; Fri, 30 Sep 2022 14:15:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Johannes Zink <j.zink@pengutronix.de>
Date: Fri, 30 Sep 2022 14:15:47 +0200
Message-Id: <20220930121553.335796-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220930121553.335796-1-s.hauer@pengutronix.de>
References: <20220930121553.335796-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_051559_668690_55705C26 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] mtd: nand-mxs: refactor flash layout configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Johannes Zink <j.zink@pengutronix.de>

No functional change.
---
 drivers/mtd/nand/nand_mxs.c | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 8991758e2b..8fc5105d98 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -732,25 +732,24 @@ static void mxs_nand_config_bch(struct nand_chip *chip, int readlen)
 	struct mxs_nand_info *nand_info = chip->priv;
 	int chunk_size;
 	void __iomem *bch_regs = nand_info->bch_base;
+	u32 fl0, fl1;
 
 	if (mxs_nand_is_imx6(nand_info))
 		chunk_size = MXS_NAND_CHUNK_DATA_CHUNK_SIZE >> 2;
 	else
 		chunk_size = MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
 
-	writel((mxs_nand_ecc_chunk_cnt(readlen) - 1)
-			<< BCH_FLASHLAYOUT0_NBLOCKS_OFFSET |
-		MXS_NAND_METADATA_SIZE << BCH_FLASHLAYOUT0_META_SIZE_OFFSET |
-		(chip->ecc.strength >> 1)
-			<< IMX6_BCH_FLASHLAYOUT0_ECC0_OFFSET |
-		chunk_size,
-		bch_regs + BCH_FLASH0LAYOUT0);
-
-	writel(readlen	<< BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET |
-		(chip->ecc.strength >> 1)
-			<< IMX6_BCH_FLASHLAYOUT1_ECCN_OFFSET |
-		chunk_size,
-		bch_regs + BCH_FLASH0LAYOUT1);
+	fl0 = (mxs_nand_ecc_chunk_cnt(readlen) - 1)
+			<< BCH_FLASHLAYOUT0_NBLOCKS_OFFSET;
+	fl0 |= MXS_NAND_METADATA_SIZE << BCH_FLASHLAYOUT0_META_SIZE_OFFSET;
+	fl0 |= (chip->ecc.strength >> 1) << IMX6_BCH_FLASHLAYOUT0_ECC0_OFFSET;
+	fl0 |= chunk_size;
+	writel(fl0, bch_regs + BCH_FLASH0LAYOUT0);
+
+	fl1 = readlen << BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET;
+	fl1 |= (chip->ecc.strength >> 1) << IMX6_BCH_FLASHLAYOUT1_ECCN_OFFSET;
+	fl1 |= chunk_size;
+	writel(fl1, bch_regs + BCH_FLASH0LAYOUT1);
 }
 
 /*
-- 
2.30.2



