Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ebigo-0005t7-Fp
 for barebox@lists.infradead.org; Wed, 17 Jan 2018 08:03:21 +0000
Date: Wed, 17 Jan 2018 09:03:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180117080301.3hjfa34nizla4sxs@pengutronix.de>
References: <20180111090326.32724-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180111090326.32724-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] net/e1000: fix driver probing in the presence of two
 e1000 devices
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jan 11, 2018 at 10:03:26AM +0100, Uwe Kleine-K=F6nig wrote:
> The .id member of the struct device for the invm device is not
> initialized and so implicitly zero. This yields:
> =

> 	register_device: already registered invm0
> =

> for the second i210 during probe.
> =

> So use the parent's id to initialize the id for invm, too, as is already
> done for the corresponding e1000-nor device.
> =

> Fixes: a74b97f009c6 ("e1000: Expose i210's iNVM as a cdev")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Applied, thanks

Sascha

> ---
>  drivers/net/e1000/eeprom.c | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
> index 23fb05ec72bc..748d8afe7922 100644
> --- a/drivers/net/e1000/eeprom.c
> +++ b/drivers/net/e1000/eeprom.c
> @@ -1504,6 +1504,7 @@ int e1000_register_invm(struct e1000_hw *hw)
>  		return ret;
>  =

>  	strcpy(hw->invm.dev.name, "invm");
> +	hw->invm.dev.id =3D hw->dev->id;
>  	hw->invm.dev.parent =3D hw->dev;
>  	ret =3D register_device(&hw->invm.dev);
>  	if (ret < 0) {
> -- =

> 2.11.0
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
