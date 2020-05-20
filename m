Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMmQ-0003gj-8T
 for barebox@lists.infradead.org; Wed, 20 May 2020 11:20:59 +0000
Date: Wed, 20 May 2020 13:20:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200520112056.GC11869@pengutronix.de>
References: <20200520035536.84368-1-dgienda125@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520035536.84368-1-dgienda125@gmail.com>
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
Subject: Re: [PATCH] serial: Add flush function to NS16550 driver
To: David Dgien <dgienda125@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 19, 2020 at 11:55:36PM -0400, David Dgien wrote:
> Add flush function to NS16550 to remove bad characters being printed
> during reset
> 
> Signed-off-by: David Dgien <dgienda125@gmail.com>
> ---
>  drivers/serial/serial_ns16550.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index 5d6cec82a..f117ab9dc 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -308,6 +308,17 @@ static int ns16550_tstc(struct console_device *cdev)
>  	return ((ns16550_read(cdev, lsr) & LSR_DR) != 0);
>  }
>  
> +/**
> + * @brief Flush remaining characters in serial device
> + *
> + * @param[in] cdev pointer to console device
> + */
> +static void ns16550_flush(struct console_device *cdev)
> +{
> +	/* Loop Doing Nothing */
> +	while ((ns16550_read(cdev, lsr) & LSR_TEMT) == 0) ;
> +}
> +
>  static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
>  {
>  	struct device_node *np = dev->device_node;
> @@ -501,6 +512,7 @@ static int ns16550_probe(struct device_d *dev)
>  	cdev->putc = ns16550_putc;
>  	cdev->getc = ns16550_getc;
>  	cdev->setbrg = ns16550_setbaudrate;
> +	cdev->flush = ns16550_flush;
>  	cdev->linux_console_name = devtype->linux_console_name;
>  
>  	priv->fcrval = FCRVAL;
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
