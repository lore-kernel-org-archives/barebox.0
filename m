Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TN0gG-0003m4-M0
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 12:19:02 +0000
Received: from mail637.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 9CB14FF8892
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 14:28:15 +0200 (CEST)
Date: Sat, 13 Oct 2012 14:16:39 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121013121639.GL13639@game.jcrosoft.org>
References: <1350127381-21312-1-git-send-email-carlo.caione@gmail.com>
 <1350127381-21312-6-git-send-email-carlo.caione@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350127381-21312-6-git-send-email-carlo.caione@gmail.com>
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
Subject: Re: [PATCH 5/5] Raspberry-Pi: add support (board)
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On 13:23 Sat 13 Oct     , Carlo Caione wrote:
> 
> Tested-By: Jan Luebbe <jlu@pengutronix.de>
> Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
> ---
>  arch/arm/Makefile                                  |  1 +
>  arch/arm/boards/raspberry-pi/Kconfig               | 10 +++++
>  arch/arm/boards/raspberry-pi/Makefile              |  1 +
>  arch/arm/boards/raspberry-pi/config.h              |  4 ++
>  .../arm/boards/raspberry-pi/env/init/bootargs-base |  8 ++++
>  arch/arm/boards/raspberry-pi/env/init/hostname     |  8 ++++
>  arch/arm/boards/raspberry-pi/rpi.c                 | 49 ++++++++++++++++++++++
>  arch/arm/configs/rpi_defconfig                     | 40 ++++++++++++++++++
>  arch/arm/mach-bcm2835/Kconfig                      | 10 +++++
>  9 files changed, 131 insertions(+)
>  create mode 100644 arch/arm/boards/raspberry-pi/Kconfig
>  create mode 100644 arch/arm/boards/raspberry-pi/Makefile
>  create mode 100644 arch/arm/boards/raspberry-pi/config.h
>  create mode 100644 arch/arm/boards/raspberry-pi/env/init/bootargs-base
>  create mode 100644 arch/arm/boards/raspberry-pi/env/init/hostname
>  create mode 100644 arch/arm/boards/raspberry-pi/rpi.c
>  create mode 100644 arch/arm/configs/rpi_defconfig
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
> diff --git a/arch/arm/boards/raspberry-pi/Kconfig b/arch/arm/boards/raspberry-pi/Kconfig
> new file mode 100644
> index 0000000..3ac8829
> --- /dev/null
> +++ b/arch/arm/boards/raspberry-pi/Kconfig
no put this if the soc Kconfig otherwise we will become cray to maintain it
and search where the info i
> @@ -0,0 +1,10 @@
> +if MACH_RPI
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0x04000000
specially here when I expect that nearly all the brmc will use the same value
> +
> +config BOARDINFO
> +	default "RaspberryPi (BCM2835/ARM1176JZF-S)"
so you end up with a Kconfig per board for just the BOARDINFO

which we should drop from Kconfig and put it in C
> +
> +endif
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
> index 0000000..6c94dcd
> --- /dev/null
> +++ b/arch/arm/boards/raspberry-pi/rpi.c
> @@ -0,0 +1,49 @@
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
> +
> +#include <mach/core.h>
> +
> +static int rpi_mem_init(void)
> +{
> +	bcm2835_add_device_sdram(0);
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
> index 0000000..bca3d25
> --- /dev/null
> +++ b/arch/arm/configs/rpi_defconfig
> @@ -0,0 +1,40 @@
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
> +CONFIG_SHA1=y
> +CONFIG_SHA256=y
> diff --git a/arch/arm/mach-bcm2835/Kconfig b/arch/arm/mach-bcm2835/Kconfig
> index c42fe1c..fadb1dc 100644
> --- a/arch/arm/mach-bcm2835/Kconfig
> +++ b/arch/arm/mach-bcm2835/Kconfig
> @@ -1,3 +1,13 @@
>  if ARCH_BCM2835
>  
> +choice
> +	prompt "Broadcom Board type"
> +
> +config MACH_RPI
> +	bool "RaspberryPi (BCM2835/ARM1176JZF-S)"
> +
> +endchoice
> +
> +source arch/arm/boards/raspberry-pi/Kconfig
> +
>  endif
> -- 
> 1.7.12.3
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
