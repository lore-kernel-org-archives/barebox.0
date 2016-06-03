Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8k8j-0003wg-Pc
 for barebox@lists.infradead.org; Fri, 03 Jun 2016 08:07:34 +0000
Date: Fri, 3 Jun 2016 10:07:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160603080711.GV31666@pengutronix.de>
References: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
 <1464854818-28653-5-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464854818-28653-5-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH 04/12] arm: cpu: add arm64 specific code
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 02, 2016 at 10:06:50AM +0200, Raphael Poggi wrote:
> This patch adds arm64 specific codes, which are:
> 	- exception support
> 	- cache support
> 	- rework Makefile to support arm64
> 
> Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
> ---
>  arch/arm/cpu/Makefile        |  17 ++++-
>  arch/arm/cpu/cache-armv8.S   | 168 +++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/cpu/cache.c         |  19 +++++
>  arch/arm/cpu/exceptions_64.S | 127 ++++++++++++++++++++++++++++++++
>  arch/arm/cpu/interrupts.c    |  47 ++++++++++++
>  arch/arm/cpu/lowlevel.S      |  38 ++++++++++
>  arch/arm/include/asm/cache.h |   9 +++
>  7 files changed, 423 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/cpu/cache-armv8.S
>  create mode 100644 arch/arm/cpu/exceptions_64.S
> 
> --- a/arch/arm/cpu/lowlevel.S
> +++ b/arch/arm/cpu/lowlevel.S
> @@ -3,6 +3,7 @@
>  #include <asm/system.h>
>  
>  .section ".text_bare_init_","ax"
> +#if __LINUX_ARM_ARCH__ <= 7
>  ENTRY(arm_cpu_lowlevel_init)
>  	/* set the cpu to SVC32 mode, mask irq and fiq */
>  	mrs	r12, cpsr
> @@ -56,3 +57,40 @@ ENTRY(arm_cpu_lowlevel_init)
>  
>  	mov	pc, lr
>  ENDPROC(arm_cpu_lowlevel_init)
> +#else
> +ENTRY(arm_cpu_lowlevel_init)
> +	adr	x0, vectors
> +	mrs	x1, CurrentEL
> +	cmp	x1, #0xC		/* Check EL3 state */
> +	b.eq	1f
> +	cmp	x1, #0x8		/* Check EL2 state */
> +	b.eq	2f
> +	cmp	x1, #0x4		/* Check EL1 state */
> +	b.eq	3f
> +
> +1:
> +	msr	vbar_el3, x0
> +	mov	x0, #1			/* Non-Secure EL0/1 */
> +	orr	x0, x0, #(1 << 10)	/* 64-bit EL2 */
> +	msr	scr_el3, x0
> +	msr	cptr_el3, xzr
> +	b	done
> +
> +2:
> +	msr	vbar_el2, x0
> +	mov	x0, #0x33ff		/* Enable FP/SIMD */
> +	msr	cptr_el2, x0
> +	b	done
> +
> +
> +3:
> +	msr	vbar_el1, x0
> +	mov	x0, #(3 << 20)		/* Enable FP/SIMD */
> +	msr	cpacr_el1, x0
> +	b	done
> +
> +done:
> +	ret
> +
> +ENDPROC(arm_cpu_lowlevel_init)
> +#endif

Better create a lowlevel64.S? The code is completely different anyway.

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
