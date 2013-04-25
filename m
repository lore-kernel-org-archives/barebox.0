Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVKo4-00077p-Pr
 for barebox@lists.infradead.org; Thu, 25 Apr 2013 11:57:45 +0000
Message-ID: <1366891124.4158.117.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 25 Apr 2013 13:58:44 +0200
In-Reply-To: <1366880959-25765-1-git-send-email-u.bely@sam-solutions.com>
References: <20130424201127.GG32299@pengutronix.de>
 <1366880959-25765-1-git-send-email-u.bely@sam-solutions.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH] ARM: OMAP5 processors support
To: Uladzimir Bely <u.bely@sam-solutions.com>
Cc: barebox@lists.infradead.org

On Thu, 2013-04-25 at 12:09 +0300, Uladzimir Bely wrote:
> diff --git a/arch/arm/boards/omap5_sevm/env/config b/arch/arm/boards/omap5_sevm/env/config
> new file mode 100644
> index 0000000..9752957
> --- /dev/null
> +++ b/arch/arm/boards/omap5_sevm/env/config
> @@ -0,0 +1,11 @@
> +#!/bin/sh
> +
> +machine=omap5
> +
> +autoboot_timeout=2
> +
> +bootargs="console=ttyO2,115200"
> +
> +kernel_loc=disk
> +
> +PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "

Please use defaultenv-2.

> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index 42e5f4a..0ad3864 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -41,6 +41,14 @@ config ARCH_OMAP4
>  	help
>  	  Say Y here if you are using Texas Instrument's OMAP4 based platform
>  
> +config ARCH_OMAP5
> +	bool "OMAP5"
> +	select CPU_V7
> +	select GENERIC_GPIO
> +	select OMAP_CLOCK_SOURCE_S32K
> +	help
> +	  Say Y here if you are using Texas Instrument's OMAP5 based platform
> +
>  config ARCH_AM33XX
>  	bool "AM33xx"
>  	select CPU_V7
> @@ -115,6 +123,7 @@ config BOARDINFO
>  	default "Phytec phyCARD-A-L1" if MACH_PCAAL1
>  	default "Phytec phyCARD-A-XL2" if MACH_PCAAXL2
>  	default "Phytec phyCORE-AM335x" if MACH_PCM051
> +	default "Phytec phyCORE omap5_sevm" if MACH_OMAP5_SEVM
>  
>  choice
>  	prompt "Select OMAP board"
> @@ -177,6 +186,13 @@ config MACH_PCAAXL2
>  	help
>  	  Say Y here if you are using a phyCARD-A-XL1 PCA-A-XL1
>  
> +config MACH_OMAP5_SEVM
> +	bool "Phytec phyCORE omap5_sevm"
> +	depends on ARCH_OMAP5
> +	help
> +	  Say Y here if you are using Phytecs phyCORE omap5_sevm board
> +	  based on OMAP5
> +
>  config MACH_PCM051
>  	bool "Phytec phyCORE pcm051"
>  	select OMAP_CLOCK_ALL

Isn't the OMAP5 sEVM from TI?

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
