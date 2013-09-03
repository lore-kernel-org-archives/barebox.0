Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGsXa-0002T2-LX
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 15:29:16 +0000
Received: from mail638.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D9E17106C132
 for <barebox@lists.infradead.org>; Tue,  3 Sep 2013 17:28:52 +0200 (CEST)
Date: Tue, 3 Sep 2013 17:29:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130903152946.GB22507@ns203013.ovh.net>
References: <58FB74C2-85EF-43A1-A491-D78CF5DA585E@reinrag.net>
 <20130903113829.GM19197@ns203013.ovh.net>
 <9A7E2EF4-7C14-440D-B0DF-1B24A73D0E00@reinrag.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9A7E2EF4-7C14-440D-B0DF-1B24A73D0E00@reinrag.net>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/4] ARM: support for CPO Science DataCollector II
To: Darren Garnier <dgarnier@reinrag.net>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> >> +{
> >> +	at91_add_device_udc(&dc_udc_data);
> > 	this will not work on 9g45
> 
> Right.. and it doesn't work well on the 9g10 either. You can't compile the OHCI driver with CONFIG_MMU, and
> without MMU, other things don't work well. I haven't figured it out yet, but without MMU, my DFU support will fail and
> corrupt the dataflash.
> 
> I might be the only one who needs the OHCI + MMU fixed.  I might work on it, but I'd like to know why you through up
> your hands on it before.
not yet get time to fix it

I'm supposed to work on it soon but need to finish some delivery first

as I've been busy on secure boot and other new feature fox barebox
> 
> >> +
> >> +static int __init main_clock(void)
> >> +{
> >> +	int tmp;
> >> +	static int main_clock = 0;
> >> +
> >> +	// this works for both boards, but only if at91boostrap was used first to setup the PLL lock.
> >> +	if (!main_clock) {
> >> +		do { // wait for PLL lock..
> >> +			tmp = at91_pmc_read(AT91_CKGR_MCFR);
> >> +		} while (!(tmp & AT91_PMC_MAINRDY));
> >> +		tmp = (tmp & AT91_PMC_MAINF) * (AT91_SLOW_CLOCK / 16);
> >> +		main_clock = (tmp > 19500000) ? 20000000 : 18432000;
> >> +	}
> >> +
> >> +	return main_clock;
> >> +}
> > 
> > ??? what is that?
> 
> OK... this relates to some other comments later of course.  What you see is a slight variation of 
> what would happen if you put 0 in for at91_set_main_clock.   The problem is I can't just put in a single value.  
> Unfortunately, I have boards now with both 18.432 MHz and 20.000 MHz.
> 
> I read the comment in the kernel code about the frequency detect not being quite reliable, and I 
> thought maybe the issue was that it would be off a few hertz from the correct value.  So, since I have 
> only 2 clocks to support, I just split it down the middle and lock onto one of the correct values.

the issue is not this one it's more that IP can really detect only supported
freq and just in case I does prefer to do not use the autodetection but it
should work fine
> 
> Its in a subroutine because I wasn't aware of clk_get api... that will be fixed.
> 
> 
> >> +
> >> +static int cpodc2_devices_init(void)
> >> +{
> >> +	u32 board_revision = 0;
> >> +
> >> +	dc_add_device_spi();
> >> +	dc_add_device_nand();
> >> +	dc_add_device_udc();
> >> +	dc_add_device_usbh();
> >> +	dc_add_device_buttons();
> >> +	dc_add_device_lcdc();
> >> +
> >> +	if (! IS_ENABLED(CONFIG_MTD_DATAFLASH)) {
> >> +		if (IS_ENABLED(CONFIG_AT91_LOAD_BAREBOX_SRAM)) {
> >> +			devfs_add_partition("nand0", 0, SZ_256K + SZ_128K, DEVFS_PARTITION_FIXED, "self_raw");
> >> +			export_env_ull("borebox_first_stage", 1);
> > why this
> 
> This is copied this section from the at91sam9261-ek of course, but really I wanted an option to start using the boards without dataflash.

so check the spi splash device is present or not
so you can detect it at runtime
> Occasionally there are supply constraints on the part and so we are considering dropping the part entirely.  Of course, I haven't really tested
> this functionality yet and my init scripts are not cognizant of the possibility, so I suppose I should just drop it for now and resubmit
> NAND only support when it is done.
> 
> >> +		} else {
> >> +			devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "bootstrap_raw");
> >> +			dev_add_bb_dev("bootstrap_raw","bootstrap");
> >> +			devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
> >> +		}
> >> +		dev_add_bb_dev("self_raw", "self0");
> >> +		devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
> >> +		dev_add_bb_dev("env_raw", "env0");
> >> +		devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
> >> +		dev_add_bb_dev("env_raw1", "env1");
> >> +	} else { // dataflash partitions
> >> +		devfs_add_partition("dataflash0", 0x00000, 0x4200,  DEVFS_PARTITION_FIXED, "bootstrap");
> >> +		devfs_add_partition("dataflash0", 0x04200, 0x4200,  DEVFS_PARTITION_FIXED, "env0");
> >> +		devfs_add_partition("dataflash0", 0x08400, 0x39C00, DEVFS_PARTITION_FIXED, "self0");
> >> +	}
> >> +
> >> +	// we should probably also get revision data from the msp430
> >> +	// but it takes a while to load...
> >> +	// just fix based on whether CPU is 9g10
> >> +	
> >> +	if (nand_pdata.bus_width_16)
> >> +		board_revision |= (1<<31);
> >> +
> >> +	if (cpu_is_at91sam9g10())
> >> +		board_revision |= (0x01<<8);
> >> +
> >> +	if (main_clock() > 19500000)
> >> +		board_revision |= (0x01<<10);
> > nack request the clk via clk_get
> 
> ack.
> 
> >> +
> >> +	armlinux_set_revision(board_revision);
> >> +	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
> >> +	armlinux_set_architecture(MACH_TYPE_CPODC2);
> >> +
> >> +	return 0;
> >> +}
> >> +device_initcall(cpodc2_devices_init);
> >> +
> >> +static int cpodc2_console_init(void)
> >> +{
> >> +	barebox_set_model("CPO Science DataCollector II");
> >> +	barebox_set_hostname("cpodc2");
> >> +	
> >> +	at91_register_uart(0, 0);
> >> +#ifdef CONFIG_CPODC2_MSP430
> >> +	at91_register_uart(1, 0);
> >> +	// deactivate console and use it for the msp command
> >> +	cpodc2_msp430_init_console("atmel_usart1");
> >> +#endif
> >> +	return 0;
> >> +}
> >> +console_initcall(cpodc2_console_init);
> >> +
> >> +static int cpodc2_main_clock(void)
> >> +{
> >> +	// bootloader should have set the frequency:
> >> +	at91_set_main_clock(main_clock());
> > 
> > 	this should be the case so just put 0 but we prefer on at91 to set it
> > 	manually as the IP is not 100% for main clock detection
> 
> See above.
> 
> >> +	
> >> +	return 0;
> >> +}
> >> +pure_initcall(cpodc2_main_clock);
> >> +
> >> diff --git a/arch/arm/boards/cpodc2/lowlevel_init.c b/arch/arm/boards/cpodc2/lowlevel_init.c
> >> new file mode 100644
> >> index 0000000..0565841
> >> --- /dev/null
> >> +++ b/arch/arm/boards/cpodc2/lowlevel_init.c
> >> @@ -0,0 +1,108 @@
> >> +/*
> >> + * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >> + *
> >> + * Under GPLv2
> >> + */
> >> +
> >> +#include <common.h>
> >> +#include <init.h>
> >> +#include <mach/hardware.h>
> >> +#include <mach/at91_rstc.h>
> >> +#include <mach/at91_wdt.h>
> >> +#include <mach/at91_pmc.h>
> >> +#include <mach/at91sam9_smc.h>
> >> +#include <mach/at91sam9_sdramc.h>
> >> +#include <mach/at91sam9_matrix.h>
> >> +#include <mach/at91_lowlevel_init.h>
> >> +
> >> +#define MASTER_CLOCK		200
> >> +
> >> +#if MASTER_CLOCK == 200
> >> +#define MASTER_PLL_MUL		162
> >> +#define MASTER_PLL_DIV		15
> >> +#elif MASTER_CLOCK == 239
> >> +#define MASTER_PLL_MUL		13
> >> +#define MASTER_PLL_DIV		1
> >> +#endif
> >> +
> >> +void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
> >> +{
> >> +	/* Disable Watchdog */
> >> +	cfg->wdt_mr =
> >> +		AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |
> >> +		AT91_WDT_WDV |
> >> +		AT91_WDT_WDDIS |
> >> +		AT91_WDT_WDD;
> >> +
> >> +	/* define PDC[31:16] as DATA[31:16] */
> >> +	cfg->ebi_pio_pdr = 0xFFFF0000;
> >> +	/* no pull-up for D[31:16] */
> >> +	cfg->ebi_pio_ppudr = 0xFFFF0000;
> >> +	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
> >> +	cfg->ebi_csa =
> >> +		AT91_MATRIX_DBPUC | AT91_MATRIX_CS1A_SDRAMC;
> >> +
> >> +	cfg->smc_cs = 3;
> >> +	cfg->smc_mode =
> >> +		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
> >> +		AT91_SMC_DBW_8 |
> >> +		AT91_SMC_EXNWMODE_DISABLE |
> >> +		AT91_SMC_TDF_(2);
> >> +	cfg->smc_cycle =
> >> +		AT91_SMC_NWECYCLE_(5) | AT91_SMC_NRDCYCLE_(5);
> >> +	cfg->smc_pulse =
> >> +		AT91_SMC_NWEPULSE_(3) | AT91_SMC_NCS_WRPULSE_(3) |
> >> +		AT91_SMC_NRDPULSE_(3) | AT91_SMC_NCS_RDPULSE_(3);
> >> +	cfg->smc_setup =
> >> +		AT91_SMC_NWESETUP_(1) | AT91_SMC_NCS_WRSETUP_(0) |
> >> +		AT91_SMC_NRDSETUP_(1) | AT91_SMC_NCS_RDSETUP_(0);
> >> +
> >> +	cfg->pmc_mor =
> >> +		AT91_PMC_MOSCEN |
> >> +		(255 << 8);		/* Main Oscillator Start-up Time */
> >> +	cfg->pmc_pllar =
> >> +		AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */
> >> +		AT91_PMC_OUT |
> >> +		((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV);
> >> +	/* PCK/2 = MCK Master Clock from PLLA */
> >> +	cfg->pmc_mckr1 =
> >> +		AT91_PMC_CSS_SLOW |
> >> +		AT91_PMC_PRES_1 |
> >> +		AT91SAM9_PMC_MDIV_2 |
> >> +		AT91_PMC_PDIV_1;
> >> +	/* PCK/2 = MCK Master Clock from PLLA */
> >> +	cfg->pmc_mckr2 =
> >> +		AT91_PMC_CSS_PLLA |
> >> +		AT91_PMC_PRES_1 |
> >> +		AT91SAM9_PMC_MDIV_2 |
> >> +		AT91_PMC_PDIV_1;
> >> +
> >> +	/* SDRAM */
> >> +	/* SDRAMC_TR - Refresh Timer register */
> >> +	cfg->sdrc_tr1 = 0x13C;
> >> +	/* SDRAMC_CR - Configuration register*/
> >> +	cfg->sdrc_cr =
> >> +		AT91_SDRAMC_NC_9 |
> >> +		AT91_SDRAMC_NR_13 |
> >> +		AT91_SDRAMC_NB_4 |
> >> +		AT91_SDRAMC_CAS_2 |
> >> +		AT91_SDRAMC_DBW_32 |
> >> +		(2 <<  8) |		/* Write Recovery Delay */
> >> +		(7 << 12) |		/* Row Cycle Delay */
> >> +		(2 << 16) |		/* Row Precharge Delay */
> >> +		(2 << 20) |		/* Row to Column Delay */
> >> +		(5 << 24) |		/* Active to Precharge Delay */
> >> +		(8 << 28);		/* Exit Self Refresh to Active Delay */
> >> +
> >> +	/* Memory Device Register -> SDRAM */
> >> +	cfg->sdrc_mdr = AT91_SDRAMC_MD_SDRAM;
> >> +	/* SDRAM_TR */
> >> +	cfg->sdrc_tr2 = (MASTER_CLOCK * 7);
> >> +
> >> +	/* user reset enable */
> >> +	cfg->rstc_rmr =
> >> +		AT91_RSTC_KEY |
> >> +		AT91_RSTC_PROCRST |
> >> +		AT91_RSTC_RSTTYP_WAKEUP |
> >> +		AT91_RSTC_RSTTYP_WATCHDOG;
> >> +}
> >> diff --git a/arch/arm/boards/cpodc2/msp430.c b/arch/arm/boards/cpodc2/msp430.c
> >> new file mode 100644
> >> index 0000000..1c46528
> >> --- /dev/null
> >> +++ b/arch/arm/boards/cpodc2/msp430.c
> > 
> > msp430 is a soc name please find something better and create as device not a
> > command to set stuff so we can use parameter var in the shell
> 
> Ack to both...
> 
> 
> >> 
> >> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> >> index 5fb3ead..2701a98 100644
> >> --- a/arch/arm/mach-at91/Kconfig
> >> +++ b/arch/arm/mach-at91/Kconfig
> >> @@ -271,6 +271,11 @@ config MACH_AT91SAM9261EK
> >> 	  Select this if you are using Atmel's AT91SAM9261-EK Evaluation Kit.
> >> 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3820>
> >> 
> >> +config MACH_CPODC2_9261
> >> +    bool "CPO Science DataCollector II v2.0"
> >> +    select MACH_CPODC2
> >> +    select HAVE_NAND_ATMEL_BUSWIDTH_16
> >> +
> >> config MACH_PM9261
> >> 	bool "Ronetix PM9261"
> >> 	select HAS_DM9000
> >> @@ -297,12 +302,27 @@ config MACH_AT91SAM9G10EK
> >> 	  Select this if you are using Atmel's AT91SAM9G10-EK Evaluation Kit.
> >> 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=4588>
> >> 
> >> +config MACH_CPODC2_9G10
> >> +    bool "CPO Science DataCollector II v2.1"
> >> +    select HAVE_NAND_ATMEL_BUSWIDTH_16
> >> +    select MACH_CPODC2
> >> +
> >> endchoice
> >> 
> >> endif
> >> 
> >> # ----------------------------------------------------------
> >> 
> >> +if SOC_AT91SAM9261
> >> +
> >> +config MACH_CPODC2
> >> +    bool
> >> +    depends on MACH_CPODC2_9261 || MACH_CPODC2_9G10
> > why 2?
> 
> Because when I try to put in just MACH_CPODC2 under both MACH_AT91SAM9261 and MACH_AT91SAM9G10, KConfig complains.
so declare 2 mach as done for the Calao USB-A926x
> 
> Probably, the whole section should be reworked not to ask for CPU (MACH) first, but to ask for SOC first and CPU as a SOC option (if required, which
> given the nice rework of the code here, shouldn't even be necessary, but I don't know about the other atmel soc families).
this is what I did for the kernel but on barebox it's need huge rework.

which might end as on the kernel to a simple switch to DT
> 
> Thanks for the great critique and the excellent work you've been doing on the AT91 boards.  You've really made my job easier now that I can start
> switching over to your work.

your welcome

I maintain barebox on at91 and the kernel

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
