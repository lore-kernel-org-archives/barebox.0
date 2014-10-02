Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XZZIw-0003C2-O2
 for barebox@lists.infradead.org; Thu, 02 Oct 2014 05:51:56 +0000
Date: Thu, 2 Oct 2014 07:51:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141002055129.GI4992@pengutronix.de>
References: <1412174236-45854-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1412174236-45854-1-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] i2c: omap: fix dts property "clock-frequency" usage
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 01, 2014 at 04:37:16PM +0200, Teresa G=E1mez wrote:
> Looking at the linux kernel the clock-frequency property of
> the device tree is used to set the bus speed and not the
> fclk_rate. Adapted this to be compliant with linux kernel.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied, thanks

Sascha

> ---
>  drivers/i2c/busses/i2c-omap.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
> index adc952b..48bdfbe 100644
> --- a/drivers/i2c/busses/i2c-omap.c
> +++ b/drivers/i2c/busses/i2c-omap.c
> @@ -151,7 +151,6 @@ struct omap_i2c_struct {
>  	u8			reg_shift;
>  	struct omap_i2c_driver_data	*data;
>  	struct resource		*ioarea;
> -	u32			fclk_rate;
>  	u32			speed;		/* Speed of bus in Khz */
>  	u16			scheme;
>  	u16			cmd_err;
> @@ -421,7 +420,7 @@ static int omap_i2c_init(struct omap_i2c_struct *i2c_=
omap)
>  		internal_clk =3D 4000;
>  =

>  	/* Compute prescaler divisor */
> -	psc =3D i2c_omap->fclk_rate / internal_clk;
> +	psc =3D i2c_data->fclk_rate / internal_clk;
>  	psc =3D psc - 1;
>  =

>  	/* If configured for High Speed */
> @@ -1016,9 +1015,16 @@ i2c_omap_probe(struct device_d *pdev)
>  	i2c_omap->reg_shift =3D (i2c_data->flags >>
>  					OMAP_I2C_FLAG_BUS_SHIFT__SHIFT) & 3;
>  =

> -	if (pdev->platform_data !=3D NULL)
> +	if (pdev->platform_data !=3D NULL) {
>  		speed =3D *(u32 *)pdev->platform_data;
> -	else
> +	} else {
> +		of_property_read_u32(pdev->device_node, "clock-frequency",
> +			&speed);
> +		/* convert DT freq value in Hz into kHz for speed */
> +		speed /=3D 1000;
> +	}
> +
> +	if (!speed)
>  		speed =3D 100;	/* Default speed */
>  =

>  	i2c_omap->speed =3D speed;
> @@ -1080,12 +1086,6 @@ i2c_omap_probe(struct device_d *pdev)
>  			i2c_omap->b_hw =3D 1; /* Enable hardware fixes */
>  	}
>  =

> -	i2c_omap->fclk_rate =3D i2c_data->fclk_rate;
> -
> -	if (!i2c_omap->fclk_rate)
> -		of_property_read_u32(pdev->device_node, "clock-frequency",
> -				&i2c_omap->fclk_rate);
> -
>  	/* reset ASAP, clearing any IRQs */
>  	omap_i2c_init(i2c_omap);
>  =

> -- =

> 1.9.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
