Delivery-date: Mon, 15 Jan 2024 18:02:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPQME-000QQK-09
	for lore@lore.pengutronix.de;
	Mon, 15 Jan 2024 18:02:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPQME-00037Z-86
	for lore@pengutronix.de; Mon, 15 Jan 2024 18:02:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nHEV5YuI2mS7iJZfpnX1wqflfpiWrtJ5KB0VsxRBPhI=; b=DXJwtFR7mOjGhARJrndB1gY2EE
	9Ysp5trTj1Ev/A7ll0Lw6yIefYhbZCyG+OrQ6OQFxyS4LyJsAK7p452F4D3gXyIp99AKIDAvKiKXX
	Zij/EQDk5C+fzRqA4EYX7kgRe6an04voetqIrHmdOUTpyi+UZQzurZ3ZIdA1T/R5vK2ALAViPWTyQ
	99W3G6zClLPD4KVuTquIfjdSoHX7M0P/dUU5lQQAATMDzxPTr7cXMrZmKoYr1tBujke2MztDToPzq
	tJSwBad3zTYW+xTyXgJCi0UED845/OwyhvwL+1S0w/NHP7nw5XaJ1eYrXEVJYsqkoLrZdKxdkg9GN
	cLlEyVrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPQKv-009kmf-1g;
	Mon, 15 Jan 2024 17:01:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPQKq-009kjZ-2S
	for barebox@lists.infradead.org;
	Mon, 15 Jan 2024 17:01:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rPQKl-0002a8-Rh; Mon, 15 Jan 2024 18:01:11 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rPQKl-0003bR-F7; Mon, 15 Jan 2024 18:01:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rPQKl-001Lgg-1E;
	Mon, 15 Jan 2024 18:01:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.felsch@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Jan 2024 18:01:08 +0100
Message-Id: <20240115170110.321676-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_090116_974329_7D2B193F 
X-CRM114-Status: GOOD (  18.31  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] ARM: i.MX8M: remove unutilized start parameter to i.MX8M load functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have two kinds of xload functions for i.MX: _start_image loads and
starts the image and _load_image takes a parameter on whether to start
the image after loading. All users of _load_image pass false as argument
for the start parameter and this is unlikely to change, because we need
to do other things before starting the image:

  - BL31: Install ARM Trusted Firmware
  - BL32: Optionally, extract OP-TEE from external firmware
  - BL33: Optionally, verify barebox proper when secure booting

_start_image doesn't concern itself with this:

  - BL31: We don't use TF-A on 32-bit i.MX systems and if barebox is secure
    monitor, it's installed in barebox proper
  - BL32: OP-TEE is shipped inside PBL or loaded by bootm on 32-bit i.MX
  - BL33: barebox is loaded directly to SDRAM after it was setup by DCD
          and is thus verified by bootrom as a whole. Chainloading
	  manually is not mixed with secure boot

