Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOkXb-0001kR-NL
 for barebox@lists.infradead.org; Thu, 18 Oct 2012 07:29:16 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 796F7FF9205
 for <barebox@lists.infradead.org>; Thu, 18 Oct 2012 09:38:42 +0200 (CEST)
Date: Thu, 18 Oct 2012 09:26:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121018072656.GB22418@game.jcrosoft.org>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
 <1350507817-7819-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350507817-7819-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 02/28] ARM at91sam926x: provide reset function for
 boards with lowlevel init
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 23:03 Wed 17 Oct     , Sascha Hauer wrote:
> Some Atmel boards use a reset() function provided by the architecture.
> Add a reset function for the board instead and call the architecture
> specific init function from there. While at it, test if we are running
> from SDRAM and skip the init function in this case. This makes the configs
> safe for both first and second stage.

no when using the lowlevel init ont at91 we are first stage so this can not
work at91_get_sdram_size can only known the ramsize after the lowlevle is done

Best Rebgards,
J.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/at91sam9263ek/Makefile         |    2 ++
>  arch/arm/boards/at91sam9263ek/lowlevel.c       |   15 +++++++++++++++
>  arch/arm/boards/pm9261/Makefile                |    2 ++
>  arch/arm/boards/pm9261/lowlevel.c              |   14 ++++++++++++++
>  arch/arm/boards/pm9263/Makefile                |    2 ++
>  arch/arm/boards/pm9263/lowlevel.c              |   14 ++++++++++++++
>  arch/arm/mach-at91/Kconfig                     |   11 +++++++++++
>  arch/arm/mach-at91/Makefile                    |    4 +++-
>  arch/arm/mach-at91/at91sam926x_lowlevel_init.c |    9 +++++++--
>  arch/arm/mach-at91/include/mach/board.h        |    3 +++
>  10 files changed, 73 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/boards/at91sam9263ek/lowlevel.c
>  create mode 100644 arch/arm/boards/pm9261/lowlevel.c
>  create mode 100644 arch/arm/boards/pm9263/lowlevel.c
> 
> diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
> index eb072c0..47ab803 100644
> --- a/arch/arm/boards/at91sam9263ek/Makefile
> +++ b/arch/arm/boards/at91sam9263ek/Makefile
> @@ -1 +1,3 @@
>  obj-y += init.o
> +obj-y += lowlevel.o
> +pbl-y += lowlevel.o
> diff --git a/arch/arm/boards/at91sam9263ek/lowlevel.c b/arch/arm/boards/at91sam9263ek/lowlevel.c
> new file mode 100644
> index 0000000..6050bcd
> --- /dev/null
> +++ b/arch/arm/boards/at91sam9263ek/lowlevel.c
> @@ -0,0 +1,15 @@
> +#include <common.h>
> +#include <init.h>
> +#include <sizes.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/barebox-arm-head.h>
> +#include <mach/hardware.h>
> +#include <mach/board.h>
> +#include <mach/at91sam9_sdramc.h>
> +
> +void __naked __bare_init reset(void)
> +{
> +	common_reset();
> +
> +	at91sam926x_entry(AT91_SDRAM_BASE, at91_get_sdram_size());
> +}
> diff --git a/arch/arm/boards/pm9261/Makefile b/arch/arm/boards/pm9261/Makefile
> index eb072c0..47ab803 100644
> --- a/arch/arm/boards/pm9261/Makefile
> +++ b/arch/arm/boards/pm9261/Makefile
> @@ -1 +1,3 @@
>  obj-y += init.o
> +obj-y += lowlevel.o
> +pbl-y += lowlevel.o
> diff --git a/arch/arm/boards/pm9261/lowlevel.c b/arch/arm/boards/pm9261/lowlevel.c
> new file mode 100644
> index 0000000..b8a8728
> --- /dev/null
> +++ b/arch/arm/boards/pm9261/lowlevel.c
> @@ -0,0 +1,14 @@
> +#include <common.h>
> +#include <init.h>
> +#include <sizes.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/barebox-arm-head.h>
> +#include <mach/hardware.h>
> +#include <mach/board.h>
> +
> +void __naked __bare_init reset(void)
> +{
> +	common_reset();
> +
> +	at91sam926x_entry(AT91_SDRAM_BASE, SZ_64M);
> +}
> diff --git a/arch/arm/boards/pm9263/Makefile b/arch/arm/boards/pm9263/Makefile
> index eb072c0..47ab803 100644
> --- a/arch/arm/boards/pm9263/Makefile
> +++ b/arch/arm/boards/pm9263/Makefile
> @@ -1 +1,3 @@
>  obj-y += init.o
> +obj-y += lowlevel.o
> +pbl-y += lowlevel.o
> diff --git a/arch/arm/boards/pm9263/lowlevel.c b/arch/arm/boards/pm9263/lowlevel.c
> new file mode 100644
> index 0000000..b8a8728
> --- /dev/null
> +++ b/arch/arm/boards/pm9263/lowlevel.c
> @@ -0,0 +1,14 @@
> +#include <common.h>
> +#include <init.h>
> +#include <sizes.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/barebox-arm-head.h>
> +#include <mach/hardware.h>
> +#include <mach/board.h>
> +
> +void __naked __bare_init reset(void)
> +{
> +	common_reset();
> +
> +	at91sam926x_entry(AT91_SDRAM_BASE, SZ_64M);
> +}
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 30225fa..f962084 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -107,6 +107,9 @@ config SUPPORT_CALAO_DAB_MMX
>  config SUPPORT_CALAO_MOB_TNY_MD2
>  	bool
>  
> +config HAVE_AT91SAM926X_LOWLEVEL_INIT
> +	bool
> +
>  # ----------------------------------------------------------
>  
>  if ARCH_AT91RM9200
> @@ -116,6 +119,7 @@ choice
>  	prompt "AT91RM9200 Board Type"
>  
>  config MACH_AT91RM9200EK
> +	select HAVE_AT91RM9200_LOWLEVEL_INIT
>  	bool "Atmel AT91RM9200-EK Evaluation Kit"
>  	help
>  	  Select this if you are using Atmel's AT91RM9200-EK Evaluation Kit.
> @@ -180,8 +184,10 @@ config MACH_AT91SAM9261EK
>  
>  config MACH_PM9261
>  	bool "Ronetix PM9261"
> +	select HAVE_AT91SAM926X_LOWLEVEL_INIT
>  	select HAS_DM9000
>  	select MACH_HAS_LOWLEVEL_INIT
> +	select MACH_DO_LOWLEVEL_INIT
>  	help
>  	  Say y here if you are using the Ronetix PM9261 Board
>  
> @@ -258,18 +264,23 @@ choice
>  config MACH_AT91SAM9263EK
>  	bool "Atmel AT91SAM9263-EK"
>  	select MACH_HAS_LOWLEVEL_INIT
> +	select MACH_DO_LOWLEVEL_INIT
>  	select HAVE_NAND_ATMEL_BUSWIDTH_16
> +	select HAVE_AT91SAM926X_LOWLEVEL_INIT
>  	help
>  	  Say y here if you are using Atmel's AT91SAM9263-EK Evaluation board
>  
>  config MACH_MMCCPU
>  	bool "Bucyrus MMC-CPU"
> +	select HAVE_AT91SAM926X_LOWLEVEL_INIT
>  	help
>  	  Say y here if you are using the Bucyrus MMC-CPU
>  
>  config MACH_PM9263
>  	bool "Ronetix PM9263"
>  	select MACH_HAS_LOWLEVEL_INIT
> +	select MACH_DO_LOWLEVEL_INIT
> +	select HAVE_AT91SAM926X_LOWLEVEL_INIT
>  	help
>  	  Say y here if you are using the Ronetix PM9263 Board
>  
> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> index 3ade725..f9cb4f1 100644
> --- a/arch/arm/mach-at91/Makefile
> +++ b/arch/arm/mach-at91/Makefile
> @@ -1,11 +1,13 @@
>  obj-y += clock.o gpio.o
>  
> -lowlevel_init-y = at91sam926x_lowlevel_init.o
>  lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
>  obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
>  
>  pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
>  
> +obj-$(CONFIG_HAVE_AT91SAM926X_LOWLEVEL_INIT) += at91sam926x_lowlevel_init.o
> +pbl-$(CONFIG_HAVE_AT91SAM926X_LOWLEVEL_INIT) += at91sam926x_lowlevel_init.o
> +
>  obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
>  obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
>  
> diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
> index 0ee0345..a399854 100644
> --- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
> +++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
> @@ -34,12 +34,17 @@ static void inline pmc_check_mckrdy(void)
>  	} while (!(r & AT91_PMC_MCKRDY));
>  }
>  
> -void __naked __bare_init reset(void)
> +void __naked __bare_init at91sam926x_entry(unsigned long sdram_base,
> +		unsigned long sdram_size)
>  {
> +	uint32_t pc;
>  	u32 r;
>  	int i;
>  
> -	common_reset();
> +	pc = get_pc();
> +
> +	if (pc < AT91_SDRAM_BASE || pc > AT91_SDRAM_BASE + 0x10000000)
> +		goto end;
>  
>  	at91_sys_write(AT91_WDT_MR, CONFIG_SYS_WDTC_WDMR_VAL);
>  
> diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
> index 670c73d..eb71ed5 100644
> --- a/arch/arm/mach-at91/include/mach/board.h
> +++ b/arch/arm/mach-at91/include/mach/board.h
> @@ -154,4 +154,7 @@ struct at91_spi_platform_data {
>  };
>  
>  void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata);
> +
> +void at91sam926x_entry(unsigned long sdram_base, unsigned long sdram_size);
> +
>  #endif
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
