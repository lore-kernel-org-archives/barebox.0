Delivery-date: Tue, 16 Jan 2024 18:09:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmwF-002FUf-30
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:09:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmwF-0007la-Qe
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:09:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OkIEAfdJmbRErfJ16Vi3TAxyus9rbN3IQcb8Y1ZpbEo=; b=VnsaSYe7ZQiO+IZVWECWh464Cv
	asRDf5tpGAjWpCPLc30eRupEyKcc66fxDLIwupAXVX/0993gZ9SwVeXuSsAB4D+M4IdWirmGbpDM7
	q3CvafNmTaAoaCX/cP4azL2uBmpW8ycGDCfbGwooCbZMhGdUx1lKuVFaLwSQgaEF2t9m8XzNsOcXn
	gQaV9s9ycijhr+bt8T1trVTvJx1fZtJoew6mwo/YovIz3ENToRo8V6d9ICaow2BIkJ1t3zeALJl+f
	GldhktZRzx44antAqTIxgMBdEkSM7KY/GxGtDOTKkUXAhdzsKhwA2geJQQ7IlZM+UqDaCqknEvXMo
	ZcO6dY3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmv8-00CiFx-1E;
	Tue, 16 Jan 2024 17:08:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmuw-00Ci4F-25
	for barebox@bombadil.infradead.org;
	Tue, 16 Jan 2024 17:08:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=OkIEAfdJmbRErfJ16Vi3TAxyus9rbN3IQcb8Y1ZpbEo=; b=XVjN60g8gR5ADZ/WAdHMp7mjsW
	4e52HWTGUcqvYkQRdnV6wLO5+1jZos6820XA+ldp+XuKxbqod3zwtJQc4EzIi/2gj+CInl+MTTrSi
	++aI+wDmPg0SlSQ9RD1sY5RDVXjKzZ8eRQbZH1P6yl7WAZFd6/FqbvTjtflsMrlxhYDKPKx9bC1+Q
	zPE0EjsOvu0iT3EZlEu1Zhg34Kal8THFMczxyIjSZ5bsSPy9aym+tt9w36GPWK6IaQ4AinD2iAUdD
	ig6LCopeWumZNhSFK7oxhdGzi27QGpF9u53UTN5d5EiGkyS6bYNAiy95WAPWxmyX8C9CgDaSNfVqr
	BcxvhWlQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rPmup-00Ddx9-Dm
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 17:08:00 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmuf-0006lg-Ef
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:36 +0100
Message-Id: <20240116170738.209954-17-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_170755_573271_54D5738C 
X-CRM114-Status: GOOD (  13.47  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 16/18] ARM: i.MX8M: allow board code to configure the bl33 loadaddr
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
 arch/arm/mach-imx/xload-qspi.c | 14 ++++++------
 drivers/mci/imx-esdhc-pbl.c    | 12 ++++++----
 include/mach/imx/romapi.h      |  4 ++--
 include/mach/imx/xload.h       | 17 +++++++++-----
 6 files changed, 63 insertions(+), 41 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index d7698b397f47..f5b62d24ebeb 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -66,7 +66,7 @@ void imx8mm_load_bl33(void *bl33)
 	imx8mm_get_boot_source(&src, &instance);
 	switch (src) {
 	case BOOTSOURCE_MMC:
-		imx8m_esdhc_load_image(instance);
+		imx8m_esdhc_load_image(instance, bl33);
 		break;
 	case BOOTSOURCE_SERIAL:
 		if (!IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC_PBL)) {
@@ -99,7 +99,7 @@ void imx8mm_load_bl33(void *bl33)
 
 		break;
 	case BOOTSOURCE_SPI:
-		imx8mm_qspi_load_image(instance);
+		imx8mm_qspi_load_image(instance, bl33);
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
-		imx8mp_esdhc_load_image(instance);
+		imx8mp_esdhc_load_image(instance, bl33);
 		break;
 	case BOOTSOURCE_SERIAL:
-		imx8mp_romapi_load_image();
+		imx8mp_romapi_load_image(bl33);
 		break;
 	case BOOTSOURCE_SPI:
-		imx8mp_qspi_load_image(instance);
+		imx8mp_qspi_load_image(instance, bl33);
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
-		imx8mn_esdhc_load_image(instance);
+		imx8mn_esdhc_load_image(instance, bl33);
 		break;
 	case BOOTSOURCE_SERIAL:
-		imx8mn_romapi_load_image();
+		imx8mn_romapi_load_image(bl33);
 		break;
 	case BOOTSOURCE_SPI:
-		imx8mn_qspi_load_image(instance);
+		imx8mn_qspi_load_image(instance, bl33);
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
-		imx8m_esdhc_load_image(instance);
+		imx8m_esdhc_load_image(instance, bl33);
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
index 5089f20d627c..327a560f8b70 100644
--- a/arch/arm/mach-imx/xload-qspi.c
+++ b/arch/arm/mach-imx/xload-qspi.c
@@ -32,24 +32,24 @@ int imx8m_qspi_read(void *dest, size_t len, void *priv)
  * A negative error code is returned when this function fails.
  */
 static
-int imx8m_qspi_load_image(int instance, off_t offset, off_t ivt_offset)
+int imx8m_qspi_load_image(int instance, off_t offset, off_t ivt_offset, void *bl33)
 {
 	void __iomem *qspi_ahb = IOMEM(IMX8M_QSPI_MMAP);
 
-	return imx_load_image(MX8M_DDR_CSD1_BASE_ADDR, MX8M_ATF_BL33_BASE_ADDR,
+	return imx_load_image(MX8M_DDR_CSD1_BASE_ADDR, (ptrdiff_t)bl33,
 			      offset, ivt_offset, false, 0,
 			      imx8m_qspi_read, qspi_ahb);
 }
 
-int imx8mm_qspi_load_image(int instance)
+int imx8mm_qspi_load_image(int instance, void *bl33)
 {
-	return imx8m_qspi_load_image(instance, 0, SZ_4K);
+	return imx8m_qspi_load_image(instance, 0, SZ_4K, bl33);
 }
 
-int imx8mn_qspi_load_image(int instance)
+int imx8mn_qspi_load_image(int instance, void *bl33)
 {
-	return imx8m_qspi_load_image(instance, SZ_4K, 0);
+	return imx8m_qspi_load_image(instance, SZ_4K, 0, bl33);
 }
 
-int imx8mp_qspi_load_image(int instance)
+int imx8mp_qspi_load_image(int instance, void *bl33)
 	__alias(imx8mn_qspi_load_image);
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 2cb703a0c552..5b1d9a3cf41e 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -242,6 +242,7 @@ int imx7_esdhc_start_image(int instance)
 /**
  * imx8m_esdhc_load_image - Load and optionally start an image from USDHC controller
  * @instance: The USDHC controller instance (0..2)
+ * @bl33: Where to load the bl33 barebox image
  *
  * This uses esdhc_start_image() to load an image from SD/MMC.  It is
  * assumed that the image is the currently running barebox image (This
@@ -251,7 +252,7 @@ int imx7_esdhc_start_image(int instance)
  * Return: If image successfully loaded, returns 0.
  * A negative error code is returned when this function fails.
  */
-int imx8m_esdhc_load_image(int instance)
+int imx8m_esdhc_load_image(int instance, void *bl33)
 {
 	struct esdhc_soc_data data;
 	struct fsl_esdhc_host host = { 0 };
@@ -262,13 +263,14 @@ int imx8m_esdhc_load_image(int instance)
 		return ret;
 
 	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
-				MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K, SZ_1K,
+				(ptrdiff_t)bl33, SZ_32K, SZ_1K,
 				false);
 }
 
 /**
  * imx8mp_esdhc_load_image - Load and optionally start an image from USDHC controller
  * @instance: The USDHC controller instance (0..2)
+ * @bl33: Where to load the bl33 barebox image
  *
  * This uses esdhc_start_image() to load an image from SD/MMC.  It is
  * assumed that the image is the currently running barebox image (This
@@ -278,7 +280,7 @@ int imx8m_esdhc_load_image(int instance)
  * Return: If image successfully loaded, returns 0.
  * A negative error code is returned when this function fails.
  */
-int imx8mp_esdhc_load_image(int instance)
+int imx8mp_esdhc_load_image(int instance, void *bl33)
 {
 	struct esdhc_soc_data data;
 	struct fsl_esdhc_host host = { 0 };
@@ -292,10 +294,10 @@ int imx8mp_esdhc_load_image(int instance)
 	offset = esdhc_bootpart_active(&host)? 0 : SZ_32K;
 
 	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
-				MX8MQ_ATF_BL33_BASE_ADDR, offset, 0, false);
+				(ptrdiff_t)bl33, offset, 0, false);
 }
 
