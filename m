Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSBKr-0002cl-3W
 for barebox@lists.infradead.org; Mon, 24 Mar 2014 20:19:05 +0000
Received: by mail-la0-f52.google.com with SMTP id ec20so4027444lab.39
 for <barebox@lists.infradead.org>; Mon, 24 Mar 2014 13:18:42 -0700 (PDT)
Date: Tue, 25 Mar 2014 00:28:25 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140325002825.5a467114657bd471de6c15ad@gmail.com>
In-Reply-To: <1395692034-5821-5-git-send-email-antonynpavlov@gmail.com>
References: <1395692034-5821-1-git-send-email-antonynpavlov@gmail.com>
 <1395692034-5821-5-git-send-email-antonynpavlov@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 4/8] serial: ns16550: make FCR setup value part of
 struct ns16550_priv
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 25 Mar 2014 00:13:50 +0400
Antony Pavlov <antonynpavlov@gmail.com> wrote:

This patch can be very handy for adding device tree FIFO-less controllers s=
upport in the future.

E.g.:  .compatible =3D "ns8250" or .compatible =3D "ns16450"

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/serial/serial_ns16550.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16=
550.c
> index d217014..0089a04 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -48,6 +48,7 @@ struct ns16550_priv {
>  	struct NS16550_plat plat;
>  	int access_width;
>  	struct clk *clk;
> +	uint32_t fcrval;
>  };
>  =

>  static inline struct ns16550_priv *to_ns16550_priv(struct console_device=
 *cdev)
> @@ -157,18 +158,13 @@ static int ns16550_setbaudrate(struct console_devic=
e *cdev, int baud_rate)
>  {
>  	unsigned int baud_divisor =3D ns16550_calc_divisor(cdev, baud_rate);
>  	struct ns16550_priv *priv =3D to_ns16550_priv(cdev);
> -	struct NS16550_plat *plat =3D &priv->plat;
>  =

>  	ns16550_write(cdev, LCR_BKSE, lcr);
>  	ns16550_write(cdev, baud_divisor & 0xff, dll);
>  	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
>  	ns16550_write(cdev, LCRVAL, lcr);
>  	ns16550_write(cdev, MCRVAL, mcr);
> -
> -	if (plat->flags & NS16650_FLAG_DISABLE_FIFO)
> -		ns16550_write(cdev, FCRVAL & ~FCR_FIFO_EN, fcr);
> -	else
> -		ns16550_write(cdev, FCRVAL, fcr);
> +	ns16550_write(cdev, priv->fcrval, fcr);
>  =

>  	return 0;
>  }
> @@ -316,6 +312,11 @@ static int ns16550_probe(struct device_d *dev)
>  	cdev->setbrg =3D ns16550_setbaudrate;
>  	cdev->linux_console_name =3D devtype->linux_console_name;
>  =

> +	if (plat->flags & NS16650_FLAG_DISABLE_FIFO)
> +		priv->fcrval =3D FCRVAL & ~FCR_FIFO_EN;
> +	else
> +		priv->fcrval =3D FCRVAL;
> +
>  	devtype->init_port(cdev);
>  =

>  	return console_register(cdev);
> -- =

> 1.9.0
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
