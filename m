Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TqM3R-0007ss-9I
 for barebox@lists.infradead.org; Wed, 02 Jan 2013 11:00:14 +0000
Date: Wed, 2 Jan 2013 12:00:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130102110011.GV24458@pengutronix.de>
References: <20121228191327.GC7216@game.jcrosoft.org>
 <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
 <1356722174-22598-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1356722174-22598-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 03/13] at91: factoryse PMC address as it's the same on
 every soc
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

subject: s/factoryse/factorise/

Sascha

On Fri, Dec 28, 2012 at 08:16:04PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/mach-at91/include/mach/at91rm9200.h  |    1 -
>  arch/arm/mach-at91/include/mach/at91sam9260.h |    1 -
>  arch/arm/mach-at91/include/mach/at91sam9261.h |    1 -
>  arch/arm/mach-at91/include/mach/at91sam9263.h |    1 -
>  arch/arm/mach-at91/include/mach/at91sam9g45.h |    1 -
>  arch/arm/mach-at91/include/mach/at91sam9n12.h |    1 -
>  arch/arm/mach-at91/include/mach/at91sam9x5.h  |    1 -
>  arch/arm/mach-at91/include/mach/hardware.h    |    2 ++
>  8 files changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/include/mach/at91rm9200.h b/arch/arm/mach-at91/include/mach/at91rm9200.h
> index 2850f0d..69ebaab 100644
> --- a/arch/arm/mach-at91/include/mach/at91rm9200.h
> +++ b/arch/arm/mach-at91/include/mach/at91rm9200.h
> @@ -84,7 +84,6 @@
>   */
>  #define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)	/* Advanced Interrupt Controller */
>  #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)	/* Debug Unit */
> -#define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)	/* Power Management Controller */
>  #define AT91_ST		(0xfffffd00 - AT91_BASE_SYS)	/* System Timer */
>  #define AT91_RTC	(0xfffffe00 - AT91_BASE_SYS)	/* Real-Time Clock */
>  #define AT91_MC		(0xffffff00 - AT91_BASE_SYS)	/* Memory Controllers */
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9260.h b/arch/arm/mach-at91/include/mach/at91sam9260.h
> index be07e57..e1ec7e5 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9260.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9260.h
> @@ -87,7 +87,6 @@
>  #define AT91_CCFG	(0xffffef10 - AT91_BASE_SYS)
>  #define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
>  #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
> -#define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
>  #define AT91_RTT	(0xfffffd20 - AT91_BASE_SYS)
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9261.h b/arch/arm/mach-at91/include/mach/at91sam9261.h
> index d51673e..17a3949 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9261.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9261.h
> @@ -73,7 +73,6 @@
>  #define AT91_MATRIX	(0xffffee00 - AT91_BASE_SYS)
>  #define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
>  #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
> -#define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
>  #define AT91_RTT	(0xfffffd20 - AT91_BASE_SYS)
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9263.h b/arch/arm/mach-at91/include/mach/at91sam9263.h
> index c8374a7..c887b38 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9263.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9263.h
> @@ -87,7 +87,6 @@
>  #define AT91_CCFG	(0xffffed10 - AT91_BASE_SYS)
>  #define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
>  #define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
> -#define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
>  #define AT91_RTT0	(0xfffffd20 - AT91_BASE_SYS)
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
> index 10f3170..1c98491 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9g45.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
> @@ -97,7 +97,6 @@
>  #define AT91_DMA	(0xffffec00 - AT91_BASE_SYS)
>  #define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
>  #define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
> -#define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
>  #define AT91_RTT	(0xfffffd20 - AT91_BASE_SYS)
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12.h b/arch/arm/mach-at91/include/mach/at91sam9n12.h
> index dcbdb1b..afe0034 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9n12.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9n12.h
> @@ -93,7 +93,6 @@
>  #define AT91_DMA	(0xffffec00 - AT91_BASE_SYS)
>  #define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
>  #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
> -#define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
>  #define AT91_PIT	(0xfffffe30 - AT91_BASE_SYS)
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
> index 2240710..ca778fb 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9x5.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
> @@ -100,7 +100,6 @@
>  #define AT91_DMA1	(0xffffee00 - AT91_BASE_SYS)
>  #define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
>  #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
> -#define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
>  #define AT91_PIT	(0xfffffe30 - AT91_BASE_SYS)
> diff --git a/arch/arm/mach-at91/include/mach/hardware.h b/arch/arm/mach-at91/include/mach/hardware.h
> index 64efb2a..b4e24af 100644
> --- a/arch/arm/mach-at91/include/mach/hardware.h
> +++ b/arch/arm/mach-at91/include/mach/hardware.h
> @@ -20,6 +20,8 @@
>  /* 9263, 9g45 */
>  #define AT91_BASE_DBGU1	0xffffee00
>  
> +#define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
> +
>  #if defined(CONFIG_ARCH_AT91RM9200)
>  #include <mach/at91rm9200.h>
>  #elif defined(CONFIG_ARCH_AT91SAM9260) || defined(CONFIG_ARCH_AT91SAM9G20)
> -- 
> 1.7.10.4
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