-int imx8mn_esdhc_load_image(int instance)
+int imx8mn_esdhc_load_image(int instance, void *bl33)
 	__alias(imx8mp_esdhc_load_image);
 #endif
 
diff --git a/include/mach/imx/romapi.h b/include/mach/imx/romapi.h
index ae4e49cd7d25..e26b98097d37 100644
--- a/include/mach/imx/romapi.h
+++ b/include/mach/imx/romapi.h
@@ -36,8 +36,8 @@ enum boot_dev_type_e {
 #define ROM_API_OKAY		0xF0
 
 /* Below functions only load and don't start the image */
-int imx8mp_romapi_load_image(void);
-int imx8mn_romapi_load_image(void);
+int imx8mp_romapi_load_image(void *bl33);
+int imx8mn_romapi_load_image(void *bl33);
 int imx93_romapi_load_image(void);
 
 /* only call after DRAM has been configured */
diff --git a/include/mach/imx/xload.h b/include/mach/imx/xload.h
index 99f526d38be9..3a396ac4535c 100644
--- a/include/mach/imx/xload.h
+++ b/include/mach/imx/xload.h
@@ -16,12 +16,12 @@ int imx7_esdhc_start_image(int instance);
 int imx7_nand_start_image(void);
 
 /* Below functions only load and don't start the image */
-int imx8m_esdhc_load_image(int instance);
-int imx8mn_esdhc_load_image(int instance);
-int imx8mp_esdhc_load_image(int instance);
-int imx8mm_qspi_load_image(int instance);
-int imx8mn_qspi_load_image(int instance);
-int imx8mp_qspi_load_image(int instance);
+int imx8m_esdhc_load_image(int instance, void *bl33);
+int imx8mn_esdhc_load_image(int instance, void *bl33);
+int imx8mp_esdhc_load_image(int instance, void *bl33);
+int imx8mm_qspi_load_image(int instance, void *bl33);
+int imx8mn_qspi_load_image(int instance, void *bl33);
+int imx8mp_qspi_load_image(int instance, void *bl33);
 
 void imx8mm_load_bl33(void *bl33);
 void imx8mn_load_bl33(void *bl33);
@@ -32,6 +32,11 @@ void __noreturn imx8mm_load_and_start_image_via_tfa(void);
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



