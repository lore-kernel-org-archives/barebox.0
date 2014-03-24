Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WRydv-0005IL-4k
 for barebox@lists.infradead.org; Mon, 24 Mar 2014 06:45:56 +0000
Date: Mon, 24 Mar 2014 07:45:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140324064531.GJ17250@pengutronix.de>
References: <1395487797-16599-1-git-send-email-antonynpavlov@gmail.com>
 <1395487797-16599-5-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1395487797-16599-5-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 4/7] serial: ns16550: add compatible entry for "ingenic,
 jz4740-uart"
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Mar 22, 2014 at 03:29:54PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/serial/serial_ns16550.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index aa0992f..7130871 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -257,6 +257,30 @@ static __maybe_unused struct ns16550_drvdata omap_drvdata = {
>  	.linux_console_name = "ttyO",
>  };
>  
> +#define JZ_UART_SHIFT	2
> +
> +static void jz_serial_reg_write(unsigned int val, unsigned long base,
> +	unsigned char reg_offset)
> +{
> +	switch (reg_offset) {
> +	case (fcr << JZ_UART_SHIFT):
> +		val |= 0x10; /* Enable uart module */
> +		break;

You could also do this by overwriting .init_port.

> +	case (ier << JZ_UART_SHIFT):
> +		val |= (val & 0x4) << 2;

What does this bit do?

Putting driver logic into the register writes is not good. Where this
leads to can be seen in drivers/mmc/host/sdhci-esdhc-imx.c in the
kernel. Could we make fcrval overwritable in drvdata? Or just special
case the fcr register access in ns16550_setbaudrate?

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
