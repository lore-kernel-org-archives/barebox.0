Delivery-date: Tue, 01 Nov 2022 16:34:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optH5-00B06c-Vy
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 16:34:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optH3-0005aP-Ps
	for lore@pengutronix.de; Tue, 01 Nov 2022 16:33:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=stpmVdVZ1yTFIg0O4CpRu9nsOIZ0hbxER18Dwv2MB50=; b=YrQjVYcMf+GKe1XmPQ4l6f44MB
	SE7/N2+tAnmxyhKtcwR0KnmSMqyQwNI8IlPR8rtZFoDVAk59ENwLzdYQiyEgJfNFE6JxxfQuhdQY+
	W0IR9dRBhRSzXscawDFYkpWfPCNMu9elBfQyR3hOatSaS9mtcq/ezrbIERzSssNG261iX9f6A/rXJ
	fZfxT+UiHxga5v7w+JVA9fnwn2kTx6VwC8nb4ErmR10+QFj6nB9tswLtifoXSa0K06GCZ+OV06cz8
	I0WxduKZwBGnxf8i5kFklD+3sf7dAoutBHx0kzwFSVvwVztizbcunMFJaHcT6R9V08QMCk8VCJI9K
	+kh2GUjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optFf-005pFt-LE; Tue, 01 Nov 2022 15:32:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optEu-005oXo-V0
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 15:31:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-0004h9-GV; Tue, 01 Nov 2022 16:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-001he8-QD; Tue, 01 Nov 2022 16:30:51 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE1-003Ey5-Em; Tue, 01 Nov 2022 16:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Nov 2022 16:30:43 +0100
Message-Id: <20221101153048.772146-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101153048.772146-1-s.hauer@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_083145_014019_F9F5A12F 
X-CRM114-Status: GOOD (  14.16  )
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
Subject: [PATCH 09/14] ARM: i.MX: xload nand: Use final page layout from FCB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For non ONFI NAND chips we decode the page layout from the extended ID
information from NAND (basically what nand_decode_ext_id() does in the
MTD layer). For some chips this information is not entirely correct
though. For example some Toshiba chips have this quirk:

        /*
         * Toshiba 24nm raw SLC (i.e., not BENAND) have 32B OOB per
         * 512B page. For Toshiba SLC, we decode the 5th/6th byte as
         * follows:
         * - ID byte 6, bits[2:0]: 100b -> 43nm, 101b -> 32nm,
         *                         110b -> 24nm
         * - ID byte 5, bit[7]:    1 -> BENAND, 0 -> raw SLC
         */
        if (chip->id.len >= 6 && nand_is_slc(chip) &&
            (chip->id.data[5] & 0x7) == 0x6 /* 24nm */ &&
            !(chip->id.data[4] & TOSHIBA_NAND_ID4_IS_BENAND) /* !BENAND */) {
                memorg->oobsize = 32 * memorg->pagesize >> 9;
                mtd->oobsize = memorg->oobsize;
        }

We could try and add these kind of quirks into the xload code, but we
already have the correct information in the FCB. So as long as the
initial information from the ID is enough to read the FCB, we can use
the information containekd therein for further reading from the NAND.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/xload-gpmi-nand.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
index 543ec108ba..af20c11fa6 100644
--- a/arch/arm/mach-imx/xload-gpmi-nand.c
+++ b/arch/arm/mach-imx/xload-gpmi-nand.c
@@ -1020,6 +1020,8 @@ static int __maybe_unused imx6_nand_load_image(struct imx_nand_params *params,
 	};
 	int ret;
 	struct fcb_block *fcb;
+	void __iomem *bch_regs = info->bch_base;
+	u32 fl0, fl1;
 
 	info->dma_channel = &pchan;
 
@@ -1047,6 +1049,21 @@ static int __maybe_unused imx6_nand_load_image(struct imx_nand_params *params,
 		fcb->Firmware2_startingPage);
 	pr_debug("PagesInFW2:       0x%08x\n", fcb->PagesInFirmware2);
 
+	info->organization.oobsize = fcb->TotalPageSize - fcb->PageDataSize;
+	info->organization.pagesize = fcb->PageDataSize;
+
+	fl0 = FIELD_PREP(BCH_FLASHLAYOUT0_NBLOCKS, fcb->NumEccBlocksPerPage) |
+		FIELD_PREP(BCH_FLASHLAYOUT0_META_SIZE, fcb->MetadataBytes) |
+		FIELD_PREP(IMX6_BCH_FLASHLAYOUT0_ECC0, fcb->EccBlock0EccType) |
+		(fcb->BCHType ? BCH_FLASHLAYOUT0_GF13_0_GF14_1 : 0) |
+		FIELD_PREP(BCH_FLASHLAYOUT0_DATA0_SIZE, fcb->EccBlock0Size / 4);
+	fl1 = FIELD_PREP(BCH_FLASHLAYOUT1_PAGE_SIZE, fcb->TotalPageSize) |
+		FIELD_PREP(IMX6_BCH_FLASHLAYOUT1_ECCN, fcb->EccBlockNEccType) |
+		(fcb->BCHType ? BCH_FLASHLAYOUT1_GF13_0_GF14_1 : 0) |
+		FIELD_PREP(BCH_FLASHLAYOUT1_DATAN_SIZE, fcb->EccBlockNSize / 4);
+	writel(fl0, bch_regs + BCH_FLASH0LAYOUT0);
+	writel(fl1, bch_regs + BCH_FLASH0LAYOUT1);
+
 	get_dbbt(info, databuf);
 
 	ret = read_firmware(info, fcb->Firmware1_startingPage, dest, len);
-- 
2.30.2



