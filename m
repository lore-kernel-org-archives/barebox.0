Delivery-date: Thu, 15 Feb 2024 23:31:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rakGi-007uZa-1b
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 23:31:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rakGh-0005ef-DW
	for lore@pengutronix.de; Thu, 15 Feb 2024 23:31:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4QgwlWipgzVZyniv4NAW507EfVNYhIm1ce6MayhJ3jo=; b=Euv8WCIKP0ffSwRIpR6qpb1rga
	P1Koq9fCvq6EXbG1KKsa6AkaDfq8kcyKKNQ7svgXvxi5b4K/hj4Wm3Ug1UjmHimM8S3SEiXEF6jb6
	NWFm4CM0EuiEq96AnAjhhk9Vxl8ntGGHuJUXImFQhvsPbux5F8VvrRkzo0soh7+GekTO9H9YbCUsA
	UhCTRIYg3z8hUAf+8eL0ZCfYmgCLztW/ED5p8mQ9UWbaas122OmF9CNNj9gFc+/Nu49Ilvvzf3PVF
	qAoHYuTrnA3d33dXFi2UGwiA8zY0d050dT5tT1gKcJDlugT9cMj9bM74mKdT+Nr3IpXgh5w49ONvE
	h7aljw3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rakFu-00000000MHz-2hOG;
	Thu, 15 Feb 2024 22:30:58 +0000
Received: from mailrelay3-1.pub.mailoutpod3-cph3.one.com ([46.30.211.242])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rakFo-00000000MF2-1WXV
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 22:30:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=4QgwlWipgzVZyniv4NAW507EfVNYhIm1ce6MayhJ3jo=;
	b=VdIXeH3SouoVcznG8yoFaB3Bb0IXH8twt+qJ9D6SWgEm2yRmA54/Bsswc3/dFTa4mHO6VjxXWr++C
	 KNlAbLaSWUC2zDg7NYU4hTFliUWpCUzRBSLiIwI3KSGUx8f/lgk7LJ3W/RtIe9bYP8leatoIJslXoN
	 1zFMySWkdVE5UTGac5/0k0n2oMDKxnXJMTlsBUIIxAasQs94agy2BaCpYKrPtY4FbhGsWDqmowFO8E
	 zBe5wgWezchY17rip6acExAIF5uWh2yLZuG3yH22LFTQb6Zwmfob5zM2R2dMoveLE8ERWsVVO/Pf8G
	 /sxrP47ULpuk0jZre1nkTpL9KUbbNIw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=4QgwlWipgzVZyniv4NAW507EfVNYhIm1ce6MayhJ3jo=;
	b=WoThI9MH/ZKSdB/GX+XPHas4FwhDk0M3dR/fQli587eXZ1QJXCoH0tlil36c2JWqU/y5/Of8Wcgj3
	 PHu9H87CQ==
X-HalOne-ID: aeb0b87a-cc51-11ee-bf4e-ff813d2dbafc
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay3.pub.mailoutpod3-cph3.one.com (Halon) with ESMTPSA
	id aeb0b87a-cc51-11ee-bf4e-ff813d2dbafc;
	Thu, 15 Feb 2024 22:29:30 +0000 (UTC)
Date: Thu, 15 Feb 2024 23:29:28 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240215222928.GA1462714@ravnborg.org>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
 <20240215163009.2172795-12-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240215163009.2172795-12-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_143052_565660_33D8DDB9 
