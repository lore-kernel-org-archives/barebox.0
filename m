Delivery-date: Sun, 15 May 2022 21:40:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6T-00EWUf-8X
	for lore@lore.pengutronix.de; Sun, 15 May 2022 21:40:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6Q-0005xx-Tg
	for lore@pengutronix.de; Sun, 15 May 2022 21:40:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gygt/scozfpfjYit+qe/m0rks7RmY+y/WQ6vwLczxa0=; b=fUqmSSXc2uP4Eu
	pqaLphmz06JTUee4uljAQXjH0B+vc36BTiLeAquwINtajQWnFKonrgCdnyiVJDMrrNN+I5tg83pa6
	jfvf5Nf3KYT38acjsTq8iqtscY5Lv6ijlP7ORJqUu3pTUCOraTYwGy5JP86UCh+ttFwDeR44uM59A
	II1mjMfGMw72jctxE5JBpwktZAeGVthAsjFvz942NjQm2y785K1eanB4/j4b+SvqAIcJC4AJqMEdl
	StFFEAsIQzcMyYmkHowDZdz2U0+/wN/aNaD9MhsbiiAN/H55g4xQpXHOQUkWo9akwtRciwUH6FO/t
	qrIign+uCRCbxkKwZAbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqK4t-004ngf-N6; Sun, 15 May 2022 19:38:55 +0000
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com ([46.30.210.183])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqK4U-004nWy-PZ
 for barebox@lists.infradead.org; Sun, 15 May 2022 19:38:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
 subject:cc:to:from:from;
 bh=ssVgrm9a4y0r+CkIDoI++X+SOPmZnbHzhHuIOsbt55c=;
 b=iA/TRPqG4IAj/JtmlOWZ9LXMhNYCM7qS7ft/t4HLq6w+5xOryWVQfJe2gABHsGtgyNuTQZ7iuGhuZ
 KmVNwCSLhGUgh/YoC9EzPvmGFCKrf1j2jRyn8KGuMh4rUgD3uskAXXTd+wwdLKk2VByXg6mp/TVC49
 OOL1CkkWjtH258qZtcDXZxiXXsFYmXWjb9YFXlf2z7fINxviZF4cdHCqq7yULMTJ5MfHYKLB8EDjNG
 mzULv7kqzodzfaTLdTSKqzqZ47wkOHdB9Y+UAGsSMJYuq1xizYRnXPdRRUbbIH0Z4xB8fvVXzlaWSd
 fzj1C+XbzBqbSg3BY4SbXUssvQJs3YQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
 subject:cc:to:from:from;
 bh=ssVgrm9a4y0r+CkIDoI++X+SOPmZnbHzhHuIOsbt55c=;
 b=IGgp9n7lLECBLvGeNkE1YKVnIWZHiTahtuV2nshraUONyvtnrYeGsWqxd+YQyb9t1MX7HxC86bhLh
 OC3dT7ABw==
