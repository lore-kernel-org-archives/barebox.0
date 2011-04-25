Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QEK6n-000731-HP
	for barebox@lists.infradead.org; Mon, 25 Apr 2011 11:37:47 +0000
Date: Mon, 25 Apr 2011 13:37:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110425113735.GE14770@pengutronix.de>
References: <1303535118-4737-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1303535118-4737-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] arm: add support to generate uImage
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 23, 2011 at 07:05:18AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so barebox could be loaded as kernel by itself
> 
> add LOAD_TEXT_BASE to specify the load address
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/Makefile |   15 +++++++++++++++
>  common/Kconfig    |    7 +++++++
>  2 files changed, 22 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 108bd5e..f0ec667 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -134,6 +134,21 @@ ifeq ($(machine-y),netx)
>  KBUILD_IMAGE := barebox.netx
>  endif
>  
> +MKIMAGE		:= $(objtree)/scripts/mkimage
> +
> +quiet_cmd_uimage = UIMAGE  $@
> +      cmd_uimage = $(MKIMAGE) -A arm -O linux -T kernel \
> +		   -C none -a $(BAREBOX_LOAD) -e $(BAREBOX_ENTRY) \
> +		   -n 'Barebox-$(KERNELRELEASE)' -d $< $@
> +
> +uImage: $(MKIMAGE)
> +uImage: BAREBOX_LOAD=$(CONFIG_LOAD_TEXT_BASE)
> +uImage: BAREBOX_ENTRY=$(CONFIG_TEXT_BASE)
> +
> +uImage: barebox.bin
> +	$(call if_changed,uimage,none)
> +	@echo '  Image $@ is ready'
> +
>  all: $(KBUILD_IMAGE)
>  
>  archprepare: maketools
> diff --git a/common/Kconfig b/common/Kconfig
> index 9e30579..50995d3 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -80,6 +80,13 @@ config TEXT_BASE
>  	help
>  	  The Address barebox gets linked at.
>  
> +config LOAD_TEXT_BASE
> +	prompt "LOAD_TEXT_BASE"
> +	hex
> +	default TEXT_BASE
> +	help
> +	  The Address barebox gets load at as a uImage
> +

No, please don't. When you load barebox with itself you end up
overwriting the running barebox with the just loaded image if using
TEXT_BASE here.
barebox can be started from any address in SDRAM. Isn't there a
mechanism to support this with the uImage format? The U-Boot guys have
the same problem with ARM_PATCH_PHYS_VIRT in the kernel aswell, so I
assume this is already solved in some way, no?

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
