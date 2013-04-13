Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UR5fo-0007Od-9p
 for barebox@lists.infradead.org; Sat, 13 Apr 2013 18:59:41 +0000
Received: by mail-lb0-f177.google.com with SMTP id r10so3478698lbi.22
 for <barebox@lists.infradead.org>; Sat, 13 Apr 2013 11:59:37 -0700 (PDT)
Date: Sat, 13 Apr 2013 22:59:01 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130413225901.e5f77bda96956188f726b960@gmail.com>
In-Reply-To: <1365762505-2540-1-git-send-email-dev@lynxeye.de>
References: <1365762505-2540-1-git-send-email-dev@lynxeye.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v5 01/13] tegra: pull in iomap.h from the Linux kernel
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Fri, 12 Apr 2013 12:28:13 +0200
Lucas Stach <dev@lynxeye.de> wrote:

I have just tested the 'rework current Tegra support' patch series V5.

It looks good and IMHO can be added to the next branch.

Tested-by: Antony Pavlov <antonynpavlov@gmail.com>

> This synchronizes the Tegra iomap.h with the latest Linux kernel code.
> =

> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/mach-tegra/include/mach/iomap.h | 64 ++++++++++----------------=
------
>  1 file changed, 19 insertions(+), 45 deletions(-)
> =

> diff --git a/arch/arm/mach-tegra/include/mach/iomap.h b/arch/arm/mach-teg=
ra/include/mach/iomap.h
> index ba478e7..6ca6504 100644
> --- a/arch/arm/mach-tegra/include/mach/iomap.h
> +++ b/arch/arm/mach-tegra/include/mach/iomap.h
> @@ -62,47 +62,35 @@
>  #define TEGRA_RES_SEMA_BASE		0x60001000
>  #define TEGRA_RES_SEMA_SIZE		SZ_4K
>  =

> -#define TEGRA_HDMI_BASE			0x54280000
> -#define TEGRA_HDMI_SIZE			SZ_256K
> -
> -#define TEGRA_GART_BASE			0x58000000
> -#define TEGRA_GART_SIZE			SZ_32M
> -
> -#define TEGRA_RES_SEMA_BASE		0x60001000
> -#define TEGRA_RES_SEMA_SIZE		SZ_4K
> -
> -#define TEGRA_ARB_SEMA_BASE		0x60002000
> -#define TEGRA_ARB_SEMA_SIZE		SZ_4K
> -
>  #define TEGRA_PRIMARY_ICTLR_BASE	0x60004000
> -#define TEGRA_PRIMARY_ICTLR_SIZE	64
> -
> -#define TEGRA_ARBGNT_ICTLR_BASE		0x60004040
> -#define TEGRA_ARBGNT_ICTLR_SIZE		192
> +#define TEGRA_PRIMARY_ICTLR_SIZE	SZ_64
>  =

>  #define TEGRA_SECONDARY_ICTLR_BASE	0x60004100
> -#define TEGRA_SECONDARY_ICTLR_SIZE	64
> +#define TEGRA_SECONDARY_ICTLR_SIZE	SZ_64
>  =

>  #define TEGRA_TERTIARY_ICTLR_BASE	0x60004200
> -#define TEGRA_TERTIARY_ICTLR_SIZE	64
> +#define TEGRA_TERTIARY_ICTLR_SIZE	SZ_64
>  =

>  #define TEGRA_QUATERNARY_ICTLR_BASE	0x60004300
> -#define TEGRA_QUATERNARY_ICTLR_SIZE	64
> +#define TEGRA_QUATERNARY_ICTLR_SIZE	SZ_64
> +
> +#define TEGRA_QUINARY_ICTLR_BASE	0x60004400
> +#define TEGRA_QUINARY_ICTLR_SIZE	SZ_64
>  =

>  #define TEGRA_TMR1_BASE			0x60005000
> -#define TEGRA_TMR1_SIZE			8
> +#define TEGRA_TMR1_SIZE			SZ_8
>  =

