Delivery-date: Tue, 18 Mar 2025 08:44:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuRcm-000x0A-0Z
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 08:44:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuRck-0007NG-LZ
	for lore@pengutronix.de; Tue, 18 Mar 2025 08:44:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Qsn2FXPMTCJRi5IiEFo3mgCZc4Z1EDLFdnLDAnqPIo=; b=lXSuL8r0lnf7BAKk8fNWvvPka5
	939UCPta0S1Enx6P4Wa9sBap2WPbHOGkCET4HQnU+pgRMJSwxeEuJGz2zuPhT4O6htDnXsWwufbk1
	sDyJQH/CHBILIEbXav0IrqP06kJT9U9W9YCUKRqmQOh0hGidB9xAGTyK5wR++MdzDWMSd9fMzzppI
	LH2KaUPBsE79jkfAX11yQ0RG6wkDeFvqu3IcZ884BB7e4CVIoQ8qkOMOaXsBLv1UABT9zJNkyUHRL
	OZSbbUv51Zp0i9KiWkIL1qdIyzv5FcXCxhv4Vvw/MIuml2pSmcY3UVCEPItqTwq66HWtAX5cwwgKZ
	cZwlgP5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuRc9-00000004yyp-2eTp;
	Tue, 18 Mar 2025 07:43:53 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuRc7-00000004yxa-2NHZ
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 07:43:52 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5498d2a8b89so5652475e87.1
        for <barebox@lists.infradead.org>; Tue, 18 Mar 2025 00:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742283829; x=1742888629; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Qsn2FXPMTCJRi5IiEFo3mgCZc4Z1EDLFdnLDAnqPIo=;
        b=hVXVtMjq9hBsSvDCJfCt2drQcwrPFzjHX2inOMYKlZhwDC/qWmGvbI2srKz4j+KvSA
         fcbij3jhtzo9WiVNogo7iZYXmX4jL12lahe7+sbHWLxXslFx7zYSbqIgINtqc77d7IMb
         /wMtkY2Btg3IPZPkkFAm22i+GK9SkKODT2rdTck/wpzkCPci9gtZUYNTBRfq/ln3aG3M
         NurVikXUHxvpg4P3VLMlAmUznYcreM6EJU/iCIr0K1VsF2sDvcN8ws7dalVntUVfgCBc
         jI75bl2GOja4PjAmzwYr1mV419l9SWmICgv1gzQM9r8R4igb+SZMzELmDQ/igO00quzx
         Defw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742283829; x=1742888629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Qsn2FXPMTCJRi5IiEFo3mgCZc4Z1EDLFdnLDAnqPIo=;
        b=gDW0Gw6ukfBQPSJ8fMBgV67lwNtfA8nPMzz+JgHYHZn8SUbPJNn9anZCe181yzBDCS
         SO3kYytoZNEtxc779Jw59HQYBJjVyf4cyHqseQsw4a3aHIXnUXo7FverJEyDLq9xTlm5
         2aCidste9oaiC6TK1h9GUy8B6uN6Ghcjchbgbxbc/hf3OYFZMhXnEi2E/ut/qWB85hBV
         nmN3A//4ThUeGVKlK1dh0RBisXb3sO3o8nm/aUBjQLr6qmooovvlt+pq0th6/rBrwxVY
         RaenqYocPTiMo8/GRjonO1+0VJnbQuV6C0wvQYAau+gcWAm7kyP8HLfQ9K4klTeIIHJW
         RuYQ==
X-Gm-Message-State: AOJu0YyAJrG6Wl14bCzFcqmSJfrT7nCrg6hMgeFvtU1vaowz6dCUqI0g
	n9JQ3IUhsmNaDoVqJbnrupdAUnSLO5htuRvEjYc7BDrhTQwiKK7mTj7i/g==
