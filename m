Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YpA6h-0003P7-GH
 for barebox@lists.infradead.org; Mon, 04 May 2015 06:44:00 +0000
Date: Mon, 4 May 2015 08:43:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150504064341.GG6325@pengutronix.de>
References: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
 <1430619980-26243-5-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430619980-26243-5-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 4/8] i.MX51: babbage: Implement CONFIG_DEBUG_LL
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, May 02, 2015 at 07:26:16PM -0700, Andrey Smirnov wrote:
> Implement bits of configuraion needed to configure early debug output
> support.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/freescale-mx51-babbage/lowlevel.c | 58 +++++++++++++++++++++++
>  arch/arm/mach-imx/include/mach/clock-imx51_53.h   |  5 +-
>  2 files changed, 61 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
> index 0f453f3..0135cb4 100644
> --- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
> @@ -1,9 +1,63 @@
> +#include <debug_ll.h>
> +#include <mach/clock-imx51_53.h>
>  #include <common.h>
>  #include <mach/esdctl.h>
>  #include <mach/generic.h>
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
> 
> +#ifdef CONFIG_DEBUG_LL
> +static inline void setup_uart(void)
> +{
> +
> +	void __iomem *uartbase =
> +	  (void *)IMX_UART_BASE(IMX_DEBUG_SOC,
> +				CONFIG_DEBUG_IMX_UART_PORT);
> +	void __iomem *iomuxbase = (void *)MX51_IOMUXC_BASE_ADDR;
> +	void __iomem *ccmbase = (void *)MX51_CCM_BASE_ADDR;
> +
> +	/*
> +	 * Restore CCM values that might be changed by the Mask ROM
> +	 * code.
> +	 *
> +	 * Source: RealView debug scripts provided by Freescale
> +	 */
> +	writel(MX5_CCM_CBCDR_RESET_VALUE,  ccmbase + MX5_CCM_CBCDR);
> +	writel(MX5_CCM_CSCMR1_RESET_VALUE, ccmbase + MX5_CCM_CSCMR1);
> +	writel(MX5_CCM_CSCDR1_RESET_VALUE, ccmbase + MX5_CCM_CSCDR1);
> +
> +	/*
> +	 * The code below should be more or less a "moral equivalent"
> +	 * of:
> +	 *	 MX51_PAD_UART1_TXD__UART1_TXD 0x1c5
> +	 *
> +	 * in device tree
> +	 */
> +	writel(0x00000000, iomuxbase + 0x022c);
> +	writel(0x000001c5, iomuxbase + 0x061c);
> +
> +	writel(0x00000000, uartbase + UCR1);
> +
> +	writel(UCR2_IRTS | UCR2_WS | UCR2_TXEN | UCR2_RXEN | UCR2_SRST,
> +	       uartbase + UCR2);
> +	writel(UCR3_DSR | UCR3_DCD | UCR3_RI | UCR3_ADNIMP | UCR3_RXDMUXSEL,
> +	       uartbase + UCR3);
> +	writel((0b10 << UFCR_TXTL_SHF) | UFCR_RFDIV1 | (1 << UFCR_RXTL_SHF),
> +	       uartbase + UFCR);
> +
> +	writel(baudrate_to_ubir(115200), uartbase + UBIR);
> +	writel(refclock_to_ubmr(54000000), uartbase + UBMR);
> +
> +	writel(UCR1_UARTEN, uartbase + UCR1);

This is more generic than what I usually do when setting up the UART for
lowlevel debug. I usually hardcode the UBIR/UBMR values in board code.
From the above we could create a

static inline void imx_uart_init(int reffreq)

int arch/arm/mach-imx/include/mach/debug_ll.h. What do you think?

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
