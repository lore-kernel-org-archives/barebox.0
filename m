Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMpzE-0006v0-AV
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 06:17:11 +0000
Date: Mon, 19 Jun 2017 08:16:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170619061610.x7si6a7myznwjyun@pengutronix.de>
References: <20170613215128.17243-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170613215128.17243-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] clk: let clk_get return errors from of_clk_get_by_name
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 13, 2017 at 11:51:28PM +0200, Uwe Kleine-K=F6nig wrote:
> When of_clk_get_by_name fails with -ENODEV it's fine to continue with
> clk_get_sys. Other errors (e.g. -EPROBE_DEFER) should be returned however.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/clk/clkdev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
> index 7f9f8f2adc00..6b16663551ef 100644
> --- a/drivers/clk/clkdev.c
> +++ b/drivers/clk/clkdev.c
> @@ -181,7 +181,7 @@ struct clk *clk_get(struct device_d *dev, const char =
*con_id)
>  =

>  	if (dev) {
>  		clk =3D of_clk_get_by_name(dev->device_node, con_id);
> -		if (!IS_ERR(clk))
> +		if (!IS_ERR(clk) || PTR_ERR(clk) !=3D -ENODEV)
>  			return clk;
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

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
