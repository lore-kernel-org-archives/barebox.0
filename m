Delivery-date: Tue, 01 Nov 2022 16:33:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGn-00B042-6Z
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 16:33:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGk-0005P2-Ql
	for lore@pengutronix.de; Tue, 01 Nov 2022 16:33:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8I7i8BG9AE8py6sC/mBqkWxyj3MghQa7R4IAW/rCgzg=; b=ToCrUO08Xhj3n4MGGEOpBf8D6B
	dfv8i7+dtu5jfk0KG32xBLqTjTX40DNC+S5zW8FNgSSVKFPfeXGXoojqyiCE3KBcIGBFdBzeK/Jsm
	2VLZ5rRdSmTXm6XWGFDYfHH9AQomcDqJir/lPdu0T3rTgSfJ+mlI/k7q5aeIwecYW3hGJlioPV2gd
	++OZ/VXtFrFxzew5TmQ42Bb4NzDOOSqLdUGd/8fZ+WGMbP1dM9qUzVoITEWwxBJvlUWAxNaivelbB
	BhZbTfbNKwJm4fkxCWmR4SsjSduHOTDopbN6fzmP9YH+TotnXfOgfEfbwID+lQqr5ThJsN5ZtDg5S
	JzzvO0bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optFJ-005ozo-Jc; Tue, 01 Nov 2022 15:32:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optEu-005oX9-3x
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 15:31:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1optE3-0004fN-PO; Tue, 01 Nov 2022 16:30:51 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-001hdc-1V; Tue, 01 Nov 2022 16:30:51 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE1-003Exw-Co; Tue, 01 Nov 2022 16:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Nov 2022 16:30:40 +0100
Message-Id: <20221101153048.772146-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101153048.772146-1-s.hauer@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_083144_368339_CEE5BFAA 
X-CRM114-Status: GOOD (  16.15  )
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
Subject: [PATCH 06/14] ARM: i.MX: xload-gpmi-nand: refactor for more SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

The code hardcodes i.MX6 addresses, which needs to be factored out for
use in other SoCs' startup. Do this by creating a new imx_nand_params
to hold these information and passing it into the now more generic
code.

No functional change intended. Untested as I got no i.MX6 directly
booting from NAND.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx6-regs.h |  2 +
 arch/arm/mach-imx/xload-gpmi-nand.c        | 76 ++++++++++++----------
 2 files changed, 44 insertions(+), 34 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index 35f03036cb..39e2751533 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -3,7 +3,9 @@
 #ifndef __MACH_IMX6_REGS_H
 #define __MACH_IMX6_REGS_H
 
+#define MX6_APBH_BASE_ADDR		0x00110000
 #define MX6_GPMI_BASE_ADDR		0x00112000
+#define MX6_BCH_BASE_ADDR		0x00114000
 
 #define MX6_FAST1_BASE_ADDR		0x00c00000
 #define MX6_FAST2_BASE_ADDR		0x00b00000
diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
index 165c4c5b85..a7398cc26a 100644
--- a/arch/arm/mach-imx/xload-gpmi-nand.c
+++ b/arch/arm/mach-imx/xload-gpmi-nand.c
@@ -999,49 +999,44 @@ static int read_firmware(struct mxs_nand_info *info, int startpage,
 	return 0;
 }
 
