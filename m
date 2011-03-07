Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwemB-0003mm-6U
	for barebox@lists.infradead.org; Mon, 07 Mar 2011 18:03:23 +0000
Date: Mon, 7 Mar 2011 19:03:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110307180321.GP29521@pengutronix.de>
References: <1299520868-30775-1-git-send-email-s.hauer@pengutronix.de>
	<1299520868-30775-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1299520868-30775-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM v7: Fix broken mmu initialization
To: barebox@lists.infradead.org
Cc: Eric BENARD <ebenard@free.fr>

Eric,

This could well be the cause of your i.MX51 mmu trouble.

Sascha

On Mon, Mar 07, 2011 at 07:01:06PM +0100, Sascha Hauer wrote:
> The armv7 specific __mmu_cache_on function accidently sets
> the page table pointer with the unitialized value of r3. It seems
> that often enough r3 still held the correct value from a previous
> call to mmu_init allowing this bug to remain uncovered for longer.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/cache-armv7.S |    1 -
>  1 files changed, 0 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
> index 79bc243..538ab28 100644
> --- a/arch/arm/cpu/cache-armv7.S
> +++ b/arch/arm/cpu/cache-armv7.S
> @@ -20,7 +20,6 @@ ENTRY(__mmu_cache_on)
>  #endif
>  		orrne	r0, r0, #1		@ MMU enabled
>  		movne	r1, #-1
> -		mcrne	p15, 0, r3, c2, c0, 0	@ load page table pointer
>  		mcrne	p15, 0, r1, c3, c0, 0	@ load domain access control
>  #endif
>  		mcr	p15, 0, r0, c1, c0, 0	@ load control register
> -- 
> 1.7.2.3
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
