Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RBlnU-0003Ll-6N
	for barebox@lists.infradead.org; Thu, 06 Oct 2011 11:07:28 +0000
Date: Thu, 6 Oct 2011 13:07:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111006110725.GX31404@pengutronix.de>
References: <1317305076-3334-1-git-send-email-antonynpavlov@gmail.com>
	<1317305076-3334-3-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1317305076-3334-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC PATCH 2/6] dirty hack, fixme: disable mmu_cache_flush in
	arch/arm/cpu/start.c for Tegra
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 29, 2011 at 06:04:32PM +0400, Antony Pavlov wrote:
> Initial Tegra support has no initialisation routines, so
> it can't initialise the caches in the right way.

Not nice, but I currently do not see a much better way around this.
I think this is ok for now.

Sascha

> 
> MMU & cache code in arch/arm/cpu/start.c hangs up a Tegra-based system.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/arm/cpu/start.c |    3 +++
>  1 files changed, 3 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index f8eb0a9..69fb5b0 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -74,6 +74,8 @@ void __naked __bare_init reset(void)
>  #ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
>  	arch_init_lowlevel();
>  #endif
> +
> +#ifndef CONFIG_ARCH_TEGRA
>  	__asm__ __volatile__ (
>  		"bl __mmu_cache_flush;"
>  		:
> @@ -89,6 +91,7 @@ void __naked __bare_init reset(void)
>  	r |= CR_B;
>  #endif
>  	set_cr(r);
> +#endif
>  
>  #ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
>  	board_init_lowlevel();
> -- 
> 1.7.6.3
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
