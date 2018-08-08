Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnIzI-00019E-KK
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 07:34:34 +0000
Date: Wed, 8 Aug 2018 09:34:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808073420.mhfjffjsasyw4mei@pengutronix.de>
References: <20180807210037.29239-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180807210037.29239-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: Mark SP as being clobbered in arm_setup_stack()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 07, 2018 at 02:00:37PM -0700, Andrey Smirnov wrote:
> Not sure why it was working before, but with recent update of AArch64
> GCC to 8.1.1 on my Fedora 28 machine, compiling barebox_arm_entry()
> yields the following assembly:
> 
> 0000000000002aac <barebox_arm_entry>:
>     2aac:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
>     2ab0:	d1404023 	sub	x3, x1, #0x10, lsl #12
>     2ab4:	d1004063 	sub	x3, x3, #0x10
>     2ab8:	910003fd 	mov	x29, sp
>     2abc:	8b000063 	add	x3, x3, x0
>     2ac0:	a90153f3 	stp	x19, x20, [sp, #16]
>     2ac4:	aa0003f3 	mov	x19, x0
>     2ac8:	aa0103f4 	mov	x20, x1
>     2acc:	f90017e2 	str	x2, [sp, #40] <-- storing 'boarddata' on old stack
>     2ad0:	9100007f 	mov	sp, x3 <-- setting up new stack
>     2ad4:	97ffffdd 	bl	2a48 <arm_early_mmu_cache_invalidate>
>     2ad8:	f94017e2 	ldr	x2, [sp, #40] <--- sadness
>     2adc:	aa1403e1 	mov	x1, x20
>     2ae0:	aa1303e0 	mov	x0, x19
>     2ae4:	940000a1 	bl	2d68 <barebox_multi_pbl_start>
> 
> Which result in AArch64 image (i.MX8MQ) not being bootable. With SP
> marked as clobbered, the above assembly changes to the following:
> 
> 0000000000002aac <barebox_arm_entry>:
>     2aac:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
>     2ab0:	d1404023 	sub	x3, x1, #0x10, lsl #12
>     2ab4:	d1004063 	sub	x3, x3, #0x10
>     2ab8:	910003fd 	mov	x29, sp
>     2abc:	a90153f3 	stp	x19, x20, [sp, #16]
>     2ac0:	8b000063 	add	x3, x3, x0
>     2ac4:	aa0003f3 	mov	x19, x0
>     2ac8:	aa0103f4 	mov	x20, x1
>     2acc:	f90017a2 	str	x2, [x29, #40]
>     2ad0:	9100007f 	mov	sp, x3
>     2ad4:	97ffffdd 	bl	2a48 <arm_early_mmu_cache_invalidate>
>     2ad8:	f94017a2 	ldr	x2, [x29, #40]
>     2adc:	aa1403e1 	mov	x1, x20
>     2ae0:	aa1303e0 	mov	x0, x19
>     2ae4:	940000a1 	bl	2d68 <barebox_multi_pbl_start>
> 
> now x29 is used to access stored x2 which avoids the problem and
> allows the system to boot correctly.
> 
> The change is a no-op on AArch32.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/include/asm/common.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/common.h b/arch/arm/include/asm/common.h
> index 97bfdc43f..c32cdfe5e 100644
> --- a/arch/arm/include/asm/common.h
> +++ b/arch/arm/include/asm/common.h
> @@ -48,7 +48,10 @@ static inline unsigned long get_sp(void)
>  
>  static inline void arm_setup_stack(unsigned long top)
>  {
> -	__asm__ __volatile__("mov sp, %0" : : "r"(top));
> +	__asm__ __volatile__("mov sp, %0"
> +			     :
> +			     : "r"(top)
> +			     : "sp");
>  }
>  
>  #endif /* __ASM_ARM_COMMON_H */
> -- 
> 2.17.1
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
