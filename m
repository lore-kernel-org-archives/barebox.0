Delivery-date: Wed, 06 Jul 2022 10:14:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o90Al-007TsH-Fe
	for lore@lore.pengutronix.de; Wed, 06 Jul 2022 10:14:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o90An-0002uW-06
	for lore@pengutronix.de; Wed, 06 Jul 2022 10:14:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=orELnzUQBofpS3T9whLF8h2hTWSB//Jtupy02JGOtdU=; b=BqATe8LuJqdZIiOv5WrAp/69BQ
	WtfLLKH2xzpYaCM41wmf/ui4B4MLSlEf9WkrBEtsN+/u7CqP8uLYFMTJaQzxbZp3ng1J8u+8xn79L
	/+PBMtE1sf96cpGe4nQP7r34PYPSoNZHJDmttc8N8F8T/4sbyMqJZtYlHo96ukrKpG+lBwTGO9Kym
	UUqrb5fkj6V2wJSndY0PRA6L2WrNwUFjk8EiRDFrv+QtBxEzH0dUORvcua9kfXHTb3Wih0ZC4aoGb
	t72Ujaeg08+uAmCd1FW9VsKxgtcES5x9OwIzOZW9ZzX6lgiPySgNg1qcfjo91LP9x9g1ZqPCgNuJT
	M6HU9ODg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o909U-007IqJ-1T; Wed, 06 Jul 2022 08:12:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o909O-007Ioc-BX
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 08:12:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1o909K-0002bt-BA; Wed, 06 Jul 2022 10:12:42 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o909F-004iwH-Oj; Wed, 06 Jul 2022 10:12:41 +0200
Received: from ukl by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o909I-00BvkQ-Ma; Wed, 06 Jul 2022 10:12:40 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Cc: David Jander <david@protonic.nl>
Date: Wed,  6 Jul 2022 10:12:36 +0200
Message-Id: <20220706081236.2833520-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_011246_438440_14C41104 
X-CRM114-Status: GOOD (  18.98  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX8MM: Consolidate common code to load image and jump to it via TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c     | 41 +----------------
 .../boards/protonic-imx8m/lowlevel-prt8mm.c   | 35 +--------------
 arch/arm/mach-imx/atf.c                       | 44 +++++++++++++++++++
 include/soc/imx8m.h                           |  8 ++++
 4 files changed, 56 insertions(+), 72 deletions(-)
 create mode 100644 include/soc/imx8m.h

diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index c2f6206cfd8e..d67bc157e261 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -3,24 +3,20 @@
 #include <io.h>
 #include <common.h>
 #include <debug_ll.h>
-#include <firmware.h>
 #include <asm/mmu.h>
 #include <asm/cache.h>
-#include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <i2c/i2c-early.h>
 #include <linux/sizes.h>
-#include <mach/atf.h>
-#include <mach/xload.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
 #include <mach/imx8mm-regs.h>
 #include <mach/iomux-mx8mm.h>
 #include <mach/imx8m-ccm-regs.h>
 #include <mfd/bd71837.h>
+#include <soc/imx8m.h>
 #include <soc/imx8m/ddr.h>
-#include <soc/fsl/fsl_udc.h>
 #include <image-metadata.h>
 
 extern char __dtb_imx8mm_evk_start[];
@@ -96,11 +92,6 @@ extern struct dram_timing_info imx8mm_evk_dram_timing;
 
 static void start_atf(void)
 {
-	size_t bl31_size;
-	const u8 *bl31;
-	enum bootsource src;
-	int instance;
-
 	/*
 	 * If we are in EL3 we are running for the first time and need to
 	 * initialize the DRAM and run TF-A (BL31). The TF-A will then jump
@@ -112,35 +103,7 @@ static void start_atf(void)
 	power_init_board();
 	imx8mm_ddr_init(&imx8mm_evk_dram_timing);
 
-	imx8mm_get_boot_source(&src, &instance);
-	switch (src) {
-	case BOOTSOURCE_MMC:
-		imx8m_esdhc_load_image(instance, false);
-		break;
-	case BOOTSOURCE_SERIAL:
-		imx8mm_barebox_load_usb((void *)MX8M_ATF_BL33_BASE_ADDR);
-	break;
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
-	get_builtin_firmware(imx8mm_bl31_bin, &bl31, &bl31_size);
-
-	imx8mm_atf_load_bl31(bl31, bl31_size);
-
-	/* not reached */
+	imx8mm_load_and_start_image_via_tfa();
 }
 
 /*
diff --git a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
index 24d98fe6c993..95d062d0b575 100644
--- a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
+++ b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
@@ -14,6 +14,7 @@
 #include <mach/xload.h>
 #include <soc/fsl/fsl_udc.h>
 #include <soc/imx8m/ddr.h>
+#include <soc/imx8m.h>
 
 extern char __dtb_imx8mm_prt8mm_start[];
 
@@ -37,11 +38,6 @@ extern struct dram_timing_info prt8mm_dram_timing;
 
 static void start_atf(void)
 {
-	size_t bl31_size;
-	const u8 *bl31;
-	enum bootsource src;
-	int instance;
-
 	/*
 	 * If we are in EL3 we are running for the first time and need to
 	 * initialize the DRAM and run TF-A (BL31). The TF-A will then jump
@@ -54,34 +50,7 @@ static void start_atf(void)
 
 	imx8mm_ddr_init(&prt8mm_dram_timing);
 
-	imx8mm_get_boot_source(&src, &instance);
-	switch (src) {
-	case BOOTSOURCE_MMC:
-		imx8m_esdhc_load_image(instance, false);
-		break;
-	case BOOTSOURCE_SERIAL:
-		imx8mm_barebox_load_usb((void *)MX8M_ATF_BL33_BASE_ADDR);
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
-	memcpy((void *)MX8MM_ATF_BL33_BASE_ADDR,
-	       __image_start, barebox_pbl_size);
-
-	get_builtin_firmware(imx8mm_bl31_bin, &bl31, &bl31_size);
-	imx8mm_atf_load_bl31(bl31, bl31_size);
-
-	/* not reached */
+	imx8mm_load_and_start_image_via_tfa();
 }
 
 /*
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 9ab9ddd20385..709620e5df26 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -1,7 +1,13 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
+#include <asm/sections.h>
 #include <common.h>
+#include <firmware.h>
 #include <mach/atf.h>
+#include <mach/generic.h>
+#include <mach/xload.h>
+#include <soc/imx8m.h>
+#include <soc/fsl/fsl_udc.h>
 
 /**
  * imx8m_atf_load_bl31 - Load ATF BL31 blob and transfer control to it
@@ -63,3 +69,41 @@ void imx8mq_atf_load_bl31(const void *fw, size_t fw_size)
 {
 	imx8m_atf_load_bl31(fw, fw_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
 }
+
+void imx8mm_load_and_start_image_via_tfa(void)
+{
+	size_t bl31_size;
+	const u8 *bl31;
+	enum bootsource src;
+	int instance;
+
+	imx8mm_get_boot_source(&src, &instance);
+	switch (src) {
+	case BOOTSOURCE_MMC:
+		imx8m_esdhc_load_image(instance, false);
+		break;
+	case BOOTSOURCE_SERIAL:
+		imx8mm_barebox_load_usb((void *)MX8M_ATF_BL33_BASE_ADDR);
+		break;
+	default:
+		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
+		hang();
+	}
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
+	get_builtin_firmware(imx8mm_bl31_bin, &bl31, &bl31_size);
+
+	imx8mm_atf_load_bl31(bl31, bl31_size);
+
+	/* not reached */
+}
diff --git a/include/soc/imx8m.h b/include/soc/imx8m.h
new file mode 100644
index 000000000000..03b9b59b0b44
--- /dev/null
+++ b/include/soc/imx8m.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_IMX8M_H__
+#define __MACH_IMX8M_H__
+
+void imx8mm_load_and_start_image_via_tfa(void);
+
+#endif
-- 
2.30.2



