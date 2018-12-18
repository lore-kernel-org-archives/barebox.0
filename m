Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZ64r-0001jh-3j
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 03:29:50 +0000
Date: Tue, 18 Dec 2018 04:29:37 +0100
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20181218032937.otaph6c5yo3lxny7@pengutronix.de>
References: <cover.e610a402e2d09170d606caefc97f20a39572bbde.1545034218.git-series.r.czerwinski@pengutronix.de>
 <1ce9b3de1464acae378eaaae5324b724d187f1a6.1545034218.git-series.r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1ce9b3de1464acae378eaaae5324b724d187f1a6.1545034218.git-series.r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v4 4/7] serial_ns16550: add raspberry pi compatible and
 init
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 17, 2018 at 09:10:42AM +0100, Rouven Czerwinski wrote:
> Add the compatible for the Raspberry Pi AUX UART and an init function which
> enables it via the aux register and configures the correct shift value.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/serial/serial_ns16550.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index 8ddcfdb..256063a 100644
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

Same here. I guess it is some register that has to do with the ns16550?
But what happens when we write 1 to it?

 - Roland

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
> +static __maybe_unused struct ns16550_drvdata rpi_drvdata = {
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
> +		.compatible = "brcm,bcm2835-aux-uart",
> +		.data = &rpi_drvdata,
> +	},
> +#endif
>  	{
>  		/* sentinel */
>  	},
> -- 
> git-series 0.9.1
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
