Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYnva-0008MF-Vk
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 08:07:08 +0000
References: <cover.48072dc0c2851fc176d68ed0eccf022fc17732e1.1545031438.git-series.r.czerwinski@pengutronix.de>
 <9be8668f9a90a48ca8225832d02d76413635a98a.1545031438.git-series.r.czerwinski@pengutronix.de>
From: Rouven Czerwinski <rouven@czerwinskis.de>
In-reply-to: <9be8668f9a90a48ca8225832d02d76413635a98a.1545031438.git-series.r.czerwinski@pengutronix.de>
Date: Mon, 17 Dec 2018 09:06:49 +0100
Message-ID: <875zvsd1ba.fsf@czerwinskis.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH v3 4/7] serial_ns16550: add raspberry pi compatible and
 init
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org


Rouven Czerwinski <r.czerwinski@pengutronix.de> writes:

> Add the compatible for the Raspberry Pi AUX UART and an init function which
> enables it via the aux register and configures the correct shift value.
>
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/serial/serial_ns16550.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index 8ddcfdb..34b83f4 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -253,6 +253,20 @@ static void ns16550_jz_init_port(struct console_device *cdev)
>  	ns16550_serial_init_port(cdev);
>  }
>  
> +static void rpi_init_port(struct console_device *cdev)
> +{
> +	struct ns16550_priv *priv = to_ns16550_priv(cdev);
> +
> +	writeb(0x01, 0x3f215004);
> +	priv->plat.shift = 2;
> +	/*
> +	 * We double the clock rate since the 16550 will divide by 16
> +	 * (instead of 8 required by the BCM2835 peripheral manual)
> +	 */
> +	priv->plat.clock = priv->plat.clock*2;
> +	ns16550_serial_init_port(cdev);
> +}
> +
>  /*********** Exposed Functions **********************************/
>  
>  /**
> @@ -353,6 +367,11 @@ static __maybe_unused struct ns16550_drvdata tegra_drvdata = {
>  	.linux_console_name = "ttyS",
>  };
>  
> +static struct ns16550_drvdata rpi_drvdata = {
__maybe unused missing here.

> +	.init_port = rpi_init_port,
> +	.linux_console_name = "ttyS",
> +};
> +
>  static int ns16550_init_iomem(struct device_d *dev, struct ns16550_priv *priv)
>  {
>  	struct resource *iores;
> @@ -528,6 +547,12 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
>  		.data = &jz_drvdata,
>  	},
>  #endif
> +#if IS_ENABLED(CONFIG_MACH_RPI_COMMON)
> +	{
> +	  .compatible = "brcm,bcm2835-aux-uart",
> +	  .data = &rpi_drvdata,
The indentation is still wrong.

Will send a v4.
> +	},
> +#endif
>  	{
>  		/* sentinel */
>  	},


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
