Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QifwR-0001Xh-HW
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 05:00:28 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id DE861FF9A55
	for <barebox@lists.infradead.org>;
	Mon, 18 Jul 2011 07:00:52 +0200 (CEST)
Date: Mon, 18 Jul 2011 06:43:47 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110718044347.GI20678@game.jcrosoft.org>
References: <1310813132-4151-1-git-send-email-plagnioj@jcrosoft.com>
	<20110717153745.GQ6069@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110717153745.GQ6069@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

> > +#endif /* __ASSEMBLY__ */
> > +#endif	/* _LINUX_IOPORT_H */
> > diff --git a/lib/driver.c b/lib/driver.c
> > index 4c10a49..ee5e850 100644
> > --- a/lib/driver.c
> > +++ b/lib/driver.c
> > @@ -103,6 +103,15 @@ int register_device(struct device_d *new_device)
> >  {
> >  	struct driver_d *drv;
> >  
> > +	/* if no map_base available use the first resource if available
> > +	 * so we do not need to duplicate it
> > +	 * Temporary fixup until we get rid of map_base and size
> > +	 */
> > +	if (new_device->map_base == 0 && new_device->resource) {
> > +		new_device->map_base = new_device->resource[0].start;
> > +		new_device->size = new_device->resource[0].size;
> > +	}
> 
> I think we don't need this. What we need though is the other way round:
> 
> 	if (new_device->map_base) {
> 		dev_warn(new_device, "uses map_base. Please convert to use resources\n")
> 		new_device->resource = xzalloc(sizeof(struct resource));
> 		new_device->resource[0].start = new_device->map_base;
> 		new_device->resource[0].size = new_device->size;
> 	}
> 
> This way all devices have resources, we can convert the drivers and
> devices to use resources one by one.
ok for the warning

but if we do not keep the map_base uptodate the core device drivers will be
broken so if no map_base is specified we must update it with the first
resource

how about this

	if (new_device->map_base) {
		if (new_device->resource) {
			dev_err(new_device, "map_base and resource specifed\n");
			return -EIO;
		}
		dev_warn(new_device, "uses map_base. Please convert to use resources\n")
		new_device->resource = xzalloc(sizeof(struct resource));
		new_device->resource[0].start = new_device->map_base;
		new_device->resource[0].size = new_device->size;
		new_device->numresources = 1;
	} else if (new_device->resource) {
		new_device->map_base = new_device->resource[0].start;
		new_device->size = new_device->resource[0].size;
	}

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
