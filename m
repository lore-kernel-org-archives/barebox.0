Delivery-date: Fri, 05 Aug 2022 14:56:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJws9-00CWIJ-M9
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 14:56:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJws9-0005Gb-QG
	for lore@pengutronix.de; Fri, 05 Aug 2022 14:56:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hktz/0ZMiHlvcuwBU2AMGZHKex/EoA43FwTBe0yqNV4=; b=UhNXq9Dm3ETF7MI1IaKVfpimn7
	ugPX8r4HFs07MeRlDh51NlTueejwm6ZrDPQrF9vpmytRFwh7yA2khX/fsJajnSv6dWioq+t8VbHa/
	ijARPyd9TbAemuL0iOS/yVsbe4ZoopOToAvyW8mFEK7JHP5ZxLG9191CUtroSl1lQkTuzwjVLnQHD
	nx4TfQLcCwa58HmjBEhG5K+BBC7uRjPad/S4t/z2lN5zL5fuFADlgYaV0sUWzNtGTBVgVbBKUz0ng
	5qdS/apPOdknopudggUtMX0nM8G07/vLn4FZOE4/bkXsrZXw7/KKGs1Z8oeWWJJ7fMQ6g78/YW129
	DPtRPeqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwqd-00FACx-Hr; Fri, 05 Aug 2022 12:54:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwqJ-00FA0Z-AQ
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 12:54:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqI-0004cy-1X; Fri, 05 Aug 2022 14:54:18 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqF-001tgj-2l; Fri, 05 Aug 2022 14:54:17 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqF-004vtn-5H; Fri, 05 Aug 2022 14:54:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 14:54:06 +0200
Message-Id: <20220805125413.1046239-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
References: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_055419_486537_F645A5ED 
X-CRM114-Status: GOOD (  15.19  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/9] ARM: i.MX8M: imx8mn-evk: use generic imx8mn_load_and_start_image_via_tfa
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like already done for i.MX8MM and i.MX8MP, we can considerably reduce
i.MX8MN board code duplication by moving the TF-A loading and jumping
code into common helpers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c | 31 +------------------
 arch/arm/mach-imx/atf.c                   | 36 +++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/xload.h    |  1 +
 3 files changed, 38 insertions(+), 30 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
index 9e44d343b7ed..ddc6e4fd2b29 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
@@ -132,11 +132,7 @@ extern struct dram_timing_info imx8mn_evk_ddr4_timing, imx8mn_evk_lpddr4_timing;
 static void start_atf(void)
 {
 	struct dram_timing_info *dram_timing = &imx8mn_evk_lpddr4_timing;
-	size_t bl31_size;
-	const u8 *bl31;
-	enum bootsource src;
 	void *i2c;
-	int instance;
 	int ret;
 
 	/*
@@ -163,32 +159,7 @@ static void start_atf(void)
 
 	imx8mn_ddr_init(dram_timing, dram_timing->dram_type);
 
-	imx8mn_get_boot_source(&src, &instance);
-	switch (src) {
-	case BOOTSOURCE_MMC:
-		imx8mn_esdhc_load_image(instance, false);
-		break;
-	default:
-		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
-		hang();
-	}
-
-	/*
-	 * On completion the TF-A will jump to MX8M_ATF_BL33_BASE_ADDR
-	 * in EL2. Copy the image there, but replace the PBL part of
-	 * that image with ourselves. On a high assurance boot only the
-	 * currently running code is validated and contains the checksum
-	 * for the piggy data, so we need to ensure that we are running
-	 * the same code in DRAM.
-	 */
-	memcpy((void *)MX8M_ATF_BL33_BASE_ADDR,
-	       __image_start, barebox_pbl_size);
-
-	get_builtin_firmware(imx8mn_bl31_bin, &bl31, &bl31_size);
-
-	imx8mn_atf_load_bl31(bl31, bl31_size);
-
-	/* not reached */
+	imx8mn_load_and_start_image_via_tfa();
 }
 
 /*
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 8fc523d3de61..bb9e04c9746b 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -168,3 +168,39 @@ void imx8mp_load_and_start_image_via_tfa(void)
 
 	/* not reached */
 }
+
+void imx8mn_load_and_start_image_via_tfa(void)
+{
+	size_t bl31_size;
+	const u8 *bl31;
+	enum bootsource src;
+	int instance;
+
+	imx8mn_get_boot_source(&src, &instance);
+	switch (src) {
+	case BOOTSOURCE_MMC:
+		imx8mn_esdhc_load_image(instance, false);
+		break;
+	default:
+		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
+		hang();
+	}
+
+
+	/*
+	 * On completion the TF-A will jump to MX8M_ATF_BL33_BASE_ADDR
+	 * in EL2. Copy the image there, but replace the PBL part of
+	 * that image with ourselves. On a high assurance boot only the
+	 * currently running code is validated and contains the checksum
+	 * for the piggy data, so we need to ensure that we are running
+	 * the same code in DRAM.
+	 */
+	memcpy((void *)MX8M_ATF_BL33_BASE_ADDR,
+	       __image_start, barebox_pbl_size);
+
+	get_builtin_firmware(imx8mn_bl31_bin, &bl31, &bl31_size);
+
+	imx8mn_atf_load_bl31(bl31, bl31_size);
+
+	/* not reached */
+}
diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index cfc52a94879d..3090c9c83bd7 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -14,6 +14,7 @@ int imx8mn_esdhc_load_image(int instance, bool start);
 int imx8mp_esdhc_load_image(int instance, bool start);
 
 void imx8mm_load_and_start_image_via_tfa(void);
+void imx8mn_load_and_start_image_via_tfa(void);
 void imx8mp_load_and_start_image_via_tfa(void);
 
 int imx_image_size(void);
-- 
2.30.2



