Delivery-date: Tue, 01 Nov 2022 16:33:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGi-00B02r-Lx
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 16:33:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGg-0005N9-Tq
	for lore@pengutronix.de; Tue, 01 Nov 2022 16:33:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f3lKvoGaa5fCHhJmfmz4HDKLqXdynmD1xibVqTGPv6o=; b=wLQLVJPRmjEIu7qSUHK82Oj14E
	eQzN6b2Kwdz5wecFT9MGTN+f6FOwDsGG6RB6a6WBxRSvrFaI6BglMiKS4WnkGHyhVuEKM8mcTZpsN
	lV84wWRO4wGqvQn+PJOepbcuhx3+cf1EPJVpVS5r1zdik/lsn5dmMZDy6KkOmBMk9XlBqK+wsh7So
	1+NfK6pEnMTiOUscMyKFcGHOAO1QzZNqxRoZIvhUZ8FakhT43/sl3STgzPEy8HSxb1RakG+FC8w3O
	w44iZisL0OO6f2JDA/J2r/PbhT3TGPAQUv72BMEDjWxnu4Pm/qhGTD5NFbJDkKqy2TZOlQBfd01+l
	BTIWUp5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optFF-005owG-QS; Tue, 01 Nov 2022 15:32:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optEu-005oXC-44
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 15:31:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1optE3-0004ft-U5; Tue, 01 Nov 2022 16:30:51 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-001hdk-7B; Tue, 01 Nov 2022 16:30:51 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE1-003EyE-GW; Tue, 01 Nov 2022 16:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Nov 2022 16:30:46 +0100
Message-Id: <20221101153048.772146-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101153048.772146-1-s.hauer@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_083144_351982_B8EEEDCA 
X-CRM114-Status: GOOD (  15.29  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/14] ARM: i.MX: xload nand: Move mxs_nand_mode_fcb_62bit() to header file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mxs_nand_mode_fcb_62bit() can be shared between the regular MTD NAND
driver and the upcoming i.MX7 xload driver. Move to header file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 34 ++--------------------------------
 include/soc/imx/gpmi-nand.h | 27 +++++++++++++++++++++++++++
 2 files changed, 29 insertions(+), 32 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index b162c23743..79a8fbdefa 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1123,36 +1123,6 @@ static int mxs_nand_block_markbad(struct nand_chip *chip , loff_t ofs)
 	return 0;
 }
 
-#define BCH62_WRITESIZE		1024
-#define BCH62_OOBSIZE		838
-#define BCH62_PAGESIZE		(BCH62_WRITESIZE + BCH62_OOBSIZE)
-
-static void mxs_nand_mode_fcb_62bit(struct mxs_nand_info *nand_info)
-{
-	void __iomem *bch_regs;
-	u32 fl0, fl1;
-
-	bch_regs = nand_info->bch_base;
-
-	/* 8 ecc_chunks */
-	fl0 = FIELD_PREP(BCH_FLASHLAYOUT0_NBLOCKS, 7);
-	/* 32 bytes for metadata */
-	fl0 |= FIELD_PREP(BCH_FLASHLAYOUT0_META_SIZE, 32);
-	/* using ECC62 level to be performed */
-	fl0 |= FIELD_PREP(IMX6_BCH_FLASHLAYOUT0_ECC0, 0x1f);
-	/* 0x20 * 4 bytes of the data0 block */
-	fl0 |= FIELD_PREP(BCH_FLASHLAYOUT0_DATA0_SIZE, 0x20);
-	writel(fl0, bch_regs + BCH_FLASH0LAYOUT0);
-
-	/* 1024 for data + 838 for OOB */
-	fl1 = FIELD_PREP(BCH_FLASHLAYOUT1_PAGE_SIZE, BCH62_PAGESIZE);
-	/* using ECC62 level to be performed */
-	fl1 |= FIELD_PREP(IMX6_BCH_FLASHLAYOUT1_ECCN, 0x1f);
-	/* 0x20 * 4 bytes of the data0 block */
-	fl1 |= FIELD_PREP(BCH_FLASHLAYOUT1_DATAN_SIZE, 0x20);
-	writel(fl1, bch_regs + BCH_FLASH0LAYOUT1);
-}
-
 int mxs_nand_read_fcb_bch62(unsigned int block, void *buf, size_t size)
 {
 	struct nand_chip *chip;
@@ -1174,7 +1144,7 @@ int mxs_nand_read_fcb_bch62(unsigned int block, void *buf, size_t size)
 
 	page = block * (mtd->erasesize / mtd->writesize);
 
-	mxs_nand_mode_fcb_62bit(nand_info);
+	mxs_nand_mode_fcb_62bit(nand_info->bch_base);
 
 	nand_read_page_op(chip, page, 0, NULL, 0);
 
@@ -1238,7 +1208,7 @@ int mxs_nand_write_fcb_bch62(unsigned int block, void *buf, size_t size)
 	nand_info = chip->priv;
 	channel = nand_info->dma_channel_base;
 
-	mxs_nand_mode_fcb_62bit(nand_info);
+	mxs_nand_mode_fcb_62bit(nand_info->bch_base);
 
 	nand_select_target(chip, 0);
 
diff --git a/include/soc/imx/gpmi-nand.h b/include/soc/imx/gpmi-nand.h
index f7a2caa1d6..8c30dee8ab 100644
--- a/include/soc/imx/gpmi-nand.h
+++ b/include/soc/imx/gpmi-nand.h
@@ -111,4 +111,31 @@
 
 #define	MXS_NAND_BCH_TIMEOUT			10000
 
+#define BCH62_WRITESIZE		1024
+#define BCH62_OOBSIZE		838
+#define BCH62_PAGESIZE		(BCH62_WRITESIZE + BCH62_OOBSIZE)
+
+static void mxs_nand_mode_fcb_62bit(void __iomem *bch_regs)
+{
+	u32 fl0, fl1;
+
+	/* 8 ecc_chunks */
+	fl0 = FIELD_PREP(BCH_FLASHLAYOUT0_NBLOCKS, 7);
+	/* 32 bytes for metadata */
+	fl0 |= FIELD_PREP(BCH_FLASHLAYOUT0_META_SIZE, 32);
+	/* using ECC62 level to be performed */
+	fl0 |= FIELD_PREP(IMX6_BCH_FLASHLAYOUT0_ECC0, 0x1f);
+	/* 0x20 * 4 bytes of the data0 block */
+	fl0 |= FIELD_PREP(BCH_FLASHLAYOUT0_DATA0_SIZE, 0x20);
+	writel(fl0, bch_regs + BCH_FLASH0LAYOUT0);
+
+	/* 1024 for data + 838 for OOB */
+	fl1 = FIELD_PREP(BCH_FLASHLAYOUT1_PAGE_SIZE, BCH62_PAGESIZE);
+	/* using ECC62 level to be performed */
+	fl1 |= FIELD_PREP(IMX6_BCH_FLASHLAYOUT1_ECCN, 0x1f);
+	/* 0x20 * 4 bytes of the data0 block */
+	fl1 |= FIELD_PREP(BCH_FLASHLAYOUT1_DATAN_SIZE, 0x20);
+	writel(fl1, bch_regs + BCH_FLASH0LAYOUT1);
+}
+
 #endif /* __SOC_IMX_GPMI_NAND_H */
-- 
2.30.2