>  #define TEGRA_TMR2_BASE			0x60005008
> -#define TEGRA_TMR2_SIZE			8
> +#define TEGRA_TMR2_SIZE			SZ_8
>  =

>  #define TEGRA_TMRUS_BASE		0x60005010
> -#define TEGRA_TMRUS_SIZE		64
> +#define TEGRA_TMRUS_SIZE		SZ_64
>  =

>  #define TEGRA_TMR3_BASE			0x60005050
> -#define TEGRA_TMR3_SIZE			8
> +#define TEGRA_TMR3_SIZE			SZ_8
>  =

>  #define TEGRA_TMR4_BASE			0x60005058
> -#define TEGRA_TMR4_SIZE			8
> +#define TEGRA_TMR4_SIZE			SZ_8
>  =

>  #define TEGRA_CLK_RESET_BASE		0x60006000
>  #define TEGRA_CLK_RESET_SIZE		SZ_4K
> @@ -125,17 +113,17 @@
>  #define TEGRA_AHB_GIZMO_BASE		0x6000C004
>  #define TEGRA_AHB_GIZMO_SIZE		0x10C
>  =

> +#define TEGRA_SB_BASE			0x6000C200
> +#define TEGRA_SB_SIZE			256
> +
>  #define TEGRA_STATMON_BASE		0x6000C400
>  #define TEGRA_STATMON_SIZE		SZ_1K
>  =

>  #define TEGRA_GPIO_BASE			0x6000D000
>  #define TEGRA_GPIO_SIZE			SZ_4K
>  =

> -#define TEGRA_EXCEPTION_VECTORS_BASE    0x6000F000
> -#define TEGRA_EXCEPTION_VECTORS_SIZE    SZ_4K
> -
> -#define TEGRA_VDE_BASE		0x6001A000
> -#define TEGRA_VDE_SIZE		(SZ_8K + SZ_4K - SZ_256)
> +#define TEGRA_EXCEPTION_VECTORS_BASE	0x6000F000
> +#define TEGRA_EXCEPTION_VECTORS_SIZE	SZ_4K
>  =

>  #define TEGRA_APB_MISC_BASE		0x70000000
>  #define TEGRA_APB_MISC_SIZE		SZ_4K
> @@ -156,10 +144,10 @@
>  #define TEGRA_I2S2_SIZE			SZ_256
>  =

>  #define TEGRA_UARTA_BASE		0x70006000
> -#define TEGRA_UARTA_SIZE		64
> +#define TEGRA_UARTA_SIZE		SZ_64
>  =

>  #define TEGRA_UARTB_BASE		0x70006040
> -#define TEGRA_UARTB_SIZE		64
> +#define TEGRA_UARTB_SIZE		SZ_64
>  =

>  #define TEGRA_UARTC_BASE		0x70006200
>  #define TEGRA_UARTC_SIZE		SZ_256
> @@ -275,18 +263,4 @@
>  #define TEGRA_SDMMC4_BASE		0xC8000600
>  #define TEGRA_SDMMC4_SIZE		SZ_512
>  =

> -#if defined(CONFIG_TEGRA_DEBUG_UART_NONE)
> -# define TEGRA_DEBUG_UART_BASE 0
> -#elif defined(CONFIG_TEGRA_DEBUG_UARTA)
> -# define TEGRA_DEBUG_UART_BASE TEGRA_UARTA_BASE
> -#elif defined(CONFIG_TEGRA_DEBUG_UARTB)
> -# define TEGRA_DEBUG_UART_BASE TEGRA_UARTB_BASE
> -#elif defined(CONFIG_TEGRA_DEBUG_UARTC)
> -# define TEGRA_DEBUG_UART_BASE TEGRA_UARTC_BASE
> -#elif defined(CONFIG_TEGRA_DEBUG_UARTD)
> -# define TEGRA_DEBUG_UART_BASE TEGRA_UARTD_BASE
> -#elif defined(CONFIG_TEGRA_DEBUG_UARTE)
> -# define TEGRA_DEBUG_UART_BASE TEGRA_UARTE_BASE
> -#endif
> -
>  #endif
> -- =

> 1.8.1.4
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