For that reason, let's drop the start parameter to try to reduce
the complexity of the chainloading code a bit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/atf.c        | 14 +++++++-------
 arch/arm/mach-imx/xload-qspi.c | 24 +++++++++++-------------
 drivers/mci/imx-esdhc-pbl.c    | 24 +++++++++++-------------
 include/mach/imx/romapi.h      |  1 +
 include/mach/imx/xload.h       | 14 ++++++++------
 5 files changed, 38 insertions(+), 39 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index e1a89ef543cd..f9baad862dc7 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -65,7 +65,7 @@ void imx8mm_load_bl33(void *bl33)
 	imx8mm_get_boot_source(&src, &instance);
 	switch (src) {
 	case BOOTSOURCE_MMC:
-		imx8m_esdhc_load_image(instance, false);
+		imx8m_esdhc_load_image(instance);
 		break;
 	case BOOTSOURCE_SERIAL:
 		if (!IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC_PBL)) {
@@ -98,7 +98,7 @@ void imx8mm_load_bl33(void *bl33)
 
 		break;
 	case BOOTSOURCE_SPI:
-		imx8mm_qspi_load_image(instance, false);
+		imx8mm_qspi_load_image(instance);
 		break;
 	default:
 		printf("Unsupported bootsource BOOTSOURCE_%d\n", src);
@@ -154,13 +154,13 @@ void imx8mp_load_bl33(void *bl33)
 	imx8mp_get_boot_source(&src, &instance);
 	switch (src) {
 	case BOOTSOURCE_MMC:
-		imx8mp_esdhc_load_image(instance, false);
+		imx8mp_esdhc_load_image(instance);
 		break;
 	case BOOTSOURCE_SERIAL:
 		imx8mp_romapi_load_image();
 		break;
 	case BOOTSOURCE_SPI:
-		imx8mp_qspi_load_image(instance, false);
+		imx8mp_qspi_load_image(instance);
 		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
@@ -218,13 +218,13 @@ void imx8mn_load_bl33(void *bl33)
 	imx8mn_get_boot_source(&src, &instance);
 	switch (src) {
 	case BOOTSOURCE_MMC:
-		imx8mn_esdhc_load_image(instance, false);
+		imx8mn_esdhc_load_image(instance);
 		break;
 	case BOOTSOURCE_SERIAL:
 		imx8mn_romapi_load_image();
 		break;
 	case BOOTSOURCE_SPI:
-		imx8mn_qspi_load_image(instance, false);
+		imx8mn_qspi_load_image(instance);
 		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
@@ -281,7 +281,7 @@ void imx8mq_load_bl33(void *bl33)
 	imx8mn_get_boot_source(&src, &instance);
 	switch (src) {
 	case BOOTSOURCE_MMC:
-		imx8m_esdhc_load_image(instance, false);
+		imx8m_esdhc_load_image(instance);
 		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
diff --git a/arch/arm/mach-imx/xload-qspi.c b/arch/arm/mach-imx/xload-qspi.c
index 6bf5bba5e69d..5089f20d627c 100644
--- a/arch/arm/mach-imx/xload-qspi.c
+++ b/arch/arm/mach-imx/xload-qspi.c
@@ -23,35 +23,33 @@ int imx8m_qspi_read(void *dest, size_t len, void *priv)
  * imx8mm_qspi_start_image - Load and optionally start an image from the
  *                           FlexSPI controller.
  * @instance: The FlexSPI controller instance
- * @start: Whether to directly start the loaded image
  *
  * This uses imx8m_qspi_load_image() to load an image from QSPI. It is assumed
- * that the image is the currently running barebox image (This information
- * is used to calculate the length of the image).
- * The image is started afterwards.
+ * that the image is the currently running barebox image.
+ * The image is not started afterwards.
  *
- * Return: If successful, this function does not return (if directly started)
- * or 0. A negative error code is returned when this function fails.
+ * Return: If image successfully loaded, returns 0.
+ * A negative error code is returned when this function fails.
  */
 static
-int imx8m_qspi_load_image(int instance, bool start, off_t offset, off_t ivt_offset)
+int imx8m_qspi_load_image(int instance, off_t offset, off_t ivt_offset)
 {
 	void __iomem *qspi_ahb = IOMEM(IMX8M_QSPI_MMAP);
 
 	return imx_load_image(MX8M_DDR_CSD1_BASE_ADDR, MX8M_ATF_BL33_BASE_ADDR,
-			      offset, ivt_offset, start, 0,
+			      offset, ivt_offset, false, 0,
 			      imx8m_qspi_read, qspi_ahb);
 }
 
-int imx8mm_qspi_load_image(int instance, bool start)
+int imx8mm_qspi_load_image(int instance)
 {
-	return imx8m_qspi_load_image(instance, start, 0, SZ_4K);
+	return imx8m_qspi_load_image(instance, 0, SZ_4K);
 }
 
-int imx8mn_qspi_load_image(int instance, bool start)
+int imx8mn_qspi_load_image(int instance)
 {
-	return imx8m_qspi_load_image(instance, start, SZ_4K, 0);
+	return imx8m_qspi_load_image(instance, SZ_4K, 0);
 }
 
-int imx8mp_qspi_load_image(int instance, bool start)
+int imx8mp_qspi_load_image(int instance)
 	__alias(imx8mn_qspi_load_image);
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 2d071eaca88a..2cb703a0c552 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -242,17 +242,16 @@ int imx7_esdhc_start_image(int instance)
 /**
  * imx8m_esdhc_load_image - Load and optionally start an image from USDHC controller
  * @instance: The USDHC controller instance (0..2)
- * @start: Whether to directly start the loaded image
  *
  * This uses esdhc_start_image() to load an image from SD/MMC.  It is
  * assumed that the image is the currently running barebox image (This
  * information is used to calculate the length of the image). The
- * image is started afterwards.
+ * image is not started afterwards.
  *
- * Return: If successful, this function does not return (if directly started)
- * or 0. A negative error code is returned when this function fails.
+ * Return: If image successfully loaded, returns 0.
+ * A negative error code is returned when this function fails.
  */
-int imx8m_esdhc_load_image(int instance, bool start)
+int imx8m_esdhc_load_image(int instance)
 {
 	struct esdhc_soc_data data;
 	struct fsl_esdhc_host host = { 0 };
@@ -264,23 +263,22 @@ int imx8m_esdhc_load_image(int instance, bool start)
 
 	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
 				MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K, SZ_1K,
-				start);
+				false);
 }
 
 /**
  * imx8mp_esdhc_load_image - Load and optionally start an image from USDHC controller
  * @instance: The USDHC controller instance (0..2)
- * @start: Whether to directly start the loaded image
  *
  * This uses esdhc_start_image() to load an image from SD/MMC.  It is
  * assumed that the image is the currently running barebox image (This
  * information is used to calculate the length of the image). The
- * image is started afterwards.
+ * image is not started afterwards.
  *
- * Return: If successful, this function does not return (if directly started)
- * or 0. A negative error code is returned when this function fails.
+ * Return: If image successfully loaded, returns 0.
+ * A negative error code is returned when this function fails.
  */
-int imx8mp_esdhc_load_image(int instance, bool start)
+int imx8mp_esdhc_load_image(int instance)
 {
 	struct esdhc_soc_data data;
 	struct fsl_esdhc_host host = { 0 };
@@ -294,10 +292,10 @@ int imx8mp_esdhc_load_image(int instance, bool start)
 	offset = esdhc_bootpart_active(&host)? 0 : SZ_32K;
 
 	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
-				MX8MQ_ATF_BL33_BASE_ADDR, offset, 0, start);
+				MX8MQ_ATF_BL33_BASE_ADDR, offset, 0, false);
 }
 
