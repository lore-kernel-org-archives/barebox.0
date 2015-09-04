Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXo9d-00007E-AJ
 for barebox@lists.infradead.org; Fri, 04 Sep 2015 10:23:34 +0000
Message-ID: <1441362189.7971.12.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 04 Sep 2015 12:23:09 +0200
In-Reply-To: <20150904124022.093ec9a7@berta>
References: <1441287526-2077-1-git-send-email-pmamonov@gmail.com>
 <1441295192.3102.9.camel@pengutronix.de> <20150904124022.093ec9a7@berta>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ata: intf_platform_ide: add OF bindings
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

Am Freitag, den 04.09.2015, 12:40 +0300 schrieb Peter Mamonov:
> Hi, Lucas!
> 
> On Thu, 03 Sep 2015 17:46:32 +0200
> Lucas Stach <l.stach@pengutronix.de> wrote:
> 
> > Hi Peter.
> > 
> > Sorry, but this patch is wrong. You can't just make up completely
> > ad-hoc DT bindings. You are pushing platformdata 1:1 into the DT,
> > which is not how the conversion to DT should be done.
> 
> Could you clarify your point? My current understanding is that drivers
> instantiation from a platform code and from a DT are equal approaches,
> which should mirror each other.
> 
No not at all. DT bindings are API between the DT and barebox/Linux, so
they can not in all cases mirror platformdata, which we are able to
change at will.

DT instantiation need a well thought through binding, which isn't some
ad-hoc mirroring of the current platformdata.

Normally the binding is established by writing it down in the Linux
kernel Documentation/devicetree/bindings folder (and obviously getting
it through the DT review process).

> > 
> > There is also no pre-existing binding for "ata-generic" in the Linux
> > kernel which would define any of those properties.
> > 
> > Most likely your IDE controller is inside some SoC specific block,
> > with a specific compatible, which may also handle clocks and other
> > required stuff and that one should instantiate the IDE driver if
> > needed.
> 
> I've got your point. However, drivers/ata/pata_of_platform.c from Linux
> also lacks any clock/stuff initialization.
> 
If there is already a Linux driver with this binding you can reuse that
one, as it's already established, even if there is no proper
documentation there. If the binding is enough for your use-case that's
okay.

You can however not make any ad-hoc additions to the established
bindings, so if it doesn't fit your needs you need to propose the
addition to the generic binding to DT reviewers, or think about a SoC
specific binding if you need clocks/regulators or other things that
don't belong in a generic binding.

Regards,
Lucas

> Regards,
> Peter
> 
> 
> > 
> > Regards,
> > Lucas
> > 
> > Am Donnerstag, den 03.09.2015, 16:38 +0300 schrieb Peter Mamonov:
> > > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > > ---
> > >  drivers/ata/intf_platform_ide.c | 35
> > > +++++++++++++++++++++++++++++++++-- 1 file changed, 33
> > > insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/ata/intf_platform_ide.c
> > > b/drivers/ata/intf_platform_ide.c index 0d392d8..f20e0e0 100644
> > > --- a/drivers/ata/intf_platform_ide.c
> > > +++ b/drivers/ata/intf_platform_ide.c
> > > @@ -29,6 +29,7 @@
> > >  #include <ata_drive.h>
> > >  #include <platform_ide.h>
> > >  #include <linux/err.h>
> > > +#include <of.h>
> > >  
> > >  /**
> > >   * Setup the register specific addresses for an ATA like divice
> > > @@ -85,10 +86,31 @@ static int platform_ide_probe(struct device_d
> > > *dev) void *reg_base, *alt_base = NULL;
> > >  	struct resource *reg, *alt;
> > >  	int mmio = 0;
> > > +	struct device_node *dn = dev->device_node;
> > > +	u32 tmp32;
> > >  
> > >  	if (pdata == NULL) {
> > > -		dev_err(dev, "No platform data. Cannot
> > > continue\n");
> > > -		return -EINVAL;
> > > +		/* try to get platform data from the device tree */
> > > +		if (dn == NULL) {
> > > +			dev_err(dev, "No platform data. Cannot
> > > continue\n");
> > > +			return -EINVAL;
> > > +		}
> > > +
> > > +		pdata = xzalloc(sizeof(struct ide_port_info));
> > > +
> > > +		if (!pdata) {
> > > +			dev_err(dev, "Platform data allocation
> > > failed\n");
> > > +			return -ENOMEM;
> > > +		}
> > > +		device_add_data(dev, pdata, sizeof(struct
> > > ide_port_info)); +
> > > +		if (of_property_read_bool(dn, "dataif-be"))
> > > +			pdata->dataif_be = 1;
> > > +
> > > +		if (of_property_read_u32(dn, "reg-shift", &tmp32)
> > > == 0)
> > > +			pdata->ioport_shift = (unsigned)tmp32;
> > > +
> > > +		dev->platform_data = pdata;
> > >  	}
> > >  
> > >  	reg_base = dev_request_mem_region(dev, 0);
> > > @@ -136,9 +158,18 @@ static int platform_ide_probe(struct device_d
> > > *dev) return rc;
> > >  }
> > >  
> > > +static __maybe_unused struct of_device_id platform_ide_dt_ids[] = {
> > > +	{
> > > +		.compatible = "ata-generic",
> > > +	}, {
> > > +		/* sentinel */
> > > +	}
> > > +};
> > > +
> > >  static struct driver_d platform_ide_driver = {
> > >  	.name   = "ide_intf",
> > >  	.probe  = platform_ide_probe,
> > > +	.of_compatible = DRV_OF_COMPAT(platform_ide_dt_ids),
> > >  };
> > >  device_platform_driver(platform_ide_driver);
> > >  
> > 
> 

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