-static int __maybe_unused imx6_nand_load_image(void *cmdbuf, void *descs,
-	void *databuf, void *dest, int len)
+struct imx_nand_params {
+	struct mxs_nand_info info;
+	struct apbh_dma apbh;
+	void *sdram;
+};
+
+static int __maybe_unused imx6_nand_load_image(struct imx_nand_params *params,
+					       void *databuf, void *dest, int len)
 {
-	struct mxs_nand_info info = {
-		.io_base = (void *)0x00112000,
-		.bch_base = (void *)0x00114000,
-	};
-	struct apbh_dma apbh = {
-		.id = IMX28_DMA,
-		.regs = (void *)0x00110000,
-	};
+	struct mxs_nand_info *info = &params->info;
 	struct mxs_dma_chan pchan = {
 		.channel = 0, /* MXS: MXS_DMA_CHANNEL_AHB_APBH_GPMI0 */
-		.apbh = &apbh,
+		.apbh = &params->apbh,
 	};
 	int ret;
 	struct fcb_block *fcb;
 
-	info.dma_channel = &pchan;
+	info->dma_channel = &pchan;
 
 	pr_debug("cmdbuf: 0x%p descs: 0x%p databuf: 0x%p dest: 0x%p\n",
-			cmdbuf, descs, databuf, dest);
-
-	/* Command buffers */
-	info.cmd_buf = cmdbuf;
-	info.desc = descs;
+			info->cmd_buf, info->desc, databuf, dest);
 
-	ret = mxs_nand_get_info(&info, databuf);
+	ret = mxs_nand_get_info(info, databuf);
 	if (ret)
 		return ret;
 
-	ret = get_fcb(&info, databuf);
+	ret = get_fcb(info, databuf);
 	if (ret)
 		return ret;
 
-	fcb = &info.fcb;
+	fcb = &info->fcb;
 
-	get_dbbt(&info, databuf);
+	get_dbbt(info, databuf);
 
-	ret = read_firmware(&info, fcb->Firmware1_startingPage, dest, len);
+	ret = read_firmware(info, fcb->Firmware1_startingPage, dest, len);
 	if (ret) {
 		pr_err("Failed to read firmware1, trying firmware2\n");
-		ret = read_firmware(&info, fcb->Firmware2_startingPage,
+		ret = read_firmware(info, fcb->Firmware2_startingPage,
 			dest, len);
 		if (ret) {
 			pr_err("Failed to also read firmware2\n");
@@ -1052,24 +1047,21 @@ static int __maybe_unused imx6_nand_load_image(void *cmdbuf, void *descs,
 	return 0;
 }
 
-int imx6_nand_start_image(void)
+static int imx_nand_start_image(struct imx_nand_params *params)
 {
+	struct mxs_nand_info *info = &params->info;
 	int ret;
-	void *sdram = (void *)0x10000000;
 	void __noreturn (*bb)(void);
-	void *cmdbuf, *databuf, *descs;
+	void *databuf;
 
-	cmdbuf = sdram;
-	descs = sdram + MXS_NAND_COMMAND_BUFFER_SIZE;
-	databuf = descs +
+	/* Command buffers */
+	info->cmd_buf = params->sdram;
+	info->desc = params->sdram + MXS_NAND_COMMAND_BUFFER_SIZE;
+	databuf = info->desc +
 		sizeof(struct mxs_dma_cmd) * MXS_NAND_DMA_DESCRIPTOR_COUNT;
 	bb = (void *)PAGE_ALIGN((unsigned long)databuf + SZ_8K);
 
-	/* Apply ERR007117 workaround */
-	imx6_errata_007117_enable();
-
-	ret = imx6_nand_load_image(cmdbuf, descs, databuf,
-		bb, imx_image_size());
+	ret = imx6_nand_load_image(params, databuf, bb, imx_image_size());
 	if (ret) {
 		pr_err("Loading image failed: %d\n", ret);
 		return ret;
@@ -1082,3 +1074,19 @@ int imx6_nand_start_image(void)
 
 	bb();
 }
+
+int imx6_nand_start_image(void)
+{
+	static struct imx_nand_params params = {
+		.info.io_base = IOMEM(MX6_GPMI_BASE_ADDR),
+		.info.bch_base = IOMEM(MX6_BCH_BASE_ADDR),
+		.apbh.regs = IOMEM(MX6_APBH_BASE_ADDR),
+		.apbh.id = IMX28_DMA,
+		.sdram = (void *)MX6_MMDC_PORT01_BASE_ADDR,
+	};
+
+	/* Apply ERR007117 workaround */
+	imx6_errata_007117_enable();
+
+	return imx_nand_start_image(&params);
+}
-- 
2.30.2



