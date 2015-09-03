Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXWU5-00041R-Jh
 for barebox@lists.infradead.org; Thu, 03 Sep 2015 15:31:30 +0000
Received: by lamp12 with SMTP id p12so29484425lam.0
 for <barebox@lists.infradead.org>; Thu, 03 Sep 2015 08:31:07 -0700 (PDT)
Date: Thu, 3 Sep 2015 18:33:25 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20150903183325.71ea42ec@berta>
In-Reply-To: <20150903172455.586b781f0bab0f50bbe58585@gmail.com>
References: <1441287526-2077-1-git-send-email-pmamonov@gmail.com>
 <20150903172455.586b781f0bab0f50bbe58585@gmail.com>
MIME-Version: 1.0
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
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, 3 Sep 2015 17:24:55 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

> On Thu,  3 Sep 2015 16:38:46 +0300
> Peter Mamonov <pmamonov@gmail.com> wrote:
> 
> > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > ---
> >  drivers/ata/intf_platform_ide.c | 35
> > +++++++++++++++++++++++++++++++++-- 1 file changed, 33
> > insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/ata/intf_platform_ide.c
> > b/drivers/ata/intf_platform_ide.c index 0d392d8..f20e0e0 100644
> > --- a/drivers/ata/intf_platform_ide.c
> > +++ b/drivers/ata/intf_platform_ide.c
> > @@ -29,6 +29,7 @@
> >  #include <ata_drive.h>
> >  #include <platform_ide.h>
> >  #include <linux/err.h>
> > +#include <of.h>
> >  
> >  /**
> >   * Setup the register specific addresses for an ATA like divice
> > @@ -85,10 +86,31 @@ static int platform_ide_probe(struct device_d
> > *dev) void *reg_base, *alt_base = NULL;
> >  	struct resource *reg, *alt;
> >  	int mmio = 0;
> > +	struct device_node *dn = dev->device_node;
> > +	u32 tmp32;
> 
> Can we move dn and tmp32 declarations under 'if (pdata == NULL) {' ?
> 
> >  
> >  	if (pdata == NULL) {
> > -		dev_err(dev, "No platform data. Cannot
> > continue\n");
> > -		return -EINVAL;
> > +		/* try to get platform data from the device tree */
> > +		if (dn == NULL) {
> > +			dev_err(dev, "No platform data. Cannot
> > continue\n");
> > +			return -EINVAL;
> > +		}
> > +
> > +		pdata = xzalloc(sizeof(struct ide_port_info));
> > +
> > +		if (!pdata) {
> 
> xzalloc() can't return NULL.
> 
> Please drop this 'if' operator.
> 
> > +			dev_err(dev, "Platform data allocation
> > failed\n");
> > +			return -ENOMEM;
> > +		}
> > +		device_add_data(dev, pdata, sizeof(struct
> > ide_port_info)); +
> > +		if (of_property_read_bool(dn, "dataif-be"))
> > +			pdata->dataif_be = 1;
> > +
> > +		if (of_property_read_u32(dn, "reg-shift", &tmp32)
> > == 0)
> > +			pdata->ioport_shift = (unsigned)tmp32;
> > +
> > +		dev->platform_data = pdata;

This line is also excessive. device_add_data() have already done the
job.

> >  	}
> >  
> >  	reg_base = dev_request_mem_region(dev, 0);
> > @@ -136,9 +158,18 @@ static int platform_ide_probe(struct device_d
> > *dev) return rc;
> >  }
> >  
> > +static __maybe_unused struct of_device_id platform_ide_dt_ids[] = {
> > +	{
> > +		.compatible = "ata-generic",
> > +	}, {
> > +		/* sentinel */
> > +	}
> > +};
> > +
> >  static struct driver_d platform_ide_driver = {
> >  	.name   = "ide_intf",
> >  	.probe  = platform_ide_probe,
> > +	.of_compatible = DRV_OF_COMPAT(platform_ide_dt_ids),
> >  };
> >  device_platform_driver(platform_ide_driver);
> >  
> > -- 
> > 2.1.4
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> 
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
