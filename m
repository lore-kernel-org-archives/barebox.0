Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PKWNG-0008Oj-Bi
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 13:24:03 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 22 Nov 2010 14:23:21 +0100
References: <1290430375-8569-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1290430375-8569-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201011221423.21188.jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/1] arm: add touchbook support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Gregoire Gentil <gregoire@alwaysinnovating.com>, barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Gregoire Gentil <gregoire@alwaysinnovating.com>
> ---
>  arch/arm/boards/omap/Kconfig        |    9 +++++++++
>  arch/arm/boards/omap/Makefile       |    1 +
>  arch/arm/boards/omap/board-beagle.c |    7 ++++++-
>  3 files changed, 16 insertions(+), 1 deletions(-)
>
> diff --git a/arch/arm/boards/omap/Kconfig b/arch/arm/boards/omap/Kconfig
> index d612064..615457f 100644
> --- a/arch/arm/boards/omap/Kconfig
> +++ b/arch/arm/boards/omap/Kconfig
> @@ -51,6 +51,15 @@ config MACH_BEAGLE
>  	  help
>  	  Say Y here if you are using Beagle Board
>
> +config MACH_TOUCHBOOK
> +	bool "AlwaysInnovating TouchBook"
> +	select MACH_HAS_LOWLEVEL_INIT
> +	select OMAP_CLOCK_ALL
> +	select HAS_OMAP_NAND
> +	  help
> +	  Say Y here if you are using touchbook
> +	  http://www.alwaysinnovating.com/touchbook/
> +
>  config MACH_OMAP3EVM
>  	bool "Texas Instrument's OMAP3 EVM"
>  	select MACH_HAS_LOWLEVEL_INIT
> diff --git a/arch/arm/boards/omap/Makefile b/arch/arm/boards/omap/Makefile
> index 1e74e24..946d9bf 100644
> --- a/arch/arm/boards/omap/Makefile
> +++ b/arch/arm/boards/omap/Makefile
> @@ -23,6 +23,7 @@
>  obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += platform.o
>  obj-$(CONFIG_MACH_OMAP343xSDP) += board-sdp343x.o
>  obj-$(CONFIG_MACH_BEAGLE) += board-beagle.o
> +obj-$(CONFIG_MACH_TOUCHBOOK) += board-beagle.o
>  obj-$(CONFIG_MACH_OMAP3EVM) += board-omap3evm.o
>  obj-y += devices-gpmc-nand.o
>
> diff --git a/arch/arm/boards/omap/board-beagle.c
> b/arch/arm/boards/omap/board-beagle.c index 6de2cce..8e9ab43 100644
> --- a/arch/arm/boards/omap/board-beagle.c
> +++ b/arch/arm/boards/omap/board-beagle.c
> @@ -336,7 +336,12 @@ static int beagle_devices_init(void)
>
>  	armlinux_add_dram(&sdram_dev);
>  	armlinux_set_bootparams((void *)0x80000100);
> -	armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
> +
> +	if (machine_is_touchbook())

Where does the machine_is_touchbook() comes from?

> +		armlinux_set_architecture(MACH_TYPE_TOUCHBOOK);
> +	else
> +		armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
> +
>  failed:
>  	return ret;
>  }



-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
