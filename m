Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TLY1e-0007F5-F5
 for barebox@lists.infradead.org; Tue, 09 Oct 2012 11:31:03 +0000
Received: from mail428.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 3C9EC104F5E6
 for <barebox@lists.infradead.org>; Tue,  9 Oct 2012 13:37:26 +0200 (CEST)
Date: Tue, 9 Oct 2012 13:28:38 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121009112838.GB26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349734061-32339-4-git-send-email-carlo.caione@gmail.com>
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
Subject: Re: [PATCH 3/5] Add support for Raspberry-Pi
References: <1349734061-32339-1-git-send-email-carlo.caione@gmail.com>
 <1349734061-32339-4-git-send-email-carlo.caione@gmail.com>
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On 00:07 Tue 09 Oct     , Carlo Caione wrote:
> Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
> ---
>  arch/arm/Makefile                                  |  1 +
>  arch/arm/boards/raspberry-pi/Makefile              |  1 +
>  arch/arm/boards/raspberry-pi/config.h              |  4 ++
>  arch/arm/boards/raspberry-pi/env/config            |  1 +
>  .../arm/boards/raspberry-pi/env/init/bootargs-base |  8 +++
>  arch/arm/boards/raspberry-pi/env/init/hostname     |  8 +++
>  arch/arm/boards/raspberry-pi/rpi.c                 | 58 ++++++++++++++++++++++
>  arch/arm/configs/rpi_defconfig                     | 42 ++++++++++++++++
>  arch/arm/mach-bcm2835/Kconfig                      | 22 ++++++++
>  9 files changed, 145 insertions(+)
>  create mode 100644 arch/arm/boards/raspberry-pi/Makefile
>  create mode 100644 arch/arm/boards/raspberry-pi/config.h
>  create mode 100644 arch/arm/boards/raspberry-pi/env/config
>  create mode 100644 arch/arm/boards/raspberry-pi/env/init/bootargs-base
>  create mode 100644 arch/arm/boards/raspberry-pi/env/init/hostname
>  create mode 100644 arch/arm/boards/raspberry-pi/rpi.c
>  create mode 100644 arch/arm/configs/rpi_defconfig
>  create mode 100644 arch/arm/mach-bcm2835/Kconfig
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 2ea11d6..adfe590 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -113,6 +113,7 @@ board-$(CONFIG_MACH_PCM043)			:= pcm043
>  board-$(CONFIG_MACH_PM9261)			:= pm9261
>  board-$(CONFIG_MACH_PM9263)			:= pm9263
>  board-$(CONFIG_MACH_PM9G45)			:= pm9g45
> +board-$(CONFIG_MACH_RPI)				:= raspberry-pi
>  board-$(CONFIG_MACH_SCB9328)			:= scb9328
>  board-$(CONFIG_MACH_NESO)			:= guf-neso
>  board-$(CONFIG_MACH_MX23EVK)			:= freescale-mx23-evk
> diff --git a/arch/arm/boards/raspberry-pi/Makefile b/arch/arm/boards/raspberry-pi/Makefile
> new file mode 100644
> index 0000000..6ce5ede
> --- /dev/null
> +++ b/arch/arm/boards/raspberry-pi/Makefile
> @@ -0,0 +1 @@
> +obj-$(CONFIG_MACH_RPI) += rpi.o
> diff --git a/arch/arm/boards/raspberry-pi/config.h b/arch/arm/boards/raspberry-pi/config.h
> new file mode 100644
> index 0000000..ca15136
> --- /dev/null
> +++ b/arch/arm/boards/raspberry-pi/config.h
> @@ -0,0 +1,4 @@
> +#ifndef __CONFIG_H
> +#define __CONFIG_H
> +
> +#endif	/* __CONFIG_H */
> diff --git a/arch/arm/boards/raspberry-pi/env/config b/arch/arm/boards/raspberry-pi/env/config
> new file mode 100644
> index 0000000..1a24852
> --- /dev/null
> +++ b/arch/arm/boards/raspberry-pi/env/config
> @@ -0,0 +1 @@
> +#!/bin/sh
no need this file drop it
> diff --git a/arch/arm/boards/raspberry-pi/env/init/bootargs-base b/arch/arm/boards/raspberry-pi/env/init/bootargs-base
> new file mode 100644
> index 0000000..d869754
> --- /dev/null
> +++ b/arch/arm/boards/raspberry-pi/env/init/bootargs-base
> @@ -0,0 +1,8 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	init-menu-add-entry "$0" "Base bootargs"
> +	exit
> +fi
> +
> +global.linux.bootargs.base="console=ttymxc0,115200"
> diff --git a/arch/arm/boards/raspberry-pi/env/init/hostname b/arch/arm/boards/raspberry-pi/env/init/hostname
> new file mode 100644
> index 0000000..7e8f294
> --- /dev/null
> +++ b/arch/arm/boards/raspberry-pi/env/init/hostname
> @@ -0,0 +1,8 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	init-menu-add-entry "$0" "hostname"
> +	exit
> +fi
> +
> +global.hostname=Raspberry-Pi
> diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
> new file mode 100644
> index 0000000..4d861e4
> --- /dev/null
> +++ b/arch/arm/boards/raspberry-pi/rpi.c
> @@ -0,0 +1,58 @@
> +/*
> + * Copyright (C) 2009 Carlo Caione <carlo@carlocaione.org>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <asm/armlinux.h>
> +#include <generated/mach-types.h>
> +#include <environment.h>
> +#include <partition.h>
> +#include <sizes.h>
> +
> +#include <mach/gpio.h>
> +#include <mach/core.h>
> +#include <mach/platform.h>
> +#include <io.h>
> +
> +static int rpi_mem_init(void)
> +{
> +	ulong memsize;
> +
> +	memsize = get_ram_size((ulong *)BCM2835_SDRAM_BASE, SZ_128M);
> +	bcm2835_add_device_sdram(memsize);
> +	return 0;
> +}
> +mem_initcall(rpi_mem_init);
> +
> +static int rpi_console_init(void)
> +{
> +	bcm2835_register_uart();
> +	return 0;
> +}
> +console_initcall(rpi_console_init);
> +
> +static int rpi_devices_init(void)
> +{
> +	armlinux_set_architecture(MACH_TYPE_BCM2708);
> +	armlinux_set_bootparams((void *)(0x00000100));
> +	return 0;
> +}
> +
> +device_initcall(rpi_devices_init);
> diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
> new file mode 100644
> index 0000000..1719e9c
> --- /dev/null
> +++ b/arch/arm/configs/rpi_defconfig
> @@ -0,0 +1,42 @@
> +CONFIG_ARCH_BCM2835=y
> +CONFIG_GPIO_BCM2835=y
> +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PROMPT="R-Pi> "
> +CONFIG_LONGHELP=y
> +CONFIG_GLOB=y
> +CONFIG_HUSH_FANCY_PROMPT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +CONFIG_MENU=y
> +CONFIG_PARTITION=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> +CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/raspberry-pi/env"
> +CONFIG_CMD_EDIT=y
> +CONFIG_CMD_SLEEP=y
> +CONFIG_CMD_SAVEENV=y
> +CONFIG_CMD_LOADENV=y
> +CONFIG_CMD_EXPORT=y
> +CONFIG_CMD_PRINTENV=y
> +CONFIG_CMD_READLINE=y
> +CONFIG_CMD_MENU=y
> +CONFIG_CMD_MENU_MANAGEMENT=y
> +CONFIG_CMD_PASSWD=y
> +CONFIG_CMD_ECHO_E=y
> +CONFIG_CMD_LOADB=y
> +CONFIG_CMD_MEMINFO=y
> +CONFIG_CMD_MTEST=y
> +CONFIG_CMD_MTEST_ALTERNATIVE=y
> +CONFIG_CMD_BOOTM_ZLIB=y
> +CONFIG_CMD_BOOTM_BZLIB=y
> +CONFIG_CMD_BOOTM_SHOW_TYPE=y
> +CONFIG_CMD_RESET=y
> +CONFIG_CMD_GO=y
> +CONFIG_CMD_TIMEOUT=y
> +CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_UNCOMPRESS=y
> +CONFIG_CMD_GPIO=y
> +CONFIG_SERIAL_AMBA_PL011=y
> +CONFIG_DRIVER_NET_SMC91111=y
> +CONFIG_FS_CRAMFS=y
> +CONFIG_SHA1=y
> +CONFIG_SHA256=y
> diff --git a/arch/arm/mach-bcm2835/Kconfig b/arch/arm/mach-bcm2835/Kconfig
> new file mode 100644
> index 0000000..9591004
> --- /dev/null
> +++ b/arch/arm/mach-bcm2835/Kconfig
> @@ -0,0 +1,22 @@
> +if ARCH_BCM2835
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0x04000000 if MACH_RPI
> +
> +
> +config BOARDINFO
> +	default "RaspberryPi (BCM2835/ARM1176JZF-S)" if MACH_RPI
> +
> +choice
> +	prompt "Broadcom Board type"
> +
> +config MACH_RPI
> +	bool "RaspberryPi (BCM2835/ARM1176JZF-S)"
> +	select ARM_AMBA
> +	select CLKDEV_LOOKUP
those select as SoC specific move them

and you enable the SMC91111 why?

also the mainline use dt will be good to enable it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
