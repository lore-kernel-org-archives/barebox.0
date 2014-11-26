Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xtg2z-0006qg-Lj
 for barebox@lists.infradead.org; Wed, 26 Nov 2014 17:06:34 +0000
Message-ID: <1417021569.21700.1.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 26 Nov 2014 18:06:09 +0100
In-Reply-To: <1417019394-23683-11-git-send-email-s.hauer@pengutronix.de>
References: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
 <1417019394-23683-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 10/11] ARM: i.MX: Add i.MX6sx sabresdb support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 26.11.2014, 17:29 +0100 schrieb Sascha Hauer:
> This adds support for the Freescale i.MX6sx sabresdb board.
> 
> Tested are:
> 
> - UART
> - The three SD card slots
> - USB host
> - USB otg (host and device mode)
> - FEC (both)
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

[...]

> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index dadbdeb..1ba448f 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -301,6 +301,10 @@ config MACH_SABRESD
>  	bool "Freescale i.MX6 SabreSD"
>  	select ARCH_IMX6
>  
> +config MACH_FREESCALE_IMX6SX_SABRESDB
> +	bool "Freescale i.MX6sx SabreSDB"
> +	select ARCH_IMX6SX
> +

It seems you need to bash the PFUZE in the board startup code to get the
board to operate correctly. So this should select both I2C and I2C_IMX.

>  config MACH_NITROGEN6X
>  	bool "BoundaryDevices Nitrogen6x"
>  	select ARCH_IMX6
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 2b85560..fd7f725 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -155,6 +155,11 @@ CFG_start_imx6q_sabresd.pblx.imximg = $(board)/freescale-mx6-sabresd/flash-heade
>  FILE_barebox-freescale-imx6q-sabresd.img = start_imx6q_sabresd.pblx.imximg
>  image-$(CONFIG_MACH_SABRESD) += barebox-freescale-imx6q-sabresd.img
>  
> +pblx-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += start_imx6sx_sabresdb
> +CFG_start_imx6sx_sabresdb.pblx.imximg = $(board)/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
> +FILE_barebox-freescale-imx6sx-sabresdb.img = start_imx6sx_sabresdb.pblx.imximg
> +image-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += barebox-freescale-imx6sx-sabresdb.img
> +
>  pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_imx6dl_hummingboard
>  CFG_start_imx6dl_hummingboard.pblx.imximg = $(board)/solidrun-microsom/flash-header-solidrun-hummingboard.imxcfg
>  FILE_barebox-solidrun-imx6dl-hummingboard.img = start_imx6dl_hummingboard.pblx.imximg

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
