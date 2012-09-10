Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAyU6-0005SS-3u
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 07:32:42 +0000
Date: Mon, 10 Sep 2012 09:32:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120910073236.GU18243@pengutronix.de>
References: <1346939401-25611-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346939401-25611-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] [RFC] fec: fix calculation of mii bus speed on mxs
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, kernel@pengutronix.de

Hi Uwe,

On Thu, Sep 06, 2012 at 03:50:01PM +0200, Uwe Kleine-K=F6nig wrote:
> According to a comment in Linux' fec driver, i.MX28 uses the same
> formula for determination of the frequency divider as i.MX6, that is
> (different from the i.MX28 manual):
> =

> 	parent clock / ((MII_SPEED + 1) * 2)
> =

> instead of
> =

> 	parent clock / (MII_SPEED * 2)
> =

> on the older i.MX SoCs. Fix the calculation accordingly.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> --
> But note that this doesn't fix accessing the phy on my machine. The
> calculated value is 9 (with and without this patch btw) but accessing
> the phy only gets reliable with a value of >=3D20 or alternatively don't
> set the SPEED value before reading and writing a mii register but only
> on probe.
> =

> The Freescale kernel 2.6.35_10.12.01 does the following instead (in
> fec_switch.c):
> =

> 	fep->phy_speed =3D DIV_ROUND_UP(clk_get_rate(fep->clk), 5000000) << 1;
> #ifdef CONFIG_ARCH_MXS
> 	/* Can't get phy(8720) ID when set to 2.5M on MX28, lower it */
> 	fep->phy_speed <<=3D 2;
> #endif
> =

> which would result in 40 (and is unaware of the changed formula).
> =

> I didn't have an opportunity to check the signals with an oszilloscope, b=
ut
> intend to fetch that later.
> ---
>  drivers/net/fec_imx.c |   48 ++++++++++++++++++++++++++++++++++++++-----=
-----
>  1 file changed, 38 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 599a9b4..969c903 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -47,6 +47,41 @@ struct fec_frame {
>  	uint8_t head[16];	/* MAC header(6 + 6 + 2) + 2(aligned) */
>  };
>  =

> +static void fec_miidev_setspeed(struct fec_priv *fec)
> +{
> +	u32 mii_speed;
> +
> +	mii_speed =3D DIV_ROUND_UP(imx_get_fecclk(), 5000000);
> +
> +#ifdef CONFIG_ARCH_MXS
> +	/*
> +	 * Compared to the other imx socs imx28 and imx6 have an additional "+1"
> +	 * in the formula for MII_SPEED. In MCIMX28RM Rev.1, 2010 this is not
> +	 * documented though.
> +	 */
> +	mii_speed -=3D 1;
> +#endif

Please use a if (cpu_is_mx28()) instead. While we are at it we should
also do this for i.MX6 and add a cpu_is_mx6() aswell.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