X-Gm-Gg: ASbGncu4NpCCM1kvAIm/64x2k5jkTGJ4D2bxRrao0AKQEbiFhEoKfbwpP6nci5liWyB
	URf/UxRj1DEsb+PhbPPBAFJ438aEFcv6cPMxQXsZDU6g1dqD5j3v7RX0GZmujDOe2ixqaZdKQDA
	z1KmildDzKQ9gIE8sL3strrvH2V4HIZEdOVHeCEUOD56XPrqZr7+Pbr8TDV0z9QV19ypIHUVJxn
	zS5DLJcBwHlc4XL4onI4ARMcCGMAEfGYHwE3jt/Hj1tx3haxCPvzccFFBHz4Mrre8grNOfQMKQr
	jfzUTiYunmPSDEy7hUguDYkInNQdXmnYzj42dvD/KYUHXpHkmqyfQfumWMC4fTjgY/0z1oEghv3
	Ac7g=
X-Google-Smtp-Source: AGHT+IFMcsFSYiUnVrxfCCB6PNhi9UK1PBU6GkvI/6hNF7BrBM2Stp9LZeaR2Ibc7PdOg3mtMVeHMg==
X-Received: by 2002:a05:6512:6d3:b0:549:69da:cb96 with SMTP id 2adb3069b0e04-549c3989d83mr9789659e87.52.1742283828898;
        Tue, 18 Mar 2025 00:43:48 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a9525sm1571286e87.238.2025.03.18.00.43.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 00:43:46 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 18 Mar 2025 10:43:26 +0300
Message-Id: <20250318074327.37730-4-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250318074327.37730-1-eagle.alexander923@gmail.com>
References: <20250318074327.37730-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_004351_608732_C6DC14BE 
X-CRM114-Status: GOOD (  16.42  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/5] ARM: at91: sama5: Unify xx_start_image() calls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This unifies the xload.c start_image() code for both sama5d2() and
sama5d3() CPU variants.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 .../arm/boards/sama5d27-giantboard/lowlevel.c |   2 +-
 arch/arm/boards/sama5d27-som1/lowlevel.c      |   2 +-
 arch/arm/mach-at91/xload.c                    | 102 ++++++++++--------
 include/mach/at91/xload.h                     |   2 +-
 4 files changed, 62 insertions(+), 46 deletions(-)

diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
index 49540bede0..c266af6357 100644
--- a/arch/arm/boards/sama5d27-giantboard/lowlevel.c
+++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
@@ -31,7 +31,7 @@ SAMA5D2_ENTRY_FUNCTION(start_sama5d27_giantboard_xload_mmc, r4)
 
 	sama5d2_udelay_init(MASTER_CLOCK);
 	sama5d2_d1g_ddrconf();
-	sama5d2_sdhci_start_image(r4);
+	sama5d2_start_image(r4);
 }
 
 extern char __dtb_z_at91_sama5d27_giantboard_start[];
diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index 67300587fe..e74502244b 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -55,7 +55,7 @@ SAMA5D2_ENTRY_FUNCTION(start_sama5d27_som1_ek_xload_mmc, r4)
 	ek_turn_led(RGB_LED_RED | RGB_LED_GREEN); /* Yellow */
 	sama5d2_udelay_init(MASTER_CLOCK);
 	sama5d2_d1g_ddrconf();
-	sama5d2_sdhci_start_image(r4);
+	sama5d2_start_image(r4);
 }
 
 extern char __dtb_z_at91_sama5d27_som1_ek_start[];
diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
index 9c03d2119c..e417223b31 100644
--- a/arch/arm/mach-at91/xload.c
+++ b/arch/arm/mach-at91/xload.c
@@ -11,39 +11,50 @@
 #include <asm/cache.h>
 #include <pbl/bio.h>
 
