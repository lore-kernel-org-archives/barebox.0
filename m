Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ckmna-0001uA-Mf
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 07:11:17 +0000
Date: Mon, 6 Mar 2017 08:10:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170306071050.ono6uylom53f6rlw@pengutronix.de>
References: <20170228143127.2945-5-bst@pengutronix.de>
 <20170303090633.11500-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170303090633.11500-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] fixup! video: add support for Solomon SSD1307 OLED
 controller family
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 03, 2017 at 10:06:33AM +0100, Uwe Kleine-K=F6nig wrote:
> ---
>  drivers/video/ssd1307fb.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> =


Applied, thanks

Sascha

> diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
> index ff4af2cdf493..7437d340ee41 100644
> --- a/drivers/video/ssd1307fb.c
> +++ b/drivers/video/ssd1307fb.c
> @@ -415,9 +415,10 @@ static int ssd1307fb_probe(struct device_d *dev)
>  					 "reset-gpios", 0);
>  	if (!gpio_is_valid(par->reset)) {
>  		ret =3D par->reset;
> -		dev_err(&client->dev,
> -			"Couldn't get named gpio 'reset-gpios': %s.\n",
> -			strerror(-ret));
> +		if (ret !=3D -EPROBE_DEFER)
> +			dev_err(&client->dev,
> +				"Couldn't get named gpio 'reset-gpios': %s.\n",
> +				strerror(-ret));
>  		goto fb_alloc_error;
>  	}
>  =

> -- =

> 2.11.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
