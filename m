Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1phz-0000TS-0R
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 09:53:00 +0000
Received: by mail-wm1-x342.google.com with SMTP id a188so8518602wmf.3
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 01:52:58 -0800 (PST)
References: <20190306094239.29413-1-s.hauer@pengutronix.de>
 <20190306094239.29413-5-s.hauer@pengutronix.de>
From: =?UTF-8?B?VG9tYcW+IMWgb2xj?= <tomaz.solc@klevio.com>
Message-ID: <3ea0ed3f-6780-f09d-6e3f-8dd9055dd7f7@klevio.com>
Date: Thu, 7 Mar 2019 10:52:56 +0100
MIME-Version: 1.0
In-Reply-To: <20190306094239.29413-5-s.hauer@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/5] ARM: rpi: move debug UART Kconfig settings
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

Hi

On 6. 03. 19 10:42, Sascha Hauer wrote:
> In contrast to other architectures, R.Pi debug UART config was placed
> under the "System Type" menu, not under the "Debugging -> low-level
> debugging port". This made this setting easy to miss when enabling low
> level debug mesages.
> 
> While at it use the existing base address defines rather than defining
> them again in Kconfig.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   arch/arm/mach-bcm283x/Kconfig                 | 20 -------------------
>   arch/arm/mach-bcm283x/include/mach/debug_ll.h | 12 +++++++----
>   common/Kconfig                                | 13 ++++++++++++
>   3 files changed, 21 insertions(+), 24 deletions(-)
> 
[...]

> diff --git a/arch/arm/mach-bcm283x/include/mach/debug_ll.h b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
> index 2e95bf8320..2d2103e338 100644
> --- a/arch/arm/mach-bcm283x/include/mach/debug_ll.h
> +++ b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
> @@ -20,12 +20,16 @@
>   
>   #include <mach/platform.h>
>   
> -#ifndef CONFIG_MACH_RPI_DEBUG_UART_BASE
> -#define CONFIG_MACH_RPI_DEBUG_UART_BASE 0
> -#endif
> +#ifdef CONFIG_DEBUG_RPI1_UART
> +
> +#define DEBUG_LL_UART_ADDR BCM2835_PL011_BASE
> +#include <debug_ll/pl011.h>
>   
> -#define DEBUG_LL_UART_ADDR CONFIG_MACH_RPI_DEBUG_UART_BASE
> +#elif defined CONFIG_DEBUG_RPI2_3_UART

This elif should either be "CONFIG_DEBUG_RPI2_UART" or the Kconfig below 
should set DEBUG_RPI2_3_UART.

>   
> +#define DEBUG_LL_UART_ADDR BCM2836_PL011_BASE
>   #include <debug_ll/pl011.h>
>   
> +#endif
> +
>   #endif /* __MACH_BCM2835_DEBUG_LL_H__ */
> diff --git a/common/Kconfig b/common/Kconfig
> index 21b33f06f7..563cf15fb1 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1159,6 +1159,19 @@ config DEBUG_SOCFPGA_UART1
>   	  Say Y here if you want kernel low-level debugging support
>   	  on SOCFPGA(Arria 10) based platforms.
>   
> +config DEBUG_RPI1_UART
> +	bool "RaspberryPi 1 debug UART"
> +	depends on ARCH_BCM283X
> +	help
> +	  Say Y here if you want low-level debugging support on
> +	  RaspberryPi 1 boards.
> +
> +config DEBUG_RPI2_UART
> +	bool "RaspberryPi 2/3 debug UART"
> +	depends on ARCH_BCM283X
> +	help
> +	  Say Y here if you want low-level debugging support on
> +	  RaspberryPi 2 and 3 boards.
>   
>   endchoice

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
