Delivery-date: Tue, 01 Nov 2022 16:33:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGo-00B04T-Kf
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 16:33:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGm-0005QF-QM
	for lore@pengutronix.de; Tue, 01 Nov 2022 16:33:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FAehTp0UE74ruoGEJy9kg7vTI9T7Q5Hl8GN9pjQWOKU=; b=kPNsWv0Xeq2Rys1CMmgZ39BSZB
	LSVyGE6QdRntT3XW9a4dy5fFrC7eNlEtBNFeTWNm6u5YNwZcM9K/h/xRCQypySbvGN6e2naclBoSU
	QNJoqxiwv/fMw0Urf5zTqu+LQxLydfDfRtN0EXxgzZ4ZUb/RWoLcmiPLiwEOM3TfNK7k1lXPQ8Pqw
	3SjFmDowPBTUWmSFxD9dRCcyh+RRgA7chUdXb+9B8OC0rMYZ/oIUq1AYS6GOaryrgelJMPtbfaoyD
	KpV+P29DsWD245wKhCfsnj6OewVbtApDeLRp962+E7xL3nZTCWT8knMgbUMlR4+eNUy3LWjfKDFC1
	9X5xd+3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optFN-005p2n-Ex; Tue, 01 Nov 2022 15:32:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optEu-005oXA-49
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 15:31:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1optE3-0004fJ-PU; Tue, 01 Nov 2022 16:30:51 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-001hdb-1a; Tue, 01 Nov 2022 16:30:51 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE1-003EyH-H8; Tue, 01 Nov 2022 16:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Nov 2022 16:30:47 +0100
Message-Id: <20221101153048.772146-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101153048.772146-1-s.hauer@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_083144_492318_1C2C3DF0 
X-CRM114-Status: GOOD (  22.52  )
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
Subject: [PATCH 13/14] ARM: i.MX: xload nand: Implement i.MX7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

i.MX7 xload NAND support works like on i.MX6, but the FCB is in a
different format. The FCB page uses BCH62 ECC, has 8 ECC chunks with
128 bytes each with a resulting total page size of 1862 bytes. Also
the page data is written with a pseudo randomizer enabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx7-regs.h |  1 +
 arch/arm/mach-imx/include/mach/xload.h     |  1 +
 arch/arm/mach-imx/xload-gpmi-nand.c        | 95 ++++++++++++++++++++--
 3 files changed, 91 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx7-regs.h b/arch/arm/mach-imx/include/mach/imx7-regs.h
index 1ee7d86e0e..379be9e062 100644
--- a/arch/arm/mach-imx/include/mach/imx7-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx7-regs.h
@@ -118,6 +118,7 @@
 #define MX7_ENET1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3E0000)
 #define MX7_ENET2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3F0000)
 
+#define	MX7_APBH_BASE			0x33000000
 #define MX7_GPMI_BASE			0x33002000
 #define MX7_BCH_BASE			0x33004000
 
diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index 82bf663c42..ca0055aee2 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -12,6 +12,7 @@ int imx6_spi_start_image(int instance);
 int imx6_esdhc_start_image(int instance);
 int imx6_nand_start_image(void);
 int imx7_esdhc_start_image(int instance);
+int imx7_nand_start_image(void);
 int imx8m_esdhc_load_image(int instance, bool start);
 int imx8mn_esdhc_load_image(int instance, bool start);
 int imx8mp_esdhc_load_image(int instance, bool start);
diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
index 7e4033d74f..edffd69e6b 100644
--- a/arch/arm/mach-imx/xload-gpmi-nand.c
+++ b/arch/arm/mach-imx/xload-gpmi-nand.c
@@ -13,6 +13,7 @@
 #include <linux/mtd/rawnand.h>
 #include <soc/imx/gpmi-nand.h>
 #include <mach/imx6-regs.h>
+#include <mach/imx7-regs.h>
 #include <mach/clock-imx6.h>
 #include <dma/apbh-dma.h>
 
@@ -228,7 +229,7 @@ static uint32_t mxs_nand_aux_status_offset(void)
 }
 
 static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
-		int oobsize, int pagenum, void *databuf, int raw)
+		int oobsize, int pagenum, void *databuf, int raw, bool randomizer)
 {
 	void __iomem *bch_regs = info->bch_base;
 	unsigned column = 0;
@@ -332,6 +333,12 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 		d->pio_words[4] = (dma_addr_t)databuf;
 		d->pio_words[5] = (dma_addr_t)(databuf + writesize);
 
+		if (randomizer) {
+			d->pio_words[2] |= GPMI_ECCCTRL_RANDOMIZER_ENABLE |
+					   GPMI_ECCCTRL_RANDOMIZER_TYPE2;
+			d->pio_words[3] |= (pagenum % 256) << 16;
+		}
+
 		/* Compile DMA descriptor - disable the BCH block. */
 		d = &info->desc[descnum++];
 		d->data = MXS_DMA_DESC_NAND_WAIT_4_READY |
@@ -841,7 +848,7 @@ static uint32_t calc_chksum(void *buf, size_t size)
 	return ~chksum;
 }
 
