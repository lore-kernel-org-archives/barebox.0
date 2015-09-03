Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXVK5-0005ax-Fr
 for barebox@lists.infradead.org; Thu, 03 Sep 2015 14:17:06 +0000
Received: by lagj9 with SMTP id j9so30010229lag.2
 for <barebox@lists.infradead.org>; Thu, 03 Sep 2015 07:16:43 -0700 (PDT)
Date: Thu, 3 Sep 2015 17:24:55 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150903172455.586b781f0bab0f50bbe58585@gmail.com>
In-Reply-To: <1441287526-2077-1-git-send-email-pmamonov@gmail.com>
References: <1441287526-2077-1-git-send-email-pmamonov@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH] ata: intf_platform_ide: add OF bindings
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu,  3 Sep 2015 16:38:46 +0300
Peter Mamonov <pmamonov@gmail.com> wrote:

> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/ata/intf_platform_ide.c | 35 +++++++++++++++++++++++++++++++++--
>  1 file changed, 33 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_=
ide.c
> index 0d392d8..f20e0e0 100644
> --- a/drivers/ata/intf_platform_ide.c
> +++ b/drivers/ata/intf_platform_ide.c
> @@ -29,6 +29,7 @@
>  #include <ata_drive.h>
>  #include <platform_ide.h>
>  #include <linux/err.h>
> +#include <of.h>
>  =

>  /**
>   * Setup the register specific addresses for an ATA like divice
> @@ -85,10 +86,31 @@ static int platform_ide_probe(struct device_d *dev)
>  	void *reg_base, *alt_base =3D NULL;
>  	struct resource *reg, *alt;
>  	int mmio =3D 0;
> +	struct device_node *dn =3D dev->device_node;
> +	u32 tmp32;

Can we move dn and tmp32 declarations under 'if (pdata =3D=3D NULL) {' ?

>  =

>  	if (pdata =3D=3D NULL) {
> -		dev_err(dev, "No platform data. Cannot continue\n");
> -		return -EINVAL;
> +		/* try to get platform data from the device tree */
> +		if (dn =3D=3D NULL) {
> +			dev_err(dev, "No platform data. Cannot continue\n");
> +			return -EINVAL;
> +		}
> +
> +		pdata =3D xzalloc(sizeof(struct ide_port_info));
> +
> +		if (!pdata) {

xzalloc() can't return NULL.

Please drop this 'if' operator.

> +			dev_err(dev, "Platform data allocation failed\n");
> +			return -ENOMEM;
> +		}
> +		device_add_data(dev, pdata, sizeof(struct ide_port_info));
> +
> +		if (of_property_read_bool(dn, "dataif-be"))
> +			pdata->dataif_be =3D 1;
> +
> +		if (of_property_read_u32(dn, "reg-shift", &tmp32) =3D=3D 0)
> +			pdata->ioport_shift =3D (unsigned)tmp32;
> +
> +		dev->platform_data =3D pdata;
>  	}
>  =

>  	reg_base =3D dev_request_mem_region(dev, 0);
> @@ -136,9 +158,18 @@ static int platform_ide_probe(struct device_d *dev)
>  	return rc;
>  }
>  =

> +static __maybe_unused struct of_device_id platform_ide_dt_ids[] =3D {
> +	{
> +		.compatible =3D "ata-generic",
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
>  static struct driver_d platform_ide_driver =3D {
>  	.name   =3D "ide_intf",
>  	.probe  =3D platform_ide_probe,
> +	.of_compatible =3D DRV_OF_COMPAT(platform_ide_dt_ids),
>  };
>  device_platform_driver(platform_ide_driver);
>  =

> -- =

> 2.1.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
