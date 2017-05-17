Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAsIX-000560-E1
 for barebox@lists.infradead.org; Wed, 17 May 2017 06:19:03 +0000
Date: Wed, 17 May 2017 08:18:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170517061839.gw6n4unqmoezzcbt@pengutronix.de>
References: <20170511175415.25466-1-rockford@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170511175415.25466-1-rockford@yandex.ru>
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
Subject: Re: [PATCH v2] Fix linking with new ld, based on u-boot
To: Andrey Panov <rockford@yandex.ru>
Cc: barebox@lists.infradead.org

On Thu, May 11, 2017 at 08:54:15PM +0300, Andrey Panov wrote:
> U-boot commit info:
> http://git.denx.de/?p=u-boot.git;a=commit;h=e391b1e64b0bd65709a28a4764afe4f32d408243
> 
> Signed-off-by: Andrey Panov <rockford@yandex.ru>
> ---
>  Makefile               | 3 +++
>  images/Makefile        | 3 +++
>  scripts/Kbuild.include | 2 +-
>  3 files changed, 7 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/Makefile b/Makefile
> index 09be653a3..3b8d73dab 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -306,6 +306,9 @@ AFLAGS          := -D__ASSEMBLY__
>  
>  LDFLAGS_barebox	:= -Map barebox.map
>  
> +# Avoid 'Not enough room for program headers' error on binutils 2.28 onwards.
> +LDFLAGS_barebox += $(call ld-option, --no-dynamic-linker)
> +
>  # Read KERNELRELEASE from include/config/kernel.release (if it exists)
>  KERNELRELEASE = $(shell cat include/config/kernel.release 2> /dev/null)
>  KERNELVERSION = $(VERSION).$(PATCHLEVEL).$(SUBLEVEL)$(EXTRAVERSION)
> diff --git a/images/Makefile b/images/Makefile
> index adf950aa9..8c5dac4bf 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -53,6 +53,9 @@ extra-y += $(pbl-lds)
>  $(pbl-lds): $(obj)/../arch/$(ARCH)/lib/pbl.lds.S FORCE
>  	$(call if_changed_dep,cpp_lds_S)
>  
> +# Avoid 'Not enough room for program headers' error on binutils 2.28 onwards.
> +LDFLAGS += $(call ld-option, --no-dynamic-linker)
> +
>  quiet_cmd_elf__ ?= LD      $@
>        cmd_elf__ ?= $(LD) $(LDFLAGS) --gc-sections -pie			\
>  		-e $(2) -Map $@.map $(LDFLAGS_$(@F)) -o $@		\
> diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
> index c7faf67a2..310dcdc94 100644
> --- a/scripts/Kbuild.include
> +++ b/scripts/Kbuild.include
> @@ -148,7 +148,7 @@ cc-ldoption = $(call try-run,\
>  # ld-option
>  # Usage: LDFLAGS += $(call ld-option, -X)
>  ld-option = $(call try-run,\
> -	$(CC) /dev/null -c -o "$$TMPO" ; $(LD) $(1) "$$TMPO" -o "$$TMP",$(1),$(2))
> +	$(CC) -x c /dev/null -c -o "$$TMPO" ; $(LD) $(1) "$$TMPO" -o "$$TMP",$(1),$(2))
>  
>  # ar-option
>  # Usage: KBUILD_ARFLAGS := $(call ar-option,D)
> -- 
> 2.11.0
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
