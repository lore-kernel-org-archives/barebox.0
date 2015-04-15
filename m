Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YiHSF-0000N8-NZ
 for barebox@lists.infradead.org; Wed, 15 Apr 2015 07:09:48 +0000
Date: Wed, 15 Apr 2015 09:09:24 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150415070924.GU9188@pengutronix.de>
References: <1429041383-18927-1-git-send-email-uwe@kleine-koenig.org>
 <20150415052746.GJ9742@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150415052746.GJ9742@pengutronix.de>
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
Subject: Re: [RFC PATCH] pci: Improve handling of constant id_table pointer
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>

On Wed, Apr 15, 2015 at 07:27:46AM +0200, Sascha Hauer wrote:
> diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
> index d6c5496..9fec4d7 100644
> --- a/drivers/pci/bus.c
> +++ b/drivers/pci/bus.c
> @@ -27,11 +27,11 @@ static int pci_match(struct device_d *dev, struct dri=
ver_d *drv)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(dev);
>  	struct pci_driver *pdrv =3D to_pci_driver(drv);
> -	struct pci_device_id *id;
> +	const struct pci_device_id *id;
>  =

>  	for (id =3D (struct pci_device_id *)pdrv->id_table; id->vendor; id++)
This cast can then be dropped, too.

Otherwise,
Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks
Uwe


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
