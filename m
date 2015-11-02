Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zt9pb-0005Tf-RN
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 07:47:08 +0000
Date: Mon, 2 Nov 2015 08:46:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151102074645.GI25308@pengutronix.de>
References: <1446261143-11472-1-git-send-email-andrew.smirnov@gmail.com>
 <1446261143-11472-2-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446261143-11472-2-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v3 2/2] arm/cpu: Avoid multiple definitions of
 barebox_arm_entry
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 30, 2015 at 08:12:23PM -0700, Andrey Smirnov wrote:
> All versions of barebox_arm_entry (in uncompress.c, start.c and
> start-pbl.c) appear to be doing exacty the same thing. So move the
> definition into a separate file and use IS_ENABLED macro to avoid
> re-definition.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> Changes since v2:
> 	- None
> 
> Changes since v1:
> 	- Hopefully more meaningful names for former internal symbols
> 
> 
>  arch/arm/cpu/Makefile     |  4 ++--
>  arch/arm/cpu/entry.c      | 38 +++++++++++++++++++++++++++++++++++++
>  arch/arm/cpu/entry.h      | 48 +++++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/cpu/start-pbl.c  | 29 +---------------------------
>  arch/arm/cpu/start.c      | 29 ++--------------------------
>  arch/arm/cpu/uncompress.c | 16 +---------------
>  6 files changed, 92 insertions(+), 72 deletions(-)
>  create mode 100644 arch/arm/cpu/entry.c
>  create mode 100644 arch/arm/cpu/entry.h
> 
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index fb3929c..418bcab 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -1,7 +1,7 @@
>  obj-y += cpu.o
>  obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions.o
>  obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
> -obj-y += start.o setupc.o
> +obj-y += start.o setupc.o entry.o
> 
>  #
>  # Any variants can be called as start-armxyz.S
> @@ -23,7 +23,7 @@ AFLAGS_pbl-cache-armv7.o       :=-Wa,-march=armv7-a
>  pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
>  obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
> 
> -pbl-y += setupc.o
> +pbl-y += setupc.o entry.o
>  pbl-$(CONFIG_PBL_SINGLE_IMAGE) += start-pbl.o
>  pbl-$(CONFIG_PBL_MULTI_IMAGES) += uncompress.o
> 
> diff --git a/arch/arm/cpu/entry.c b/arch/arm/cpu/entry.c
> new file mode 100644
> index 0000000..3b74c6a
> --- /dev/null
> +++ b/arch/arm/cpu/entry.c
> @@ -0,0 +1,38 @@
> +#include <types.h>
> +
> +#include <asm/cache.h>
> +
> +#include "entry.h"
> +
> +/*
> + * Main ARM entry point. Call this with the memory region you can
> + * spare for barebox. This doesn't necessarily have to be the full
> + * SDRAM. The currently running binary can be inside or outside of
> + * this region. TEXT_BASE can be inside or outside of this
> + * region. boarddata will be preserved and can be accessed later with
> + * barebox_arm_boarddata().
> + *
> + * -> membase + memsize
> + *   STACK_SIZE              - stack
> + *   16KiB, aligned to 16KiB - First level page table if early MMU support
> + *                             is enabled
> + *   128KiB                  - early memory space
> + * -> maximum end of barebox binary
> + *
> + * Usually a TEXT_BASE of 1MiB below your lowest possible end of memory should
> + * be fine.
> + */
> +
> +void __naked __noreturn barebox_arm_entry(unsigned long membase,
> +					  unsigned long memsize, void *boarddata)
> +{
> +	arm_setup_stack(membase + memsize - 16);
> +	arm_early_mmu_cache_invalidate();
> +
> +	if (IS_ENABLED(CONFIG_PBL_MULTI_IMAGES))
> +		barebox_multi_pbl_start(membase, memsize, boarddata);
> +	else if (IS_ENABLED(CONFIG_PBL_SINGLE_IMAGE))
> +		barebox_single_pbl_start(membase, memsize, boarddata);
> +	else
> +		barebox_non_pbl_start(membase, memsize, boarddata);
> +}
> diff --git a/arch/arm/cpu/entry.h b/arch/arm/cpu/entry.h
> new file mode 100644
> index 0000000..80fee57
> --- /dev/null
> +++ b/arch/arm/cpu/entry.h
> @@ -0,0 +1,48 @@
> +#ifndef __ENTRY_H__
> +#define __ENTRY_H__
> +
> +#include <common.h>
> +
> +#if !defined (__PBL__)
> +void __noreturn barebox_non_pbl_start(unsigned long membase,
> +				      unsigned long memsize,
> +				      void *boarddata);
> +#else
> +static inline
> +void __noreturn barebox_non_pbl_start(unsigned long membase,
> +				      unsigned long memsize,
> +				      void *boarddata)
> +{
> +	hang();
> +};
> +#endif
> +
> +#if defined (__PBL__) && defined(CONFIG_PBL_MULTI_IMAGES)
> +void __noreturn barebox_multi_pbl_start(unsigned long membase,
> +					unsigned long memsize,
> +					void *boarddata);
> +#else
> +static inline
> +void __noreturn barebox_multi_pbl_start(unsigned long membase,
> +					unsigned long memsize,
> +					void *boarddata)
> +{
> +	hang();
> +}
> +#endif
> +
> +#if defined (__PBL__) && defined(CONFIG_PBL_SINGLE_IMAGE)
> +void __noreturn barebox_single_pbl_start(unsigned long membase,
> +					 unsigned long memsize,
> +					 void *boarddata);
> +#else
> +static inline
> +void __noreturn barebox_single_pbl_start(unsigned long membase,
> +					 unsigned long memsize,
> +					 void *boarddata)
> +{
> +	hang();
> +}
> +#endif

Do we need these static inline stubs? From a first test we don't and
without them this patch looks much nicer.

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
