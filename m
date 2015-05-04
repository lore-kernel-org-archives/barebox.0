Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YpAG8-0007wk-Co
 for barebox@lists.infradead.org; Mon, 04 May 2015 06:53:45 +0000
Date: Mon, 4 May 2015 08:53:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150504065321.GH6325@pengutronix.de>
References: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
 <1430619980-26243-6-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430619980-26243-6-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 5/8] i.MX: serial: Add setup_uart_ll function
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, May 02, 2015 at 07:26:17PM -0700, Andrey Smirnov wrote:
> It appears that all i.MX based boards that support early debug output
> inevitably do exactly the same thing with the registers of the UART
> peripheral. So to avoid code duplication distill that functionality
> into dedicated subroutine.
> 
> IMPORTANT: Please note that 'setup_uart_ll' function does add a slight
> difference in behaviour by dropping the initialization of ONEMS and
> UESC registers since those do not seem to be needed for early UART
> functionality
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/include/mach/debug_ll.h | 34 +++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
> index 1c9f3a6..5b0b33b 100644
> --- a/arch/arm/mach-imx/include/mach/debug_ll.h
> +++ b/arch/arm/mach-imx/include/mach/debug_ll.h
> @@ -30,10 +30,12 @@
>  #define IMX_DEBUG_SOC MX35
>  #elif defined CONFIG_DEBUG_IMX51_UART
>  #define IMX_DEBUG_SOC MX51
> +#define IMX_DEBUG_UART_REFCLOCK_HZ 54000000
>  #elif defined CONFIG_DEBUG_IMX53_UART
>  #define IMX_DEBUG_SOC MX53
>  #elif defined CONFIG_DEBUG_IMX6Q_UART
>  #define IMX_DEBUG_SOC MX6
> +#define IMX_DEBUG_UART_REFCLOCK_HZ 80000000
>  #else
>  #error "unknown i.MX debug uart soc type"
>  #endif
> @@ -41,6 +43,34 @@
>  #define __IMX_UART_BASE(soc, num) soc##_UART##num##_BASE_ADDR
>  #define IMX_UART_BASE(soc, num) __IMX_UART_BASE(soc, num)
> 
> +
> +#if defined IMX_DEBUG_UART_REFCLOCK_HZ
> +
> +static inline void setup_uart_ll(void)
> +{
> +	void __iomem *uartbase =
> +	  (void *)IMX_UART_BASE(IMX_DEBUG_SOC,
> +				CONFIG_DEBUG_IMX_UART_PORT);
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
> +	writel(baudrate_to_ubir(CONFIG_BAUDRATE),
> +	       uartbase + UBIR);
> +	writel(refclock_to_ubmr(IMX_DEBUG_UART_REFCLOCK_HZ),
> +	       uartbase + UBMR);
> +
> +	writel(UCR1_UARTEN, uartbase + UCR1);
> +}
> +
> +#endif

Oh, turns out you did just that. So your patches are just in the wrong
order. You should first introduce this helper and add the babbage board
support later. This helps linear readers like me to not write
unnecessary mails ;)

Please add a imx_uart_ namespace to this function. This helps readers
to understand the scope of this function. Also I'm not sure how much we
can rely on the reference frequencies. Maybe you should use a two staged
approach. Let the imx_uart_setup_ll() function take a int reffreq
argument and add additional wrappers like imx6_uart_setup_ll() which
just calls this function.

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
