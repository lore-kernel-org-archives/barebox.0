Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaZ75-0004Za-P5
 for barebox@lists.infradead.org; Mon, 18 May 2020 06:19:01 +0000
Date: Mon, 18 May 2020 08:18:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200518061858.GJ11869@pengutronix.de>
References: <20200515152215.146833-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515152215.146833-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH] kvx: do not include empty <config.h>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Sat, May 16, 2020 at 12:22:15AM +0900, Masahiro Yamada wrote:
> <config.h> is per-board config file, which is only allowed for old
> boards.
> 
> For new boards, the top Makefile creates an empty include/config.h
> 
> kvx does not have config.h, so #include <config.h> is useless.
> 
> Also, remove meaningless board-$(CONFIG_GENERIC).
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied, thanks

Sascha

> 
>  arch/kvx/Makefile          | 2 --
>  arch/kvx/cpu/barebox.lds.S | 1 -
>  arch/kvx/cpu/start.S       | 1 -
>  3 files changed, 4 deletions(-)
> 
> diff --git a/arch/kvx/Makefile b/arch/kvx/Makefile
> index c97cff345..7abaed651 100644
> --- a/arch/kvx/Makefile
> +++ b/arch/kvx/Makefile
> @@ -2,8 +2,6 @@ KBUILD_DEFCONFIG := generic_defconfig
>  
>  KBUILD_CPPFLAGS += -fno-strict-aliasing
>  
> -board-$(CONFIG_GENERIC) := generic
> -
>  KALLSYMS += --symbol-prefix=_
>  
>  ifeq ($(CROSS_COMPILE),)
> diff --git a/arch/kvx/cpu/barebox.lds.S b/arch/kvx/cpu/barebox.lds.S
> index 8d1944afb..bf92564cf 100644
> --- a/arch/kvx/cpu/barebox.lds.S
> +++ b/arch/kvx/cpu/barebox.lds.S
> @@ -3,7 +3,6 @@
>   * Copyright (C) 2019 Kalray Inc.
>   */
>  
> -#include <config.h>
>  #include <asm/common.h>
>  #include <asm/sys_arch.h>
>  #include <asm-generic/barebox.lds.h>
> diff --git a/arch/kvx/cpu/start.S b/arch/kvx/cpu/start.S
> index a02900fb9..d90272c71 100644
> --- a/arch/kvx/cpu/start.S
> +++ b/arch/kvx/cpu/start.S
> @@ -3,7 +3,6 @@
>   * Copyright (C) 2019 Kalray Inc.
>   */
>  
> -#include <config.h>
>  #include <linux/linkage.h>
>  #include <asm/privilege.h>
>  #include <asm/sys_arch.h>
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
