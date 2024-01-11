Delivery-date: Thu, 11 Jan 2024 12:51:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtaQ-00Cw8v-18
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 12:51:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtaP-0002pi-3U
	for lore@pengutronix.de; Thu, 11 Jan 2024 12:51:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hNWmOw0eEYJ5xxSs+Tg7ckhmyO4zVdSryKhX8RIhqRA=; b=nfnd2Yg6azyv8o10jUL0LzSmhs
	ZsffJlEqOSLW3E08f4+eU8kasKA2PoGWTEBdYC4SZDQpGHlHogM/1MVQtC/gpPv/rTdj7nzcOkX/Y
	NoqpFqCI7mOduq0lEK+5wBrC8kNmA7es0JqShUzDoQ2aoKWp3Z+VKR1Pc4E5wkibaaGogYquXEqYs
	n+HQ+IYurrn1DF15inOcIlqHbBc1UNhnAmcnQXk1CbgsW5jmaUsZQ2Lh+54cBC4aCOSU9UqdX0nuM
	iyo/F6uszcT1gZ3ZwRgV4Wiyg1zA1Rxtv/AJPXR9S3YrCJEdG2CnrlLBaUwwESI3I/LlSd7DOE3qK
	g8Kt5wIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtZ2-00HTHG-10;
	Thu, 11 Jan 2024 11:49:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYd-00HSoV-1x
	for barebox@bombadil.infradead.org;
	Thu, 11 Jan 2024 11:49:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=hNWmOw0eEYJ5xxSs+Tg7ckhmyO4zVdSryKhX8RIhqRA=; b=JnV0WxBAd40vOKOJQJ5ugURk3N
	J7btR25MHOP+jHPxAR0LDuCS3/PfvDf7W9XDPLT+yQOrRQQenuh0nn/jtmCDLdBok8lIXnUTxnI3h
	tRtPzE90OC1kjX8tb2kMAtwu9eO9MBoEnQpekdTPf8ngJb3qlPin8z68n2pAyByDDUffqDadPLiky
	SkePwFZQ6gHj6mvNqVLIsJezSk5r9xlIne/n/rQ1HzMFhdcKsXcSxNH6vgaKF6s1DXKa23NHN7Bz5
	N1CsfixFnlFS05f3SsbJmmMpX1L4J+ktgMFfys1sljApwH86DaOP6HF9XPmqGeRAtbV1O0bzLPsrE
	Noe60rZw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYY-00AIUo-37
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 11:49:10 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rNtYK-000137-Vk
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 12:48:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jan 2024 12:48:39 +0100
Message-Id: <20240111114841.2676939-17-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111114841.2676939-1-m.felsch@pengutronix.de>
References: <20240111114841.2676939-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_114907_237345_B117C5FC 
X-CRM114-Status: GOOD (  16.23  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 16/18] ARM: i.MX8M: allow board code to configure the bl33 loadaddr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

At an helper to load_and_start the image on arbitrary load addresses.
This should be taken with caution since it requires to configure the
TF-A correctly as well, therefore the functions are prefixt with '__'.

One use case of the new helper is to place OP-TEE at the very beginning
of the DRAM and barebox afterwards e.g. if multiple DRAM setups are
required for the platform/som-family.

A nice side effect of this change is to bundle the usage of
MX8M*_ATF_BL33_BASE_ADDR at a single place.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/atf.c        | 42 +++++++++++++++++++++++-----------
 arch/arm/mach-imx/romapi.c     | 15 ++++++------
 arch/arm/mach-imx/xload-qspi.c | 18 +++++++--------
 drivers/mci/imx-esdhc-pbl.c    | 13 ++++++-----
 include/mach/imx/romapi.h      |  4 ++--
 include/mach/imx/xload.h       | 17 +++++++++-----
 6 files changed, 65 insertions(+), 44 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index eef3235b84f9..a976459aee56 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -66,7 +66,7 @@ void imx8mm_load_bl33(void *bl33)
 	imx8mm_get_boot_source(&src, &instance);
 	switch (src) {
 	case BOOTSOURCE_MMC:
-		imx8m_esdhc_load_image(instance, false);
+		imx8m_esdhc_load_image(instance, false, bl33);
 		break;
 	case BOOTSOURCE_SERIAL:
 		if (!IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC_PBL)) {
@@ -99,7 +99,7 @@ void imx8mm_load_bl33(void *bl33)
 
 		break;
 	case BOOTSOURCE_SPI:
-		imx8mm_qspi_load_image(instance, false);
+		imx8mm_qspi_load_image(instance, false, bl33);
 		break;
 	default:
 		printf("Unsupported bootsource BOOTSOURCE_%d\n", src);
@@ -136,10 +136,14 @@ static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32
 }
 
 __noreturn void imx8mm_load_and_start_image_via_tfa(void)
