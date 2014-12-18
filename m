Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y1We5-0003Tg-T2
 for barebox@lists.infradead.org; Thu, 18 Dec 2014 08:41:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <ukl@pengutronix.de>) id 1Y1Wdh-0001a1-7W
 for barebox@lists.infradead.org; Thu, 18 Dec 2014 09:40:53 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <ukl@pengutronix.de>) id 1Y1Wdh-00021M-62
 for barebox@lists.infradead.org; Thu, 18 Dec 2014 09:40:53 +0100
Date: Thu, 18 Dec 2014 09:40:53 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20141218084053.GD10857@pengutronix.de>
References: <1418331093-18640-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1418331093-18640-2-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1418331093-18640-2-git-send-email-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/3] arm/cpu/lowlevel: invalidate i-cache before
 enabling
To: barebox@lists.infradead.org

Hello,

On Thu, Dec 11, 2014 at 09:51:31PM +0100, Uwe Kleine-K=F6nig wrote:
> Architecturally the cache contents are undefined so it might well
> contain stale data at reset. So better be save than sorry.
> =

> I verifyed that the added instructions are defined for both, ARMv6 and
> ARMv7, using the ARM Architecture Reference Manual, ARMv7-A and ARMv7-R
> edition (ARM DDI 0406C.c). For the already existing mcr instruction see
> the newly added comment.
> =

> This patch also unifies handling of ARMv6 and ARMv7, the isb instruction
> can also be done on the latter via mcr which simplifies the code a bit.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/cpu/lowlevel.S | 23 ++++++++++++++++++++---
>  1 file changed, 20 insertions(+), 3 deletions(-)
> =

> diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
> index c615d5b58160..e000cd8eae4c 100644
> --- a/arch/arm/cpu/lowlevel.S
> +++ b/arch/arm/cpu/lowlevel.S
> @@ -11,9 +11,26 @@ ENTRY(arm_cpu_lowlevel_init)
>  	orr	r12, r12, #0xd3
>  	msr	cpsr, r12
>  =

> -#if __LINUX_ARM_ARCH__ >=3D 7
> -	isb
> -#elif __LINUX_ARM_ARCH__ =3D=3D 6
> +#if __LINUX_ARM_ARCH__ >=3D 6
> +	/*
> +	 * ICIALLU: Invalidate all instruction caches to PoU,
> +	 * includes flushing of branch predictors.
> +	 * Even if the i-cache is off it might contain stale entries
> +	 * that are better discarded before enabling the cache.
> +	 * Architectually this is even possible after a cold reset.
> +	 */
> +	mcr	p15, 0, r12, c7, c5, 0
> +	/* DSB, ensure completion of the invalidation */
> +	mcr	p15, 0, r12, c7, c10, 4
> +	/*
> +	 * ISB, ensure instruction fetch path is in sync.
> +	 * Note that the ARM Architecture Reference Manual, ARMv7-A and ARMv7-R
> +	 * edition (ARM DDI 0406C.c) doesn't define this instruction in the
> +	 * ARMv6 part (D12.7.10). It only has: "Support of additional
> +	 * operations is IMPLEMENTATION DEFINED".
> +	 * But an earlier version of the ARMARM (ARM DDI 0100I) does define it
> +	 * as "Flush prefetch buffer (PrefetchFlush)".
> +	 */
>  	mcr	p15, 0, r12, c7, c5, 4
>  #endif
I just noticed that this is not optimal here. E.g. for mvebu_defconfig
builds this code is not compiled in because

	CONFIG_ARCH_ARMADA_370=3Dy
	CONFIG_ARCH_ARMADA_XP=3Dy
	CONFIG_ARCH_DOVE=3Dy
	CONFIG_ARCH_KIRKWOOD=3Dy

and so __LINUX_ARM_ARCH__ =3D 5. That means it's not worse than before my
patch, but still not optimal. I'll check how to fix that.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