-static void at91_fat_start_image(struct pbl_bio *bio,
-				 void *buf, unsigned int len,
-				 u32 r4)
+struct xload_instance {
+	void __iomem *base;
+	unsigned id;
+	u8 periph;
+	s8 pins[15];
+};
+
+static void at91_fat_start_image(struct pbl_bio *bio, u32 r4)
 {
-	void __noreturn (*bb)(void);
+	void *buf = (void *)SAMA5_DDRCS;
 	int ret;
 
-	ret = pbl_fat_load(bio, "barebox.bin", buf, len);
+	ret = pbl_fat_load(bio, "barebox.bin", buf, SZ_2M);
 	if (ret < 0) {
 		pr_err("pbl_fat_load: error %d\n", ret);
 		return;
 	}
 
-	bb = buf;
-
 	sync_caches_for_execution();
 
-	sama5_boot_xload(bb, r4);
+	sama5_boot_xload(buf, r4);
 }
 
-static const struct sdhci_instance {
-	void __iomem *base;
-	unsigned id;
-	u8 periph;
-	s8 pins[15];
-} sdhci_instances[] = {
+static const struct xload_instance sama5d2_mci_instances[] = {
 	[0] = {
-		.base = SAMA5D2_BASE_SDHC0, .id = SAMA5D2_ID_SDMMC0, .periph = AT91_MUX_PERIPH_A,
-		.pins = { 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 13, 10, 11, 12, -1 }
+		.base = SAMA5D2_BASE_SDHC0,
+		.id = SAMA5D2_ID_SDMMC0,
+		.periph = AT91_MUX_PERIPH_A,
+		.pins = {
+			AT91_PIN_PA2, AT91_PIN_PA3, AT91_PIN_PA4, AT91_PIN_PA5,
+			AT91_PIN_PA6, AT91_PIN_PA7, AT91_PIN_PA8, AT91_PIN_PA9,
+			AT91_PIN_PA0, AT91_PIN_PA1, AT91_PIN_PA13, AT91_PIN_PA10,
+			AT91_PIN_PA11, AT91_PIN_PA12, -1
+		}
 	},
 	[1] = {
-		.base = SAMA5D2_BASE_SDHC1, .id = SAMA5D2_ID_SDMMC1, .periph = AT91_MUX_PERIPH_E,
-		.pins = { 18, 19, 20, 21, 22, 28, 30, -1 }
+		.base = SAMA5D2_BASE_SDHC1,
+		.id = SAMA5D2_ID_SDMMC1,
+		.periph = AT91_MUX_PERIPH_E,
+		.pins = {
+			AT91_PIN_PA18, AT91_PIN_PA19, AT91_PIN_PA20,
+			AT91_PIN_PA21, AT91_PIN_PA22, AT91_PIN_PA28,
+			AT91_PIN_PA30, -1
+		}
 	},
 };
 
@@ -51,25 +62,23 @@ static const struct sdhci_instance {
  * sama5d2_sdhci_start_image - Load and start an image from FAT-formatted SDHCI
  * @r4: value of r4 passed by BootROM
  */
-void __noreturn sama5d2_sdhci_start_image(u32 r4)
+static void __noreturn sama5d2_sdhci_start_image(u32 r4)
 {
-	void *buf = (void *)SAMA5_DDRCS;
-	const struct sdhci_instance *instance;
+	const struct xload_instance *instance;
 	struct pbl_bio bio;
 	const s8 *pin;
 	int ret;
 
 	ret = sama5_bootsource_instance(r4);
-	if (ret > 1)
+	if (ret > ARRAY_SIZE(sama5d2_mci_instances) - 1)
 		panic("Couldn't determine boot MCI instance\n");
 
-	instance = &sdhci_instances[ret];
+	instance = &sama5d2_mci_instances[ret];
 
 	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOA);
-	for (pin = instance->pins; *pin >= 0; pin++) {
+	for (pin = instance->pins; *pin >= 0; pin++)
 		at91_mux_pio4_set_periph(SAMA5D2_BASE_PIOA,
 					 BIT(*pin), instance->periph);
-	}
 
 	sama5d2_pmc_enable_periph_clock(instance->id);
 	sama5d2_pmc_enable_generic_clock(instance->id, AT91_PMC_GCKCSS_UPLL_CLK, 1);
@@ -80,18 +89,26 @@ void __noreturn sama5d2_sdhci_start_image(u32 r4)
 
 	/* TODO: eMMC boot partition handling: they are not FAT-formatted */
 
-	at91_fat_start_image(&bio, buf, SZ_16M, r4);
+	at91_fat_start_image(&bio, r4);
 
 out_panic:
 	panic("FAT chainloading failed\n");
 }
 
-static const struct atmci_instance {
-	void __iomem *base;
-	unsigned id;
-	u8 periph;
-	s8 pins[15];
-} sama5d3_atmci_instances[] = {
+void __noreturn sama5d2_start_image(u32 r4)
+{
+	switch (sama5_bootsource(r4)) {
+	case BOOTSOURCE_MMC:
+		sama5d2_sdhci_start_image(r4);
+		break;
+	default:
+		break;
+	}
+
+	panic("Unsupported boot configuration!\n");
+}
+
+static const struct xload_instance sama5d3_mci_instances[] = {
 	[0] = {
 		.base = IOMEM(SAMA5D3_BASE_HSMCI0),
 		.id = SAMA5D3_ID_HSMCI0,
@@ -99,30 +116,29 @@ static const struct atmci_instance {
 		.pins = {
 			AT91_PIN_PD0, AT91_PIN_PD1, AT91_PIN_PD2, AT91_PIN_PD3,
 			AT91_PIN_PD4, AT91_PIN_PD5, AT91_PIN_PD6, AT91_PIN_PD7,
-			AT91_PIN_PD8, AT91_PIN_PD9, -1 }
+			AT91_PIN_PD8, AT91_PIN_PD9, -1
+		}
 	},
 };
 
-void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
+void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
 					  unsigned int slot)
 {
-	void *buf = (void *)SAMA5_DDRCS;
-	const struct atmci_instance *instance;
+	const struct xload_instance *instance;
 	struct pbl_bio bio;
 	const s8 *pin;
 	int ret;
 
-	ret = sama5_bootsource_instance(boot_src);
-	if (ret > ARRAY_SIZE(sama5d3_atmci_instances) - 1)
+	ret = sama5_bootsource_instance(r4);
+	if (ret > ARRAY_SIZE(sama5d3_mci_instances) - 1)
 		panic("Couldn't determine boot MCI instance\n");
 
-	instance = &sama5d3_atmci_instances[boot_src];
+	instance = &sama5d3_mci_instances[r4];
 
 	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_PIOD);
-	for (pin = instance->pins; *pin >= 0; pin++) {
+	for (pin = instance->pins; *pin >= 0; pin++)
 		at91_mux_pio3_pin(IOMEM(SAMA5D3_BASE_PIOD),
-					 pin_to_mask(*pin), instance->periph, 0);
-	}
+				  pin_to_mask(*pin), instance->periph, 0);
 
 	sama5d3_pmc_enable_periph_clock(instance->id);
 
@@ -130,7 +146,7 @@ void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
 	if (ret)
 		goto out_panic;
 
-	at91_fat_start_image(&bio, buf, SZ_16M, boot_src);
+	at91_fat_start_image(&bio, r4);
 
 out_panic:
 	panic("FAT chainloading failed\n");
diff --git a/include/mach/at91/xload.h b/include/mach/at91/xload.h
index 2886490246..d5fc7596fd 100644
--- a/include/mach/at91/xload.h
+++ b/include/mach/at91/xload.h
@@ -6,7 +6,7 @@
 #include <linux/compiler.h>
 #include <pbl/bio.h>
 
-void __noreturn sama5d2_sdhci_start_image(u32 r4);
+void __noreturn sama5d2_start_image(u32 r4);
 void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
 					  unsigned int slot);
 
-- 
2.39.1



