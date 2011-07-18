Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QihHL-0002Ck-BY
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 06:26:10 +0000
Date: Mon, 18 Jul 2011 08:26:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110718062601.GA20587@pengutronix.de>
References: <1310813132-4151-1-git-send-email-plagnioj@jcrosoft.com>
	<20110717153745.GQ6069@pengutronix.de>
	<20110718044347.GI20678@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110718044347.GI20678@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/7] device: introduce resource structure to simplify
	resource declaration
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

On Mon, Jul 18, 2011 at 06:43:47AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > +#endif /* __ASSEMBLY__ */
> > > +#endif	/* _LINUX_IOPORT_H */
> > > diff --git a/lib/driver.c b/lib/driver.c
> > > index 4c10a49..ee5e850 100644
> > > --- a/lib/driver.c
> > > +++ b/lib/driver.c
> > > @@ -103,6 +103,15 @@ int register_device(struct device_d *new_device)
> > >  {
> > >  	struct driver_d *drv;
> > >  
> > > +	/* if no map_base available use the first resource if available
> > > +	 * so we do not need to duplicate it
> > > +	 * Temporary fixup until we get rid of map_base and size
> > > +	 */
> > > +	if (new_device->map_base == 0 && new_device->resource) {
> > > +		new_device->map_base = new_device->resource[0].start;
> > > +		new_device->size = new_device->resource[0].size;
> > > +	}
> > 
> > I think we don't need this. What we need though is the other way round:
> > 
> > 	if (new_device->map_base) {
> > 		dev_warn(new_device, "uses map_base. Please convert to use resources\n")
> > 		new_device->resource = xzalloc(sizeof(struct resource));
> > 		new_device->resource[0].start = new_device->map_base;
> > 		new_device->resource[0].size = new_device->size;
> > 	}
> > 
> > This way all devices have resources, we can convert the drivers and
> > devices to use resources one by one.
> ok for the warning
> 
> but if we do not keep the map_base uptodate the core device drivers will be
> broken so if no map_base is specified we must update it with the first
> resource

You're right.

> 
> how about this
> 
> 	if (new_device->map_base) {
> 		if (new_device->resource) {
> 			dev_err(new_device, "map_base and resource specifed\n");
> 			return -EIO;
> 		}
> 		dev_warn(new_device, "uses map_base. Please convert to use resources\n")
> 		new_device->resource = xzalloc(sizeof(struct resource));
> 		new_device->resource[0].start = new_device->map_base;
> 		new_device->resource[0].size = new_device->size;
> 		new_device->numresources = 1;
> 	} else if (new_device->resource) {
> 		new_device->map_base = new_device->resource[0].start;
> 		new_device->size = new_device->resource[0].size;
> 	}

Ok, this looks good.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
