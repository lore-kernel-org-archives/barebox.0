Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo1.mail-out.ovh.net ([178.33.110.239]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5b3m-00017E-76
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 12:03:35 +0000
Received: from mail174.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 59E1AFFA543
 for <barebox@lists.infradead.org>; Wed, 13 Feb 2013 13:18:55 +0100 (CET)
Date: Wed, 13 Feb 2013 13:02:24 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130213120224.GM19322@game.jcrosoft.org>
References: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
 <1360755704-24105-3-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360755704-24105-3-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH v2 3/9] ARM: clps711x: Adds config option for CPU PLL
 multiplier
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 15:41 Wed 13 Feb     , Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boards/clep7212/lowlevel.c            |    6 +++++-
>  arch/arm/mach-clps711x/Kconfig                 |   13 +++++++++++++
>  arch/arm/mach-clps711x/include/mach/clps711x.h |    2 +-
>  arch/arm/mach-clps711x/lowlevel.c              |    7 +++++--
>  4 files changed, 24 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
> index b7d6d1d..fcf8285 100644
> --- a/arch/arm/boards/clep7212/lowlevel.c
> +++ b/arch/arm/boards/clep7212/lowlevel.c
> @@ -14,9 +14,13 @@
>  
>  #include <mach/clps711x.h>
>  
> +#if (CONFIG_CLPS711X_CPU_PLL_MULT < 20) || (CONFIG_CLPS711X_CPU_PLL_MULT > 50)
> +# error "CPU PLL multiplier out of range"
> +#endif
> +
>  void __naked __bare_init barebox_arm_reset_vector(void)
>  {
>  	arm_cpu_lowlevel_init();
>  
> -	clps711x_barebox_entry();
> +	clps711x_barebox_entry(CONFIG_CLPS711X_CPU_PLL_MULT);
>  }
> diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
> index f0adeda..d2873b4 100644
> --- a/arch/arm/mach-clps711x/Kconfig
> +++ b/arch/arm/mach-clps711x/Kconfig
> @@ -10,6 +10,19 @@ config MACH_CLEP7212
>  
>  endchoice
>  
> +menu "CLPS711X specific settings"
> +
> +config CLPS711X_CPU_PLL_MULT
> +	int "CPU PLL multiplier (20-50)"
> +	range 20 50
> +	default "40"
> +	help
> +	  Define CPU PLL multiplier. PLL is calculated by formula:
> +	    PLL Frequency = (PLL Multiplier / 2) * 3686400 Hz
> +	  Default value is 40, for achieve 73 MHz.
> +
Nack NO KConfig for such sensitve value

if it's soc detect it I do not have the datasheet but I'm sure you can

Best Regards,
J.
> +endmenu
> +
>  config BOARDINFO
>  	default "Cirrus Logic CLEP7212" if MACH_CLEP7212
>  
> diff --git a/arch/arm/mach-clps711x/include/mach/clps711x.h b/arch/arm/mach-clps711x/include/mach/clps711x.h
> index 5b8fe82..cc65cc8 100644
> --- a/arch/arm/mach-clps711x/include/mach/clps711x.h
> +++ b/arch/arm/mach-clps711x/include/mach/clps711x.h
> @@ -281,6 +281,6 @@
>  #define MEMCFG_WAITSTATE_2_0	(14 << 2)
>  #define MEMCFG_WAITSTATE_1_0	(15 << 2)
>  
> -void clps711x_barebox_entry(void);
> +void clps711x_barebox_entry(u32);
>  
>  #endif
> diff --git a/arch/arm/mach-clps711x/lowlevel.c b/arch/arm/mach-clps711x/lowlevel.c
> index cd3216a..193f61a 100644
> --- a/arch/arm/mach-clps711x/lowlevel.c
> +++ b/arch/arm/mach-clps711x/lowlevel.c
> @@ -17,9 +17,8 @@
>  
>  #include <mach/clps711x.h>
>  
> -void __naked __bare_init clps711x_barebox_entry(void)
> +void __naked __bare_init clps711x_barebox_entry(u32 pllmult)
>  {
> -	const u32 pllmult = 50;
>  	u32 cpu, bus;
>  
>  	/* Setup base clocking, Enable SDQM pins  */
> @@ -28,6 +27,10 @@ void __naked __bare_init clps711x_barebox_entry(void)
>  
>  	/* Check if we running from external 13 MHz clock */
>  	if (!(readl(SYSFLG2) & SYSFLG2_CKMODE)) {
> +		/* Check valid multiplier, default to 74 MHz */
> +		if ((pllmult < 20) || (pllmult > 50))
> +			pllmult = 40;
> +
>  		/* Setup PLL */
>  		writel(pllmult << 24, PLLW);
>  		asm("nop");
> -- 
> 1.7.3.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
