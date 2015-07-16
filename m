Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFcgO-000501-4k
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 06:30:12 +0000
Date: Thu, 16 Jul 2015 08:29:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150716062949.GZ18700@pengutronix.de>
References: <1436968074-36098-1-git-send-email-d.schultz@phytec.de>
 <1436968074-36098-2-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436968074-36098-2-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 2/2] ARM: am335x: Changed timer
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 15, 2015 at 03:47:54PM +0200, Daniel Schultz wrote:
> The dmtimer0 is too inaccurate to be used for measurements.
> We switch to the more accurate dmtimer2.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  arch/arm/mach-omap/Kconfig                       |  4 +-
>  arch/arm/mach-omap/Makefile                      |  2 +-
>  arch/arm/mach-omap/dmtimer0.c                    | 85 ----------------------
>  arch/arm/mach-omap/dmtimer2.c                    | 89 ++++++++++++++++++++++++
>  arch/arm/mach-omap/include/mach/am33xx-silicon.h |  3 +
>  5 files changed, 95 insertions(+), 88 deletions(-)
>  delete mode 100644 arch/arm/mach-omap/dmtimer0.c
>  create mode 100644 arch/arm/mach-omap/dmtimer2.c
> 
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index af35975..0372906 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -43,7 +43,7 @@ config ARCH_AM33XX
>  	select CPU_V7
>  	select GENERIC_GPIO
>  	select OFTREE
> -	select OMAP_CLOCK_SOURCE_DMTIMER0
> +	select OMAP_CLOCK_SOURCE_DMTIMER2
>  	help
>  	  Say Y here if you are using Texas Instrument's AM33xx based platform
>  
> @@ -51,7 +51,7 @@ config ARCH_AM33XX
>  config OMAP_CLOCK_SOURCE_S32K
>  	bool
>  
> -config OMAP_CLOCK_SOURCE_DMTIMER0
> +config OMAP_CLOCK_SOURCE_DMTIMER2
>  	bool
>  
>  config OMAP_GPMC
> diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> index 65072b9..e518755 100644
> --- a/arch/arm/mach-omap/Makefile
> +++ b/arch/arm/mach-omap/Makefile
> @@ -18,7 +18,7 @@
>  obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o omap_generic.o omap_fb.o
>  pbl-$(CONFIG_ARCH_OMAP) += syslib.o
>  obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
> -obj-$(CONFIG_OMAP_CLOCK_SOURCE_DMTIMER0) += dmtimer0.o
> +obj-$(CONFIG_OMAP_CLOCK_SOURCE_DMTIMER2) += dmtimer2.o
>  obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
>  pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
>  obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
> diff --git a/arch/arm/mach-omap/dmtimer0.c b/arch/arm/mach-omap/dmtimer0.c

If you're renaming this, can you rename to dmtimer.c please? The
instance number shouldn't be in the filename. While at it you could
also use a static void *base instead of the address define directly.
This will make it more easy to support other timers later.

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
