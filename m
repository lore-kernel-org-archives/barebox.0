Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9fwC-0002y8-8J
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 17:32:21 +0000
Date: Thu, 6 Sep 2012 19:32:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120906173218.GD26594@pengutronix.de>
References: <1346926816-6695-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346926816-6695-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 1/2] kbuild: keep the barebox binary accessible
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 06, 2012 at 12:20:15PM +0200, Jan Luebbe wrote:
> When building a special image  from the original (compressed or
> not) binary, to not overwrite KBUILD_BINARY.
> 
> This allows producing multiple images (such as MLO, UBL, ...)
> from the (z)barebox.bin. In the case where no special image is
> used, KBUILD_IMAGE is set to KBUILD_BINARY.
> 
> This patch was developed together with Sascha Hauer. Thanks!
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied (only this one for now), thanks

Sascha

> ---
>  Makefile          |   16 +++++++++++-----
>  arch/arm/Makefile |   10 +++++-----
>  2 files changed, 16 insertions(+), 10 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index c6264d3..0f1a319 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -462,12 +462,18 @@ CFLAGS += $(call cc-option,-Wdeclaration-after-statement,)
>  # disable pointer signed / unsigned warnings in gcc 4.0
>  CFLAGS += $(call cc-option,-Wno-pointer-sign,)
>  
> -# Default kernel image to build when no specific target is given.
> -# KBUILD_IMAGE may be overruled on the command line or
> -# set in the environment
> -# Also any assignments in arch/$(ARCH)/Makefile take precedence over
> -# this default value
> +# KBUILD_IMAGE: Default barebox image to build
> +# Depending on the architecture, this can be either compressed or not.
> +# It will also include any necessary headers to be bootable.
>  export KBUILD_IMAGE ?= barebox.bin
> +# KBUILD_BINARY: Raw barebox binary
> +# This variable is set in case the architecture prepends a header and
> +# points to a binary that can be loaded directly into RAM and executed.
> +export KBUILD_BINARY ?= barebox.bin
> +# KBUILD_IMAGE and _BINARY may be overruled on the command line or
> +# set in the environment.
> +# Also any assignments in arch/$(ARCH)/Makefile take precedence over
> +# the default value.
>  
>  barebox-flash-image: $(KBUILD_IMAGE)
>  	$(call if_changed,ln)
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 8e660be..94ee073 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -179,7 +179,7 @@ barebox.netx: $(KBUILD_BINARY)
>  
>  ifeq ($(machine-y),netx)
>  KBUILD_TARGET := barebox.netx
> -KBUILD_BINARY := $(KBUILD_TARGET)
> +KBUILD_IMAGE := barebox.netx
>  endif
>  
>  barebox.s5p: $(KBUILD_BINARY)
> @@ -187,7 +187,7 @@ barebox.s5p: $(KBUILD_BINARY)
>  
>  ifeq ($(CONFIG_ARCH_S5PCxx),y)
>  KBUILD_TARGET := barebox.s5p
> -KBUILD_BINARY := $(KBUILD_TARGET)
> +KBUILD_IMAGE := barebox.s5p
>  endif
>  
>  quiet_cmd_mlo ?= IFT     $@
> @@ -199,7 +199,7 @@ MLO: $(KBUILD_BINARY)
>  
>  ifeq ($(CONFIG_OMAP_BUILD_IFT),y)
>  KBUILD_TARGET := MLO
> -KBUILD_BINARY := $(KBUILD_TARGET)
> +KBUILD_IMAGE := MLO
>  endif
>  
>  barebox.ubl: $(KBUILD_BINARY)
> @@ -209,7 +209,7 @@ barebox.ubl: $(KBUILD_BINARY)
>  
>  ifeq ($(CONFIG_ARCH_DAVINCI),y)
>  KBUILD_TARGET := barebox.ubl
> -KBUILD_BINARY := $(KBUILD_TARGET)
> +KBUILD_IMAGE := barebox.ubl
>  endif
>  
>  pbl := arch/arm/pbl
> @@ -219,7 +219,7 @@ zbarebox.S zbarebox.bin zbarebox: barebox.bin
>  archclean:
>  	$(MAKE) $(clean)=$(pbl)
>  
> -KBUILD_IMAGE := $(KBUILD_BINARY)
> +KBUILD_IMAGE ?= $(KBUILD_BINARY)
>  
>  archprepare: maketools
>  maketools:
> -- 
> 1.7.10.4
> 
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
