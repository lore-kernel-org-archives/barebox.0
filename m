Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brJ9e-0002VJ-QH
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 06:24:44 +0000
Date: Tue, 4 Oct 2016 08:24:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161004062420.uie22nvogkeqyndz@pengutronix.de>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
 <1475505657-898-3-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1475505657-898-3-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 02/20] i.MX: Add DEBUG_LL hooks for VF610
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 03, 2016 at 07:40:39AM -0700, Andrey Smirnov wrote:
> Add code to support DEBUG_LL functionality on VF610/Vybrid platform.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/include/mach/debug_ll.h   |  27 ++-
>  arch/arm/mach-imx/include/mach/vf610-regs.h | 126 +++++++++++++
>  common/Kconfig                              |  10 +-
>  include/serial/lpuart.h                     | 265 ++++++++++++++++++++++++++++
>  4 files changed, 426 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/mach-imx/include/mach/vf610-regs.h
>  create mode 100644 include/serial/lpuart.h
> 
> diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
> index 5c2db6c..a132f3c 100644
> --- a/arch/arm/mach-imx/include/mach/debug_ll.h
> +++ b/arch/arm/mach-imx/include/mach/debug_ll.h
> @@ -14,8 +14,10 @@
>  #include <mach/imx51-regs.h>
>  #include <mach/imx53-regs.h>
>  #include <mach/imx6-regs.h>
> +#include <mach/vf610-regs.h>
>  
>  #include <serial/imx-uart.h>
> +#include <serial/lpuart.h>
>  
>  #ifdef CONFIG_DEBUG_LL
>  
> @@ -42,6 +44,8 @@
>  #define IMX_DEBUG_SOC MX53
>  #elif defined CONFIG_DEBUG_IMX6Q_UART
>  #define IMX_DEBUG_SOC MX6
> +#elif defined CONFIG_DEBUG_VF610_UART
> +#define IMX_DEBUG_SOC VF610
>  #else
>  #error "unknown i.MX debug uart soc type"
>  #endif
> @@ -74,6 +78,13 @@ static inline void imx6_uart_setup_ll(void)
>  	imx6_uart_setup(base);
>  }
>  
> +static inline void vf610_uart_setup_ll(void)
> +{
> +	void *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC, CONFIG_DEBUG_IMX_UART_PORT));
> +
> +	lpuart_setup(base, 66000000);
> +}
> +
>  static inline void PUTC_LL(int c)
>  {
>  	void __iomem *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,
> @@ -82,14 +93,19 @@ static inline void PUTC_LL(int c)
>  	if (!base)
>  		return;
>  
> -	imx_uart_putc(base, c);
> +	if (IS_ENABLED(CONFIG_DEBUG_VF610_UART))
> +		lpuart_putc(base, c);
> +	else
> +		imx_uart_putc(base, c);
>  }
> +
>  #else
>  
>  static inline void imx50_uart_setup_ll(void) {}
>  static inline void imx51_uart_setup_ll(void) {}
>  static inline void imx53_uart_setup_ll(void) {}
>  static inline void imx6_uart_setup_ll(void)  {}
> +static inline void vf610_uart_setup_ll(void) {}
>  
>  #endif /* CONFIG_DEBUG_LL */
>  
> @@ -115,4 +131,13 @@ static inline void imx53_ungate_all_peripherals(void)
>  	imx_ungate_all_peripherals(IOMEM(MX53_CCM_BASE_ADDR));
>  }
>  
> +static inline void vf610_ungate_all_peripherals(void)
> +{
> +	void __iomem *ccmbase = IOMEM(VF610_CCM_BASE_ADDR);
> +	int i;
> +
> +	for (i = 0x40; i <= 0x6c; i += 4)
> +		writel(0xffffffff, ccmbase + i);
> +}
> +
>  #endif /* __MACH_DEBUG_LL_H__ */
> diff --git a/arch/arm/mach-imx/include/mach/vf610-regs.h b/arch/arm/mach-imx/include/mach/vf610-regs.h

This is probably not the right patch to add this file.

> new file mode 100644
> index 0000000..a1c1a09
> --- /dev/null
> +++ b/arch/arm/mach-imx/include/mach/vf610-regs.h
> @@ -0,0 +1,126 @@
> +/*
> + * Copyright 2013-2014 Freescale Semiconductor, Inc.
> + *
> + * SPDX-License-Identifier:	GPL-2.0+
> + */
> +
> +#ifndef __ASM_ARCH_IMX_REGS_H__
> +#define __ASM_ARCH_IMX_REGS_H__

MACH_VF610_REGS_H ?

> +/* System Reset Controller (SRC) */
> +#define SRC_SRSR_SW_RST					(0x1 << 18)
> +#define SRC_SRSR_RESETB					(0x1 << 7)
> +#define SRC_SRSR_JTAG_RST				(0x1 << 5)
> +#define SRC_SRSR_WDOG_M4				(0x1 << 4)
> +#define SRC_SRSR_WDOG_A5				(0x1 << 3)
> +#define SRC_SRSR_POR_RST				(0x1 << 0)
> +#define SRC_SBMR2_BMOD_MASK             (0x3 << 24)
> +#define SRC_SBMR2_BMOD_SHIFT            24
> +#define SRC_SBMR2_BMOD_FUSES            0x0
> +#define SRC_SBMR2_BMOD_SERIAL           0x1
> +#define SRC_SBMR2_BMOD_RCON             0x2

Please add a VF610_ prefix.

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
