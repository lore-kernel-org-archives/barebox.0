Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuDTl-0004na-Gr
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 09:06:35 +0000
Date: Mon, 27 Aug 2018 11:06:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180827090621.3wf4hd7glghl3um3@pengutronix.de>
References: <20180824030511.23021-1-andrew.smirnov@gmail.com>
 <20180824030511.23021-4-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180824030511.23021-4-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/3] ARM: start: Place malloc pool within 32-bit address
 space
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 23, 2018 at 08:05:11PM -0700, Andrey Smirnov wrote:
> Some 64-bit SoC have IP cores whose DMA capability is limited to
> 32-bits only. To handles such cases introduced DMA_32_BIT_ONLY as well
> as add the code to make sure that malloc pool (which will be used for
> DMA buffers) is accessible using 32-bit address.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/Kconfig |  3 +++
>  arch/arm/cpu/start.c | 23 +++++++++++++++++++++++
>  drivers/mci/Kconfig  |  1 +
>  drivers/net/Kconfig  |  1 +
>  4 files changed, 28 insertions(+)
> 
> diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
> index 2359c56b3..d9f68d9d0 100644
> --- a/arch/arm/cpu/Kconfig
> +++ b/arch/arm/cpu/Kconfig
> @@ -3,6 +3,9 @@ comment "Processor Type"
>  config PHYS_ADDR_T_64BIT
>  	bool
>  
> +config DMA_32_BIT_ONLY
> +	bool
> +
>  config CPU_32
>  	bool
>  	select HAS_MODULES
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 898f7ae19..3fc322d52 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -203,6 +203,29 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
>  		}
>  	}
>  
> +	if (IS_ENABLED(CONFIG_DMA_32_BIT_ONLY) &&
> +	    /* If membase is past 4GiB there's nothing we can do */
> +	    !WARN_ON(membase > U32_MAX)) {
> +		/*
> +		 * Using SZ_4G against unsigned long will produce
> +		 * warning when compiling for 32-bit machines, so we
> +		 * defined the constant below so we can compare
> +		 * against U32_MAX instead.
> +		 */
> +		const unsigned long __malloc_end = malloc_end - 1;
> +
> +		if (__malloc_end > U32_MAX) {
> +			/*
> +			 * Some ARMv8 SoCs use IP blocks that are
> +			 * only do DMA transfers in first 4GiB of
> +			 * address space. To avoid allocating bad
> +			 * DMA buffers we move our malloc pool to
> +			 * reside within that region.
> +			 */
> +			malloc_end = U32_MAX + 1;
> +		}
> +	}

I suggest to call barebox_arm_entry() with 32bit memory only instead of
putting that into common code. This is no proper solution anyway, so I
think we can equally well push that issue back to the SoCs. I may change
my mind when more SoCs come up with this issue...


> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index 954f957bc..0687841a7 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -83,6 +83,7 @@ config MCI_IMX
>  config MCI_IMX_ESDHC
>  	bool "i.MX esdhc"
>  	depends on ARCH_IMX
> +	select DMA_32_BIT_ONLY if PHYS_ADDR_T_64BIT

Enforcing the 32bit memory limitation at compile time is not very nice
since it means it is active even when the driver ends up being unused.
This is not a practical issue currently but consider a newer SoC with a
newer SD core without this limitation, but which shall be compiled
together with i.MX8M support.

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
