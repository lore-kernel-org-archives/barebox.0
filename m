Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TqLPM-0001Z1-Nz
 for barebox@lists.infradead.org; Wed, 02 Jan 2013 10:18:50 +0000
Date: Wed, 2 Jan 2013 11:18:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130102101846.GE26326@pengutronix.de>
References: <20121229100404.GA22953@game.jcrosoft.org>
 <1356775697-1849-1-git-send-email-plagnioj@jcrosoft.com>
 <1356775697-1849-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1356775697-1849-3-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/7] at91: sam926x: switch lowlevel param to c code
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Dec 29, 2012 at 11:08:13AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Instead of hardcode define use a struct that the board fill
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/at91sam9263ek/Makefile             |    5 +
>  arch/arm/boards/at91sam9263ek/config.h             |   87 -------------
>  arch/arm/boards/at91sam9263ek/lowlevel_init.c      |  104 +++++++++++++++
>  arch/arm/boards/mmccpu/Makefile                    |    5 +
>  arch/arm/boards/mmccpu/config.h                    |  118 -----------------
>  arch/arm/boards/mmccpu/lowlevel_init.c             |  135 ++++++++++++++++++++
>  arch/arm/boards/pm9261/Makefile                    |    5 +
>  arch/arm/boards/pm9261/config.h                    |   87 -------------
>  arch/arm/boards/pm9261/lowlevel_init.c             |  102 +++++++++++++++
>  arch/arm/boards/pm9263/Makefile                    |    5 +
>  arch/arm/boards/pm9263/config.h                    |  103 ---------------
>  arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |   64 ++++++----
>  .../mach-at91/include/mach/at91_lowlevel_init.h    |   33 +++++
>  13 files changed, 435 insertions(+), 418 deletions(-)
>  create mode 100644 arch/arm/boards/at91sam9263ek/lowlevel_init.c
>  create mode 100644 arch/arm/boards/mmccpu/lowlevel_init.c
>  create mode 100644 arch/arm/boards/pm9261/lowlevel_init.c
>  create mode 100644 arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
> 
> diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
> index eb072c0..aecbc5a 100644
> --- a/arch/arm/boards/at91sam9263ek/Makefile
> +++ b/arch/arm/boards/at91sam9263ek/Makefile
> @@ -1 +1,6 @@
>  obj-y += init.o
> +
> +lowlevel_init-y = lowlevel_init.o
> +obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
> +
> +pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
> diff --git a/arch/arm/boards/at91sam9263ek/config.h b/arch/arm/boards/at91sam9263ek/config.h
> index 14eb4fe..cc12040 100644
> --- a/arch/arm/boards/at91sam9263ek/config.h
> +++ b/arch/arm/boards/at91sam9263ek/config.h
> @@ -3,91 +3,4 @@
>  
>  #define AT91_MAIN_CLOCK		16367660	/* 16.367 MHz crystal */
>  
> -#define MASTER_PLL_MUL		171
> -#define MASTER_PLL_DIV		14
> -
> -/* clocks */
> -#define CONFIG_SYS_MOR_VAL						\
> -		(AT91_PMC_MOSCEN |					\
> -		 (255 << 8))		/* Main Oscillator Start-up Time */
> -#define CONFIG_SYS_PLLAR_VAL						\
> -		(AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */ \
> -		 AT91_PMC_OUT |						\
> -		 AT91_PMC_PLLCOUNT |	/* PLL Counter */		\
> -		 (2 << 28) |		/* PLL Clock Frequency Range */	\
> -		 ((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV))
> -
> -/* PCK/2 = MCK Master Clock from PLLA */
> -#define	CONFIG_SYS_MCKR1_VAL		\
> -		(AT91_PMC_CSS_SLOW |	\
> -		 AT91_PMC_PRES_1 |	\
> -		 AT91SAM9_PMC_MDIV_2 |	\
> -		 AT91_PMC_PDIV_1)
> -/* PCK/2 = MCK Master Clock from PLLA */
> -#define	CONFIG_SYS_MCKR2_VAL		\
> -		(AT91_PMC_CSS_PLLA |	\
> -		 AT91_PMC_PRES_1 |	\
> -		 AT91SAM9_PMC_MDIV_2 |	\
> -		 AT91_PMC_PDIV_1)
> -
> -/* define PDC[31:16] as DATA[31:16] */
> -#define CONFIG_SYS_PIOD_PDR_VAL1	0xFFFF0000
> -/* no pull-up for D[31:16] */
> -#define CONFIG_SYS_PIOD_PPUDR_VAL	0xFFFF0000
> -/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
> -#define CONFIG_SYS_MATRIX_EBI0CSA_VAL					\
> -	(AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_3_3V |	\
> -	 AT91_MATRIX_EBI0_CS1A_SDRAMC)
> -
> -/* SDRAM */
> -/* SDRAMC_TR - Refresh Timer register */
> -#define CONFIG_SYS_SDRC_TR_VAL1		0x13C
> -/* SDRAMC_CR - Configuration register*/
> -#define CONFIG_SYS_SDRC_CR_VAL							\
> -		(AT91_SDRAMC_NC_9 |						\
> -		 AT91_SDRAMC_NR_13 |						\
> -		 AT91_SDRAMC_NB_4 |						\
> -		 AT91_SDRAMC_CAS_3 |						\
> -		 AT91_SDRAMC_DBW_32 |						\
> -		 (1 <<  8) |		/* Write Recovery Delay */		\
> -		 (7 << 12) |		/* Row Cycle Delay */			\
> -		 (2 << 16) |		/* Row Precharge Delay */		\
> -		 (2 << 20) |		/* Row to Column Delay */		\
> -		 (5 << 24) |		/* Active to Precharge Delay */		\
> -		 (1 << 28))		/* Exit Self Refresh to Active Delay */
> -
> -/* Memory Device Register -> SDRAM */
> -#define CONFIG_SYS_SDRC_MDR_VAL		AT91_SDRAMC_MD_SDRAM
> -#define CONFIG_SYS_SDRC_TR_VAL2		1200		/* SDRAM_TR */
> -
> -/* setup SMC0, CS0 (NOR Flash) - 16-bit, 15 WS */
> -#define CONFIG_SYS_SMC_CS	0
> -#define CONFIG_SYS_SMC_SETUP_VAL					\
> -		(AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |	\
> -		 AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10))
> -#define CONFIG_SYS_SMC_PULSE_VAL					\
> -		(AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |	\
> -		 AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11))
> -#define CONFIG_SYS_SMC_CYCLE_VAL	\
> -		(AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22))
> -#define CONFIG_SYS_SMC_MODE_VAL					\
> -		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
> -		 AT91_SMC_DBW_16 |				\
> -		 AT91_SMC_TDFMODE |				\
> -		 AT91_SMC_TDF_(6))
> -
> -/* user reset enable */
> -#define CONFIG_SYS_RSTC_RMR_VAL			\
> -		(AT91_RSTC_KEY |		\
> -		AT91_RSTC_PROCRST |		\
> -		AT91_RSTC_RSTTYP_WAKEUP |	\
> -		AT91_RSTC_RSTTYP_WATCHDOG)
> -
> -/* Disable Watchdog */
> -#define CONFIG_SYS_WDTC_WDMR_VAL				\
> -		(AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |	\
> -		 AT91_WDT_WDV |					\
> -		 AT91_WDT_WDDIS |				\
> -		 AT91_WDT_WDD)
> -
>  #endif	/* __CONFIG_H */
> diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
> new file mode 100644
> index 0000000..2f8b312
> --- /dev/null
> +++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
> @@ -0,0 +1,104 @@
> +/*
> + * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *
> + * Under GPLv2
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <mach/hardware.h>
> +#include <mach/at91_rstc.h>
> +#include <mach/at91_wdt.h>
> +#include <mach/at91_pmc.h>
> +#include <mach/at91sam9_smc.h>
> +#include <mach/at91sam9_sdramc.h>
> +#include <mach/at91sam9_matrix.h>
> +#include <mach/at91_lowlevel_init.h>
> +
> +#define MASTER_PLL_MUL		171
> +#define MASTER_PLL_DIV		14
> +
> +void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
> +{
> +	/* Disable Watchdog */
> +	cfg->wdt_mr =
> +		AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |
> +		AT91_WDT_WDV |
> +		AT91_WDT_WDDIS |
> +		AT91_WDT_WDD;
> +
> +	/* define PDC[31:16] as DATA[31:16] */
> +	cfg->ebi_pio_pdr = 0xFFFF0000;
> +	/* no pull-up for D[31:16] */
> +	cfg->ebi_pio_ppudr = 0xFFFF0000;
> +	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
> +	cfg->ebi_csa =
> +		AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_3_3V |
> +		AT91_MATRIX_EBI0_CS1A_SDRAMC;
> +
> +	cfg->smc_cs = 0;
> +	cfg->smc_mode =
> +		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
> +		AT91_SMC_DBW_16 |
> +		AT91_SMC_TDFMODE |
> +		AT91_SMC_TDF_(6);
> +	cfg->smc_cycle =
> +		AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22);
> +	cfg->smc_pulse =
> +		AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |
> +		AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11);
> +	cfg->smc_setup =
> +		AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |
> +		AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10);
> +
> +	cfg->pmc_mor =
> +		AT91_PMC_MOSCEN |
> +		(255 << 8);		/* Main Oscillator Start-up Time */
> +	cfg->pmc_pllar =
> +		AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */
> +		AT91_PMC_OUT |
> +		AT91_PMC_PLLCOUNT |	/* PLL Counter */
> +		(2 << 28) |		/* PLL Clock Frequency Range */
> +		((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV);
> +	/* PCK/2 = MCK Master Clock from PLLA */
> +	cfg->pmc_mckr1 =
> +		AT91_PMC_CSS_SLOW |
> +		AT91_PMC_PRES_1 |
> +		AT91SAM9_PMC_MDIV_2 |
> +		AT91_PMC_PDIV_1;
> +	/* PCK/2 = MCK Master Clock from PLLA */
> +	cfg->pmc_mckr2 =
> +		AT91_PMC_CSS_PLLA |
> +		AT91_PMC_PRES_1 |
> +		AT91SAM9_PMC_MDIV_2 |
> +		AT91_PMC_PDIV_1;
> +
> +	/* SDRAM */
> +	/* SDRAMC_TR - Refresh Timer register */
> +	cfg->sdrc_tr1 = 0x13C;
> +	/* SDRAMC_CR - Configuration register*/
> +	cfg->sdrc_cr =
> +		AT91_SDRAMC_NC_9 |
> +		AT91_SDRAMC_NR_13 |
> +		AT91_SDRAMC_NB_4 |
> +		AT91_SDRAMC_CAS_3 |
> +		AT91_SDRAMC_DBW_32 |
> +		(1 <<  8) |		/* Write Recovery Delay */
> +		(7 << 12) |		/* Row Cycle Delay */
> +		(2 << 16) |		/* Row Precharge Delay */
> +		(2 << 20) |		/* Row to Column Delay */
> +		(5 << 24) |		/* Active to Precharge Delay */
> +		(1 << 28);		/* Exit Self Refresh to Active Delay */
> +
> +	/* Memory Device Register -> SDRAM */
> +	cfg->sdrc_mdr = AT91_SDRAMC_MD_SDRAM;
> +	/* SDRAM_TR */
> +	cfg->sdrc_tr2 = 1200;
> +
> +	/* user reset enable */
> +	cfg->rstc_rmr =
> +		AT91_RSTC_KEY |
> +		AT91_RSTC_PROCRST |
> +		AT91_RSTC_RSTTYP_WAKEUP |
> +		AT91_RSTC_RSTTYP_WATCHDOG;
> +}
> diff --git a/arch/arm/boards/mmccpu/Makefile b/arch/arm/boards/mmccpu/Makefile
> index eb072c0..aecbc5a 100644
> --- a/arch/arm/boards/mmccpu/Makefile
> +++ b/arch/arm/boards/mmccpu/Makefile
> @@ -1 +1,6 @@
>  obj-y += init.o
> +
> +lowlevel_init-y = lowlevel_init.o
> +obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
> +
> +pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
> diff --git a/arch/arm/boards/mmccpu/config.h b/arch/arm/boards/mmccpu/config.h
> index e6215dc..c896a93 100644
> --- a/arch/arm/boards/mmccpu/config.h
> +++ b/arch/arm/boards/mmccpu/config.h
> @@ -3,122 +3,4 @@
>  
>  #define AT91_MAIN_CLOCK		18432000
>  
> -/* values */
> -#define MASTER_PLL_MUL		54
> -#define MASTER_PLL_DIV		4
> -
> -/* clocks */
> -#define CONFIG_SYS_MOR_VAL						\
> -		(AT91_PMC_MOSCEN |					\
> -		 (255 << 8))		/* Main Oscillator Start-up Time */
> -#define CONFIG_SYS_PLLAR_VAL						\
> -		(AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */ \
> -		 AT91_PMC_OUT |						\
> -		 AT91_PMC_PLLCOUNT |	/* PLL Counter */		\
> -		 (2 << 28) |		/* PLL Clock Frequency Range */	\
> -		 ((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV))
> -
> -/* PCK/2 = MCK Master Clock from PLLA */
> -#define	CONFIG_SYS_MCKR1_VAL		\
> -		(AT91_PMC_CSS_SLOW |	\
> -		 AT91_PMC_PRES_1 |	\
> -		 AT91SAM9_PMC_MDIV_2 |	\
> -		 AT91_PMC_PDIV_1)
> -/* PCK/2 = MCK Master Clock from PLLA */
> -#define	CONFIG_SYS_MCKR2_VAL		\
> -		(AT91_PMC_CSS_PLLA |	\
> -		 AT91_PMC_PRES_1 |	\
> -		 AT91SAM9_PMC_MDIV_2 |	\
> -		 AT91_PMC_PDIV_1)
> -
> -/* define PDC[31:16] as DATA[31:16] */
> -#define CONFIG_SYS_PIOD_PDR_VAL1	0xFFFF0000
> -/* no pull-up for D[31:16] */
> -#define CONFIG_SYS_PIOD_PPUDR_VAL	0xFFFF0000
> -/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 1.8V memories */
> -#define CONFIG_SYS_MATRIX_EBI0CSA_VAL					\
> -	(AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_1_8V |	\
> -	 AT91_MATRIX_EBI0_CS1A_SDRAMC | AT91_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA)
> -
> -/* SDRAM */
> -/* SDRAMC_TR - Refresh Timer register */
> -#define CONFIG_SYS_SDRC_TR_VAL1		0x13c
> -/* SDRAMC_CR - Configuration register*/
> -#define CONFIG_SYS_SDRC_CR_VAL							\
> -		(AT91_SDRAMC_NC_9 |						\
> -		 AT91_SDRAMC_NR_13 |						\
> -		 AT91_SDRAMC_NB_4 |						\
> -		 AT91_SDRAMC_CAS_3 |						\
> -		 AT91_SDRAMC_DBW_32 |						\
> -		 (2 <<  8) |	/* tWR -  Write Recovery Delay */		\
> -		 (8 << 12) |	/* tRC -  Row Cycle Delay */			\
> -		 (2 << 16) |	/* tRP -  Row Precharge Delay */		\
> -		 (2 << 20) |	/* tRCD - Row to Column Delay */		\
> -		 (5 << 24) |	/* tRAS - Active to Precharge Delay */		\
> -		 (12 << 28))	/* tXSR - Exit Self Refresh to Active Delay */
> -
> -/* Memory Device Register -> SDRAM */
> -#define CONFIG_SYS_SDRC_MDR_VAL		AT91_SDRAMC_MD_SDRAM
> -#define CONFIG_SYS_SDRC_TR_VAL2		780		/* SDRAM_TR */
> -
> -/* setup CS0 (NOR Flash) - 16-bit */
> -#define CONFIG_SYS_SMC_CS	0
> -#if 1
> -#define CONFIG_SYS_SMC_SETUP_VAL					\
> -		(AT91_SMC_NWESETUP_(3) | AT91_SMC_NCS_WRSETUP_(2) |	\
> -		 AT91_SMC_NRDSETUP_(8) | AT91_SMC_NCS_RDSETUP_(0))
> -#define CONFIG_SYS_SMC_PULSE_VAL					\
> -		(AT91_SMC_NWEPULSE_(5) | AT91_SMC_NCS_WRPULSE_(7) |	\
> -		 AT91_SMC_NRDPULSE_(5) | AT91_SMC_NCS_RDPULSE_(13))
> -#define CONFIG_SYS_SMC_CYCLE_VAL	\
> -		(AT91_SMC_NWECYCLE_(16) | AT91_SMC_NRDCYCLE_(16))
> -#define CONFIG_SYS_SMC_MODE_VAL					\
> -		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
> -		 AT91_SMC_DBW_16 |				\
> -		 AT91_SMC_TDFMODE |				\
> -		 AT91_SMC_TDF_(6))
> -#elif 0	/* slow setup */
> -#define CONFIG_SYS_SMC_SETUP_VAL					\
> -		(AT91_SMC_NWESETUP_(3) | AT91_SMC_NCS_WRSETUP_(2) |	\
> -		 AT91_SMC_NRDSETUP_(8) | AT91_SMC_NCS_RDSETUP_(0))
> -#define CONFIG_SYS_SMC_PULSE_VAL					\
> -		(AT91_SMC_NWEPULSE_(5) | AT91_SMC_NCS_WRPULSE_(7) |	\
> -		 AT91_SMC_NRDPULSE_(5) | AT91_SMC_NCS_RDPULSE_(13))
> -#define CONFIG_SYS_SMC_CYCLE_VAL	\
> -		(AT91_SMC_NWECYCLE_(0xd00) | AT91_SMC_NRDCYCLE_(0xd00))
> -#define CONFIG_SYS_SMC_MODE_VAL					\
> -		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
> -		 AT91_SMC_DBW_16 |				\
> -		 AT91_SMC_TDFMODE |				\
> -		 AT91_SMC_TDF_(1))
> -#else	/* RONETIX' original values */
> -#define CONFIG_SYS_SMC_SETUP_VAL					\
> -		(AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |	\
> -		 AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10))
> -#define CONFIG_SYS_SMC_PULSE_VAL					\
> -		(AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |	\
> -		 AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11))
> -#define CONFIG_SYS_SMC_CYCLE_VAL	\
> -		(AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22))
> -#define CONFIG_SYS_SMC_MODE_VAL					\
> -		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
> -		 AT91_SMC_DBW_16 |				\
> -		 AT91_SMC_TDFMODE |				\
> -		 AT91_SMC_TDF_(6))
> -#endif
> -
> -/* user reset enable */
> -#define CONFIG_SYS_RSTC_RMR_VAL			\
> -		(AT91_RSTC_KEY |		\
> -		AT91_RSTC_PROCRST |		\
> -		AT91_RSTC_RSTTYP_WAKEUP |	\
> -		AT91_RSTC_RSTTYP_WATCHDOG)
> -
> -/* Disable Watchdog */
> -#define CONFIG_SYS_WDTC_WDMR_VAL				\
> -		(AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |	\
> -		 AT91_WDT_WDV |					\
> -		 AT91_WDT_WDDIS |				\
> -		 AT91_WDT_WDD)
> -
>  #endif	/* __CONFIG_H */
> diff --git a/arch/arm/boards/mmccpu/lowlevel_init.c b/arch/arm/boards/mmccpu/lowlevel_init.c
> new file mode 100644
> index 0000000..82500eb
> --- /dev/null
> +++ b/arch/arm/boards/mmccpu/lowlevel_init.c
> @@ -0,0 +1,135 @@
> +/*
> + * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *
> + * Under GPLv2
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <mach/hardware.h>
> +#include <mach/at91_rstc.h>
> +#include <mach/at91_wdt.h>
> +#include <mach/at91_pmc.h>
> +#include <mach/at91sam9_smc.h>
> +#include <mach/at91sam9_sdramc.h>
> +#include <mach/at91sam9_matrix.h>
> +#include <mach/at91_lowlevel_init.h>
> +
> +#define MASTER_PLL_MUL		54
> +#define MASTER_PLL_DIV		4
> +
> +void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
> +{
> +	/* Disable Watchdog */
> +	cfg->wdt_mr =
> +		AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |
> +		AT91_WDT_WDV |
> +		AT91_WDT_WDDIS |
> +		AT91_WDT_WDD;
> +
> +	/* define PDC[31:16] as DATA[31:16] */
> +	cfg->ebi_pio_pdr = 0xFFFF0000;
> +	/* no pull-up for D[31:16] */
> +	cfg->ebi_pio_ppudr = 0xFFFF0000;
> +	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
> +	cfg->ebi_csa =
> +		AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_1_8V |
> +		AT91_MATRIX_EBI0_CS1A_SDRAMC |
> +		AT91_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA;
> +
> +	cfg->smc_cs = 0;
> +#if 1
> +	cfg->smc_mode =
> +		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
> +		AT91_SMC_DBW_16 |
> +		AT91_SMC_TDFMODE |
> +		AT91_SMC_TDF_(6);
> +	cfg->smc_cycle =
> +		AT91_SMC_NWECYCLE_(16) | AT91_SMC_NRDCYCLE_(16);
> +	cfg->smc_pulse =
> +		AT91_SMC_NWEPULSE_(5) | AT91_SMC_NCS_WRPULSE_(7) |
> +		AT91_SMC_NRDPULSE_(5) | AT91_SMC_NCS_RDPULSE_(13);
> +	cfg->smc_setup =
> +		AT91_SMC_NWESETUP_(3) | AT91_SMC_NCS_WRSETUP_(2) |
> +		AT91_SMC_NRDSETUP_(8) | AT91_SMC_NCS_RDSETUP_(0);
> +#elif 0
> +	cfg->smc_mode =
> +		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
> +		AT91_SMC_DBW_16 |
> +		AT91_SMC_TDFMODE |
> +		AT91_SMC_TDF_(1);
> +	cfg->smc_cycle =
> +		AT91_SMC_NWECYCLE_(0xd00) | AT91_SMC_NRDCYCLE_(0xd00);
> +	cfg->smc_pulse =
> +		AT91_SMC_NWEPULSE_(5) | AT91_SMC_NCS_WRPULSE_(7) |
> +		AT91_SMC_NRDPULSE_(5) | AT91_SMC_NCS_RDPULSE_(13);
> +	cfg->smc_setup =
> +		AT91_SMC_NWESETUP_(3) | AT91_SMC_NCS_WRSETUP_(2) |
> +		AT91_SMC_NRDSETUP_(8) | AT91_SMC_NCS_RDSETUP_(0);
> +#else
> +	cfg->smc_mode =
> +		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
> +		AT91_SMC_DBW_16 |
> +		AT91_SMC_TDFMODE |
> +		AT91_SMC_TDF_(6);
> +	cfg->smc_cycle =
> +		AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22);
> +	cfg->smc_pulse =
> +		AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |
> +		AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11);
> +	cfg->smc_setup =
> +		AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |
> +		AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10);
> +#endif

Please keep the comments from the original code (slow, Ronetix
original), or (preferred), just drop the unused code.

> +
> +	cfg->pmc_mor = 

Trailing whitespace (some more in this patch)

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
