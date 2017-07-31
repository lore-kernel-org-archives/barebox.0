Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dc7YV-000068-LB
 for barebox@lists.infradead.org; Mon, 31 Jul 2017 10:04:09 +0000
Message-ID: <1501495425.2431.3.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 31 Jul 2017 12:03:45 +0200
In-Reply-To: <20170727050055.14188-2-o.rempel@pengutronix.de>
References: <20170727050055.14188-1-o.rempel@pengutronix.de>
 <20170727050055.14188-2-o.rempel@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v1 2/2] serial: ns16550: provide big-endian support
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Donnerstag, den 27.07.2017, 07:00 +0200 schrieb Oleksij Rempel:
> we need it at least for QCA AR9344
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/serial/serial_ns16550.c | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index a8953cd99d..4d73ea8b87 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -94,6 +94,16 @@ static void ns16550_write_reg_mmio_32(struct ns16550_priv *priv, uint8_t val, un
>  	writel(val, priv->mmiobase + offset);
>  }
>  
> +static uint8_t ns16550_read_reg_mmio_32be(struct ns16550_priv *priv, unsigned offset)
> +{
> +	return ioread32be(priv->mmiobase + offset);
> +}
> +
> +static void ns16550_write_reg_mmio_32be(struct ns16550_priv *priv, uint8_t val, unsigned offset)
> +{
> +	iowrite32be(val, priv->mmiobase + offset);
> +}

This doesn't work on PPC and x86, as those 2 architectures are missing
the "be" variants of the iowrite/ioread functions.

> +
>  static uint8_t ns16550_read_reg_ioport_8(struct ns16550_priv *priv, unsigned offset)
>  {
>  	return inb(priv->iobase + offset);
> @@ -305,8 +315,13 @@ static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
>  			priv->write_reg = ns16550_write_reg_mmio_16;
>  			break;
>  		case 4:
> -			priv->read_reg = ns16550_read_reg_mmio_32;
> -			priv->write_reg = ns16550_write_reg_mmio_32;
> +			if (of_device_is_big_endian(np)) {
> +				priv->read_reg = ns16550_read_reg_mmio_32be;
> +				priv->write_reg = ns16550_write_reg_mmio_32be;
> +			} else {
> +				priv->read_reg = ns16550_read_reg_mmio_32;
> +				priv->write_reg = ns16550_write_reg_mmio_32;
> +			}
>  			break;
>  		default:
>  			dev_err(dev, "unsupported reg-io-width (%d)\n",

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
