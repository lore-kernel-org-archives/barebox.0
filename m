Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dwjhs-0007kw-EL
 for barebox@lists.infradead.org; Tue, 26 Sep 2017 06:51:02 +0000
Date: Tue, 26 Sep 2017 08:50:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170926065038.c6sol4l4i6y5p5ha@pengutronix.de>
References: <20170924212853.31531-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170924212853.31531-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] pinctrl: mxs: fix error message to mention right
 property name
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, Sep 24, 2017 at 11:28:53PM +0200, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/pinctrl/pinctrl-mxs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =


Applied, thanks

Sascha

> diff --git a/drivers/pinctrl/pinctrl-mxs.c b/drivers/pinctrl/pinctrl-mxs.c
> index fa1176fe1bd6..479c31a426b9 100644
> --- a/drivers/pinctrl/pinctrl-mxs.c
> +++ b/drivers/pinctrl/pinctrl-mxs.c
> @@ -50,11 +50,11 @@ static int mxs_pinctrl_set_state(struct pinctrl_devic=
e *pdev, struct device_node
>  	list =3D of_get_property(np, "fsl,pinmux-ids", &size);
>  	if (!list)
>  		return -EINVAL;
>  =

>  	if (!size || size % 4) {
> -		dev_err(iomux->pinctrl.dev, "Invalid fsl,pins property in %s\n",
> +		dev_err(iomux->pinctrl.dev, "Invalid fsl,pinmux-ids property in %s\n",
>  				np->full_name);
>  		return -EINVAL;
>  	}
>  =

>  	npins =3D size / 4;
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
