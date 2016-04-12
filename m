Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aprVM-0000me-Tc
 for barebox@lists.infradead.org; Tue, 12 Apr 2016 06:08:53 +0000
Date: Tue, 12 Apr 2016 08:08:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160412060831.GP9102@pengutronix.de>
References: <1460143586-1043-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1460143586-1043-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] pinctrl: mxs: add raw value from device tree to debug
 output
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 08, 2016 at 09:26:26PM +0200, Uwe Kleine-K=F6nig wrote:
> Not sure this is of general interest, but it helped me matching pin
> configs from a static table to device tree entries.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/pinctrl/pinctrl-mxs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

I think it's interesting enough to have it in the tree. Applied, thanks

Sascha

> =

> diff --git a/drivers/pinctrl/pinctrl-mxs.c b/drivers/pinctrl/pinctrl-mxs.c
> index ec0aaec67f06..fa1176fe1bd6 100644
> --- a/drivers/pinctrl/pinctrl-mxs.c
> +++ b/drivers/pinctrl/pinctrl-mxs.c
> @@ -89,8 +89,8 @@ static int mxs_pinctrl_set_state(struct pinctrl_device =
*pdev, struct device_node
>  		writel(0x3 << shift, reg + STMP_OFFSET_REG_CLR);
>  		writel(muxsel << shift, reg + STMP_OFFSET_REG_SET);
>  =

> -		dev_dbg(iomux->pinctrl.dev, "pin %d, mux %d, ma: %d, vol: %d, pull: %d=
\n",
> -				pinid, muxsel, ma, vol, pull);
> +		dev_dbg(iomux->pinctrl.dev, "(val: 0x%x) pin %d, mux %d, ma: %d, vol: =
%d, pull: %d\n",
> +				val, pinid, muxsel, ma, vol, pull);
>  =

>  		/* drive */
>  		reg =3D iomux->base + 0x300;
> -- =

> 2.7.0
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