X-CRM114-Status: GOOD (  38.11  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 11/15] ARM: at91: skov-arm9cpu: Add SD-Card xload
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Thu, Feb 15, 2024 at 05:30:05PM +0100, Ahmad Fatoum wrote:
> From: Sam Ravnborg <sam@ravnborg.org>
> 
> This updates skov-arm9cpu with xload support, and we can now
> use barebox as a replacement for at91bootstrap
> 
> Only boot via SD card is supported.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v2 -> v3:
>   - rename skov-arm9cpu-xload.img to skov-arm9cpu-xload-mmc.img
>   - move code after relocation into separate noinline function
>   - fix PLLA configuration and add PLLB configuration
>   - add support for 64M SDRAM variant
>   - remove erroneous pull-up setting from DRAM lines
>   - read AT91SAM9263_MATRIX_EBI0CSA, so we only set the relevant bits
> 
> v1 -> v2:
>   - Use ENTRY_FUNCTION_WITHSTACK
>   - Reshuffeled order in early init
>   - SD card in not highcapacity
>   - Drop irrelevant max image size in images/Makefile.at91
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/skov-arm9cpu/lowlevel.c | 193 ++++++++++++------------
>  arch/arm/mach-at91/Kconfig              |   4 +-
>  images/Makefile.at91                    |   6 +-
>  3 files changed, 101 insertions(+), 102 deletions(-)
> 
> diff --git a/arch/arm/boards/skov-arm9cpu/lowlevel.c b/arch/arm/boards/skov-arm9cpu/lowlevel.c
> index 82abfb4021a9..d83215bf9336 100644
> --- a/arch/arm/boards/skov-arm9cpu/lowlevel.c
> +++ b/arch/arm/boards/skov-arm9cpu/lowlevel.c
> @@ -1,115 +1,110 @@
>  // SPDX-License-Identifier: GPL-2.0
> -// PDX-FileCopyrightText: 2018 Sam Ravnborg <sam@ravnborg.org>
> -
> -#include <linux/sizes.h>
> -
> +// SPDX-FileCopyrightText: 2022 Sam Ravnborg <sam@ravnborg.org>
>  
>  #include <mach/at91/at91sam926x_board_init.h>
>  #include <mach/at91/at91sam9263_matrix.h>
> +#include <mach/at91/sam92_ll.h>
> +#include <mach/at91/xload.h>
>  #include <mach/at91/barebox-arm.h>
>  
> -#define MASTER_PLL_MUL		171
> -#define MASTER_PLL_DIV		14
> +/* MCK = 20 MHz */
> +#define MAIN_CLOCK	200000000
> +#define MASTER_CLOCK	(MAIN_CLOCK / 2)	/* PMC_MCKR divides by 2 */
>  
> -static void __bare_init skovarm9cpu_board_config(struct at91sam926x_board_cfg *cfg)
> +/*
> + * Check if target is 64 or 128 MB and adjust AT91_SDRAMC_CR
> + * accordingly.
> + * Size      Start      Size(hex)
> + * 64 MB  => 0x20000000 0x4000000
> + * 128 MB => 0x20000000 0x8000000
> + *
> + * If 64 MiB RAM with NC_10 set, then we see holes in the memory, which
> + * is how we detect if memory is 64 or 128 MiB
> + */
> +static int check_if_128mb(void)
>  {
> -	/* Disable Watchdog */
> -	cfg->wdt_mr =
> -		AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |
> -		AT91_WDT_WDV |
> -		AT91_WDT_WDDIS |
> -		AT91_WDT_WDD;
> +	unsigned int *test_adr = (unsigned int *)AT91_CHIPSELECT_1;
> +	unsigned int test_val = 0xdeadbee0;
> +	unsigned int *p;
> +	int i;
>  
> -	/* define PDC[31:16] as DATA[31:16] */
> -	cfg->ebi_pio_pdr = 0xFFFF0000;
> -	/* no pull-up for D[31:16] */
> -	cfg->ebi_pio_ppudr = 0xFFFF0000;
> -	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
> -	cfg->ebi_csa =
> -		AT91SAM9263_MATRIX_EBI0_DBPUC | AT91SAM9263_MATRIX_EBI0_VDDIOMSEL_3_3V |
> -		AT91SAM9263_MATRIX_EBI0_CS1A_SDRAMC;
> +	/* Fill up memory with a known pattern */
> +	p = test_adr;
> +	for (i = 0; i < 0xb00; i++)
> +		*p++ = test_val + i;
>  
> -	cfg->smc_cs = 0;
> -	cfg->smc_mode =
> -		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
> -		AT91_SMC_DBW_16 |
> -		AT91_SMC_TDFMODE |
> -		AT91_SMC_TDF_(6);
> -	cfg->smc_cycle =
> -		AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22);
> -	cfg->smc_pulse =
> -		AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |
> -		AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11);
> -	cfg->smc_setup =
> -		AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |
> -		AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10);
> +	/*
> +	 * Check that we can read back the values just written
> +	 * If one or more fails, we have only 64 MB
> +	 */
> +	p = test_adr;
> +	for (i = 0; i < 0xb00; i++)
> +		if (*p++ != (test_val + i))
> +			return false;
>  
> -	cfg->pmc_mor =
> -		AT91_PMC_MOSCEN |
> -		(255 << 8);		/* Main Oscillator Start-up Time */
> -	cfg->pmc_pllar =
> -		AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */
> -		AT91_PMC_OUT |
> -		AT91_PMC_PLLCOUNT |	/* PLL Counter */
> -		(2 << 28) |		/* PLL Clock Frequency Range */
> -		((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV);
> -	/* PCK/2 = MCK Master Clock from PLLA */
> -	cfg->pmc_mckr1 =
> -		AT91_PMC_CSS_SLOW |
> -		AT91_PMC_PRES_1 |
> -		AT91SAM9_PMC_MDIV_2 |
> -		AT91_PMC_PDIV_1;
> -	/* PCK/2 = MCK Master Clock from PLLA */
> -	cfg->pmc_mckr2 =
> -		AT91_PMC_CSS_PLLA |
> -		AT91_PMC_PRES_1 |
> -		AT91SAM9_PMC_MDIV_2 |
> -		AT91_PMC_PDIV_1;
> -
> -	/* SDRAM */
> -	/* SDRAMC_TR - Refresh Timer register */
> -	cfg->sdrc_tr1 = 0x13C;
> -	/* SDRAMC_CR - Configuration register*/
> -	cfg->sdrc_cr =
> -		AT91_SDRAMC_NC_10 |	/* Assume 128MiB */
> -		AT91_SDRAMC_NR_13 |
> -		AT91_SDRAMC_NB_4 |
> -		AT91_SDRAMC_CAS_3 |
> -		AT91_SDRAMC_DBW_32 |
> -		(1 <<  8) |		/* Write Recovery Delay */
> -		(7 << 12) |		/* Row Cycle Delay */
> -		(2 << 16) |		/* Row Precharge Delay */
> -		(2 << 20) |		/* Row to Column Delay */
> -		(5 << 24) |		/* Active to Precharge Delay */
> -		(1 << 28);		/* Exit Self Refresh to Active Delay */
> -
> -	/* Memory Device Register -> SDRAM */
> -	cfg->sdrc_mdr = AT91_SDRAMC_MD_SDRAM;
> -	/* SDRAM_TR */
> -	cfg->sdrc_tr2 = 1200;
> -
> -	/* user reset enable */
> -	cfg->rstc_rmr =
> -		AT91_RSTC_KEY |
> -		AT91_RSTC_PROCRST |
> -		AT91_RSTC_RSTTYP_WAKEUP |
> -		AT91_RSTC_RSTTYP_WATCHDOG;
> +	return true;
>  }
>  
> -static void __bare_init skov_arm9cpu_init(void *fdt)
> +static void sam9263_sdramc_init(void)
>  {
> -	struct at91sam926x_board_cfg cfg;
> +	void __iomem *piod = IOMEM(AT91SAM9263_BASE_PIOD);
> +	static struct at91sam9_sdramc_config config = {
> +		.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0),
> +		.mr = 0,
> +		.tr = (MASTER_CLOCK * 7) / 1000000, // TODO 140 versus 0x13c (316)?
> +		.cr = AT91_SDRAMC_NC_10 | AT91_SDRAMC_NR_13 | AT91_SDRAMC_CAS_2
> +		      | AT91_SDRAMC_NB_4 | AT91_SDRAMC_DBW_32
> +		      | AT91_SDRAMC_TWR_2 | AT91_SDRAMC_TRC_7
> +		      | AT91_SDRAMC_TRP_2 | AT91_SDRAMC_TRCD_2
> +		      | AT91_SDRAMC_TRAS_5 | AT91_SDRAMC_TXSR_8,
> +		.lpr = 0,
> +		.mdr = AT91_SDRAMC_MD_SDRAM,
> +	};
>  
> -	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
> -	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
> -	cfg.ebi_pio_is_peripha = true;
> -	cfg.matrix_csa = IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
> +	/* Define PD[31:16] as DATA[31:16] */
> +	at91_mux_gpio_disable(piod, GENMASK(31, 16));
> +	/* No pull-up for D[31:16] */
> +	at91_mux_set_pullup(piod, GENMASK(31, 16), false);
> +	/* PD16 to PD31 are pheripheral A */
> +	at91_mux_set_A_periph(piod, GENMASK(31, 16));
>  
> -	skovarm9cpu_board_config(&cfg);
> -	at91sam9263_board_init(&cfg);
> +	/* EBI0_CSA, CS1 SDRAM, 3.3V memories */
> +	setbits_le32(IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA),
> +	       AT91SAM9263_MATRIX_EBI0_VDDIOMSEL_3_3V | AT91SAM9263_MATRIX_EBI0_CS1A_SDRAMC);
>  
> -	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
> -			  fdt);
> +	at91sam9_sdramc_initialize(&config, AT91SAM9263_BASE_EBI0_CS1);
> +
> +	if (!check_if_128mb()) {
> +		/* Change number of columns to 9 for 64MB ram. */
> +		/* Other parameters does not need to be changed due to chip size. */
> +
> +		pr_debug("64M variant detected\n");
> +
> +		/* Clear NC bits */
> +		config.cr &= ~AT91_SDRAMC_NC;
> +		config.cr |= AT91_SDRAMC_NC_9;
> +		at91sam9_sdramc_initialize(&config, AT91SAM9263_BASE_EBI0_CS1);
> +	}
> +}
> +
> +static noinline void continue_skov_arm9cpu_xload_mmc(void)
> +{
> +	sam9263_lowlevel_init(0x2031B004, 0x10053001);
Can this be made more verbose using the existing defines?
The above hex codes are not friendly to read, and using the original
defines used in the previous patch would help a lot on the readability.

	Sam

> +	sam92_dbgu_setup_ll(MASTER_CLOCK);
> +
> +	sam92_udelay_init(MASTER_CLOCK);
> +	sam9263_sdramc_init();
> +	sam9263_atmci_start_image(1, MASTER_CLOCK, 0);
> +}
> +
> +SAM9_ENTRY_FUNCTION(start_skov_arm9cpu_xload_mmc)
> +{
> +	/* Configure system so we are less constrained */
> +	arm_cpu_lowlevel_init();
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	continue_skov_arm9cpu_xload_mmc();
>  }
>  
>  extern char __dtb_at91_skov_arm9cpu_start[];
> @@ -118,10 +113,12 @@ AT91_ENTRY_FUNCTION(start_skov_arm9cpu, r0, r1, r2)
>  {
>  	void *fdt;
>  
> +	/*
> +	 * We may be running after at91bootstrap, so redo the initialization to
> +	 * be sure, everything is as we expect it.
> +	 */
>  	arm_cpu_lowlevel_init();
>  
> -	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE);
>  	fdt = __dtb_at91_skov_arm9cpu_start + get_runtime_offset();
> -
> -	skov_arm9cpu_init(fdt);
> +	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9263_get_sdram_size(0), fdt);
>  }
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 69edf3dbdc4e..0e89916c9c32 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -603,9 +603,7 @@ config MACH_SKOV_ARM9CPU
>  	select SOC_AT91SAM9263
>  	select OFDEVICE
>  	select COMMON_CLK_OF_PROVIDER
> -	select HAVE_AT91_USB_CLK
> -	select HAVE_AT91_BOOTSTRAP
> -	select AT91SAM926X_BOARD_INIT
> +	select MCI_ATMEL_PBL
>  	help
>  	  Say y here if you are using SKOV's ARM9 CPU board
>  
> diff --git a/images/Makefile.at91 b/images/Makefile.at91
> index 523dc5f499f0..06f8936893ae 100644
> --- a/images/Makefile.at91
> +++ b/images/Makefile.at91
> @@ -56,9 +56,13 @@ FILE_barebox-groboards-sama5d27-giantboard-xload-mmc.img = start_sama5d27_giantb
>  MAX_PBL_IMAGE_SIZE_start_sama5d27_giantboard_xload_mmc = 0xffff
>  image-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += barebox-groboards-sama5d27-giantboard-xload-mmc.img
>  
> +pblb-$(CONFIG_MACH_SKOV_ARM9CPU) += start_skov_arm9cpu_xload_mmc
> +FILE_barebox-skov-arm9cpu-xload-mmc.img = start_skov_arm9cpu_xload_mmc.pblb
> +MAX_PBL_MEMORY_SIZE_start_skov_arm9cpu = 0x12000
> +image-$(CONFIG_MACH_SKOV_ARM9CPU) += barebox-skov-arm9cpu-xload-mmc.img
> +
>  pblb-$(CONFIG_MACH_SKOV_ARM9CPU) += start_skov_arm9cpu
>  FILE_barebox-skov-arm9cpu.img = start_skov_arm9cpu.pblb
> -MAX_PBL_MEMORY_SIZE_start_skov_arm9cpu = 0x12000
>  image-$(CONFIG_MACH_SKOV_ARM9CPU) += barebox-skov-arm9cpu.img
>  
>  pblb-$(CONFIG_MACH_SAMA5D4_WIFX) += start_sama5d4_wifx_l1
> -- 
> 2.39.2


