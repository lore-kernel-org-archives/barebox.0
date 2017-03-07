Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl9py-0005Sd-3d
 for barebox@lists.infradead.org; Tue, 07 Mar 2017 07:47:16 +0000
Date: Tue, 7 Mar 2017 08:46:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170307074652.xlw2mh2m7jxapthe@pengutronix.de>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
 <20170306225356.31475-8-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170306225356.31475-8-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 07/45] serial: atmel: Check result of clk_get()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 06, 2017 at 02:53:18PM -0800, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/serial/atmel.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
> index 4e4624e..d47b926 100644
> --- a/drivers/serial/atmel.c
> +++ b/drivers/serial/atmel.c
> @@ -403,6 +403,11 @@ static int atmel_serial_init_port(struct console_device *cdev)
>  		return -ENOENT;
>  
>  	uart->clk = clk_get(dev, "usart");
> +	if (IS_ERR(uart->clk)) {
> +		dev_err(dev, "Faield to get 'usart' clock\n");

s/Faield/Failed/

Sascha

> +		return PTR_ERR(uart->clk);
> +	}
> +
>  	clk_enable(uart->clk);
>  	uart->uartclk = clk_get_rate(uart->clk);
>  
> -- 
> 2.9.3
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
