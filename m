Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ezg63-0002lD-94
 for barebox@lists.infradead.org; Sat, 24 Mar 2018 10:08:24 +0000
Date: Sat, 24 Mar 2018 11:06:03 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180324100603.GA3784@ravnborg.org>
References: <20180323231422.21137-1-l.stach@pengutronix.de>
 <20180323231422.21137-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180323231422.21137-2-l.stach@pengutronix.de>
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
Subject: Re: [PATCH v2 02/10] ARM: safely switch from HYP to SVC mode if
 required
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Mar 24, 2018 at 12:14:14AM +0100, Lucas Stach wrote:
> This is a port of the Linux safe_svcmode_maskall macro to
> the Barebox lowlevel init.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/cpu/lowlevel.S       | 20 ++++++++++++++++----
>  arch/arm/include/asm/system.h | 26 ++++++++++++++++++++++++++
>  2 files changed, 42 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
> index 7696a198e764..194ce0e7c274 100644
> --- a/arch/arm/cpu/lowlevel.S
> +++ b/arch/arm/cpu/lowlevel.S
> @@ -1,16 +1,28 @@
>  #include <linux/linkage.h>
>  #include <init.h>
>  #include <asm/system.h>
> +#include <asm/opcodes-virt.h>
>  
>  .section ".text_bare_init_","ax"
>  ENTRY(arm_cpu_lowlevel_init)
>  	/* save lr, since it may be banked away with a processor mode change */
>  	mov	r2, lr
> +
>  	/* set the cpu to SVC32 mode, mask irq and fiq */
> -	mrs	r12, cpsr
> -	bic	r12, r12, #0x1f
> -	orr	r12, r12, #0xd3
> -	msr	cpsr, r12
> +	mrs	r12 , cpsr
                   ^ extra space

> +	eor	r12, r12, #HYP_MODE
> +	tst	r12, #MODE_MASK
> +	bic	r12 , r12 , #MODE_MASK
                   ^ extra space
> +	orr	r12 , r12 , #(PSR_I_BIT | PSR_F_BIT | SVC_MODE)
                   ^extra sapce
> +THUMB(	orr	r12 , r12 , #PSR_T_BIT	)
                           ^ extra space

If there is a "rule" about the extra space then I have missed it

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
