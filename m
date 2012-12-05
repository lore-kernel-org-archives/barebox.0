Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgK5c-0006ii-Mo
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 18:53:01 +0000
Date: Wed, 5 Dec 2012 19:52:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205185259.GO10369@pengutronix.de>
References: <alpine.DEB.2.02.1212041816280.7694@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1212041816280.7694@oneiric>
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
Subject: Re: [PATCH] mach-omap/Kconfig: Some spelling fixes and indentation.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, Dec 04, 2012 at 06:17:30PM -0500, Robert P. J. Day wrote:
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 

Applied, thanks

Sascha

> ---
> 
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index 81f6127..b9f3dff 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -75,7 +75,7 @@ config OMAP_BUILD_SPI
>  	bool
>  	help
>  	  Say Y here if you want to build an barebox.spi image as used
> -	  on the AM35xx chips when booting form SPI NOR flash.
> +	  on the AM35xx chips when booting from SPI NOR flash.
> 
>  config ARCH_TEXT_BASE
>  	hex
> @@ -89,7 +89,7 @@ config OMAP4_USBBOOT
>  	help
>  	  Say Y here if you want to be able to boot an OMAP4 cpu from USB.
>  	  You need the utility program omap4_usbboot to boot from USB.
> -	  Please read oamp4_usb_booting.txt for more information.
> +	  Please read omap4_usb_booting.txt for more information.
> 
>  config BOARDINFO
>  	default "Archos G9" if MACH_ARCHOSG9
> @@ -115,14 +115,14 @@ config MACH_BEAGLE
>  	select HAVE_NOSHELL
>  	select HAVE_DEFAULT_ENVIRONMENT_NEW
>  	depends on ARCH_OMAP3
> -	  help
> +	help
>  	  Say Y here if you are using Beagle Board
> 
>  config MACH_OMAP3EVM
>  	bool "Texas Instrument's OMAP3 EVM"
>  	select HAVE_NOSHELL
>  	depends on ARCH_OMAP3
> -	  help
> +	help
>  	  Say Y here if you are using OMAP3EVM
> 
>  config MACH_PANDA
> @@ -155,7 +155,7 @@ config MACH_PCAAL1
>  	bool "Phytec phyCARD-A-L1"
>  	select HAVE_NOSHELL
>  	depends on ARCH_OMAP3
> -	  help
> +	help
>  	  Say Y here if you are using a phyCARD-A-L1 PCA-A-L1
> 
>  config MACH_PCAAXL2
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
