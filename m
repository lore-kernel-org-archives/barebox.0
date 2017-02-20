Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cfnlt-0007At-6g
 for barebox@lists.infradead.org; Mon, 20 Feb 2017 13:12:55 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B77CDA0044C
 for <barebox@lists.infradead.org>; Mon, 20 Feb 2017 14:12:42 +0100 (CET)
References: <1486633003-34908-1-git-send-email-w.egorov@phytec.de>
 <1486633003-34908-2-git-send-email-w.egorov@phytec.de>
From: Wadim Egorov <w.egorov@phytec.de>
Message-ID: <49f8f06d-ed61-fb14-fb80-aff250676b0d@phytec.de>
Date: Mon, 20 Feb 2017 14:12:21 +0100
MIME-Version: 1.0
In-Reply-To: <1486633003-34908-2-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [RFC] serial: ns16550: Set read/write functions depending on
 reg-io-width
To: barebox@lists.infradead.org

Is this patch okay?


Am 09.02.2017 um 10:36 schrieb Wadim Egorov:
> Set proper register read/write functions depending on reg-io-width
> device tree property.
>
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>
> of_platform_device_create() creates resources in the device_d struct.
> ns16550_init_iomem() and ns16550_init_ioport() are reading the resources
> and it's flags (register width).
> So both functions are not failing, because there is a valid resource.
> The res->flags might be not set at all. And if it is not set, the driver
> will use always IORESOURCE_MEM_8BIT.
>
> With this patch the probe_dt() func will override the read/write funcs,
> if there is a valid reg-io-width property.
> ---
>  drivers/serial/serial_ns16550.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index c6548e3..752e77b 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -287,12 +287,31 @@ static int ns16550_tstc(struct console_device *cdev)
>  static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
>  {
>  	struct device_node *np = dev->device_node;
> +	u32 width;
>  
>  	if (!IS_ENABLED(CONFIG_OFDEVICE))
>  		return;
>  
>  	of_property_read_u32(np, "clock-frequency", &priv->plat.clock);
>  	of_property_read_u32(np, "reg-shift", &priv->plat.shift);
> +	if (!of_property_read_u32(np, "reg-io-width", &width))
> +		switch (width) {
> +		case 1:
> +			priv->read_reg = ns16550_read_reg_mmio_8;
> +			priv->write_reg = ns16550_write_reg_mmio_8;
> +			break;
> +		case 2:
> +			priv->read_reg = ns16550_read_reg_mmio_16;
> +			priv->write_reg = ns16550_write_reg_mmio_16;
> +			break;
> +		case 4:
> +			priv->read_reg = ns16550_read_reg_mmio_32;
> +			priv->write_reg = ns16550_write_reg_mmio_32;
> +			break;
> +		default:
> +			dev_err(dev, "unsupported reg-io-width (%d)\n",
> +				width);
> +		}
>  }
>  
>  static struct ns16550_drvdata ns16450_drvdata = {


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
