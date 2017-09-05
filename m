Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dp84u-0002gG-Ch
 for barebox@lists.infradead.org; Tue, 05 Sep 2017 07:15:26 +0000
Received: by mail-lf0-x241.google.com with SMTP id y15so1294253lfd.0
 for <barebox@lists.infradead.org>; Tue, 05 Sep 2017 00:14:59 -0700 (PDT)
Date: Tue, 5 Sep 2017 10:26:23 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20170905102623.5d51a26597a87a31177e49c2@gmail.com>
In-Reply-To: <20170804131045.29427-1-antonynpavlov@gmail.com>
References: <20170802122512.GA16652@ravnborg.org>
 <20170804131045.29427-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2] gpio: clps711x: clps711x_gpio_dt_ids: add missing
 sentinel entry
To: Sascha Hauer <s.hauer@pengutronix.de>, Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri,  4 Aug 2017 16:10:45 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

I can't find this patch neither in the master branch nor in the next branch
of the pengutronix public repo.

Please apply it!

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Alexander Shiyan <shc_work@mail.ru>
> ---
> =

> Changes since v1:
> =

>   * change formatting
> =

>  drivers/gpio/gpio-clps711x.c | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
> index d71c606690..769e6ca4f7 100644
> --- a/drivers/gpio/gpio-clps711x.c
> +++ b/drivers/gpio/gpio-clps711x.c
> @@ -74,6 +74,7 @@ out_err:
>  =

>  static struct of_device_id __maybe_unused clps711x_gpio_dt_ids[] =3D {
>  	{ .compatible =3D "cirrus,clps711x-gpio", },
> +	{ /* sentinel */ }
>  };
>  =

>  static struct driver_d clps711x_gpio_driver =3D {
> -- =

> 2.13.3
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
