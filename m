Delivery-date: Tue, 01 Nov 2022 16:33:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGi-00B02p-IR
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 16:33:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGg-0005Mw-Em
	for lore@pengutronix.de; Tue, 01 Nov 2022 16:33:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GqbtAZNjAWowqSRegMFytTeNrtKBJVn1W0ZpGSNyfd4=; b=nUJgWkm9SsKz0XlkdPiJEyizoQ
	hjwfm0daglgl0bwaqwp0+Q3+f4j1YBbyKJzgL+oRmdfO56ZBK9pZf2BiJRmprC4c+HgilXKsfmFts
	vIi4qEVBUGAr3sHuwpjsKBpagJBjziTU8Unizq0x0Ao01bad16MisHNwiFOZpTpC6qKRekUXyHVei
	dC16dSXLKx3uo79ncuhDqA32ko6mGmewTFgj2On8OIWYOmPtNsZnO4ARTb5tSn/Mh1SFf7eLmv2sh
	vfDThisq8y+wdJsFcwgKqZTQFPTafZMVcRB8AL0k9PJKg25elUmUPPZes0QPg34HeJUH7uitHVoF8
	ciTEj2nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optF9-005oux-Ns; Tue, 01 Nov 2022 15:31:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optEu-005oXG-4A
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 15:31:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-0004f8-4R; Tue, 01 Nov 2022 16:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE3-001hdO-Gh; Tue, 01 Nov 2022 16:30:50 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE1-003Ey2-E8; Tue, 01 Nov 2022 16:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Nov 2022 16:30:42 +0100
Message-Id: <20221101153048.772146-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101153048.772146-1-s.hauer@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_083144_300317_E214DDE8 
X-CRM114-Status: GOOD (  15.23  )
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
Subject: [PATCH 08/14] ARM: i.MX: xload nand: Pull ECC status checking out of read page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The read page code can be reused by upcoming i.MX7 support, but the ECC
checking will be different. Pull ECC status checking out of the read
page code to make that reusable on i.MX7.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/xload-gpmi-nand.c | 42 ++++++++++++++++++++---------
 1 file changed, 29 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
index dc4cc45be0..543ec108ba 100644
--- a/arch/arm/mach-imx/xload-gpmi-nand.c
+++ b/arch/arm/mach-imx/xload-gpmi-nand.c
@@ -236,8 +236,6 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 	int cmd_queue_len;
 	u8 *cmd_buf;
 	int ret;
-	uint8_t	*status;
-	int i;
 	int timeout;
 	int descnum = 0;
 	int max_pagenum = info->nand_size /
@@ -375,20 +373,26 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 	writel(BCH_CTRL_COMPLETE_IRQ,
 		bch_regs + BCH_CTRL + STMP_OFFSET_REG_CLR);
 
-	/* Loop over status bytes, accumulating ECC status. */
-	status = databuf + writesize + mxs_nand_aux_status_offset();
-	for (i = 0; i < writesize / MXS_NAND_CHUNK_DATA_CHUNK_SIZE; i++) {
-		if (status[i] == 0xfe) {
-			ret = -EBADMSG;
-			goto err;
-		}
-	}
-
 	ret = 0;
 err:
 	return ret;
 }
 
+static int mxs_nand_get_ecc_status(struct mxs_nand_info *info, void *databuf)
+{
+	uint8_t	*status;
+	int i;
+
+	/* Loop over status bytes, accumulating ECC status. */
+	status = databuf + info->organization.pagesize + mxs_nand_aux_status_offset();
+	for (i = 0; i < info->organization.pagesize / MXS_NAND_CHUNK_DATA_CHUNK_SIZE; i++) {
+		if (status[i] == 0xfe)
+			return -EBADMSG;
+	}
+
+	return 0;
+}
+
 static int mxs_nand_get_read_status(struct mxs_nand_info *info, void *databuf)
 {
 	int ret;
@@ -851,6 +855,10 @@ static int get_fcb(struct mxs_nand_info *info, void *databuf)
 		if (ret)
 			continue;
 
+		ret = mxs_nand_get_ecc_status(info, databuf);
+		if (ret)
+			continue;
+
 		memcpy(fcb, databuf + mxs_nand_aux_status_offset(),
 			sizeof(*fcb));
 
@@ -886,7 +894,11 @@ static int get_dbbt(struct mxs_nand_info *info, void *databuf)
 		page = startpage + i * info->organization.pages_per_eraseblock;
 
 		ret = mxs_nand_read_page(info, info->organization.pagesize,
-			info->organization.oobsize, page, databuf, 0);
+			info->organization.oobsize, page, databuf, 0, false);
+		if (ret)
+			continue;
+
+		ret = mxs_nand_get_ecc_status(info, databuf);
 		if (ret)
 			continue;
 
@@ -900,7 +912,11 @@ static int get_dbbt(struct mxs_nand_info *info, void *databuf)
 			return -ENOENT;
 
 		ret = mxs_nand_read_page(info, info->organization.pagesize,
-			info->organization.oobsize, page + 4, databuf, 0);
+			info->organization.oobsize, page + 4, databuf, 0, false);
+		if (ret)
+			continue;
+
+		ret = mxs_nand_get_ecc_status(info, databuf);
 		if (ret)
 			continue;
 
-- 
2.30.2



