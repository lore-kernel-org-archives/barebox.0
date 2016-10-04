Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brIrm-00059m-Bc
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 06:06:15 +0000
Date: Tue, 4 Oct 2016 08:05:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161004060551.ikj2gy3pvkltidzm@pengutronix.de>
References: <1475092260-12749-1-git-send-email-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1475092260-12749-1-git-send-email-uwe@kleine-koenig.org>
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
Subject: Re: [PATCH] pinctrl: mvebu: add newline to error message
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: barebox@lists.infradead.org

On Wed, Sep 28, 2016 at 09:51:00PM +0200, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
>  drivers/pinctrl/mvebu/common.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/pinctrl/mvebu/common.c b/drivers/pinctrl/mvebu/commo=
n.c
> index 532705286795..ae16b39268d7 100644
> --- a/drivers/pinctrl/mvebu/common.c
> +++ b/drivers/pinctrl/mvebu/common.c
> @@ -78,7 +78,8 @@ static int mvebu_pinctrl_set_state(struct pinctrl_devic=
e *pdev,
>  =

>  		set =3D mvebu_pinctrl_find_setting_by_name(pctl, mode, function);
>  		if (!set) {
> -			dev_err(pdev->dev, "unsupported function %s on pin %s",
> +			dev_err(pdev->dev,
> +				"unsupported function %s on pin %s\n",
>  				function, group);
>  			continue;
>  		}
> -- =

> 2.8.1
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
