Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4ml-0007nw-Iv
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 08:27:13 +0000
Date: Tue, 4 Jun 2019 10:27:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190604082709.s4ctyojue4lxeec7@pengutronix.de>
References: <20190603201243.25070-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603201243.25070-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] serial_ns16550: readd support for mvebu armada 38x
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 03, 2019 at 10:12:43PM +0200, Uwe Kleine-K=F6nig wrote:
> The armada 38x device tree traditionally used "snps,dw-apb-uart" as
> compatible for the internal UARTs. This was changed in Linux by commit
> b7639b0b15dd ("serial: 8250_dw: Limit dw8250_tx_wait_empty quirk to
> armada-38x devices") which was imported into barebox in e4067b75fb6c
> ("dts: update to v4.18-rc1") to "marvell,armada-38x-uart".
> =

> Teach the driver about the new compatible to make the console work
> again.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/serial/serial_ns16550.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> =

> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16=
550.c
> index ccd082e495c3..4c84d27bdc1b 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -525,6 +525,9 @@ static struct of_device_id ns16550_serial_dt_ids[] =
=3D {
>  	}, {
>  		.compatible =3D "snps,dw-apb-uart",
>  		.data =3D &ns16550_drvdata,
> +	}, {
> +		.compatible =3D "marvell,armada-38x-uart",
> +		.data =3D &ns16550_drvdata,
>  	},
>  #if IS_ENABLED(CONFIG_ARCH_OMAP)
>  	{
> -- =

> 2.20.1
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
