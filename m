Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3zXa-0000oV-7N
 for barebox@lists.infradead.org; Thu, 05 Apr 2018 07:42:40 +0000
Date: Thu, 5 Apr 2018 09:42:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180405074224.mvjlnvmwfhgmn3m3@pengutronix.de>
References: <20180326192025.28809-1-l.stach@pengutronix.de>
 <20180326192025.28809-7-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180326192025.28809-7-l.stach@pengutronix.de>
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
Subject: Re: [PATCH v3 07/10] ARM: install HYP vectors at PBL and Barebox entry
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 26, 2018 at 09:20:22PM +0200, Lucas Stach wrote:
> If the CPU was already in HYP mode when entering the PBL, install a
> simple trap handler to allow to get back from SVC to HYP before
> switching to HYP mode.
> 
> As the vectors are part of the currently running binary, we need to
> do the same setup when starting the real Barebox binary, as the PBL
> setup vectors might get overwritten. To do this we trap into HYP mode
> just before jumping to Barebox and then re-do the vector setup and
> SVC switch as the first thing in Barebox proper.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Roland Hieber <r.hieber@pengutronix.de>
> ---
>  arch/arm/cpu/lowlevel.S   | 3 +++
>  arch/arm/cpu/start-pbl.c  | 4 ++++
>  arch/arm/cpu/start.c      | 3 +++
>  arch/arm/cpu/uncompress.c | 4 ++++
>  4 files changed, 14 insertions(+)
> 
> diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
> index 43665981e48b..13dfe496ad17 100644
> --- a/arch/arm/cpu/lowlevel.S
> +++ b/arch/arm/cpu/lowlevel.S
> @@ -8,6 +8,9 @@ ENTRY(arm_cpu_lowlevel_init)
>  	/* save lr, since it may be banked away with a processor mode change */
>  	mov	r2, lr
>  
> +	/* careful: the hyp install corrupts r0 and r1 */
> +	bl	__hyp_install
> +
>  	/* set the cpu to SVC32 mode, mask irq and fiq */
>  	mrs	r12, cpsr
>  	eor	r12, r12, #HYP_MODE
> diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
> index e851b4a2da5e..e0793579e2e8 100644
> --- a/arch/arm/cpu/start-pbl.c
> +++ b/arch/arm/cpu/start-pbl.c
> @@ -26,6 +26,7 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm-generic/memory_layout.h>
>  #include <asm/sections.h>
> +#include <asm/secure.h>
>  #include <asm/pgtable.h>
>  #include <asm/cache.h>
>  #include <asm/unaligned.h>
> @@ -100,5 +101,8 @@ __noreturn void barebox_single_pbl_start(unsigned long membase,
>  	else
>  		barebox = (void *)barebox_base;
>  
> +	if (__boot_cpu_mode == HYP_MODE)
> +		armv7_switch_to_hyp();
> +
>  	barebox(membase, memsize, boarddata);
>  }
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 171e6ad0eb7a..a0db6436f387 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -24,6 +24,7 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm-generic/memory_layout.h>
>  #include <asm/sections.h>
> +#include <asm/secure.h>
>  #include <asm/unaligned.h>
>  #include <asm/cache.h>
>  #include <memory.h>
> @@ -145,6 +146,8 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
>  	unsigned long malloc_start, malloc_end;
>  	unsigned long barebox_size = barebox_image_size + MAX_BSS_SIZE;
>  
> +	armv7_hyp_install();

Calling a armv7 specific function in a generic code path is not so nice.
If this is really necessary then I suggest to #ifdef it here rather than
in the header file (where armv7_hyp_install() expands to a noop for
armv8. And what about the older architectures? A quick test revealed
this works on armv5, but is this intentional or by accident?

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
