Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnNUv-0003lB-TO
 for barebox@lists.infradead.org; Mon, 13 Mar 2017 10:46:44 +0000
Date: Mon, 13 Mar 2017 11:46:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170313104619.iw3ov4uazwf74cvi@pengutronix.de>
References: <20170313080908.16482-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170313080908.16482-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1] poweroff: Allow to register poweroff handlers
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 13, 2017 at 09:09:08AM +0100, Oleksij Rempel wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Allow to register handlers for poweroff. This allows to have multiple
> poweroff implementations in a single binary. The implementation is close
> to the restart handlers.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/Kconfig                         |   2 -
>  arch/arm/boards/mioa701/gpio0_poweroff.c |   3 +-
>  arch/arm/mach-highbank/reset.c           |  20 +++---
>  arch/arm/mach-pxa/pxa2xx.c               |  15 ++++-
>  arch/arm/mach-pxa/pxa3xx.c               |  13 +++-
>  arch/mips/mach-xburst/Kconfig            |   1 -
>  arch/mips/mach-xburst/reset-jz4750.c     |  13 +++-
>  commands/Kconfig                         |   5 --
>  commands/poweroff.c                      |   3 +-
>  common/Makefile                          |   1 +
>  common/poweroff.c                        | 112 +++++++++++++++++++++++++++++++
>  include/common.h                         |   3 -
>  include/poweroff.h                       |  21 ++++++
>  13 files changed, 184 insertions(+), 28 deletions(-)
>  create mode 100644 common/poweroff.c
>  create mode 100644 include/poweroff.h
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 4d952698f..47b48308a 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -93,7 +93,6 @@ config ARCH_EP93XX
>  config ARCH_HIGHBANK
>  	bool "Calxeda Highbank"
>  	select HAS_DEBUG_LL
> -	select HAS_POWEROFF
>  	select ARCH_HAS_L2X0
>  	select CPU_V7
>  	select ARM_AMBA
> @@ -154,7 +153,6 @@ config ARCH_OMAP
>  config ARCH_PXA
>  	bool "Intel/Marvell PXA based"
>  	select GENERIC_GPIO
> -	select HAS_POWEROFF
>  
>  config ARCH_ROCKCHIP
>  	bool "Rockchip RX3xxx"
> diff --git a/arch/arm/boards/mioa701/gpio0_poweroff.c b/arch/arm/boards/mioa701/gpio0_poweroff.c
> index 2054548aa..01a5d0cc6 100644
> --- a/arch/arm/boards/mioa701/gpio0_poweroff.c
> +++ b/arch/arm/boards/mioa701/gpio0_poweroff.c
> @@ -19,6 +19,7 @@
>  #include <clock.h>
>  #include <common.h>
>  #include <init.h>
> +#include <poweroff.h>
>  #include <gpio.h>
>  #include <poller.h>
>  
> @@ -45,7 +46,7 @@ static void try_poweroff(void)
>  
>  	gpio_set_value(GPIO115_LED_nKeyboard, 0);
>  	mdelay(2000);
> -	poweroff();
> +	poweroff_machine();
>  }
>  
>  static void gpio0_poller_fn(struct poller_struct *poller)
> diff --git a/arch/arm/mach-highbank/reset.c b/arch/arm/mach-highbank/reset.c
> index 929ded595..b60f34452 100644
> --- a/arch/arm/mach-highbank/reset.c
> +++ b/arch/arm/mach-highbank/reset.c
> @@ -6,6 +6,7 @@
>  
>  #include <common.h>
>  #include <io.h>
> +#include <poweroff.h>
>  #include <restart.h>
>  #include <init.h>
>  
> @@ -20,15 +21,7 @@ static void __noreturn highbank_restart_soc(struct restart_handler *rst)
>  	hang();
>  }
>  
> -static int restart_register_feature(void)
> -{
> -	restart_handler_register_fn(highbank_restart_soc);
> -
> -	return 0;
> -}
> -coredevice_initcall(restart_register_feature);
> -
> -void __noreturn poweroff()
> +void __noreturn highbank_poweroff(struct poweroff_handler *handler)
>  {
>  	shutdown_barebox();
>  
> @@ -37,3 +30,12 @@ void __noreturn poweroff()
>  
>  	while(1);
>  }
> +
> +static int highbank_init(void)
> +{
> +	restart_handler_register_fn(highbank_restart_soc);
> +	poweroff_handler_register_fn(highbank_poweroff);
> +
> +	return 0;
> +}
> +coredevice_initcall(highbank_init);
> diff --git a/arch/arm/mach-pxa/pxa2xx.c b/arch/arm/mach-pxa/pxa2xx.c
> index b712b388c..e28378e6d 100644
> --- a/arch/arm/mach-pxa/pxa2xx.c
> +++ b/arch/arm/mach-pxa/pxa2xx.c
> @@ -14,6 +14,7 @@
>  
>  #include <common.h>
>  #include <init.h>
> +#include <poweroff.h>
>  #include <reset_source.h>
>  #include <mach/hardware.h>
>  #include <mach/pxa-regs.h>
> @@ -46,9 +47,7 @@ void pxa_clear_reset_source(void)
>  	RCSR = RCSR_GPR | RCSR_SMR | RCSR_WDR | RCSR_HWR;
>  }
>  
> -device_initcall(pxa_detect_reset_source);
> -
> -void __noreturn poweroff(void)
> +static void __noreturn pxa2xx_poweroff(struct poweroff_handler *handler)
>  {
>  	shutdown_barebox();
>  
> @@ -57,3 +56,13 @@ void __noreturn poweroff(void)
>  	pxa_suspend(PWRMODE_DEEPSLEEP);
>  	unreachable();
>  }
> +
> +static int pxa2xx_init(void)
> +{
> +	poweroff_handler_register_fn(pxa2xx_poweroff);
> +
> +	pxa_detect_reset_source();
> +
> +	return 0;
> +}
> +device_initcall(pxa2xx_init);
> diff --git a/arch/arm/mach-pxa/pxa3xx.c b/arch/arm/mach-pxa/pxa3xx.c
> index 86ca63b16..ccfd952b5 100644
> --- a/arch/arm/mach-pxa/pxa3xx.c
> +++ b/arch/arm/mach-pxa/pxa3xx.c
> @@ -14,6 +14,7 @@
>  
>  #include <common.h>
>  #include <init.h>
> +#include <poweroff.h>
>  #include <reset_source.h>
>  #include <mach/hardware.h>
>  #include <mach/pxa-regs.h>
> @@ -48,7 +49,7 @@ void pxa_clear_reset_source(void)
>  
>  device_initcall(pxa_detect_reset_source);
>  
> -void __noreturn poweroff(void)
> +static void __noreturn pxa3xx_poweroff(struct poweroff_handler *handler)
>  {
>  	shutdown_barebox();
>  
> @@ -57,3 +58,13 @@ void __noreturn poweroff(void)
>  	pxa3xx_suspend(PXA3xx_PM_S3D4C4);
>  	unreachable();
>  }
> +
> +static int pxa3xx_init(void)
> +{
> +	poweroff_handler_register_fn(pxa3xx_poweroff);
> +
> +	pxa_detect_reset_source();
> +
> +	return 0;
> +}
> +device_initcall(pxa3xx_init);
> diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
> index fd106fefe..ee79ff616 100644
> --- a/arch/mips/mach-xburst/Kconfig
> +++ b/arch/mips/mach-xburst/Kconfig
> @@ -21,7 +21,6 @@ choice
>  
>  config BOARD_RZX50
>  	bool "Ritmix RZX-50"
> -	select HAS_POWEROFF
>  	select CPU_JZ4755
>  
>  config BOARD_CI20
> diff --git a/arch/mips/mach-xburst/reset-jz4750.c b/arch/mips/mach-xburst/reset-jz4750.c
> index 25830f130..e1e88e2bf 100644
> --- a/arch/mips/mach-xburst/reset-jz4750.c
> +++ b/arch/mips/mach-xburst/reset-jz4750.c
> @@ -22,6 +22,8 @@
>  
>  #include <common.h>
>  #include <io.h>
> +#include <init.h>
> +#include <poweroff.h>
>  #include <mach/jz4750d_regs.h>
>  
>  static void __noreturn jz4750d_halt(void)
> @@ -37,7 +39,7 @@ static void __noreturn jz4750d_halt(void)
>  	unreachable();
>  }
>  
> -void __noreturn poweroff()
> +static void __noreturn jz4750_poweroff(struct poweroff_handler *handler)
>  {
>  	u32 ctrl;
>  
> @@ -50,4 +52,11 @@ void __noreturn poweroff()
>  	writel(RTC_HCR_PD, (u32 *)RTC_HCR);
>  	jz4750d_halt();
>  }
> -EXPORT_SYMBOL(poweroff);
> +
> +static int jz4750_init(void)
> +{
> +	restart_handler_register_fn(jz4750_poweroff);
> +
> +	return 0;
> +}
> +coredevice_initcall(jz4750_init);
> \ No newline at end of file
> diff --git a/commands/Kconfig b/commands/Kconfig
> index bc0885c69..d4ccc299e 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -6,10 +6,6 @@ config COMMAND_SUPPORT
>  	depends on !SHELL_NONE
>  	default y
>  
> -config HAS_POWEROFF
> -	bool
> -	default n
> -
>  if COMMAND_SUPPORT
>  
>  config COMPILE_HASH
> @@ -1848,7 +1844,6 @@ config CMD_NAND_BITFLIP
>  
>  config CMD_POWEROFF
>  	tristate
> -	depends on HAS_POWEROFF
>  	prompt "poweroff"
>  	help
>  	  Turn the power off.
> diff --git a/commands/poweroff.c b/commands/poweroff.c
> index e8c726a7f..bbafa13bd 100644
> --- a/commands/poweroff.c
> +++ b/commands/poweroff.c
> @@ -19,10 +19,11 @@
>  
>  #include <common.h>
>  #include <command.h>
> +#include <poweroff.h>
>  
>  static int cmd_poweroff(int argc, char *argv[])
>  {
> -	poweroff();
> +	poweroff_machine();
>  
>  	/* Not reached */
>  	return 1;
> diff --git a/common/Makefile b/common/Makefile
> index 5f58c81d2..8cd0ab300 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -9,6 +9,7 @@ obj-pbl-y			+= memsize.o
>  obj-y				+= resource.o
>  obj-y				+= bootsource.o
>  obj-y				+= restart.o
> +obj-y				+= poweroff.o
>  obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
>  obj-$(CONFIG_BANNER)		+= version.o
>  obj-$(CONFIG_BAREBOX_UPDATE)	+= bbu.o
> diff --git a/common/poweroff.c b/common/poweroff.c
> new file mode 100644
> index 000000000..dcef4e63d
> --- /dev/null
> +++ b/common/poweroff.c
> @@ -0,0 +1,112 @@
> +/*
> + * Copyright (c) 2015 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +#define pr_fmt(fmt) "poweroff: " fmt
> +
> +#include <common.h>
> +#include <poweroff.h>
> +#include <malloc.h>
> +#include <of.h>
> +
> +static LIST_HEAD(poweroff_handler_list);
> +
> +/**
> + * poweroff_handler_register() - register a handler for poweroffing the system
> + * @rst:	The handler struct
> + *
> + * This adds @rst to the list of registered poweroff handlers.
> + *
> + * return: 0 for success or negative error code
> + */
> +int poweroff_handler_register(struct poweroff_handler *handler)
> +{
> +	if (!handler->name)
> +		handler->name = POWEROFF_DEFAULT_NAME;
> +	if (!handler->priority)
> +		handler->priority = POWEROFF_DEFAULT_PRIORITY;
> +
> +	list_add_tail(&handler->list, &poweroff_handler_list);
> +
> +	pr_debug("registering poweroff handler \"%s\" with priority %d\n",
> +			handler->name, handler->priority);
> +
> +	return 0;
> +}
> +
> +/**
> + * poweroff_handler_register_fn() - register a handler function
> + * @poweroff_fn:	The poweroff function
> + *
> + * convenience wrapper for poweroff_handler_register() to register a handler
> + * with given function and default values otherwise.
> + *
> + * return: 0 for success or negative error code
> + */
> +int poweroff_handler_register_fn(void (*poweroff_fn)(struct poweroff_handler *))
> +{
> +	struct poweroff_handler *handler;
> +	int ret;
> +
> +	handler = xzalloc(sizeof(*handler));
> +
> +	handler->poweroff = poweroff_fn;
> +
> +	ret = poweroff_handler_register(handler);
> +
> +	if (ret)
> +		free(handler);
> +
> +	return ret;
> +}
> +
> +/**
> + * poweroff_machine() - power off the machine
> + */
> +void __noreturn poweroff_machine(void)
> +{
> +	struct poweroff_handler *handler = NULL, *tmp;
> +	unsigned int priority = 0;
> +
> +	list_for_each_entry(tmp, &poweroff_handler_list, list) {
> +		if (tmp->priority > priority) {
> +			priority = tmp->priority;
> +			handler = tmp;
> +		}
> +	}
> +
> +	if (handler) {
> +		pr_debug("using poweroff handler %s\n", handler->name);
> +		console_flush();
> +		handler->poweroff(handler);
> +	}
> +

A message that no power off method is found would be nice here.

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