X-HalOne-Cookie: 0294cdd1b7cb6b3b247eef9c257a5df3572389ec
X-HalOne-ID: 984b37ea-d486-11ec-a908-d0431ea8a290
Received: from mailproxy4.cst.dirpod4-cph3.one.com
 (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
 by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
 id 984b37ea-d486-11ec-a908-d0431ea8a290;
 Sun, 15 May 2022 19:38:28 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Sun, 15 May 2022 21:38:07 +0200
Message-Id: <20220515193807.354903-9-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220515193807.354903-1-sam@ravnborg.org>
References: <20220515193807.354903-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_123831_064593_7C0E496A 
X-CRM114-Status: GOOD (  16.06  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 8/8] ARM: at91: Add xload support to skov-arm9cpu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This updates skov-arm9cpu with xload support, and we can now
use barebox as a replacment for at91bootstrap.

Only boot via SD card is supported.

NOTE: Actual status
[x] dbgu support in pbl works (can print)
[x] Other init stuff ifdeffed out - from at91bootstrap
[ ] Check what the original code used for div/mul - there is some confusion
[ ] load barebox.bin and boots it. Right now mount fails
[ ] barebox.bin can start a linux kernel
[ ] support default SD card boots and nfsboot
[x] update Kconfig to work with xload
[x] xload image support

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/skov-arm9cpu/lowlevel.c | 148 ++++++++----------------
 arch/arm/mach-at91/Kconfig              |   4 +-
 images/Makefile.at91                    |   5 +
 3 files changed, 55 insertions(+), 102 deletions(-)

diff --git a/arch/arm/boards/skov-arm9cpu/lowlevel.c b/arch/arm/boards/skov-arm9cpu/lowlevel.c
index d335953a7..b408246b6 100644
--- a/arch/arm/boards/skov-arm9cpu/lowlevel.c
+++ b/arch/arm/boards/skov-arm9cpu/lowlevel.c
@@ -1,115 +1,69 @@
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
 
-	/* define PDC[31:16] as DATA[31:16] */
-	cfg->ebi_pio_pdr = 0xFFFF0000;
-	/* no pull-up for D[31:16] */
-	cfg->ebi_pio_ppudr = 0xFFFF0000;
 	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
-	cfg->ebi_csa =
-		AT91SAM9263_MATRIX_EBI0_DBPUC | AT91SAM9263_MATRIX_EBI0_VDDIOMSEL_3_3V |
-		AT91SAM9263_MATRIX_EBI0_CS1A_SDRAMC;
+	writel(AT91SAM9263_MATRIX_EBI0_DBPUC
+	       | AT91SAM9263_MATRIX_EBI0_VDDIOMSEL_3_3V
+	       | AT91SAM9263_MATRIX_EBI0_CS1A_SDRAMC,
+	       IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA));
 
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
+	at91sam9_sdramc_initialize(&config, AT91SAM9263_BASE_EBI0_CS1);
 }
 
-static void __bare_init skov_arm9cpu_init(void *fdt)
+ENTRY_FUNCTION(start_skov_arm9cpu_xload_mmc, r0, r1, r2)
 {
-	struct at91sam926x_board_cfg cfg;
+	const struct sam92_pmc_config sam92_pmc_config = {
+		/* X-tal is 16.000 MHz so 16 / 4 * (31 + 1) = 200 */
+		.diva = 14,
+		.mula = 171,
+	};
+	sam9263_lowlevel_init(&sam92_pmc_config);
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE);
 
-	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
-	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
-	cfg.ebi_pio_is_peripha = true;
-	cfg.matrix_csa = IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
+	relocate_to_current_adr();
+	setup_c();
 
-	skovarm9cpu_board_config(&cfg);
-	at91sam9263_board_init(&cfg);
+	sam92_dbgu_setup_ll(MASTER_CLOCK);
 
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
-			  fdt);
+	sam92_udelay_init(MASTER_CLOCK);
+	sam9263_sdramc_init(MASTER_CLOCK);
+	sam9263_atmci_start_image(1, MASTER_CLOCK, 0);
 }
 
 extern char __dtb_at91_skov_arm9cpu_start[];
@@ -118,10 +72,6 @@ ENTRY_FUNCTION(start_skov_arm9cpu, r0, r1, r2)
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
index 71cc959f5..9a33d3bb9 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -47,6 +47,11 @@ FILE_barebox-groboards-sama5d27-giantboard-xload-mmc.img = start_sama5d27_giantb
 MAX_PBL_IMAGE_SIZE_start_sama5d27_giantboard_xload_mmc = 0xffff
 image-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += barebox-groboards-sama5d27-giantboard-xload-mmc.img
 
+pblb-$(CONFIG_MACH_SKOV_ARM9CPU) += start_skov_arm9cpu_xload_mmc
+FILE_barebox-skov-arm9cpu-xload-mmc.img = start_skov_arm9cpu_xload_mmc.pblb
+MAX_PBL_MEMORY_SIZE_start_skov_arm9cpu = 0x12000
+image-$(CONFIG_MACH_SKOV_ARM9CPU) += barebox-skov-arm9cpu-xload-mmc.img
+
 pblb-$(CONFIG_MACH_SKOV_ARM9CPU) += start_skov_arm9cpu
 FILE_barebox-skov-arm9cpu.img = start_skov_arm9cpu.pblb
 MAX_PBL_MEMORY_SIZE_start_skov_arm9cpu = 0x12000
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

