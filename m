Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSGvx-0008Dr-3C
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 07:08:11 +0000
Date: Mon, 11 Jun 2018 09:07:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180611070757.4rx7h6x5rtxbgm3k@pengutronix.de>
References: <20180609072756.24160-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180609072756.24160-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] scripts: create a separate section for host tools
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Roland Hieber <r.hieber@pengutronix.de>

On Sat, Jun 09, 2018 at 09:27:56AM +0200, Uwe Kleine-K=F6nig wrote:
> This allows to enable host tools even if they are not needed for the
> current configuration to improve compile coverage and simplify packaging
> these tools. The conversion doesn't cover all tools available but can be
> extended later.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Applied, thanks

Sascha

>  Kconfig                    |  2 ++
>  arch/arm/Kconfig           |  1 -
>  arch/arm/mach-omap/Kconfig |  6 -----
>  scripts/Kconfig            | 51 ++++++++++++++++++++++++++++++++++++++
>  scripts/Makefile           |  6 ++---
>  scripts/imx/Kconfig        |  4 +--
>  6 files changed, 58 insertions(+), 12 deletions(-)
>  create mode 100644 scripts/Kconfig
> =

> diff --git a/Kconfig b/Kconfig
> index 53d4f5a276b7..197dd1c4b3ef 100644
> --- a/Kconfig
> +++ b/Kconfig
> @@ -9,3 +9,5 @@ config SRCARCH
>  	option env=3D"SRCARCH"
>  =

>  source "arch/$SRCARCH/Kconfig"
> +
> +source "scripts/Kconfig"
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 37cde0c0c527..c1a89e185d5c 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -265,7 +265,6 @@ source arch/arm/mach-ep93xx/Kconfig
>  source arch/arm/mach-highbank/Kconfig
>  source arch/arm/mach-imx/Kconfig
>  source arch/arm/mach-mxs/Kconfig
> -source scripts/imx/Kconfig
>  source arch/arm/mach-mvebu/Kconfig
>  source arch/arm/mach-netx/Kconfig
>  source arch/arm/mach-nomadik/Kconfig
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index e8fc4b843a1b..c451cf0d47fd 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -138,12 +138,6 @@ config OMAP3_USBBOOT
>  	  which is already initialized by the ROM code. Use the omap3-usb-loader
>  	  tool selectable below to upload images.
>  =

