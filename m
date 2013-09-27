Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPYEH-0004Zb-50
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 13:37:09 +0000
Received: from mail190.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id DB717DC1E61
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 15:36:47 +0200 (CEST)
Date: Fri, 27 Sep 2013 15:38:07 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130927133807.GI32444@ns203013.ovh.net>
References: <1380283980-5759-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380283980-5759-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH] mci: omap: Fix default value of mci.f_max
To: Teresa G??mez <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On 14:13 Fri 27 Sep     , Teresa G??mez wrote:
> Set default value of mci.f_max even when no pdata
> is available.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  drivers/mci/omap_hsmmc.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
> index a2cd3fe..f63697f 100644
> --- a/drivers/mci/omap_hsmmc.c
> +++ b/drivers/mci/omap_hsmmc.c
> @@ -614,11 +614,11 @@ static int omap_mmc_probe(struct device_d *dev)
>  	if (pdata) {
>  		if (pdata->f_max)
>  			hsmmc->mci.f_max =3D pdata->f_max;
> -		else
> -			hsmmc->mci.f_max =3D 52000000;
>  =

>  		if (pdata->devname)
>  			hsmmc->mci.devname =3D pdata->devname;
> +	} else {
> +		hsmmc->mci.f_max =3D 52000000;
>  	}

so do this

	if (!hsmmc->mci.f_maix)
		hsmmc->mci.f_max =3D 52000000;
>  =

>  =

> -- =

> 1.7.0.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
