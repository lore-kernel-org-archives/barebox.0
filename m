Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQXDR-0007hX-1v
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 10:30:14 +0000
Date: Mon, 9 Jan 2017 11:29:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109102951.7rnkkjt3l7idqk6h@pengutronix.de>
References: <1482127552-31772-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1482127552-31772-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: Fix a bug in stack's "top" initialization
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Dec 18, 2016 at 10:05:52PM -0800, Andrey Smirnov wrote:
> Code-paths responsible for initializing CPU's stack pointer and variable
> used in stack memory resource reservation got out of sync which resulted
> in actual stack being 64K off from what "stack" struct resource
> registered by arm_request_stack() thought it was.
> 
> At least one issue resulting from that can be easily triggered by
> running:
> 
> memtest -t
> 
> This commit unifies the aforementioned code to a certain degree which
> solves the problem and hopefuly makes it less likely to become an issue
> again.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

Applied, thanks

Sascha

>  arch/arm/cpu/entry.c               | 2 +-
>  arch/arm/cpu/start.c               | 2 +-
>  arch/arm/include/asm/barebox-arm.h | 8 +++++++-
>  3 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/cpu/entry.c b/arch/arm/cpu/entry.c
> index 0cdcfec..33b1429 100644
> --- a/arch/arm/cpu/entry.c
> +++ b/arch/arm/cpu/entry.c
> @@ -27,7 +27,7 @@
>  void __naked __noreturn barebox_arm_entry(unsigned long membase,
>  					  unsigned long memsize, void *boarddata)
>  {
> -	arm_setup_stack(arm_mem_stack(membase, membase + memsize) + STACK_SIZE - 16);
> +	arm_setup_stack(arm_mem_stack_top(membase, membase + memsize) - 16);
>  	arm_early_mmu_cache_invalidate();
>  
>  	if (IS_ENABLED(CONFIG_PBL_MULTI_IMAGES))
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 0120117..a62b0d5 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -158,7 +158,7 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
>  
>  	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
>  
> -	arm_stack_top = endmem;
> +	arm_stack_top = arm_mem_stack_top(membase, endmem);
>  	arm_barebox_size = barebox_size;
>  	malloc_end = arm_mem_barebox_image(membase, endmem,
>  						arm_barebox_size);
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 061296a..e8dfd02 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -94,10 +94,16 @@ static inline void arm_fixup_vectors(void)
>  
>  void *barebox_arm_boot_dtb(void);
>  
> +static inline unsigned long arm_mem_stack_top(unsigned long membase,
> +					      unsigned long endmem)
> +{
> +	return endmem - SZ_64K;
> +}
> +
>  static inline unsigned long arm_mem_stack(unsigned long membase,
>  					  unsigned long endmem)
>  {
> -	return endmem - SZ_64K - STACK_SIZE;
> +	return arm_mem_stack_top(membase, endmem) - STACK_SIZE;
>  }
>  
>  static inline unsigned long arm_mem_ttb(unsigned long membase,
> -- 
> 2.5.5
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