> -config OMAP3_USB_LOADER
> -	bool "enable omap3 USB loader host tool"
> -	depends on ARCH_OMAP3
> -	help
> -	  Say Y here to build the omap3 usb loader tool.
> -
>  config OMAP_SERIALBOOT
>  	bool "enable booting from serial"
>  	select XYMODEM
> diff --git a/scripts/Kconfig b/scripts/Kconfig
> new file mode 100644
> index 000000000000..14a577ac4f8b
> --- /dev/null
> +++ b/scripts/Kconfig
> @@ -0,0 +1,51 @@
> +menu "Host Tools"
> +
> +config COMPILE_HOST_TOOLS
> +	bool "Allow to enable unused host tools"
> +	help
> +	  Usually the needed host tools are selected (or selectable) depending
> +	  on some config options. If you say yes here, the host tools that are
> +	  not needed can be selected, too.
> +
> +	  This is usefull for compile coverage testing and for packaging the
> +	  host tools.
> +
> +source scripts/imx/Kconfig
> +
> +config MVEBU_HOSTTOOLS
> +	bool "mvebu hosttools" if COMPILE_HOST_TOOLS
> +	depends on ARCH_MVEBU || COMPILE_HOST_TOOLS
> +	default y if ARCH_MVEBU
> +	help
> +	  This enables building the tools kwbimage to create an image suitable
> +	  for Marvell mvebu machines and kwboot to boot via UART.
> +
> +config MXS_HOSTTOOLS
> +	bool "mxs hosttools" if COMPILE_HOST_TOOLS
> +	depends on ARCH_MXS || COMPILE_HOST_TOOLS
> +	default y if ARCH_MXS
> +	help
> +	  This builds the tools mxsimage and mxsboot which are needed to
> +	  create bootable image files for mxs. You need openssl development
> +	  files to compile this tool.
> +
> +config OMAP3_USB_LOADER
> +	bool "omap3 USB loader"
> +	depends on ARCH_OMAP3 || COMPILE_HOST_TOOLS
> +	help
> +	  Say Y here to build the omap3 usb loader tool.
> +
> +	  You need libusb-1.0 to compile this tool.
> +
> +config OMAP4_HOSTTOOL_USBBOOT
> +	bool "omap4 usbboot"
> +	depends on (ARCH_OMAP4 && !MMU) || COMPILE_HOST_TOOLS
> +	default y if OMAP4_USBBOOT
> +	help
> +	  Say Y here to build the omap4 usb loader tool.
> +	  Note that you need to enable OMAP4_USBBOOT to create an image
> +	  suitable to boot using this tool.
> +
> +	  You need libusb-1.0 to compile this tool.
> +
> +endmenu
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 8eda41e13b13..59d22e18bdd1 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -12,14 +12,14 @@ hostprogs-y                      +=3D bareboxcrc32
>  hostprogs-y                      +=3D kernel-install
>  hostprogs-$(CONFIG_IMD)          +=3D bareboximd
>  hostprogs-$(CONFIG_KALLSYMS)     +=3D kallsyms
> -hostprogs-$(CONFIG_ARCH_MVEBU)   +=3D kwbimage kwboot
> +hostprogs-$(CONFIG_MVEBU_HOSTTOOLS) +=3D kwbimage kwboot
>  hostprogs-$(CONFIG_ARCH_NETX)    +=3D gen_netx_image
>  hostprogs-$(CONFIG_ARCH_OMAP)    +=3D omap_signGP mk-omap-image
>  hostprogs-$(CONFIG_ARCH_S5PCxx)  +=3D s5p_cksum
>  hostprogs-$(CONFIG_ARCH_DAVINCI) +=3D mkublheader
>  hostprogs-$(CONFIG_ARCH_ZYNQ)	 +=3D zynq_mkimage
>  hostprogs-$(CONFIG_ARCH_SOCFPGA) +=3D socfpga_mkimage
> -hostprogs-$(CONFIG_ARCH_MXS)     +=3D mxsimage mxsboot
> +hostprogs-$(CONFIG_MXS_HOSTTOOLS)+=3D mxsimage mxsboot
>  HOSTCFLAGS +=3D -I$(srctree)/scripts/include/
>  HOSTLOADLIBES_mxsimage  =3D `pkg-config --libs openssl`
>  HOSTCFLAGS_omap3-usb-loader.o =3D `pkg-config --cflags libusb-1.0`
> @@ -27,7 +27,7 @@ HOSTLOADLIBES_omap3-usb-loader  =3D `pkg-config --libs =
libusb-1.0`
>  hostprogs-$(CONFIG_OMAP3_USB_LOADER)  +=3D omap3-usb-loader
>  HOSTCFLAGS_omap4_usbboot.o =3D `pkg-config --cflags libusb-1.0`
>  HOSTLOADLIBES_omap4_usbboot =3D -lpthread `pkg-config --libs libusb-1.0`
> -hostprogs-$(CONFIG_OMAP4_USBBOOT) +=3D omap4_usbboot
> +hostprogs-$(CONFIG_OMAP4_HOSTTOOL_USBBOOT) +=3D omap4_usbboot
>  =

>  subdir-y			+=3D mod
>  subdir-y			+=3D imx
> diff --git a/scripts/imx/Kconfig b/scripts/imx/Kconfig
> index fda9c639c1d4..ef83fa14dd14 100644
> --- a/scripts/imx/Kconfig
> +++ b/scripts/imx/Kconfig
> @@ -1,6 +1,6 @@
>  config ARCH_IMX_USBLOADER
> -	depends on ARCH_MXS || ARCH_IMX
> -	bool "compile imx-usb-loader"
> +	depends on ARCH_MXS || ARCH_IMX || COMPILE_HOST_TOOLS
> +	bool "imx-usb-loader"
>  	help
>  	  imx-usb-loader is a tool to upload and start imximages to an i.MX SoC
>  	  in ROM boot mode. It requires libusb, so make sure you have the libusb
> -- =

> 2.17.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
