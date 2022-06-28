Delivery-date: Tue, 28 Jun 2022 22:41:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I1H-000bO0-Vn
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 22:41:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I1I-0004PI-00
	for lore@pengutronix.de; Tue, 28 Jun 2022 22:41:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KHncds9bxTystnnCOzZJOzyjD/ugLpQz/XcF7amy16E=; b=lSauvzNLJz+Erl7P8cbNf8CB3u
	J/etJL95/vXTmVVCrv59ZOpOfAa210M6ts4gWIKoFFa44k6Zyld5f+UbMRKM0sFFENDqbCHQ+onHP
	SJhkzB7sWlYkkKOu1EimotNgLaoTnlEKyClOZb2L5zU+jyWs4SAe4g2PgL/qyrKFQuP60DAo/6hGx
	efVcRGeaJRpi6XgRhlEBufJZ2LBwLCkPeWYU0TXHeA56Odrdht6CMFU0Dh84P0CiPI5OIeu03k7YC
	QJ1rXuH7j4aQ3+7AC7XqlH2sUmGpOz/kelG8U841U41Vu9zOij7/xRCrKndekzriwuwtnnKebtryH
	1grAIv4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Hzu-00854M-Ud; Tue, 28 Jun 2022 20:39:47 +0000
Received: from mailrelay3-1.pub.mailoutpod1-cph3.one.com ([46.30.210.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Hzb-0084pS-Eg
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 20:39:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=KHncds9bxTystnnCOzZJOzyjD/ugLpQz/XcF7amy16E=;
	b=hB+qBZufik6sreVSzyvGaXUSdIhbEmP5EYH8jy/r6wirm3DstyxPhwwxlJDYrqd4E12flWMb5SFw0
	 r6ZTimD3OpQ3i9X8I8c/i+hKwsxEeqMOgn2N874i7JDb9eYNjmT4q2mVOJoKHQSnR8rNtg5kET4gJ2
	 2mzTktHiuqR7Ai93wD+iUdIpzWF/PdF3+HGU4ZQkudWWJ27hF6bFG257dWYoP0WiMl3koSazDVQgBe
	 g6y6m0f+QA+q+OBR+gbza/63lNKNMT1C7RI+Hzyk/P6/lfGjC5aK/oK779wDoZTm4jPEnne4PkkuGw
	 WU6W7WpSTMV7v5e1vtcZm7ddmRbkKiw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=KHncds9bxTystnnCOzZJOzyjD/ugLpQz/XcF7amy16E=;
	b=TU5JYo9g06onm0mcGltRJVmEQYJJk/+515l/2KFXb3Csq4uQ+k3dXfao6cvHWlfMpXkFAaxm351Q+
	 G1aGYj1Cg==
X-HalOne-Cookie: 17469c0213110a72f22f0a1af61825506a6af561
X-HalOne-ID: 65d35c61-f722-11ec-be7c-d0431ea8bb03
Received: from mailproxy3.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 65d35c61-f722-11ec-be7c-d0431ea8bb03;
	Tue, 28 Jun 2022 20:39:25 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 28 Jun 2022 22:38:48 +0200
Message-Id: <20220628203849.2785611-11-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220628203849.2785611-1-sam@ravnborg.org>
References: <20220628203849.2785611-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_133927_747861_C28FD312 
X-CRM114-Status: GOOD (  21.41  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 10/11] ARM: at91: Add xload support to skov-arm9cpu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This updates skov-arm9cpu with xload support, and we can now
use barebox as a replacment for at91bootstrap.

Only boot via SD card is supported.

Includes several suggestions from: Ahmad Fatoum <a.fatoum@pengutronix.de>
- Use ENTRY_FUNCTION_WITHSTACK
- Reshuffeled order in early init
- SD card in not highcapacity
- Drop irrelevant max image size in images/Makefile.at91

NOTE: Actual status
[x] dbgu support in pbl works (can print)
[x] Other init stuff ifdeffed out - from at91bootstrap
[ ] Check what the original code used for div/mul - there is some confusion
[x] load barebox.bin and boots it. Right now mount fails
[ ] barebox.bin can start a linux kernel
[ ] support default SD card boots and nfsboot
[x] update Kconfig to work with xload
[x] xload image support

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/skov-arm9cpu/board.c    |  17 +--
 arch/arm/boards/skov-arm9cpu/lowlevel.c | 158 +++++++++---------------
 arch/arm/mach-at91/Kconfig              |   4 +-
 images/Makefile.at91                    |   6 +-
 4 files changed, 67 insertions(+), 118 deletions(-)

diff --git a/arch/arm/boards/skov-arm9cpu/board.c b/arch/arm/boards/skov-arm9cpu/board.c
index 8d5eadbb9..06bd9b70e 100644
--- a/arch/arm/boards/skov-arm9cpu/board.c
+++ b/arch/arm/boards/skov-arm9cpu/board.c
@@ -39,16 +39,12 @@ BAREBOX_MAGICVAR(board.mem, "The detected memory size in MiB");
 
 static int mem;
 
-/*
- * Initialize of SMC must come after we
- * probe the at91sam9_smc_driver.
- * But is required before we start the other drives.
- * Use device_initcall() to maintain this order.
- */
 static int skov_arm9_probe(struct device_d *dev)
 {
 	unsigned long csa;
 
+	barebox_set_hostname("skov_arm9cpu");
+
 	add_generic_device("at91sam9-smc", 0, NULL, AT91SAM9263_BASE_SMC0, 0x200,
 			   IORESOURCE_MEM, NULL);
 	add_generic_device("at91sam9-smc", 1, NULL, AT91SAM9263_BASE_SMC1, 0x200,
@@ -69,11 +65,8 @@ static int skov_arm9_probe(struct device_d *dev)
 }
 
 static __maybe_unused struct of_device_id skov_arm9_ids[] = {
-	{
-		.compatible = "skov,arm9-cpu",
-	}, {
-		/* sentinel */
-	}
+	{ .compatible = "skov,arm9-cpu", },
+	{ /* sentinel */ }
 };
 
 static struct driver_d skov_arm9_driver = {
@@ -81,4 +74,4 @@ static struct driver_d skov_arm9_driver = {
 	.probe = skov_arm9_probe,
 	.of_compatible = DRV_OF_COMPAT(skov_arm9_ids),
 };
-device_platform_driver(skov_arm9_driver);
+coredevice_platform_driver(skov_arm9_driver);
diff --git a/arch/arm/boards/skov-arm9cpu/lowlevel.c b/arch/arm/boards/skov-arm9cpu/lowlevel.c
index d335953a7..78f770043 100644
--- a/arch/arm/boards/skov-arm9cpu/lowlevel.c
+++ b/arch/arm/boards/skov-arm9cpu/lowlevel.c
@@ -1,127 +1,81 @@
 // SPDX-License-Identifier: GPL-2.0
-// PDX-FileCopyrightText: 2018 Sam Ravnborg <sam@ravnborg.org>
+// PDX-FileCopyrightText: 2022 Sam Ravnborg <sam@ravnborg.org>
 
-#include <linux/sizes.h>
+#include <debug_ll.h>
 
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam926x_board_init.h>
 #include <mach/at91sam9263_matrix.h>
+#include <mach/at91sam9_sdramc.h>
+#include <mach/sam92_ll.h>
+#include <mach/xload.h>
 
-#define MASTER_PLL_MUL		171
-#define MASTER_PLL_DIV		14
+/* MCK = 20 MHz */
+#define MAIN_CLOCK	200000000
+#define MASTER_CLOCK	(MAIN_CLOCK / 2)	/* PMC_MCKR divides by 2 */
 
-static void __bare_init skovarm9cpu_board_config(struct at91sam926x_board_cfg *cfg)
+static void sam9263_sdramc_init(unsigned int mck)
 {
-	/* Disable Watchdog */
-	cfg->wdt_mr =
-		AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |
-		AT91_WDT_WDV |
-		AT91_WDT_WDDIS |
-		AT91_WDT_WDD;
-
-	/* define PDC[31:16] as DATA[31:16] */
-	cfg->ebi_pio_pdr = 0xFFFF0000;
-	/* no pull-up for D[31:16] */
-	cfg->ebi_pio_ppudr = 0xFFFF0000;
+	const struct at91sam9_sdramc_config config =
+	{
+		.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0),
+		.mr = 0,
+		.tr = (mck * 7) / 1000000, // TODO 140 versus 0x13c (316)?
+		.cr = AT91_SDRAMC_NC_10 | AT91_SDRAMC_NR_13 | AT91_SDRAMC_CAS_2
+		      | AT91_SDRAMC_NB_4 | AT91_SDRAMC_DBW_32
+		      | AT91_SDRAMC_TWR_2 | AT91_SDRAMC_TRC_7
+		      | AT91_SDRAMC_TRP_2 | AT91_SDRAMC_TRCD_2
+		      | AT91_SDRAMC_TRAS_5 | AT91_SDRAMC_TXSR_8,
+		.lpr = 0,
+		.mdr = AT91_SDRAMC_MD_SDRAM,
+	};
+
+	/* Define PDC[31:16] as DATA[31:16] */
+	at91_mux_gpio_disable(IOMEM(AT91SAM9263_BASE_PIOD), 0xffff0000);
+	/* No pull-up for D[31:16] */
+	at91_mux_set_pullup(IOMEM(AT91SAM9263_BASE_PIOD), 0xffff0000, true);
+	/* PD16 to PD31 are pheripheral A */
+	at91_mux_set_A_periph(IOMEM(AT91SAM9263_BASE_PIOD), 0xffff0000);
+
 	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
-	cfg->ebi_csa =
-		AT91SAM9263_MATRIX_EBI0_DBPUC | AT91SAM9263_MATRIX_EBI0_VDDIOMSEL_3_3V |
-		AT91SAM9263_MATRIX_EBI0_CS1A_SDRAMC;
-
-	cfg->smc_cs = 0;
-	cfg->smc_mode =
-		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
-		AT91_SMC_DBW_16 |
-		AT91_SMC_TDFMODE |
-		AT91_SMC_TDF_(6);
-	cfg->smc_cycle =
-		AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22);
-	cfg->smc_pulse =
-		AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |
-		AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11);
-	cfg->smc_setup =
-		AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |
-		AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10);
-
-	cfg->pmc_mor =
-		AT91_PMC_MOSCEN |
-		(255 << 8);		/* Main Oscillator Start-up Time */
-	cfg->pmc_pllar =
-		AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */
-		AT91_PMC_OUT |
-		AT91_PMC_PLLCOUNT |	/* PLL Counter */
-		(2 << 28) |		/* PLL Clock Frequency Range */
-		((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV);
-	/* PCK/2 = MCK Master Clock from PLLA */
-	cfg->pmc_mckr1 =
-		AT91_PMC_CSS_SLOW |
-		AT91_PMC_PRES_1 |
-		AT91SAM9_PMC_MDIV_2 |
-		AT91_PMC_PDIV_1;
-	/* PCK/2 = MCK Master Clock from PLLA */
-	cfg->pmc_mckr2 =
-		AT91_PMC_CSS_PLLA |
-		AT91_PMC_PRES_1 |
-		AT91SAM9_PMC_MDIV_2 |
-		AT91_PMC_PDIV_1;
-
-	/* SDRAM */
-	/* SDRAMC_TR - Refresh Timer register */
-	cfg->sdrc_tr1 = 0x13C;
-	/* SDRAMC_CR - Configuration register*/
-	cfg->sdrc_cr =
-		AT91_SDRAMC_NC_10 |	/* Assume 128MiB */
-		AT91_SDRAMC_NR_13 |
-		AT91_SDRAMC_NB_4 |
-		AT91_SDRAMC_CAS_3 |
-		AT91_SDRAMC_DBW_32 |
-		(1 <<  8) |		/* Write Recovery Delay */
-		(7 << 12) |		/* Row Cycle Delay */
-		(2 << 16) |		/* Row Precharge Delay */
-		(2 << 20) |		/* Row to Column Delay */
-		(5 << 24) |		/* Active to Precharge Delay */
-		(1 << 28);		/* Exit Self Refresh to Active Delay */
-
-	/* Memory Device Register -> SDRAM */
-	cfg->sdrc_mdr = AT91_SDRAMC_MD_SDRAM;
-	/* SDRAM_TR */
-	cfg->sdrc_tr2 = 1200;
-
-	/* user reset enable */
-	cfg->rstc_rmr =
-		AT91_RSTC_KEY |
-		AT91_RSTC_PROCRST |
-		AT91_RSTC_RSTTYP_WAKEUP |
-		AT91_RSTC_RSTTYP_WATCHDOG;
+	writel(AT91SAM9263_MATRIX_EBI0_DBPUC
+	       | AT91SAM9263_MATRIX_EBI0_VDDIOMSEL_3_3V
+	       | AT91SAM9263_MATRIX_EBI0_CS1A_SDRAMC,
+	       IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA));
+
+	at91sam9_sdramc_initialize(&config, AT91SAM9263_BASE_EBI0_CS1);
 }
 
