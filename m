Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXXJ1-0002hA-TO
 for barebox@lists.infradead.org; Thu, 03 Sep 2015 16:24:08 +0000
Received: by lanb10 with SMTP id b10so31986768lan.3
 for <barebox@lists.infradead.org>; Thu, 03 Sep 2015 09:23:45 -0700 (PDT)
Date: Thu, 3 Sep 2015 19:31:55 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150903193155.1127b6d5fa5948cc70ec4a16@gmail.com>
In-Reply-To: <1441295192.3102.9.camel@pengutronix.de>
References: <1441287526-2077-1-git-send-email-pmamonov@gmail.com>
 <1441295192.3102.9.camel@pengutronix.de>
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
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Thu, 03 Sep 2015 17:46:32 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> Hi Peter.
> =

> Sorry, but this patch is wrong. You can't just make up completely ad-hoc
> DT bindings. You are pushing platformdata 1:1 into the DT, which is not
> how the conversion to DT should be done.
> =

> There is also no pre-existing binding for "ata-generic" in the Linux
> kernel which would define any of those properties.

Hmmm. in linux-4.2/drivers/ata/pata_of_platform.c I see "ata-generic"
with "reg-shift" and "pio-mode" properties.

> Most likely your IDE controller is inside some SoC specific block, with
> a specific compatible, which may also handle clocks and other required
> stuff and that one should instantiate the IDE driver if needed.
> =

> Regards,
> Lucas
> =

> Am Donnerstag, den 03.09.2015, 16:38 +0300 schrieb Peter Mamonov:
> > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > ---
> >  drivers/ata/intf_platform_ide.c | 35 +++++++++++++++++++++++++++++++++=
--
> >  1 file changed, 33 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platfor=
m_ide.c
> > index 0d392d8..f20e0e0 100644
> > --- a/drivers/ata/intf_platform_ide.c
> > +++ b/drivers/ata/intf_platform_ide.c
> > @@ -29,6 +29,7 @@
> >  #include <ata_drive.h>
> >  #include <platform_ide.h>
> >  #include <linux/err.h>
> > +#include <of.h>
> >  =

> >  /**
> >   * Setup the register specific addresses for an ATA like divice
> > @@ -85,10 +86,31 @@ static int platform_ide_probe(struct device_d *dev)
> >  	void *reg_base, *alt_base =3D NULL;
> >  	struct resource *reg, *alt;
> >  	int mmio =3D 0;
> > +	struct device_node *dn =3D dev->device_node;
> > +	u32 tmp32;
> >  =

> >  	if (pdata =3D=3D NULL) {
> > -		dev_err(dev, "No platform data. Cannot continue\n");
> > -		return -EINVAL;
> > +		/* try to get platform data from the device tree */
> > +		if (dn =3D=3D NULL) {
> > +			dev_err(dev, "No platform data. Cannot continue\n");
> > +			return -EINVAL;
> > +		}
> > +
> > +		pdata =3D xzalloc(sizeof(struct ide_port_info));
> > +
> > +		if (!pdata) {
> > +			dev_err(dev, "Platform data allocation failed\n");
> > +			return -ENOMEM;
> > +		}
> > +		device_add_data(dev, pdata, sizeof(struct ide_port_info));
> > +
> > +		if (of_property_read_bool(dn, "dataif-be"))
> > +			pdata->dataif_be =3D 1;
> > +
> > +		if (of_property_read_u32(dn, "reg-shift", &tmp32) =3D=3D 0)
> > +			pdata->ioport_shift =3D (unsigned)tmp32;
> > +
> > +		dev->platform_data =3D pdata;
> >  	}
> >  =

> >  	reg_base =3D dev_request_mem_region(dev, 0);
> > @@ -136,9 +158,18 @@ static int platform_ide_probe(struct device_d *dev)
> >  	return rc;
> >  }
> >  =

> > +static __maybe_unused struct of_device_id platform_ide_dt_ids[] =3D {
> > +	{
> > +		.compatible =3D "ata-generic",
> > +	}, {
> > +		/* sentinel */
> > +	}
> > +};
> > +
> >  static struct driver_d platform_ide_driver =3D {
> >  	.name   =3D "ide_intf",
> >  	.probe  =3D platform_ide_probe,
> > +	.of_compatible =3D DRV_OF_COMPAT(platform_ide_dt_ids),
> >  };
> >  device_platform_driver(platform_ide_driver);
> >  =

> =

> -- =

> Pengutronix e.K.             | Lucas Stach                 |
> Industrial Linux Solutions   | http://www.pengutronix.de/  |
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
