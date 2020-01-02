Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imxv7-0005Mc-K7
 for barebox@lists.infradead.org; Thu, 02 Jan 2020 10:41:39 +0000
References: <20200102102334.73726-1-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <70a44a2d-cf60-34e7-8ca8-1d7753f77e72@pengutronix.de>
Date: Thu, 2 Jan 2020 11:41:31 +0100
MIME-Version: 1.0
In-Reply-To: <20200102102334.73726-1-r.czerwinski@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] ARM: nitrogen6: add lowlevel UART initialization
To: rcz@pengutronix.de, barebox@lists.infradead.org

Hello Rouven,

On 1/2/20 11:23 AM, Rouven Czerwinski wrote:
> +static inline void setup_uart(void)
> +{
> +   void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
> +
> +   //UART 1
> +   writel(0x1, iomuxbase + 0x02a8);
> +   writel(0x1, iomuxbase + 0x02ac);
> +
> +   //UART 2
> +   writel(0x4, iomuxbase + 0x00bc);
> +   writel(0x4, iomuxbase + 0x00c0);
> +   writel(0x0, iomuxbase + 0x0928);

There's imx_setup_pad that you can use along with symbolic names for
better readability.

> +   imx6_ungate_all_peripherals();
> +   imx6_uart_setup((void *)MX6_UART2_BASE_ADDR);

There's imx6_uart_setup_ll that passes in the address of CONFIG_DEBUG_IMX_UART_PORT.
Use that one instead.

> +   pbl_set_putc(imx_uart_putc, (void *)MX6_UART2_BASE_ADDR);

DEBUG_LL is a global setting. pbl_set_putc can be used to have PBL console
output for a board, even if DEBUG_LL is off or configured for another board.
Thus having pbl_set_putc guarded by a IS_ENABLED(CONFIG_DEBUG_LL) doesn't make
sense. pbl_set_putc can also only be called after relocation, which hasn't
happened yet.

Cheers
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