-static void __bare_init skov_arm9cpu_init(void *fdt)
+/* Top of stack is the top of the internal SRAM */
+#define STACK_TOP	(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE)
+
+ENTRY_FUNCTION_WITHSTACK(start_skov_arm9cpu_xload, STACK_TOP, r0, r1, r2)
 {
-	struct at91sam926x_board_cfg cfg;
+	const struct sam92_pmc_config sam92_pmc_config = {
+		/* X-tal is 16.000 MHz so 16 / 4 * (31 + 1) = 200 */
+		.diva = 14,
+		.mula = 171,
+	};
 
-	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
-	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
-	cfg.ebi_pio_is_peripha = true;
-	cfg.matrix_csa = IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
+	/* Configure system so we are less constrained */
+	arm_cpu_lowlevel_init();
+	relocate_to_current_adr();
+	setup_c();
 
-	skovarm9cpu_board_config(&cfg);
-	at91sam9263_board_init(&cfg);
+	sam9263_lowlevel_init(&sam92_pmc_config);
+	sam92_dbgu_setup_ll(MASTER_CLOCK);
 
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
-			  fdt);
+	sam92_udelay_init(MASTER_CLOCK);
+	sam9263_sdramc_init(MASTER_CLOCK);
+	sam9263_atmci_start_image(1, MASTER_CLOCK, 0);
 }
 
 extern char __dtb_at91_skov_arm9cpu_start[];
 
