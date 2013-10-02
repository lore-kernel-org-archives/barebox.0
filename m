Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRHmB-0000Px-PZ
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 08:27:20 +0000
Date: Wed, 2 Oct 2013 10:26:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131002082657.GG30088@pengutronix.de>
References: <1380694950-20022-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380694950-20022-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCHv2] mci: omap: Fix default value of mci.f_max
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 02, 2013 at 08:22:30AM +0200, Teresa G=E1mez wrote:
> With commit c2ef47887 mci.f_max default value is
> only set when pdata is available.
> =

> Fix this with always setting the mci.f_max default
> value and overrite it when pdata available.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied, thanks

Sascha

> ---
> changes in v2:
> - set default value always and overwrite it when pdata available =

> - updated commit message
> =

>  drivers/mci/omap_hsmmc.c |    4 +---
>  1 files changed, 1 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
> index a2cd3fe..19db461 100644
> --- a/drivers/mci/omap_hsmmc.c
> +++ b/drivers/mci/omap_hsmmc.c
> @@ -609,19 +609,17 @@ static int omap_mmc_probe(struct device_d *dev)
>  	hsmmc->mci.voltages =3D MMC_VDD_32_33 | MMC_VDD_33_34;
>  =

>  	hsmmc->mci.f_min =3D 400000;
> +	hsmmc->mci.f_max =3D 52000000;
>  =

>  	pdata =3D (struct omap_hsmmc_platform_data *)dev->platform_data;
>  	if (pdata) {
>  		if (pdata->f_max)
>  			hsmmc->mci.f_max =3D pdata->f_max;
> -		else
> -			hsmmc->mci.f_max =3D 52000000;
>  =

>  		if (pdata->devname)
>  			hsmmc->mci.devname =3D pdata->devname;
>  	}
>  =

> -
>  	dev->priv =3D hsmmc;
>  	dev->detect =3D omap_mmc_detect,
>  =

> -- =

> 1.7.0.4
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
