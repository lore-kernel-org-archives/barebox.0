Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5fnM-0008K5-5E
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 17:06:56 +0000
Date: Wed, 13 Feb 2013 18:06:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130213170652.GD1906@pengutronix.de>
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

On Wed, Feb 13, 2013 at 03:41:38PM +0400, Alexander Shiyan wrote:
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

I don't quite understand why you want to have this configurable. I mean
this is a single board only, why not simply run it with the maximum
allowed frequency? Or does this board come with multiple SoCs for which
different maximum values exist?

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
