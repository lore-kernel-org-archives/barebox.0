Delivery-date: Fri, 10 Nov 2023 13:59:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R74-005rXi-2s
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R71-0003Uc-Qe
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=67EjyURJmeAie1fv76IhPwLkGHC7Gpjwh9t1eKiGhb8=; b=DfbjYfHW7vrd8q6mvPCAJpUbVL
	OHuFOxahM7KtIuEMGb4IGK7M1dPNIAzzKj24rS/x3y2Qv03s5mMhqd4UEvsxnr86Z4zY0kbDT//+Q
	/JrrUItAUNCAGPlCBaNP3kbAw35FOZv6eE6HqGKzDL/KUL7de17bs8RXm6k8JGvH7EZGElsyl7G/V
	hs00EfSlzW9dzTiVJdUP4xSi9Qvc8+qeKeYAnynXkEkf72WfmURP6finhIA8ZSGgsBdD6l9ueJrkn
	jWWn5K8hO3KJqbBOtcZa3xcrQOVSpqqgnzp9JvQB5leCGF7clWgUjVTP6EPwEx/hw9QtJL56ZoS+9
	i8gdXQGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5s-008kOI-01;
	Fri, 10 Nov 2023 12:58:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5d-008k48-1v
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 12:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=67EjyURJmeAie1fv76IhPwLkGHC7Gpjwh9t1eKiGhb8=; b=F+aUN9ONSwMPHTwJ6/2SbJI2sy
	oSLmykM5EJtFqpuekQoGo5ZU6mrRovKNbKGQn6vzoXYFHRyXCwKwWhr1Au5EJRuFh9/LtFNyWLPn8
	UA4NvSGAaGup4k7QrRi3xW8XthYnA6nHeki2GgDBm3WJiaiEXe77j/701JjQLy/uSajp63q6/n/XB
	CBt8GkYKK8IGvItGq3HQJCS5ts84KoKBLiINYF8cdsUhiMLk+8iKZfUqfUOiI0+vi0mc9MMBusCIl
	BTY81KV5gl6/YCYBf096zto42/Hjz/9qCU2q11EphVhDVu8jkUsLHcQVXm0XfZhMoLJg8o1u8U4ua
	tlzEcklw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5Y-00Fbws-1P
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5I-00027K-1b; Fri, 10 Nov 2023 13:58:04 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-0081Xf-4b; Fri, 10 Nov 2023 13:58:03 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-008s1j-35;
	Fri, 10 Nov 2023 13:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:53 +0100
Message-Id: <20231110125800.1901232-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_125820_600841_90D57F66 
X-CRM114-Status: GOOD (  13.64  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 18/25] ARM: i.MX: romapi: rename functions to *romapi*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The file the romapi is implemented in is named romapi and that's also
the name the i.MX ROM API is normally referred to, so rename the
functions accordingly.
While at it, rename some internal functions from imx8m_* to imx_* as
they can and will also be used by upcoming i.MX9 support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/atf.c    |  4 ++--
 arch/arm/mach-imx/romapi.c | 14 +++++++-------
 include/mach/imx/romapi.h  |  4 ++--
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index d6d1aa3d68..1a0ac72fff 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -157,7 +157,7 @@ void imx8mp_load_bl33(void *bl33)
 		imx8mp_esdhc_load_image(instance, false);
 		break;
 	case BOOTSOURCE_SERIAL:
-		imx8mp_bootrom_load_image();
+		imx8mp_romapi_load_image();
 		break;
 	case BOOTSOURCE_SPI:
 		imx8mp_qspi_load_image(instance, false);
@@ -221,7 +221,7 @@ void imx8mn_load_bl33(void *bl33)
 		imx8mn_esdhc_load_image(instance, false);
 		break;
 	case BOOTSOURCE_SERIAL:
-		imx8mn_bootrom_load_image();
+		imx8mn_romapi_load_image();
 		break;
 	case BOOTSOURCE_SPI:
 		imx8mn_qspi_load_image(instance, false);
diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index aef0ff0534..29c2d4005c 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -14,7 +14,7 @@
 #include <init.h>
 #include <pbl.h>
 
-static int imx8m_bootrom_load(struct rom_api *rom_api, void *adr, size_t size)
+static int imx_romapi_load(struct rom_api *rom_api, void *adr, size_t size)
 {
 	while (size) {
 		size_t chunksize = min(size, (size_t)1024);
@@ -35,25 +35,25 @@ static int imx8m_bootrom_load(struct rom_api *rom_api, void *adr, size_t size)
 }
 
 /* read piggydata via a bootrom callback and place it behind our copy in SDRAM */
-static int imx8m_bootrom_load_image(struct rom_api *rom_api)
+static int imx_romapi_load_image(struct rom_api *rom_api)
 {
-	return imx8m_bootrom_load(rom_api,
+	return imx_romapi_load(rom_api,
 				  (void *)MX8M_ATF_BL33_BASE_ADDR + barebox_pbl_size,
 				  __image_end - __piggydata_start);
 }
 
-int imx8mp_bootrom_load_image(void)
+int imx8mp_romapi_load_image(void)
 {
 	struct rom_api *rom_api = (void *)0x980;
 
 	OPTIMIZER_HIDE_VAR(rom_api);
 
-	return imx8m_bootrom_load_image(rom_api);
+	return imx_romapi_load_image(rom_api);
 }
 
-int imx8mn_bootrom_load_image(void)
+int imx8mn_romapi_load_image(void)
 {
-	return imx8mp_bootrom_load_image();
+	return imx8mp_romapi_load_image();
 }
 
 const u32 *imx8m_get_bootrom_log(void)
diff --git a/include/mach/imx/romapi.h b/include/mach/imx/romapi.h
index 2243fdcf6d..8ea7fbfb04 100644
--- a/include/mach/imx/romapi.h
+++ b/include/mach/imx/romapi.h
@@ -35,8 +35,8 @@ enum boot_dev_type_e {
 
 #define ROM_API_OKAY		0xF0
 
-int imx8mp_bootrom_load_image(void);
-int imx8mn_bootrom_load_image(void);
+int imx8mp_romapi_load_image(void);
+int imx8mn_romapi_load_image(void);
 
 /* only call after DRAM has been configured */
 void imx8m_save_bootrom_log(void *dst);
-- 
2.39.2



