Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f172.google.com ([209.85.215.172])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7n9N-0001dE-Na
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 13:22:26 +0000
Received: by mail-ea0-f172.google.com with SMTP id f13so2933966eaa.31
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2013 05:22:22 -0800 (PST)
Date: Tue, 19 Feb 2013 14:23:10 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130219132242.GA4129@x61s.8.8.8.8>
References: <1360915499-1659-1-git-send-email-s.hauer@pengutronix.de>
 <1360915901-3420-1-git-send-email-s.hauer@pengutronix.de>
 <20130215081251.GJ1906@pengutronix.de>
 <20130217105856.GA949@x61s.8.8.8.8>
 <20130218102432.GR1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130218102432.GR1906@pengutronix.de>
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
Subject: Re: [PATCH] nor flash: integrate into mtd
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On Mon, Feb 18, 2013 at 11:24:32AM +0100, Sascha Hauer wrote:
> On Sun, Feb 17, 2013 at 11:59:14AM +0100, Alexander Aring wrote:
> > Hi, 
> > 
> > > > diff --git a/drivers/nor/Kconfig b/drivers/mtd/nor/Kconfig
> > > > similarity index 96%
> > > > rename from drivers/nor/Kconfig
> > > > rename to drivers/mtd/nor/Kconfig
> > > > index c8ce24f..591d1ac 100644
> > > > --- a/drivers/nor/Kconfig
> > > > +++ b/drivers/mtd/nor/Kconfig
> > > > @@ -1,7 +1,5 @@
> > > > -menu "flash drivers"
> > > > -
> > > >  menuconfig DRIVER_CFI
> > > > -	bool "CFI"
> > > > +	bool "CFI NOR flash support"
> > > >  	help
> > > >  	  If you have NOR Flash devices connected to your system and wish
> > > >  	  to use them say yes here.
> > > > @@ -55,5 +53,3 @@ config CFI_BUFFER_WRITE
> > > >  	depends on DRIVER_CFI || DRIVER_CFI
> > 
> > "DRIVER_CFI || DRIVER_CFI" looks weird. :-)
> > 
> > Why we not set this to depends on MTD instead of adding support for mtd
> > in each config file?
> 
> Hm, this indeed looks weird. Since the Kconfig file is just moved and
> not touched, I don't want to squash a fixup into it. Instead how about
> the following?
> 
> 8<------------------------------------------------
> 
> From ef06284cd947c4e90a54a62d2c106789c6eaebe8 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Mon, 18 Feb 2013 11:21:47 +0100
> Subject: [PATCH] mtd nor: remove unnecessary 'depend' in Kconfig
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mtd/nor/Kconfig |    8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/drivers/mtd/nor/Kconfig b/drivers/mtd/nor/Kconfig
> index 591d1ac..44a4184 100644
> --- a/drivers/mtd/nor/Kconfig
> +++ b/drivers/mtd/nor/Kconfig
> @@ -8,17 +8,14 @@ if DRIVER_CFI
>  
>  config DRIVER_CFI_INTEL
>  	default y
> -	depends on DRIVER_CFI
>  	bool "Support Intel flash chips"
>  
>  config DRIVER_CFI_AMD
>  	default y
> -	depends on DRIVER_CFI
>  	bool "support AMD flash chips"
>  
>  config DRIVER_CFI_BANK_WIDTH_1
>  	bool "Support 8-bit buswidth"
> -	depends on DRIVER_CFI
>  	default y
>  	help
>  	  If you wish to support CFI devices on a physical bus which is
> @@ -26,7 +23,6 @@ config DRIVER_CFI_BANK_WIDTH_1
>  
>  config DRIVER_CFI_BANK_WIDTH_2
>  	bool "Support 16-bit buswidth"
> -	depends on DRIVER_CFI
>  	default y
>  	help
>  	  If you wish to support CFI devices on a physical bus which is
> @@ -34,7 +30,6 @@ config DRIVER_CFI_BANK_WIDTH_2
>  
>  config DRIVER_CFI_BANK_WIDTH_4
>  	bool "Support 32-bit buswidth"
> -	depends on DRIVER_CFI
>  	default y
>  	help
>  	  If you wish to support CFI devices on a physical bus which is
> @@ -42,14 +37,11 @@ config DRIVER_CFI_BANK_WIDTH_4
>  
>  config DRIVER_CFI_BANK_WIDTH_8
>  	bool "Support 64-bit buswidth"
> -	depends on DRIVER_CFI
> -	default n
>  	help
>  	  If you wish to support CFI devices on a physical bus which is
>  	  64 bits wide, say 'Y'.
>  
>  config CFI_BUFFER_WRITE
>  	bool "use cfi driver with buffer write"
> -	depends on DRIVER_CFI || DRIVER_CFI
>  
>  endif
> -- 
> 1.7.10.4
>

I was thinking to add a "depends on MTD" to these drivers. But I
detect that cfi_flashs doesn't need a MTD support.

With this move we got a mtd layer in barebox, when we uses
cfi_flash only.

The cfi_flashs only uses struct mtd_info to save information about
common flashs like erasesize, etc... and a little callback to call
the erase function.

I mean it's a good move to move this into mtd section, but will the other
mtd functions which are not necessary not get into barebox because size
optimiziation?

Regards
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
