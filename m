Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xz2Vc-0000sZ-BP
 for barebox@lists.infradead.org; Thu, 11 Dec 2014 12:06:17 +0000
Date: Thu, 11 Dec 2014 13:05:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141211120553.GI30369@pengutronix.de>
References: <1418289327-28310-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1418289327-28310-5-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1418289327-28310-5-git-send-email-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/4] arm/cpu/lowlevel: invalidate i-cache before enabling
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 11, 2014 at 10:15:27AM +0100, Uwe Kleine-K=F6nig wrote:
> Architecturally the cache contents are undefined so it might well
> contain stale data at reset. So better be save than sorry.
> =

> I verifyed that the added instructions are defined for both, ARMv6 and
> ARMv7, using the ARM Architecture Reference Manual, ARMv7-A and ARMv7-R
> edition (ARM DDI 0406C.c).
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/cpu/lowlevel.S | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> =

> diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
> index dd0f75a8802a..af2b0a8ac93a 100644
> --- a/arch/arm/cpu/lowlevel.S
> +++ b/arch/arm/cpu/lowlevel.S
> @@ -11,7 +11,19 @@ ENTRY(arm_cpu_lowlevel_init)
>  	msr	cpsr, r12
>  =

>  #if __LINUX_ARM_ARCH__ >=3D 6
> +/*
> + * Invalidate instruction cache and branch predictor. Even if the
> + * i-cache is off it might contain stale entries that are better
> + * discarded before enabling the cache.
> + */

Please indent like the other comments

> +	/* ICIALLU: Invalidate all instruction caches to PoU */
> +	mcr	p15, 0, r12, c7, c5, 0
> +	/* BPIALL: Invalidate all branch predictors */
> +	mcr	p15, 0, r12, c7, c5, 6
> +	/* DSB, ensure completion of the invalidation */
> +	mcr	p15, 0, r12, c7, c10, 4
>  	/*
> +	 * ISB, ensure instruction fetch path is in sync.

Should this comment be in 2/4?

>  	 * Note that the ARM Architecture Reference Manual, ARMv7-A and ARMv7-R
>  	 * edition (ARM DDI 0406C.c) doesn't define this instruction in the
>  	 * ARMv6 part (D12.7.10). It only has: "Support of additional
> @@ -19,7 +31,7 @@ ENTRY(arm_cpu_lowlevel_init)
>  	 * But an earlier version of the ARMARM (ARM DDI 0100I) does define it
>  	 * as "Flush prefetch buffer (PrefetchFlush)".
>  	 */
> -	mcr	p15, 0, r12, c7, c5, 4		/* ISB */
> +	mcr	p15, 0, r12, c7, c5, 4

This comment was just introduced in 2/4.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
