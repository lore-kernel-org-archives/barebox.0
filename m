Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKnRV-0002If-KM
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 09:46:38 +0000
Date: Sun, 7 Oct 2012 11:46:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121007094636.GB1322@pengutronix.de>
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
 <1349476393-25520-5-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349476393-25520-5-git-send-email-vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 04/11] ARM: ensure irqs are disabled
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 06, 2012 at 12:33:06AM +0200, vj wrote:
> 
> Signed-off-by: vj <vicencb@gmail.com>
> ---
>  arch/arm/cpu/cpu.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
> index 87ba877..45c3a90 100644
> --- a/arch/arm/cpu/cpu.c
> +++ b/arch/arm/cpu/cpu.c
> @@ -85,6 +85,12 @@ void arch_shutdown(void)
>  		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
>  	);
>  #endif
> +	/*
> +	 * barebox normally does not use interrupts, but some functionalities
> +	 * (eg. OMAP4_USBBOOT) require them enabled. So be sure interrupts are
> +	 * disabled before exiting.
> +	 */
> +	__asm__ __volatile__ ("cpsid i\n");

This cannot be applied since on ARMv5 we have to do something different,
see the disable_irq macro:

#if __LINUX_ARM_ARCH__ >= 6
	.macro	disable_irq
	cpsid	i
	.endm

	.macro	enable_irq
	cpsie	i
	.endm
#else
	.macro	disable_irq
	msr	cpsr_c, #PSR_I_BIT | SVC_MODE
	.endm

	.macro	enable_irq
	msr	cpsr_c, #SVC_MODE
	.endm
#endif


Note, for now it's ok to have this a compile time decision, but this
should become a runtime decision over time.

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
