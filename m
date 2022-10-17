Delivery-date: Mon, 17 Oct 2022 09:13:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKJ5-00BNnj-WA
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 09:13:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKJ3-0006KA-OX
	for lore@pengutronix.de; Mon, 17 Oct 2022 09:13:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Mi5cg4KwcBoafx9P8QHO3WzuuoySKzjro7wWppFUg2g=; b=cyzF68ICcLThJRo7lc6QeOlyJG
	0DNzYxJdE7kX3MZ0xd6ttxeag64sP5AjymE9Bb0neNzk1+Bnlvw0UxGV5WO9cy2kSq1svwXjTFNLT
	Sv3k6s2ahuCvTLIirj7a4uum+fc+FR0hxK33DWuKadK9T8gRVaJ/SYrf/p0xosm9mKpOSS0WM/92+
	n70S3JVQJphYq6SJFCYzxZy4WoUpSoinJs7U2uy2aaR7i4wJyWeL08k0PYXYBYIzhHid+L1p7SD6p
	QRlP+QTtzkVkGKiaK2JjrRetgKW2fFRuDoqDq97b/32olRzMnCG9N2os+PDbIRV78Jee+etYYb/LO
	IwXdvBVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKHo-008Nea-Df; Mon, 17 Oct 2022 07:11:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKHc-008Na1-0h
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 07:11:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okKHa-0005qb-Ia; Mon, 17 Oct 2022 09:11:30 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKHZ-0021tB-HU; Mon, 17 Oct 2022 09:11:29 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKHY-0067ba-Ny; Mon, 17 Oct 2022 09:11:28 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Andrej Picej <andrej.picej@norik.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 09:11:27 +0200
Message-Id: <20221017071127.1459152-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_001132_089289_94493D98 
X-CRM114-Status: GOOD (  13.96  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: xload-gpmi-nand: refactor for more SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

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
index 35f03036cb5b..39e275153317 100644
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
index 3a4f331ce648..bc3562acb341 100644
--- a/arch/arm/mach-imx/xload-gpmi-nand.c
+++ b/arch/arm/mach-imx/xload-gpmi-nand.c
@@ -1124,49 +1124,44 @@ static int read_firmware(struct mxs_nand_info *info, int startpage,
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
@@ -1177,24 +1172,21 @@ static int __maybe_unused imx6_nand_load_image(void *cmdbuf, void *descs,
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
@@ -1207,3 +1199,19 @@ int imx6_nand_start_image(void)
 
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



