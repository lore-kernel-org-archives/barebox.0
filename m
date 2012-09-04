Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8oU1-0000nZ-MF
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 08:27:42 +0000
Date: Tue, 4 Sep 2012 10:27:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120904082739.GQ26594@pengutronix.de>
References: <1346672765-16162-1-git-send-email-jlu@pengutronix.de>
 <1346672765-16162-5-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346672765-16162-5-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 04/10] scripts: add tool to create image for SPI boot on
 AM35xx
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2012 at 01:45:59PM +0200, Jan Luebbe wrote:
> Booting from SPI on an AM35xx (and possibly other TI SOCs) requires
> a special format:
> 
> - 32 bit image size in big-endian
> - 32 bit load address in big-endian
> - binary image converted from little- to big-endian
> 
> The mk-am35xx-spi-image tool converts barebox.bin to
> this format.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/Makefile             |    8 +++
>  arch/arm/mach-omap/Kconfig    |    7 +++
>  scripts/.gitignore            |    1 +
>  scripts/Makefile              |    2 +-
>  scripts/mk-am35xx-spi-image.c |  126 +++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 143 insertions(+), 1 deletion(-)
>  create mode 100644 scripts/mk-am35xx-spi-image.c
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 1b60261..ff96299 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -199,6 +199,14 @@ endif
>  
>  all: $(KBUILD_IMAGE)
>  
> +barebox.spi: barebox.bin
> +	@echo "  SPI    " $@
> +	$(Q)scripts/mk-am35xx-spi-image barebox.bin > barebox.spi
> +
> +ifeq ($(CONFIG_OMAP_BUILD_SPI),y)
> +all: barebox.spi
> +endif
> +
>  archprepare: maketools
>  maketools:
>  	$(Q)$(MAKE) $(build)=arch/arm/tools include/generated/mach-types.h
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index d735284..a781287 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -91,6 +91,13 @@ config OMAP_BUILD_IFT
>  	prompt "build ift binary"
>  	bool
>  
> +config OMAP_BUILD_SPI
> +	prompt "build SPI binary"
> +	bool
> +	help
> +	  Say Y here if you want to build an barebox.spi image as used
> +	  on the AM35xx chips when booting form SPI NOR flash.
> +
>  config ARCH_TEXT_BASE
>  	hex
>  	default 0x80e80000 if MACH_OMAP343xSDP
> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index 6e63f85..3f1cbdb 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -2,6 +2,7 @@ bareboxenv
>  bin2c
>  gen_netx_image
>  kallsyms
> +mk-am35xx-spi-image
>  mkimage
>  mkublheader
>  omap_signGP
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 7ca5e29..55ccdac 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -9,7 +9,7 @@ hostprogs-y                      += bin2c
>  hostprogs-y                      += mkimage
>  hostprogs-y                      += bareboxenv
>  hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
> -hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP
> +hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am35xx-spi-image
>  hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
>  hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
>  
> diff --git a/scripts/mk-am35xx-spi-image.c b/scripts/mk-am35xx-spi-image.c
> new file mode 100644
> index 0000000..133f2b7
> --- /dev/null
> +++ b/scripts/mk-am35xx-spi-image.c
> @@ -0,0 +1,126 @@
> +/*
> + * mkublheader.c - produce the header needed to load barebox on OMAP-L138

We already have scripts/mkublheader.c:

/*
 * mkublheader.c - produce the header needed to load barebox on OMAP-L138
 */

This indeed seems to be a different tool. Can we clarify this a bit,
maybe by adding the purpose of the different tools to the header?

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
