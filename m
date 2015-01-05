Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y87T4-0000wy-FM
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 13:13:11 +0000
Date: Mon, 5 Jan 2015 14:12:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150105131245.GG4544@pengutronix.de>
References: <1420364466-22400-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1420364466-22400-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH v2 1/2] ARM: pxa: add pxa3xx architecture
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Sun, Jan 04, 2015 at 10:41:05AM +0100, Robert Jarzmik wrote:
> Add the pxa3xx architecture, for pxa300, pxa310 and pxa320 SoCs.
> This includes :
>  - the registers
>  - the cpu type
>  - the reset source handling
>  - a minimal set of clocks
>  - pin control definitions
>    In this last case, the big mfp-pxaxxx.h files were dropped, forcing
>    board developers to use MFP_LPM_* macros cunningly.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> ---
>  arch/arm/cpu/Kconfig                         |   6 +
>  arch/arm/mach-pxa/Kconfig                    |  19 ++
>  arch/arm/mach-pxa/Makefile                   |   1 +
>  arch/arm/mach-pxa/common.c                   |  12 +-
>  arch/arm/mach-pxa/include/mach/clock.h       |   1 +
>  arch/arm/mach-pxa/include/mach/hardware.h    |  18 +-
>  arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h  |  25 ++
>  arch/arm/mach-pxa/include/mach/pxa-regs.h    |   4 +-
>  arch/arm/mach-pxa/include/mach/pxa3xx-regs.h | 224 ++++++++++++++++++
>  arch/arm/mach-pxa/include/plat/mfp.h         |   7 +-
>  arch/arm/mach-pxa/mfp.c                      | 338 +++++++++++++++++++++++++++
>  arch/arm/mach-pxa/reset_source.c             |  36 +++
>  arch/arm/mach-pxa/sleep.S                    |   9 +
>  arch/arm/mach-pxa/speed-pxa3xx.c             |  33 +++
>  14 files changed, 725 insertions(+), 8 deletions(-)
>  create mode 100644 arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h
>  create mode 100644 arch/arm/mach-pxa/include/mach/pxa3xx-regs.h
>  create mode 100644 arch/arm/mach-pxa/mfp.c
>  create mode 100644 arch/arm/mach-pxa/speed-pxa3xx.c
> 
> -
> +	pxa_clear_reset_source();
> +#ifdef CONFIG_ARCH_PXA2XX
>  	pxa_suspend(PWRMODE_DEEPSLEEP);
> +#endif
> +#ifdef CONFIG_ARCH_PXA3XX
> +	pxa3xx_suspend(PXA3xx_PM_S3D4C4);
> +#endif

	if (cpu_is_*())

instead of ifdefs?

>  	unreachable();
>  }
> diff --git a/arch/arm/mach-pxa/mfp.c b/arch/arm/mach-pxa/mfp.c

Better mfp-pxa3xx.c analog to mfp-pxa2xx.c?

> diff --git a/arch/arm/mach-pxa/reset_source.c b/arch/arm/mach-pxa/reset_source.c
> index a90584b..0730e02 100644
> --- a/arch/arm/mach-pxa/reset_source.c
> +++ b/arch/arm/mach-pxa/reset_source.c

Instead of separating the source files by functionality you could
separate them by SoC type. This would reduce the need for ifdefs.

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
