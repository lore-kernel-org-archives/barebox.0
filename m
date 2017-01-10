Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQqmO-0006UW-TX
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 07:23:40 +0000
Date: Tue, 10 Jan 2017 08:23:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170110072309.6byvxlzyvajoqdos@pengutronix.de>
References: <20170109132808.24043-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170109132808.24043-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: drop redundant debug_ll_outhexw macro defines
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 09, 2017 at 04:28:08PM +0300, Antony Pavlov wrote:
> The debug_ll_outhexw macro has no dependency on UART model
> so we can remove it from UART-dependent header files (debug_ll_ns16550.h
> and mach-ath79/.../debug_ll.h).
> 
> On the other hand the only debug_ll_outhexw user is MIPS nmon monitor
> so we can move the debug_ll_outhexw macro to pbl_nmon.h.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/mips/include/asm/debug_ll_ns16550.h     | 32 ----------------------------
>  arch/mips/include/asm/pbl_nmon.h             | 31 +++++++++++++++++++++++++++
>  arch/mips/mach-ath79/include/mach/debug_ll.h | 32 ----------------------------
>  3 files changed, 31 insertions(+), 64 deletions(-)
> 
> diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
> index 4a6562f7c..058814ecf 100644
> --- a/arch/mips/include/asm/debug_ll_ns16550.h
> +++ b/arch/mips/include/asm/debug_ll_ns16550.h
> @@ -128,38 +128,6 @@ static inline void PUTC_LL(char ch)
>  .endm
>  
>  /*
> - * output a 32-bit value in hex
> - */
> -.macro debug_ll_outhexw
> -#ifdef CONFIG_DEBUG_LL
> -	.set	push
> -	.set	reorder
> -
> -	move	t6, a0
> -	li		t5, 32
> -
> -202:
> -	addi	t5, t5, -4
> -	srlv	a0, t6, t5
> -
> -	/* output one hex digit */
> -	andi	a0, a0, 15
> -	blt	a0, 10, 203f
> -
> -	addi	a0, a0, ('a' - '9' - 1)
> -
> -203:
> -	addi	a0, a0, '0'
> -
> -	debug_ll_outc_a0
> -
> -	bgtz	t5, 202b
> -
> -	.set	pop
> -#endif /* CONFIG_DEBUG_LL */
> -.endm
> -
> -/*
>   * check character in input buffer
>   * return value:
>   *  v0 = 0   no character in input buffer
> diff --git a/arch/mips/include/asm/pbl_nmon.h b/arch/mips/include/asm/pbl_nmon.h
> index 90e2da8ef..e0326bd7c 100644
> --- a/arch/mips/include/asm/pbl_nmon.h
> +++ b/arch/mips/include/asm/pbl_nmon.h
> @@ -43,6 +43,37 @@
>  	.set	pop
>  	.endm
>  
> +/*
> + * output a 32-bit value in hex
> + */
> +.macro debug_ll_outhexw
> +#ifdef CONFIG_DEBUG_LL
> +	.set	push
> +	.set	reorder
> +
> +	move	t6, a0
> +	li	t5, 32
> +
> +202:
> +	addi	t5, t5, -4
> +	srlv	a0, t6, t5
> +
> +	/* output one hex digit */
> +	andi	a0, a0, 15
> +	blt	a0, 10, 203f
> +
> +	addi	a0, a0, ('a' - '9' - 1)
> +
> +203:
> +	addi	a0, a0, '0'
> +
> +	debug_ll_outc_a0
> +
> +	bgtz	t5, 202b
> +
> +	.set	pop
> +#endif /* CONFIG_DEBUG_LL */
> +.endm
>  
>  	.macro	mips_nmon
>  	.set	push
> diff --git a/arch/mips/mach-ath79/include/mach/debug_ll.h b/arch/mips/mach-ath79/include/mach/debug_ll.h
> index e0c3f797b..04bd3ea72 100644
> --- a/arch/mips/mach-ath79/include/mach/debug_ll.h
> +++ b/arch/mips/mach-ath79/include/mach/debug_ll.h
> @@ -123,38 +123,6 @@ static inline void PUTC_LL(int ch)
>  .endm
>  
>  /*
> - * output a 32-bit value in hex
> - */
> -.macro debug_ll_outhexw
> -#ifdef CONFIG_DEBUG_LL
> -	.set	push
> -	.set	reorder
> -
> -	move	t6, a0
> -	li		t5, 32
> -
> -202:
> -	addi	t5, t5, -4
> -	srlv	a0, t6, t5
> -
> -	/* output one hex digit */
> -	andi	a0, a0, 15
> -	blt	a0, 10, 203f
> -
> -	addi	a0, a0, ('a' - '9' - 1)
> -
> -203:
> -	addi	a0, a0, '0'
> -
> -	debug_ll_outc_a0
> -
> -	bgtz	t5, 202b
> -
> -	.set	pop
> -#endif /* CONFIG_DEBUG_LL */
> -.endm
> -
> -/*
>   * check character in input buffer
>   * return value:
>   *  v0 = 0   no character in input buffer
> -- 
> 2.11.0
> 
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
