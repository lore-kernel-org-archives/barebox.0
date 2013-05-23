Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfP5B-0002Je-3p
 for barebox@lists.infradead.org; Thu, 23 May 2013 06:33:01 +0000
Date: Thu, 23 May 2013 08:32:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130523063239.GY32299@pengutronix.de>
References: <1369290675-15806-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369290675-15806-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH urgent] ARM: fix the memset fix
To: barebox@lists.infradead.org
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>


Hi Nico,

ignore this one, you were not meant to be on Cc.

Sascha

On Thu, May 23, 2013 at 08:31:15AM +0200, Sascha Hauer wrote:
> From: Nicolas Pitre <nicolas.pitre@linaro.org>
> 
> From Kernel commit 418df63a ARM: 7670/1: fix the memset fix
> 
> | Commit 455bd4c430b0 ("ARM: 7668/1: fix memset-related crashes caused by
> | recent GCC (4.7.2) optimizations") attempted to fix a compliance issue
> | with the memset return value.  However the memset itself became broken
> | by that patch for misaligned pointers.
> |
> | This fixes the above by branching over the entry code from the
> | misaligned fixup code to avoid reloading the original pointer.
> |
> | Also, because the function entry alignment is wrong in the Thumb mode
> | compilation, that fixup code is moved to the end.
> |
> | While at it, the entry instructions are slightly reworked to help dual
> | issue pipelines.
> |
> | Signed-off-by: Nicolas Pitre <nico@linaro.org>
> | Tested-by: Alexander Holler <holler@ahsoftware.de>
> | Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> This was reported one of our customers. One effect was that the
> md5sum implementation produced wrong results.
> 
>  arch/arm/lib/memset.S | 33 +++++++++++++--------------------
>  1 file changed, 13 insertions(+), 20 deletions(-)
> 
> diff --git a/arch/arm/lib/memset.S b/arch/arm/lib/memset.S
> index 5e35d7f..c4d2672 100644
> --- a/arch/arm/lib/memset.S
> +++ b/arch/arm/lib/memset.S
> @@ -14,31 +14,15 @@
>  
>  	.text
>  	.align	5
> -	.word	0
> -
> -1:	subs	r2, r2, #4		@ 1 do we have enough
> -	blt	5f			@ 1 bytes to align with?
> -	cmp	r3, #2			@ 1
> -	strltb	r1, [ip], #1		@ 1
> -	strleb	r1, [ip], #1		@ 1
> -	strb	r1, [ip], #1		@ 1
> -	add	r2, r2, r3		@ 1 (r2 = r2 - (4 - r3))
> -/*
> - * The pointer is now aligned and the length is adjusted.  Try doing the
> - * memset again.
> - */
>  
>  ENTRY(memset)
> -/*
> - * Preserve the contents of r0 for the return value.
> - */
> -	mov	ip, r0
> -	ands	r3, ip, #3		@ 1 unaligned?
> -	bne	1b			@ 1
> +	ands	r3, r0, #3		@ 1 unaligned?
> +	mov	ip, r0			@ preserve r0 as return value
> +	bne	6f			@ 1
>  /*
>   * we know that the pointer in ip is aligned to a word boundary.
>   */
> -	orr	r1, r1, r1, lsl #8
> +1:	orr	r1, r1, r1, lsl #8
>  	orr	r1, r1, r1, lsl #16
>  	mov	r3, r1
>  	cmp	r2, #16
> @@ -127,5 +111,14 @@ ENTRY(memset)
>  	tst	r2, #1
>  	strneb	r1, [ip], #1
>  	mov	pc, lr
> +
> +6:	subs	r2, r2, #4		@ 1 do we have enough
> +	blt	5b			@ 1 bytes to align with?
> +	cmp	r3, #2			@ 1
> +	strltb	r1, [ip], #1		@ 1
> +	strleb	r1, [ip], #1		@ 1
> +	strb	r1, [ip], #1		@ 1
> +	add	r2, r2, r3		@ 1 (r2 = r2 - (4 - r3))
> +	b	1b
>  ENDPROC(memset)
>  
> -- 
> 1.8.2.rc2
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
