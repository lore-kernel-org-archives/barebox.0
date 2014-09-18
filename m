Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XUVBc-0006Ec-85
 for barebox@lists.infradead.org; Thu, 18 Sep 2014 06:27:24 +0000
Date: Thu, 18 Sep 2014 08:27:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140918062700.GZ4992@pengutronix.de>
References: <1410966019-31054-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410966019-31054-1-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH] i2c: at91: add support of device tree
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 17, 2014 at 05:00:18PM +0200, Rapha=EBl Poggi wrote:
> Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>
> ---
>  drivers/i2c/busses/i2c-at91.c | 91 ++++++++++++++++++++++++++++++++++---=
------
>  1 file changed, 73 insertions(+), 18 deletions(-)
> =

> diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
> index 399f6a9..6494401 100644
> --- a/drivers/i2c/busses/i2c-at91.c
> +++ b/drivers/i2c/busses/i2c-at91.c
> @@ -186,8 +186,8 @@ static int at91_twi_wait_completion(struct at91_twi_d=
ev *dev)
>  =

>  	dev->transfer_status |=3D status;
>  =

> -	while(!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP)) {
> -		if(is_timeout(start, AT91_I2C_TIMEOUT)) {
> +	while (!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP)) {
> +		if (is_timeout(start, AT91_I2C_TIMEOUT)) {

Normally this change should be in a separate patch.

>  	}, {
> +		.name =3D "at91sam9x5-i2c",
> +		.driver_data =3D (unsigned long) &at91sam9x5_config,
> +	}, {

ditto for adding support for a new SoC.

Ok for this time since this driver currently has no users.

> +static struct at91_twi_pdata *at91_twi_get_driver_data(struct device_d *=
dev)
> +{
> +	struct at91_twi_pdata *i2c_data =3D NULL;
> +	int rc;
> +
> +	if (dev->device_node) {
> +		const struct of_device_id *match;
> +		match =3D of_match_node(at91_twi_dt_ids, dev->device_node);
> +		if (!match)
> +			i2c_data =3D NULL;
> +		else
> +			i2c_data =3D (struct at91_twi_pdata *)match->data;
> +	} else {
> +		rc =3D dev_get_drvdata(dev, (unsigned long *)&i2c_data);
> +		if (rc)
> +			i2c_data =3D NULL;
> +	}

Just call dev_get_drvdata(). It will do the right thing, even for the
device tree case.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
