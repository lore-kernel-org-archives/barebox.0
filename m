Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1apre8-0005XW-JO
 for barebox@lists.infradead.org; Tue, 12 Apr 2016 06:17:57 +0000
Date: Tue, 12 Apr 2016 08:17:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160412061734.GR9102@pengutronix.de>
References: <1460377586-27099-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1460377586-27099-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] mci: mxs: add support for dt aliases to name devices
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 11, 2016 at 02:26:26PM +0200, Uwe Kleine-K=F6nig wrote:
> While changing there, reformat the comment and use ; instead of , after
> the previous call.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/mci/mxs.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
> index b36fb13254df..a76435e5baa5 100644
> --- a/drivers/mci/mxs.c
> +++ b/drivers/mci/mxs.c
> @@ -569,7 +569,15 @@ static int mxs_mci_probe(struct device_d *hw_dev)
>  		host->f_min =3D pd->f_min;
>  		host->f_max =3D  pd->f_max;
>  	} else {
> -		host->voltages =3D MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
> +		/* fixed to 3.3 V */
> +		host->voltages =3D MMC_VDD_32_33 | MMC_VDD_33_34;
> +
> +		if (hw_dev->device_node) {
> +			const char *alias =3D of_alias_get(hw_dev->device_node);
> +			if (alias)
> +				host->devname =3D xstrdup(alias);
> +		}
> +
>  		mci_of_parse(host);
>  	}
>  =

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