-static int get_fcb(struct mxs_nand_info *info, void *databuf)
+static int imx6_get_fcb(struct mxs_nand_info *info, void *databuf)
 {
 	int i, pagenum, ret;
 	uint32_t checksum;
@@ -849,13 +856,13 @@ static int get_fcb(struct mxs_nand_info *info, void *databuf)
 
 	/* First page read fails, this shouldn't be necessary */
 	mxs_nand_read_page(info, info->organization.pagesize,
-		info->organization.oobsize, 0, databuf, 1);
+		info->organization.oobsize, 0, databuf, 1, false);
 
 	for (i = 0; i < 4; i++) {
 		pagenum = info->organization.pages_per_eraseblock * i;
 
 		ret = mxs_nand_read_page(info, info->organization.pagesize,
-			info->organization.oobsize, pagenum, databuf, 1);
+			info->organization.oobsize, pagenum, databuf, 1, false);
 		if (ret)
 			continue;
 
@@ -887,6 +894,66 @@ static int get_fcb(struct mxs_nand_info *info, void *databuf)
 	return -EINVAL;
 }
 
+static int imx7_get_fcb_n(struct mxs_nand_info *info, void *databuf, int num)
+{
+	int ret;
+	int flips = 0;
+	uint8_t	*status;
+	int i;
+
+	ret = mxs_nand_read_page(info, BCH62_WRITESIZE, BCH62_OOBSIZE,
+				 info->organization.pages_per_eraseblock * num, databuf, 0, true);
+	if (ret)
+		return ret;
+
+	/* Loop over status bytes, accumulating ECC status. */
+	status = databuf + BCH62_WRITESIZE + 32;
+
+	for (i = 0; i < 8; i++) {
+		switch (status[i]) {
+		case 0x0:
+			break;
+		case 0xff:
+			/*
+			 * A status of 0xff means the chunk is erased, but due to
+			 * the randomizer we see this as random data. Explicitly
+			 * memset it.
+			 */
+			memset(databuf + 0x80 * i, 0xff, 0x80);
+			break;
+		case 0xfe:
+			return -EBADMSG;
+		default:
+			flips += status[0];
+			break;
+		}
+	}
+
+	return ret;
+}
+
+static int imx7_get_fcb(struct mxs_nand_info *info, void *databuf)
+{
+	int i, ret;
+	struct fcb_block *fcb = &info->fcb;
+
+	mxs_nand_mode_fcb_62bit(info->bch_base);
+
+	for (i = 0; i < 4; i++) {
+		ret = imx7_get_fcb_n(info, databuf, i);
+		if (!ret)
+			break;
+	}
+
+	if (ret) {
+		pr_err("Cannot find FCB\n");
+	} else {
+		memcpy(fcb, databuf, sizeof(*fcb));
+	}
+
+	return ret;
+}
+
 static int get_dbbt(struct mxs_nand_info *info, void *databuf)
 {
 	int i, ret;
@@ -991,7 +1058,7 @@ static int read_firmware(struct mxs_nand_info *info, int startpage,
 		}
 
 		ret = mxs_nand_read_page(info, pagesize, oobsize,
-			curpage, dest, 0);
+			curpage, dest, 0, false);
 		if (ret) {
 			pr_debug("Failed to read page %d\n", curpage);
 			return ret;
@@ -1012,6 +1079,7 @@ struct imx_nand_params {
 	struct mxs_nand_info info;
 	struct apbh_dma apbh;
 	void *sdram;
+	int (*get_fcb)(struct mxs_nand_info *info, void *databuf);
 };
 
 static int __maybe_unused imx6_nand_load_image(struct imx_nand_params *params,
@@ -1036,7 +1104,7 @@ static int __maybe_unused imx6_nand_load_image(struct imx_nand_params *params,
 	if (ret)
 		return ret;
 
-	ret = get_fcb(info, databuf);
+	ret = params->get_fcb(info, databuf);
 	if (ret)
 		return ret;
 
@@ -1120,6 +1188,7 @@ int imx6_nand_start_image(void)
 		.apbh.regs = IOMEM(MX6_APBH_BASE_ADDR),
 		.apbh.id = IMX28_DMA,
 		.sdram = (void *)MX6_MMDC_PORT01_BASE_ADDR,
+		.get_fcb = imx6_get_fcb,
 	};
 
 	/* Apply ERR007117 workaround */
@@ -1127,3 +1196,17 @@ int imx6_nand_start_image(void)
 
 	return imx_nand_start_image(&params);
 }
+
+int imx7_nand_start_image(void)
+{
+	static struct imx_nand_params params = {
+		.info.io_base = IOMEM(MX7_GPMI_BASE),
+		.info.bch_base = IOMEM(MX7_BCH_BASE),
+		.apbh.regs = IOMEM(MX7_APBH_BASE),
+		.apbh.id = IMX28_DMA,
+		.sdram = (void *)MX7_DDR_BASE_ADDR,
+		.get_fcb = imx7_get_fcb,
+	};
+
+	return imx_nand_start_image(&params);
+}
-- 
2.30.2



