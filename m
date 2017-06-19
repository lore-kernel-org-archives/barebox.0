Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMq44-00050R-RE
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 06:21:34 +0000
Date: Mon, 19 Jun 2017 08:21:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170619062112.w4x2uigp6ctrocjp@pengutronix.de>
References: <20170614113110.21604-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170614113110.21604-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/2] of_device_is_stdout_path: simplify
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 14, 2017 at 01:31:09PM +0200, Uwe Kleine-K=F6nig wrote:
> Test for dev->device_node being NULL earlier which at the end of the
> function allows to simplify the calculation of the return value
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/of/base.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index c9bdd91810f2..592ebb015a73 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2000,6 +2000,9 @@ int of_device_is_stdout_path(struct device_d *dev)
>  	struct device_node *dn;
>  	const char *name;
>  =

> +	if (!dev->device_node)
> +		return 0;
> +
>  	name =3D of_get_property(of_chosen, "stdout-path", NULL);
>  	if (!name)
>  		name =3D of_get_property(of_chosen, "linux,stdout-path", NULL);
> @@ -2008,13 +2011,8 @@ int of_device_is_stdout_path(struct device_d *dev)
>  		return 0;
>  =

>  	dn =3D of_find_node_by_path(name);
> -	if (!dn)
> -		return 0;
>  =

> -	if (dn =3D=3D dev->device_node)
> -		return 1;
> -
> -	return 0;
> +	return dn =3D=3D dev->device_node;
>  }
>  =

>  /**
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
