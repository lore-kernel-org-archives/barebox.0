Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEhwA-0003R4-S7
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 19:31:32 +0000
Date: Wed, 7 Dec 2016 20:31:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161207193109.bx3krk5ukcnakjgd@pengutronix.de>
References: <20161205102743.3896-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161205102743.3896-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] spi: mvebu: fix error handling for transfer problems
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 05, 2016 at 11:27:43AM +0100, Uwe Kleine-K=F6nig wrote:
> When a message transfer fails no further messages are transferred, but
> the error value was not propagated to the caller.
> =

> Fixes: 5db1a578d6ed ("spi: add Marvell MVEBU SoC SPI driver")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/spi/mvebu_spi.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/spi/mvebu_spi.c b/drivers/spi/mvebu_spi.c
> index 335774d4c609..ee7b212962f7 100644
> --- a/drivers/spi/mvebu_spi.c
> +++ b/drivers/spi/mvebu_spi.c
> @@ -305,14 +305,14 @@ static int mvebu_spi_transfer(struct spi_device *sp=
i, struct spi_message *msg)
>  	list_for_each_entry(t, &msg->transfers, transfer_list) {
>  		ret =3D mvebu_spi_do_transfer(spi, t);
>  		if (ret)
> -			break;
> +			goto err_transfer;
>  		msg->actual_length +=3D t->len;
>  	}
>  =

> -	ret =3D mvebu_spi_set_cs(priv, spi->chip_select, spi->mode, false);
> -	if (ret)
> -		return ret;
> +	return mvebu_spi_set_cs(priv, spi->chip_select, spi->mode, false);
>  =

> +err_transfer:
> +	mvebu_spi_set_cs(priv, spi->chip_select, spi->mode, false);
>  	return ret;
>  }
>  =

> -- =

> 2.10.2
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