+{
+	__imx8mm_load_and_start_image_via_tfa((void *)MX8M_ATF_BL33_BASE_ADDR);
+}
+
+__noreturn void __imx8mm_load_and_start_image_via_tfa(void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
-	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
 
 	imx8mm_init_scratch_space();
@@ -176,13 +180,13 @@ void imx8mp_load_bl33(void *bl33)
 	imx8mp_get_boot_source(&src, &instance);
 	switch (src) {
 	case BOOTSOURCE_MMC:
-		imx8mp_esdhc_load_image(instance, false);
+		imx8mp_esdhc_load_image(instance, false, bl33);
 		break;
 	case BOOTSOURCE_SERIAL:
-		imx8mp_romapi_load_image();
+		imx8mp_romapi_load_image(bl33);
 		break;
 	case BOOTSOURCE_SPI:
-		imx8mp_qspi_load_image(instance, false);
+		imx8mp_qspi_load_image(instance, false, bl33);
 		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
@@ -202,10 +206,14 @@ void imx8mp_load_bl33(void *bl33)
 }
 
 __noreturn void imx8mp_load_and_start_image_via_tfa(void)
+{
+	__imx8mp_load_and_start_image_via_tfa((void *)MX8M_ATF_BL33_BASE_ADDR);
+}
+
+__noreturn void __imx8mp_load_and_start_image_via_tfa(void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
-	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
 
 	imx8mp_init_scratch_space();
@@ -243,13 +251,13 @@ void imx8mn_load_bl33(void *bl33)
 	imx8mn_get_boot_source(&src, &instance);
 	switch (src) {
 	case BOOTSOURCE_MMC:
-		imx8mn_esdhc_load_image(instance, false);
+		imx8mn_esdhc_load_image(instance, false, bl33);
 		break;
 	case BOOTSOURCE_SERIAL:
-		imx8mn_romapi_load_image();
+		imx8mn_romapi_load_image(bl33);
 		break;
 	case BOOTSOURCE_SPI:
-		imx8mn_qspi_load_image(instance, false);
+		imx8mn_qspi_load_image(instance, false, bl33);
 		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
@@ -269,10 +277,14 @@ void imx8mn_load_bl33(void *bl33)
 }
 
 __noreturn void imx8mn_load_and_start_image_via_tfa(void)
+{
+	__imx8mn_load_and_start_image_via_tfa((void *)MX8M_ATF_BL33_BASE_ADDR);
+}
+
+__noreturn void __imx8mn_load_and_start_image_via_tfa(void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
-	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(16);
 
 	imx8mn_init_scratch_space();
@@ -309,7 +321,7 @@ void imx8mq_load_bl33(void *bl33)
 	imx8mn_get_boot_source(&src, &instance);
 	switch (src) {
 	case BOOTSOURCE_MMC:
-		imx8m_esdhc_load_image(instance, false);
+		imx8m_esdhc_load_image(instance, false, bl33);
 		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
@@ -329,10 +341,14 @@ void imx8mq_load_bl33(void *bl33)
 }
 
 __noreturn void imx8mq_load_and_start_image_via_tfa(void)
+{
+	__imx8mq_load_and_start_image_via_tfa((void *)MX8M_ATF_BL33_BASE_ADDR);
+}
+
+__noreturn void __imx8mq_load_and_start_image_via_tfa(void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
-	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
 
 	imx8mq_init_scratch_space();
diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index a245357fdf5d..797b479c3e91 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -79,25 +79,24 @@ static int imx_romapi_load_seekable(struct rom_api *rom_api, void *adr, uint32_t
 }
 
 /* read piggydata via a bootrom callback and place it behind our copy in SDRAM */
-static int imx_romapi_load_image(struct rom_api *rom_api)
+static int imx_romapi_load_image(struct rom_api *rom_api, void *bl33)
 {
-	return imx_romapi_load_stream(rom_api,
-			(void *)MX8M_ATF_BL33_BASE_ADDR + barebox_pbl_size,
-			__image_end - __piggydata_start);
+	return imx_romapi_load_stream(rom_api, bl33 + barebox_pbl_size,
+				      __image_end - __piggydata_start);
 }
 
-int imx8mp_romapi_load_image(void)
+int imx8mp_romapi_load_image(void *bl33)
 {
 	struct rom_api *rom_api = (void *)0x980;
 
 	OPTIMIZER_HIDE_VAR(rom_api);
 
-	return imx_romapi_load_image(rom_api);
+	return imx_romapi_load_image(rom_api, bl33);
 }
 
-int imx8mn_romapi_load_image(void)
+int imx8mn_romapi_load_image(void *bl33)
 {
-	return imx8mp_romapi_load_image();
+	return imx8mp_romapi_load_image(bl33);
 }
 
 static int imx_romapi_boot_device_seekable(struct rom_api *rom_api)
diff --git a/arch/arm/mach-imx/xload-qspi.c b/arch/arm/mach-imx/xload-qspi.c
index 6bf5bba5e69d..fe7aa9c7bb46 100644
--- a/arch/arm/mach-imx/xload-qspi.c
+++ b/arch/arm/mach-imx/xload-qspi.c
@@ -34,24 +34,24 @@ int imx8m_qspi_read(void *dest, size_t len, void *priv)
  * or 0. A negative error code is returned when this function fails.
  */
 static
-int imx8m_qspi_load_image(int instance, bool start, off_t offset, off_t ivt_offset)
+int imx8m_qspi_load_image(int instance, bool start, off_t offset, off_t ivt_offset,
+			  void *bl33)
 {
 	void __iomem *qspi_ahb = IOMEM(IMX8M_QSPI_MMAP);
 
-	return imx_load_image(MX8M_DDR_CSD1_BASE_ADDR, MX8M_ATF_BL33_BASE_ADDR,
-			      offset, ivt_offset, start, 0,
-			      imx8m_qspi_read, qspi_ahb);
+	return imx_load_image(MX8M_DDR_CSD1_BASE_ADDR, (ptrdiff_t)bl33, offset,
+			      ivt_offset, start, 0, imx8m_qspi_read, qspi_ahb);
 }
 
-int imx8mm_qspi_load_image(int instance, bool start)
+int imx8mm_qspi_load_image(int instance, bool start, void *bl33)
 {
-	return imx8m_qspi_load_image(instance, start, 0, SZ_4K);
+	return imx8m_qspi_load_image(instance, start, 0, SZ_4K, bl33);
 }
 
-int imx8mn_qspi_load_image(int instance, bool start)
+int imx8mn_qspi_load_image(int instance, bool start, void *bl33)
 {
-	return imx8m_qspi_load_image(instance, start, SZ_4K, 0);
+	return imx8m_qspi_load_image(instance, start, SZ_4K, 0, bl33);
 }
 
-int imx8mp_qspi_load_image(int instance, bool start)
+int imx8mp_qspi_load_image(int instance, bool start, void *bl33)
 	__alias(imx8mn_qspi_load_image);
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 892329de512a..5cf81eeffb1a 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -240,6 +240,7 @@ int imx7_esdhc_start_image(int instance)
  * imx8m_esdhc_load_image - Load and optionally start an image from USDHC controller
  * @instance: The USDHC controller instance (0..2)
  * @start: Whether to directly start the loaded image
+ * @bl33: Where to load the bl33 barebox image
  *
  * This uses esdhc_start_image() to load an image from SD/MMC.  It is
  * assumed that the image is the currently running barebox image (This
@@ -249,7 +250,7 @@ int imx7_esdhc_start_image(int instance)
  * Return: If successful, this function does not return (if directly started)
  * or 0. A negative error code is returned when this function fails.
  */
-int imx8m_esdhc_load_image(int instance, bool start)
+int imx8m_esdhc_load_image(int instance, bool start, void *bl33)
 {
 	struct esdhc_soc_data data;
 	struct fsl_esdhc_host host = { 0 };
@@ -260,14 +261,14 @@ int imx8m_esdhc_load_image(int instance, bool start)
 		return ret;
 
 	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
-				MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K, SZ_1K,
-				start);
+				(ptrdiff_t)bl33, SZ_32K, SZ_1K, start);
 }
 
 /**
  * imx8mp_esdhc_load_image - Load and optionally start an image from USDHC controller
  * @instance: The USDHC controller instance (0..2)
  * @start: Whether to directly start the loaded image
+ * @bl33: Where to load the bl33 barebox image
  *
  * This uses esdhc_start_image() to load an image from SD/MMC.  It is
  * assumed that the image is the currently running barebox image (This
@@ -277,7 +278,7 @@ int imx8m_esdhc_load_image(int instance, bool start)
  * Return: If successful, this function does not return (if directly started)
  * or 0. A negative error code is returned when this function fails.
  */
-int imx8mp_esdhc_load_image(int instance, bool start)
+int imx8mp_esdhc_load_image(int instance, bool start, void *bl33)
 {
 	struct esdhc_soc_data data;
 	struct fsl_esdhc_host host = { 0 };
@@ -291,10 +292,10 @@ int imx8mp_esdhc_load_image(int instance, bool start)
 	offset = esdhc_bootpart_active(&host)? 0 : SZ_32K;
 
 	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
-				MX8MQ_ATF_BL33_BASE_ADDR, offset, 0, start);
+				(ptrdiff_t)bl33, offset, 0, start);
 }
 
-int imx8mn_esdhc_load_image(int instance, bool start)
+int imx8mn_esdhc_load_image(int instance, bool start, void *bl33)
 	__alias(imx8mp_esdhc_load_image);
 #endif
 
diff --git a/include/mach/imx/romapi.h b/include/mach/imx/romapi.h
index b1a990085088..de5881001c02 100644
--- a/include/mach/imx/romapi.h
+++ b/include/mach/imx/romapi.h
@@ -35,8 +35,8 @@ enum boot_dev_type_e {
 
 #define ROM_API_OKAY		0xF0
 
-int imx8mp_romapi_load_image(void);
-int imx8mn_romapi_load_image(void);
+int imx8mp_romapi_load_image(void *bl33);
+int imx8mn_romapi_load_image(void *bl33);
 int imx93_romapi_load_image(void);
 
 /* only call after DRAM has been configured */
diff --git a/include/mach/imx/xload.h b/include/mach/imx/xload.h
index 965e73772ceb..49e38f8c1dd3 100644
--- a/include/mach/imx/xload.h
+++ b/include/mach/imx/xload.h
@@ -14,12 +14,12 @@ int imx6_esdhc_start_image(int instance);
 int imx6_nand_start_image(void);
 int imx7_esdhc_start_image(int instance);
 int imx7_nand_start_image(void);
-int imx8m_esdhc_load_image(int instance, bool start);
-int imx8mn_esdhc_load_image(int instance, bool start);
-int imx8mp_esdhc_load_image(int instance, bool start);
-int imx8mm_qspi_load_image(int instance, bool start);
-int imx8mn_qspi_load_image(int instance, bool start);
-int imx8mp_qspi_load_image(int instance, bool start);
+int imx8m_esdhc_load_image(int instance, bool start, void *bl33);
+int imx8mn_esdhc_load_image(int instance, bool start, void *bl33);
+int imx8mp_esdhc_load_image(int instance, bool start, void *bl33);
+int imx8mm_qspi_load_image(int instance, bool start, void *bl33);
+int imx8mn_qspi_load_image(int instance, bool start, void *bl33);
+int imx8mp_qspi_load_image(int instance, bool start, void *bl33);
 
 void imx8mm_load_bl33(void *bl33);
 void imx8mn_load_bl33(void *bl33);
@@ -30,6 +30,11 @@ void __noreturn imx8mm_load_and_start_image_via_tfa(void);
 void __noreturn imx8mn_load_and_start_image_via_tfa(void);
 void __noreturn imx8mp_load_and_start_image_via_tfa(void);
 void __noreturn imx8mq_load_and_start_image_via_tfa(void);
+void __noreturn __imx8mm_load_and_start_image_via_tfa(void *bl33);
+void __noreturn __imx8mn_load_and_start_image_via_tfa(void *bl33);
+void __noreturn __imx8mp_load_and_start_image_via_tfa(void *bl33);
+void __noreturn __imx8mq_load_and_start_image_via_tfa(void *bl33);
+
 void __noreturn imx93_load_and_start_image_via_tfa(void);
 
 int imx_load_image(ptrdiff_t address, ptrdiff_t entry, u32 offset,
-- 
2.39.2



