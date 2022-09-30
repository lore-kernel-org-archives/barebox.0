Delivery-date: Fri, 30 Sep 2022 14:17:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExZ-001POc-Cv
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 14:17:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExX-0003be-Sa
	for lore@pengutronix.de; Fri, 30 Sep 2022 14:17:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgAH6ao+myJ9CTsAv0EqVZ4jXnzENKJcNfryBRgVRWU=; b=w6ywM15jUc5WMV
	cZ/arpP3shdZHc+A9zDsJlId0lrDVpuA7eZoyA00iVyly/TaY721BDMxbUsRXLgSgki2PmWwXB/y2
	uqb44JRos8w/qZqTKe/oiGSLSwWbL/tkBuEfeVOVIIkhbGZmakoiAk9RK3Anl8uIm/m9uGjbV6cyd
	ow6qrVsEUIHSmILr3YzcEIwdwR0lWfeqMUIP4RrKjNihb37mJFO8s6Uk0NRbyBICJ4kho4GGzURtq
	jt/dHNf/7cM0FpXGOqHvOLghuNBCFKqfZZvxn6nhEiD3TnRy5hhp7I2zzhipULHrVggOGeytXXWiD
	hYgHcne+NJY0i0HQeT4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEwA-0094gH-A5; Fri, 30 Sep 2022 12:16:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEvv-0094Zc-FU
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 12:16:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvr-00030O-Ow; Fri, 30 Sep 2022 14:15:55 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvs-003nUV-I0; Fri, 30 Sep 2022 14:15:55 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvq-001Qv5-1u; Fri, 30 Sep 2022 14:15:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 30 Sep 2022 14:15:48 +0200
Message-Id: <20220930121553.335796-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220930121553.335796-1-s.hauer@pengutronix.de>
References: <20220930121553.335796-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_051559_578074_94800C9F 
X-CRM114-Status: GOOD (  15.76  )
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
Subject: [PATCH 2/7] mtd: nand-mxs: Factor out a bch read function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We can reuse setting up the DMA descriptors for reading the FCBs in
upcoming i.MX7 FCB support. Factor out a function for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 67 ++++++++++++++++++++++---------------
 1 file changed, 40 insertions(+), 27 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 8fc5105d98..1d0a38dc9e 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -752,31 +752,11 @@ static void mxs_nand_config_bch(struct nand_chip *chip, int readlen)
 	writel(fl1, bch_regs + BCH_FLASH0LAYOUT1);
 }
 
-/*
- * Read a page from NAND.
- */
-static int __mxs_nand_ecc_read_page(struct nand_chip *chip,
-					uint8_t *buf, int oob_required, int page,
-					int readlen)
+static int mxs_nand_do_bch_read(struct nand_chip *chip, int channel, int readtotal)
 {
-	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct mxs_nand_info *nand_info = chip->priv;
 	struct mxs_dma_desc *d;
-	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
-	uint32_t corrected = 0, failed = 0;
-	uint8_t	*status;
-	unsigned int  max_bitflips = 0;
-	int i, ret, readtotal, nchunks;
-
-	nand_read_page_op(chip, page, 0, NULL, 0);
-
-	readlen = roundup(readlen, MXS_NAND_CHUNK_DATA_CHUNK_SIZE);
-	nchunks = mxs_nand_ecc_chunk_cnt(readlen);
-	readtotal =  MXS_NAND_METADATA_SIZE;
-	readtotal += MXS_NAND_CHUNK_DATA_CHUNK_SIZE * nchunks;
-	readtotal += DIV_ROUND_UP(13 * chip->ecc.strength * nchunks, 8);
-
-	mxs_nand_config_bch(chip, readtotal);
+	int ret;
 
 	/* Compile the DMA descriptor - wait for ready. */
 	d = mxs_nand_get_dma_desc(nand_info);
@@ -853,16 +833,49 @@ static int __mxs_nand_ecc_read_page(struct nand_chip *chip,
 	/* Execute the DMA chain. */
 	ret = mxs_dma_go(channel);
 	if (ret) {
-		printf("MXS NAND: DMA read error (ecc)\n");
-		goto rtn;
+		dev_err(nand_info->dev, "MXS NAND: DMA read error (ecc)\n");
+		goto out;
 	}
 
 	ret = mxs_nand_wait_for_bch_complete(nand_info);
 	if (ret) {
-		printf("MXS NAND: BCH read timeout\n");
-		goto rtn;
+		dev_err(nand_info->dev, "MXS NAND: BCH read timeout\n");
+		goto out;
 	}
 
+out:
+	mxs_nand_return_dma_descs(nand_info);
+
+	return ret;
+}
+
+/*
+ * Read a page from NAND.
+ */
+static int __mxs_nand_ecc_read_page(struct nand_chip *chip,
+					uint8_t *buf, int oob_required, int page,
+					int readlen)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct mxs_nand_info *nand_info = chip->priv;
+	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
+	uint32_t corrected = 0, failed = 0;
+	uint8_t	*status;
+	unsigned int  max_bitflips = 0;
+	int i, ret, readtotal, nchunks;
+
+	nand_read_page_op(chip, page, 0, NULL, 0);
+
+	readlen = roundup(readlen, MXS_NAND_CHUNK_DATA_CHUNK_SIZE);
+	nchunks = mxs_nand_ecc_chunk_cnt(readlen);
+	readtotal =  MXS_NAND_METADATA_SIZE;
+	readtotal += MXS_NAND_CHUNK_DATA_CHUNK_SIZE * nchunks;
+	readtotal += DIV_ROUND_UP(13 * chip->ecc.strength * nchunks, 8);
+
+	mxs_nand_config_bch(chip, readtotal);
+
+	mxs_nand_do_bch_read(chip, channel, readtotal);
+
 	/* Read DMA completed, now do the mark swapping. */
 	mxs_nand_swap_block_mark(chip, nand_info->data_buf, nand_info->oob_buf);
 
@@ -942,7 +955,7 @@ static int __mxs_nand_ecc_read_page(struct nand_chip *chip,
 	chip->oob_poi[0] = nand_info->oob_buf[0];
 
 	ret = 0;
-rtn:
+
 	mxs_nand_return_dma_descs(nand_info);
 
 	mxs_nand_config_bch(chip, mtd->writesize + mtd->oobsize);
-- 
2.30.2



