Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 22.98.mail-out.ovh.net ([178.32.115.197]
	helo=98.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qc7lT-0000c5-Np
	for barebox@lists.infradead.org; Thu, 30 Jun 2011 03:18:04 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by 98.mail-out.ovh.net (Postfix) with SMTP id F28534B287F
	for <barebox@lists.infradead.org>;
	Thu, 30 Jun 2011 05:17:38 +0200 (CEST)
Date: Thu, 30 Jun 2011 05:02:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110630030255.GL17355@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<1309317858-11861-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1309317858-11861-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 2/4] MIPS: add Malta machine support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 07:24 Wed 29 Jun     , Antony Pavlov wrote:
> The machines use big-endian mode.
> Only supported peripheral is serial port.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/Kconfig                                |   13 ++++++++
>  arch/mips/Makefile                               |    2 +
>  arch/mips/mach-mti-malta/Kconfig                 |   20 ++++++++++++
>  arch/mips/mach-mti-malta/Makefile                |    1 +
>  arch/mips/mach-mti-malta/include/mach/hardware.h |   32 +++++++++++++++++++
>  arch/mips/mach-mti-malta/reset.c                 |   36 ++++++++++++++++++++++
>  6 files changed, 104 insertions(+), 0 deletions(-)
>  create mode 100644 arch/mips/mach-mti-malta/Kconfig
>  create mode 100644 arch/mips/mach-mti-malta/Makefile
>  create mode 100644 arch/mips/mach-mti-malta/include/mach/hardware.h
>  create mode 100644 arch/mips/mach-mti-malta/reset.c
> 
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 4681f54..5a8d0f6 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -21,6 +21,17 @@ config GENERIC_LINKER_SCRIPT
>  	bool
>  	default y
>  
> +choice
> +	prompt "MIPS system type"
> +
> +config MACH_MIPS_MALTA
> +	bool "Malta"
> +	select CSRC_R4K_LIB
> +	select DRIVER_SERIAL_NS16550
> +	select SYS_SUPPORTS_BIG_ENDIAN
> +
> +endchoice
> +
>  #
>  # Endianess selection.  Sufficiently obscure so many users don't know what to
>  # answer,so we try hard to limit the available choices.  Also the use of a
> @@ -46,6 +57,8 @@ config CPU_LITTLE_ENDIAN
>  
>  endchoice
>  
> +source arch/mips/mach-mti-malta/Kconfig
> +
>  source common/Kconfig
>  source commands/Kconfig
>  source net/Kconfig
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index f7d4f32..117c4ae 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -27,6 +27,8 @@ CPPFLAGS += -fdata-sections -ffunction-sections
>  LDFLAGS_uboot += -static --gc-sections
>  endif
>  
> +machine-$(CONFIG_MACH_MIPS_MALTA)	:= mti-malta
> +
>  machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
>  
>  ifeq ($(KBUILD_SRC),)
> diff --git a/arch/mips/mach-mti-malta/Kconfig b/arch/mips/mach-mti-malta/Kconfig
> new file mode 100644
> index 0000000..c243513
> --- /dev/null
> +++ b/arch/mips/mach-mti-malta/Kconfig
> @@ -0,0 +1,20 @@
> +if MACH_MIPS_MALTA
> +
> +config ARCH_TEXT_BASE
> +        hex
> +        default 0xa0800000
> +
> +menu "Mach specific settings        "
> +
> +config DEBUG_LL
> +	bool "DEBUG_LL"
> +	default n
no need it's n by default
> +
> +endmenu
> +
> +choice
> +	prompt "Select your board"
> +
> +endchoice
> +
> +endif
> diff --git a/arch/mips/mach-mti-malta/Makefile b/arch/mips/mach-mti-malta/Makefile
> new file mode 100644
> index 0000000..f3cc668
> --- /dev/null
> +++ b/arch/mips/mach-mti-malta/Makefile
> @@ -0,0 +1 @@
> +obj-y += reset.o
> diff --git a/arch/mips/mach-mti-malta/include/mach/hardware.h b/arch/mips/mach-mti-malta/include/mach/hardware.h
> new file mode 100644
> index 0000000..f476355
> --- /dev/null
> +++ b/arch/mips/mach-mti-malta/include/mach/hardware.h
> @@ -0,0 +1,32 @@
> +/*
> + * Copyright (c) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> + * See file CREDITS for list of people who contributed to this project.
> + *
> + * This file is part of barebox.
> + *
> + * barebox is free software: you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation, either version 3 of the License, or
> + * (at your option) any later version.
> + *
> + * barebox is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with barebox.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +#ifndef __INCLUDE_ARCH_HARDWARE_H__
> +#define   __INCLUDE_ARCH_HARDWARE_H__
> +
> +#define DEBUG_LL_UART_ADDR	0xb00003f8
> +
> +/*
> + * Reset register.
> + */
> +#define SOFTRES_REG       0xbf000500
> +#define GORESET           0x42
whitespace please check
> +
> +#endif  /* __INCLUDE_ARCH_HARDWARE_H__ */
> diff --git a/arch/mips/mach-mti-malta/reset.c b/arch/mips/mach-mti-malta/reset.c
> new file mode 100644
> index 0000000..46c102f
> --- /dev/null
> +++ b/arch/mips/mach-mti-malta/reset.c
> @@ -0,0 +1,36 @@
> +/*
> + * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
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
> +/**
> + * @file
> + * @brief Resetting an CPU
> + */
> +
> +#include <common.h>
> +#include <asm/io.h>
> +#include <mach/hardware.h>
> +
> +void __noreturn mips_machine_restart()
> +{
> +	__raw_writel(GORESET, (char *)SOFTRES_REG);
> +	while (1);
> +	/*NOTREACHED*/
> +}
> +EXPORT_SYMBOL(mips_machine_restart);
declare the reset here directly

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
