Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SxII2-0005g9-Le
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 13:51:44 +0000
Date: Fri, 3 Aug 2012 15:51:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120803135140.GS1451@pengutronix.de>
References: <501BA13A.30605@calao-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <501BA13A.30605@calao-systems.com>
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
Subject: Re: [PATCH] Enable pull-up on Rx serial ports for the CALAO
 MB-QIL-A9260
To: gregory hermant <gregory.hermant@calao-systems.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 03, 2012 at 12:00:26PM +0200, gregory hermant wrote:
> This patch prevents to stop the autoboot randomly for the CALAO MB-QIL-A9260.
> Indeed on this board, there's no pull-up on the RX inputs for the DBGU, COM1 & COM2 serial port.
> With pull-up enabled, there's no longer unwanted character received from these console (CONFIG_CONSOLE_ACTIVATE_ALL=y). 
>   
> Signed-off-by: Gregory Hermant <gregory.hermant@calao-systems.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/qil-a9260/init.c |    6 ++++++
>  1 files changed, 6 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/boards/qil-a9260/init.c b/arch/arm/boards/qil-a9260/init.c
> index 305d733..b43cace 100644
> --- a/arch/arm/boards/qil-a9260/init.c
> +++ b/arch/arm/boards/qil-a9260/init.c
> @@ -196,11 +196,17 @@ device_initcall(qil_a9260_devices_init);
>  static int qil_a9260_console_init(void)
>  {
>  	at91_register_uart(0, 0);
> +	at91_set_A_periph(AT91_PIN_PB14, 1);    /* Enable pull-up on DRXD */
> +
>  	at91_register_uart(1, ATMEL_UART_CTS | ATMEL_UART_RTS
>  			   | ATMEL_UART_DTR | ATMEL_UART_DSR | ATMEL_UART_DCD
>  			   | ATMEL_UART_RI);
> +
>  	at91_register_uart(2, ATMEL_UART_CTS | ATMEL_UART_RTS);
> +	at91_set_A_periph(AT91_PIN_PB7, 1);	/* Enable pull-up on RXD1 */
> +
>  	at91_register_uart(3, ATMEL_UART_CTS | ATMEL_UART_RTS);
> +	at91_set_A_periph(AT91_PIN_PB9, 1);	/* Enable pull-up on RXD2 */
>  
>  	return 0;
>  }
> -- 
> 1.5.6.3
> 
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
