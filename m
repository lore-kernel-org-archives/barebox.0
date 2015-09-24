Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zf2i9-0001pS-PP
 for barebox@lists.infradead.org; Thu, 24 Sep 2015 09:21:06 +0000
Message-ID: <1443086443.8476.7.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 24 Sep 2015 11:20:43 +0200
In-Reply-To: <1443064645-4007-1-git-send-email-andrew.smirnov@gmail.com>
References: <1443064645-4007-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] arm: Disable unaligned access if MMU is switched off
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 23.09.2015, 20:17 -0700 schrieb Andrey Smirnov:
> Form reading ARM architecture related documentation if appears that
> while unaligned memory access is supported by the processor in general
> it is not supported if MMU is disabled.
> 
> The problem in question can be easilty reproduced by building the code
> without this patch, MMU disabled and trying to run 'memtest'
> command. Which would in turn call mem_test() which would eventually
> call show_progress(). That last function, if build without
> -mno-unaligned-access would result in unaligned memory access which
> would result in Barebox hanging.
> 
The reasoning given here seems sound. Unaligned accesses do only work on
cached memory on ARMv7.

> This patch is a very conservative attempt to make sure that any code
> that can potentially be executed with MMU disabled is built with
> unaligned memory accesses disabled.

The patch looks good as is, but I'm not sure we want to make this
distinction in behavior between the different config options. Given that
we should only have a very small amount of unaligned accesses anyway I
think it might make sense to enable the compiler workaround always. But
that would be for Sascha to decide.

> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/Makefile      | 14 ++++++++++++++
>  scripts/Makefile.build |  2 +-
>  2 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 721aa9b..9af4f3b 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -13,6 +13,20 @@ AS		+= -EL
>  LD		+= -EL
>  endif
>  
> +#
> +# Unaligned access is not supported when MMU is disabled, so if MMU is
> +# enabled early on, only PBL, part of which will be executed with MMU
> +# diabled, would have to be build with -mno-unaligned-accesses,
> +# otherwise set this flag globally
> +#
> +ifeq ($(CONFIG_MMU_EARLY),y)
> +ifneq ($(CONFIG_PBL_IMAGE),y)
> +PBL_CFLAGS += -mno-unaligned-access
> +endif
> +else
> +CFLAGS += -mno-unaligned-access
> +endif
> +
>  # This selects which instruction set is used.
>  # Note that GCC does not numerically define an architecture version
>  # macro, but instead defines a whole series of macros which makes
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 56ee072..1624a7a 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -188,7 +188,7 @@ quiet_cmd_pbl_cc_o_c = PBLCC   $@
>  
>  ifndef CONFIG_MODVERSIONS
>  cmd_cc_o_c = $(CC) $(c_flags) -c -o $@ $<
> -cmd_pbl_cc_o_c = $(CC) -D__PBL__ $(c_flags) $(PBL_CPPFLAGS) -c -o $@ $<
> +cmd_pbl_cc_o_c = $(CC) -D__PBL__ $(c_flags) $(PBL_CFLAGS) $(PBL_CPPFLAGS) -c -o $@ $<
>  
>  else
>  # When module versioning is enabled the following steps are executed:

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
