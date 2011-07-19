Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj80I-0008Tn-8G
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 10:58:23 +0000
Date: Tue, 19 Jul 2011 12:58:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110719105814.GN20587@pengutronix.de>
References: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
	<1311064803-6305-3-git-send-email-s.hauer@pengutronix.de>
	<20110719101155.GD5727@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110719101155.GD5727@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 02/19] device: Add a dev_request_mem_region function
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 19, 2011 at 12:11:55PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:39 Tue 19 Jul     , Sascha Hauer wrote:
> > We might want to add real resource tracking later. Also
> > The first resource may not be a IORESOURCE_MEM at all.
> > For these reasons introduce a wrapper function for
> > driver so that they do not have to fiddle with resources
> > directly.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  include/driver.h |   14 ++++++++++++++
> >  lib/driver.c     |   16 ++++++++++++++++
> >  2 files changed, 30 insertions(+), 0 deletions(-)
> > 
> > diff --git a/include/driver.h b/include/driver.h
> > index ed3df16..0fc254d 100644
> > --- a/include/driver.h
> > +++ b/include/driver.h
> > @@ -188,6 +188,20 @@ static inline const char *dev_name(const struct device_d *dev)
> >  	return dev_id(dev);
> >  }
> >  
> > +/*
> > + * get register base 'num' for a device
> > + */
> > +void __iomem *dev_get_mem_region(struct device_d *dev, int num);
> > +
> > +/*
> > + * exlusively request register base 'num' for a device
> > + */
> > +static inline void __iomem *dev_request_mem_region(struct device_d *dev, int num)
> > +{
> > +	/* no resource tracking yet */
> > +	return dev_get_mem_region(dev, num);
> > +}
> > +
> >  /* linear list over all available devices
> >   */
> >  extern struct list_head device_list;
> > diff --git a/lib/driver.c b/lib/driver.c
> > index 95e42d5..50f065a 100644
> > --- a/lib/driver.c
> > +++ b/lib/driver.c
> > @@ -233,6 +233,22 @@ int register_driver(struct driver_d *drv)
> >  }
> >  EXPORT_SYMBOL(register_driver);
> >  
> > +void __iomem *dev_get_mem_region(struct device_d *dev, int num)
> > +{
> > +	int i, n = 0;
> > +
> can we check num < dev->num_resources to

This is done implicitly in the loop below.

> > +	for (i = 0; i < dev->num_resources; i++) {
> > +		struct resource *res = &dev->resource[i];
> > +		if ((res->flags & IORESOURCE_TYPE_BITS) == IORESOURCE_MEM) {
> resource_type here

ok

> > +			if (n == num)
> > +				return (void __force __iomem *)res->start;
> > +			n++;
> > +		}
> > +	}
> > +
> > +	return NULL;
> > +}
> EXPORT_SYMBOL too

ok

Sascha
> 
> Best Regards,
> J.
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