-ENTRY_FUNCTION(start_skov_arm9cpu, r0, r1, r2)
+ENTRY_FUNCTION_WITHSTACK(start_skov_arm9cpu, STACK_TOP, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE);
 	fdt = __dtb_at91_skov_arm9cpu_start + get_runtime_offset();
-
-	skov_arm9cpu_init(fdt);
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9263_get_sdram_size(0), fdt);
 }
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index bc55b1c4e..f5f674d82 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -577,9 +577,7 @@ config MACH_SKOV_ARM9CPU
 	select SOC_AT91SAM9263
 	select OFDEVICE
 	select COMMON_CLK_OF_PROVIDER
-	select HAVE_AT91_USB_CLK
-	select HAVE_AT91_BOOTSTRAP
-	select AT91SAM926X_BOARD_INIT
+	select MCI_ATMEL_PBL
 	help
 	  Say y here if you are using SKOV's ARM9 CPU board
 
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index 71cc959f5..076981339 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -47,7 +47,11 @@ FILE_barebox-groboards-sama5d27-giantboard-xload-mmc.img = start_sama5d27_giantb
 MAX_PBL_IMAGE_SIZE_start_sama5d27_giantboard_xload_mmc = 0xffff
 image-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += barebox-groboards-sama5d27-giantboard-xload-mmc.img
 
+pblb-$(CONFIG_MACH_SKOV_ARM9CPU) += start_skov_arm9cpu_xload
+FILE_barebox-skov-arm9cpu-xload.img = start_skov_arm9cpu_xload.pblb
+MAX_PBL_MEMORY_SIZE_start_skov_arm9cpu = 0x12000
+image-$(CONFIG_MACH_SKOV_ARM9CPU) += barebox-skov-arm9cpu-xload.img
+
 pblb-$(CONFIG_MACH_SKOV_ARM9CPU) += start_skov_arm9cpu
 FILE_barebox-skov-arm9cpu.img = start_skov_arm9cpu.pblb
-MAX_PBL_MEMORY_SIZE_start_skov_arm9cpu = 0x12000
 image-$(CONFIG_MACH_SKOV_ARM9CPU) += barebox-skov-arm9cpu.img
-- 
2.34.1



