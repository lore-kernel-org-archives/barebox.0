Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMq0O-0004p1-Tq
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 06:17:46 +0000
Date: Mon, 19 Jun 2017 08:16:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170619061656.55qcsyad7bmjkda2@pengutronix.de>
References: <20170613220129.18236-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170613220129.18236-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] serial: ns16550: emit an error message if getting the
 clock fails
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 14, 2017 at 12:01:29AM +0200, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/serial/serial_ns16550.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> =

> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16=
550.c
> index 439b7d5517bd..a8953cd99d62 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -445,6 +445,7 @@ static int ns16550_probe(struct device_d *dev)
>  		priv->clk =3D clk_get(dev, NULL);
>  		if (IS_ERR(priv->clk)) {
>  			ret =3D PTR_ERR(priv->clk);
> +			dev_err(dev, "failed to get clk (%d)\n", ret);
>  			goto err;
>  		}
>  		clk_enable(priv->clk);
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
