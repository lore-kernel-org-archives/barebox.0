Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YpAUW-0005XM-Vp
 for barebox@lists.infradead.org; Mon, 04 May 2015 07:08:37 +0000
Date: Mon, 4 May 2015 09:08:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150504070814.GK6325@pengutronix.de>
References: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
 <1430619980-26243-2-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430619980-26243-2-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/8] i.MX: Move UART definitions into a separate file
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, May 02, 2015 at 07:26:13PM -0700, Andrey Smirnov wrote:
> Move UART definitions into a separate file to avoid redefinition in
> <mach/debug_ll.h> and magical constants in low level UART
> initialization code.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/include/mach/debug_ll.h |   9 +--
>  arch/arm/mach-imx/include/mach/serial.h   | 112 ++++++++++++++++++++++++++++++
>  drivers/serial/serial_imx.c               | 108 +---------------------------
>  3 files changed, 114 insertions(+), 115 deletions(-)
>  create mode 100644 arch/arm/mach-imx/include/mach/serial.h
> 
> diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
> index f34eaa1..1c9f3a6 100644
> --- a/arch/arm/mach-imx/include/mach/debug_ll.h
> +++ b/arch/arm/mach-imx/include/mach/debug_ll.h
> @@ -12,6 +12,7 @@
>  #include <mach/imx51-regs.h>
>  #include <mach/imx53-regs.h>
>  #include <mach/imx6-regs.h>
> +#include <mach/serial.h>
> 
>  #ifdef CONFIG_DEBUG_LL
> 
> @@ -40,14 +41,6 @@
>  #define __IMX_UART_BASE(soc, num) soc##_UART##num##_BASE_ADDR
>  #define IMX_UART_BASE(soc, num) __IMX_UART_BASE(soc, num)
> 
> -#define URTX0		0x40		/* Transmitter Register */
> -
> -#define UCR1		0x80		/* Control Register 1 */
> -#define UCR1_UARTEN	(1 << 0)	/* UART enabled */
> -
> -#define USR2		0x98		/* Status Register 2 */
> -#define USR2_TXDC	(1 << 3)	/* Transmitter complete */
> -
>  static inline void PUTC_LL(int c)
>  {
>  	void __iomem *base = (void *)IMX_UART_BASE(IMX_DEBUG_SOC,
> diff --git a/arch/arm/mach-imx/include/mach/serial.h b/arch/arm/mach-imx/include/mach/serial.h
> new file mode 100644
> index 0000000..b999c58
> --- /dev/null
> +++ b/arch/arm/mach-imx/include/mach/serial.h

Normally we no longer put register definitions into mach/ since this
limits the driver to a single architecture. In case of the imx UART
driver this (currently) doesn't matter but I think we should use
a place include/ anyway. I think include/serial/imx-uart.h would be
appropriate.

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