-int imx8mn_esdhc_load_image(int instance, bool start)
+int imx8mn_esdhc_load_image(int instance)
 	__alias(imx8mp_esdhc_load_image);
 #endif
 
diff --git a/include/mach/imx/romapi.h b/include/mach/imx/romapi.h
index 959d165a3323..05932fac88ce 100644
--- a/include/mach/imx/romapi.h
+++ b/include/mach/imx/romapi.h
@@ -35,6 +35,7 @@ enum boot_dev_type_e {
 
 #define ROM_API_OKAY		0xF0
 
+/* Below functions only load and don't start the image */
 int imx8mp_romapi_load_image(void);
 int imx8mn_romapi_load_image(void);
 int imx93_romapi_load_image(void);
diff --git a/include/mach/imx/xload.h b/include/mach/imx/xload.h
index 2c2d2fa3c52d..66219f9fef30 100644
--- a/include/mach/imx/xload.h
+++ b/include/mach/imx/xload.h
@@ -14,12 +14,14 @@ int imx6_esdhc_start_image(int instance);
 int imx6_nand_start_image(void);
 int imx7_esdhc_start_image(int instance);
 int imx7_nand_start_image(void);
-int imx8m_esdhc_load_image(int instance, bool start);
-int imx8mn_esdhc_load_image(int instance, bool start);
-int imx8mp_esdhc_load_image(int instance, bool start);
-int imx8mm_qspi_load_image(int instance, bool start);
-int imx8mn_qspi_load_image(int instance, bool start);
-int imx8mp_qspi_load_image(int instance, bool start);
+
+/* Below functions only load and don't start the image */
+int imx8m_esdhc_load_image(int instance);
+int imx8mn_esdhc_load_image(int instance);
+int imx8mp_esdhc_load_image(int instance);
+int imx8mm_qspi_load_image(int instance);
+int imx8mn_qspi_load_image(int instance);
+int imx8mp_qspi_load_image(int instance);
 
 void imx8mm_load_bl33(void *bl33);
 void imx8mn_load_bl33(void *bl33);
-- 
2.39.2



