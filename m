Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cls5j-0002aH-MH
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 07:02:29 +0000
Date: Thu, 9 Mar 2017 08:02:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170309070204.3ejyxafipabv4otl@pengutronix.de>
References: <20170307112249.10689-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170307112249.10689-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH] scripts: imx/mxs remove mxs-usb-loader
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 07, 2017 at 12:22:49PM +0100, Oleksij Rempel wrote:
> ... and use imx-usb-loader instead
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig |   7 +-
>  arch/arm/mach-mxs/Kconfig |   7 +-
>  scripts/Makefile          |   7 +-
>  scripts/imx/Kconfig       |   6 ++
>  scripts/mxs-usb-loader.c  | 236 ----------------------------------------------
>  5 files changed, 11 insertions(+), 252 deletions(-)
>  create mode 100644 scripts/imx/Kconfig
>  delete mode 100644 scripts/mxs-usb-loader.c
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 9dbe31c4b..420b52281 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -632,12 +632,7 @@ endmenu
>  
>  menu "i.MX specific settings"
>  
> -config ARCH_IMX_USBLOADER
> -	bool "compile imx-usb-loader"
> -	help
> -	  imx-usb-loader is a tool to upload and start imximages to an i.MX SoC
> -	  in ROM boot mode. It requires libusb, so make sure you have the libusb
> -	  devel package installed on your machine.
> +source scripts/imx/Kconfig
>  
>  config IMX_IIM
>  	tristate "IIM fusebox device"
> diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
> index facab9c25..25e2a8d04 100644
> --- a/arch/arm/mach-mxs/Kconfig
> +++ b/arch/arm/mach-mxs/Kconfig
> @@ -143,11 +143,6 @@ endif
>  
>  endmenu
>  
> -config ARCH_MXS_USBLOADER
> -	bool "compile mxs-usb-loader"
> -	help
> -	  mxs-usb-loader is a tool to upload and start mxs bootstream images to an
> -	  i.MX SoC in ROM boot mode. It requires libusb, so make sure you have the libusb
> -	  devel package installed on your machine.
> +source scripts/imx/Kconfig

Including the same file two times confuses Kconfig. Here the search
function found the menu path where it's included the first time, but in
the menu itself it is then sorted in where it's included the second
time.

I refactored a bit to include only once.

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
