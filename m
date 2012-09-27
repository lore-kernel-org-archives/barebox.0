Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THAmU-0005Ss-Ue
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 09:53:20 +0000
Date: Thu, 27 Sep 2012 11:53:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120927095312.GU1322@pengutronix.de>
References: <1348700206-30581-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348700206-30581-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] [RFC] i2c-imx: send a soft bus reset during probe
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, kernel@pengutronix.de

Hi Uwe,

Sounds good. We often have this problem.

I wonder if it's worth to have this as a general callback in the i2c
layer.

Sascha

On Thu, Sep 27, 2012 at 12:56:46AM +0200, Uwe Kleine-K=F6nig wrote:
> If an i2c slave pulls SDA low when the SoC wants to start a transfer, it
> cannot get the bus. This can happen for example if the SoC is reset when
> it just successfully addressed a slave but before it rises SCL for the
> slave to ack. Currently this makes the driver refuse to do anything. You
> can force this situation with the following code assuming you have a
> device on address 0x50:
> =

> 	/* generate a start condition */
> 	gpio_direction_input(I2CSCL);
> 	gpio_direction_input(I2CSDA);
> 	mdelay(1);
> 	gpio_direction_output(I2CSDA, 0);
> =

> 	mdelay(1);
> =

> 	/* address device 0x50 */
> 	for (i =3D 0; i < 8; ++i) {
> 		gpio_direction_output(I2CSCL, 0);
> 		mdelay(1);
> 		if ((0x50 << 1) >> (7 - i))
> 			gpio_direction_input(I2CSDA);
> 		else
> 			gpio_direction_output(I2CSDA, 0);
> 		mdelay(1);
> 		gpio_direction_input(I2CSCL);
> 		mdelay(1);
> 	}
> 	gpio_direction_output(I2CSCL, 0);
> =

> 	reset_cpu(0);
> =

> To circumvent this situation just clock the bus 9 times without pulling
> on SDA following a start condition and finalizing with a repeated start a=
nd
> stop. This is suggested in an Atmel at24 datasheet (5226G-SEEPR-11/09):
> =

>         2-WIRE SOFTWARE RESET: After an interruption in protocol, power l=
oss or
>         system reset, any 2-wire part can be reset by following these ste=
ps:
>         (a) Create a start bit condition,
>         (b) Clock 9 cycles,
>         (c) Create another start bit followed by a stop bit condition as
>             shown below. The device is ready for the next communication
>             after the above steps have been completed.
> =

>         SCL /=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=AF\_/=
=AF\_/=AF\
>         SDA =AF\_/=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=
=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF=AF\___/=AF
>              S   1   2   3   4   5   6   7   8   9   Sr  P
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
> =

> I developped this patch on an older barebox version (2012.04.0) and it
> doesn't fit on current master (or next). But that's not that bad because
> it's an RFC patch and I will happily resend if the idea is accepted.
> =

> This patch solves the bus stall described in the commit message above
> and I think it cannot do any harm:
>  - if no slave occupies the bus, something strange might happen if there
>    is a slave with address 0x7f. This address is reserved though in
>    the I=B2C-Bus Specification Version 2.1.
>  - if a slave is out of sync and pulls SDA low during the (intended) S
>    at the beginning, no slave will detect a start condition. So the
>    clocks only affect the (single?) slave that is currently active. This
>    one completes its cycle during the 9 clocks, ignores potential clock
>    pulses at the end of its cycle and the following Sr resets the state
>    machine.
> =

> This sounds reasonable to me (and obviously some engineers at Atmel),
> but I'd still welcome some more eyes and thoughts on this.
> =

> Also I intend do verify the intended behaviour with an oscilloscope.
> =

> Best regards
> Uwe
> =

>  drivers/i2c/busses/i2c-imx.c |   39 ++++++++++++++++++++++++++++++++----=
---
>  1 file changed, 32 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index da6218f..ba774b9 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -207,12 +207,9 @@ static int i2c_imx_acked(struct i2c_adapter *adapter)
>  	return 0;
>  }
>  =

> -static int i2c_imx_start(struct i2c_adapter *adapter)
> +static void __i2c_imx_start(struct imx_i2c_struct *i2c_imx, unsigned int=
 *i2cr)
>  {
> -	struct imx_i2c_struct *i2c_imx =3D to_imx_i2c_struct(adapter);
>  	void __iomem *base =3D i2c_imx->base;
> -	unsigned int temp =3D 0;
> -	int result;
>  =

>  	writeb(i2c_imx->ifdr, base + IMX_I2C_IFDR);
>  	/* Enable I2C controller */
> @@ -223,9 +220,19 @@ static int i2c_imx_start(struct i2c_adapter *adapter)
>  	udelay(100);
>  =

>  	/* Start I2C transaction */
> -	temp =3D readb(base + IMX_I2C_I2CR);
> -	temp |=3D I2CR_MSTA;
> -	writeb(temp, base + IMX_I2C_I2CR);
> +	*i2cr =3D readb(base + IMX_I2C_I2CR);
> +	*i2cr |=3D I2CR_MSTA;
> +	writeb(*i2cr, base + IMX_I2C_I2CR);
> +}
> +
> +static int i2c_imx_start(struct i2c_adapter *adapter)
> +{
> +	struct imx_i2c_struct *i2c_imx =3D to_imx_i2c_struct(adapter);
> +	int result;
> +	unsigned int temp;
> +	void __iomem *base =3D i2c_imx->base;
> +
> +	__i2c_imx_start(i2c_imx, &temp);
>  =

>  	result =3D i2c_imx_bus_busy(adapter, 1);
>  	if (result)
> @@ -239,6 +246,22 @@ static int i2c_imx_start(struct i2c_adapter *adapter)
>  	return result;
>  }
>  =

> +static void i2c_imx_busreset(struct imx_i2c_struct *i2c_imx)
> +{
> +	void __iomem *base =3D i2c_imx->base;
> +	unsigned int temp;
> +
> +	__i2c_imx_start(i2c_imx, &temp);
> +
> +	/* send 9 clocks without anything on SDA followed by Sr */
> +	writeb(temp | I2CR_RSTA, base + IMX_I2C_I2CR);
> +
> +	writeb(0xff, base + IMX_I2C_I2DR);
> +
> +	/* send a P */
> +	writeb(0, i2c_imx->base + IMX_I2C_I2CR);
> +}
> +
>  static void i2c_imx_stop(struct i2c_adapter *adapter)
>  {
>  	struct imx_i2c_struct *i2c_imx =3D to_imx_i2c_struct(adapter);
> @@ -485,6 +508,8 @@ static int __init i2c_imx_probe(struct device_d *pdev)
>  	writeb(0, i2c_imx->base + IMX_I2C_I2CR);
>  	writeb(0, i2c_imx->base + IMX_I2C_I2SR);
>  =

> +	i2c_imx_busreset(i2c_imx);
> +
>  	/* Add I2C adapter */
>  	ret =3D i2c_add_numbered_adapter(&i2c_imx->adapter);
>  	if (ret < 0) {
> -- =

> 1.7.10.4
> =

> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
