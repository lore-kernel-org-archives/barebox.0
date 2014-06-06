Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wslt6-0007sQ-89
 for barebox@lists.infradead.org; Fri, 06 Jun 2014 04:36:21 +0000
Date: Fri, 6 Jun 2014 06:35:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140606043557.GO15686@pengutronix.de>
References: <1401975820-29215-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1401975820-29215-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/3] ARM: clps711x: Prepare common init function to DT
 support
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Jun 05, 2014 at 05:43:38PM +0400, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/clep7212/lowlevel.c            | 2 +-
>  arch/arm/mach-clps711x/include/mach/clps711x.h | 2 +-
>  arch/arm/mach-clps711x/lowlevel.c              | 4 ++--
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
> index 92fbb9b..ac71506 100644
> --- a/arch/arm/boards/clep7212/lowlevel.c
> +++ b/arch/arm/boards/clep7212/lowlevel.c
> @@ -24,5 +24,5 @@ void __naked __bare_init barebox_arm_reset_vector(void)
>  {
>  	arm_cpu_lowlevel_init();
>  
> -	clps711x_barebox_entry(CLPS711X_CPU_PLL_MULT);
> +	clps711x_barebox_entry(CLPS711X_CPU_PLL_MULT, NULL);
>  }
> diff --git a/arch/arm/mach-clps711x/include/mach/clps711x.h b/arch/arm/mach-clps711x/include/mach/clps711x.h
> index cc65cc8..f4a1f0a 100644
> --- a/arch/arm/mach-clps711x/include/mach/clps711x.h
> +++ b/arch/arm/mach-clps711x/include/mach/clps711x.h
> @@ -281,6 +281,6 @@
>  #define MEMCFG_WAITSTATE_2_0	(14 << 2)
>  #define MEMCFG_WAITSTATE_1_0	(15 << 2)
>  
> -void clps711x_barebox_entry(u32);
> +void clps711x_barebox_entry(u32, void *);
>  
>  #endif
> diff --git a/arch/arm/mach-clps711x/lowlevel.c b/arch/arm/mach-clps711x/lowlevel.c
> index 93a64a1..ff23b05 100644
> --- a/arch/arm/mach-clps711x/lowlevel.c
> +++ b/arch/arm/mach-clps711x/lowlevel.c
> @@ -17,7 +17,7 @@
>  
>  #include <mach/clps711x.h>
>  
> -void __naked __bare_init clps711x_barebox_entry(u32 pllmult)
> +void __naked __bare_init clps711x_barebox_entry(u32 pllmult, void *data)
>  {
>  	u32 cpu, bus;
>  
> @@ -69,5 +69,5 @@ void __naked __bare_init clps711x_barebox_entry(u32 pllmult)
>  	/* Disable LED flasher */
>  	writew(0, LEDFLSH);
>  
> -	barebox_arm_entry(SDRAM0_BASE, SZ_8M, NULL);
> +	barebox_arm_entry(SDRAM0_BASE, SZ_8M, data);
>  }
> -- 
> 1.8.5.5
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
