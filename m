Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcVCT-0008Fa-RQ
 for barebox@lists.infradead.org; Wed, 15 May 2013 06:28:35 +0000
Date: Wed, 15 May 2013 08:28:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130515062811.GB32299@pengutronix.de>
References: <1368537296-19610-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368537296-19610-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: Re: [PATCH 1/3] ARM v7: fix mmu-off operation
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org

Hi Enrico,

On Tue, May 14, 2013 at 03:14:54PM +0200, Enrico Scholz wrote:
> Although conclusions in 50d1b2de8ea0f3b8d89fe3a97ce64315996ed4cb "ARM
> v7: Fix register corruption in v7_mmu_cache_off" are correct, the
> implemented fix is not complete because the following failure can
> happen:
> 
> 1. d-cache contains the cache line around 'sp'
> 
> 2. v7_mmu_cache_off() disables cache
> 
> 3. early v7_mmu_cache_flush() pushes 'lr' on uncached stack
> 
> 4. v7_mmu_cache_flush() flushes d-cache and can override stack written
>    by step 3.
> 
> 5. v7_mmu_cache_flush() pops 'lr' out of cache and jumps to it which
>    might be random data now.
> 
> Patch avoids step 3 which is easy because 'lr' is never modified by the
> function.  By using the 'r12' scratch register instead of 'r10', the
> whole initial 'push' can be avoided.
> 
> Patch moves also the 'DMB' operation so that it is executed after data
> has been pushed on stack.
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  arch/arm/cpu/cache-armv7.S | 50 +++++++++++++++++++++++-----------------------
>  1 file changed, 25 insertions(+), 25 deletions(-)
> 
> diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
> index 13542d9..5bdf7e4 100644
> --- a/arch/arm/cpu/cache-armv7.S
> +++ b/arch/arm/cpu/cache-armv7.S
> @@ -34,7 +34,10 @@ ENDPROC(v7_mmu_cache_on)
>  
>  .section .text.v7_mmu_cache_off
>  ENTRY(v7_mmu_cache_off)
> -		stmfd	sp!, {r0-r7, r9-r11}
> +		/* although 'r12' is an eabi scratch register which does
> +		   not need to be restored, save it to ensure an 8-byte
> +	           stack alignment */
> +		stmfd	sp!, {r4-r12, lr}
>  		mrc	p15, 0, r0, c1, c0
>  #ifdef CONFIG_MMU
>  		bic	r0, r0, #0x000d
> @@ -42,7 +45,6 @@ ENTRY(v7_mmu_cache_off)
>  		bic	r0, r0, #0x000c
>  #endif
>  		mcr	p15, 0, r0, c1, c0	@ turn MMU and cache off
> -		mov	r12, lr
>  		bl	v7_mmu_cache_flush
>  		mov	r0, #0
>  #ifdef CONFIG_MMU
> @@ -51,35 +53,33 @@ ENTRY(v7_mmu_cache_off)
>  		mcr	p15, 0, r0, c7, c5, 6	@ invalidate BTC
>  		mcr	p15, 0, r0, c7, c10, 4	@ DSB
>  		mcr	p15, 0, r0, c7, c5, 4	@ ISB
> -		ldmfd	sp!, {r0-r7, r9-r11}
> -		mov	pc, r12
> +		ldmfd	sp!, {r4-r12, pc}
>  ENDPROC(v7_mmu_cache_off)
>  
>  .section .text.v7_mmu_cache_flush
>  ENTRY(v7_mmu_cache_flush)
> -		stmfd	sp!, {r10, lr}

So you can drop this stack push by using r12 instead of r10. That's fine
I think, but should be a patch of its own. Can you resend this as two
patches? I think that would also make the critical part of this patch
more clear.

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
