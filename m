Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a7IGi-0006Aq-37
 for barebox@lists.infradead.org; Fri, 11 Dec 2015 07:37:32 +0000
Date: Fri, 11 Dec 2015 08:37:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151211073709.GU11966@pengutronix.de>
References: <1449565539-29374-1-git-send-email-s.hauer@pengutronix.de>
 <1449565539-29374-2-git-send-email-s.hauer@pengutronix.de>
 <1449780168.26955.81.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449780168.26955.81.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 1/4] misc: Add iodevice support
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Dec 10, 2015 at 08:42:42PM +0000, Trent Piepho wrote:
> On Tue, 2015-12-08 at 10:05 +0100, Sascha Hauer wrote:
> > +int iodevice_register(struct iodevice *iodev)
> > +{
> > +	const char *devname = NULL;
> > +	int i, ret;
> > +
> > +	if (iodev->hwdev->device_node) {
> > +		devname = of_alias_get(iodev->hwdev->device_node);
> > +		iodev->dev.id = DEVICE_ID_SINGLE;
> > +	}
> > +
> > +	if (!devname) {
> > +		devname = "io";
> > +		iodev->dev.id = DEVICE_ID_DYNAMIC;
> > +	}
> > +
> > +	strcpy(iodev->dev.name, devname);
> > +
> > +	iodev->dev.parent = iodev->hwdev;
> > +
> > +	ret = register_device(&iodev->dev);
> 
> Why does every driver/subsystem need to implement its own alias
> support?

I think that has historic reasons. When beginning with device tree we
didn't want to change the behaviours of all unrelated drivers. Now that
we are more familiar with device tree and adopt the aliases approach to
more and more drivers you are right: We can push the alias resolving
out of the drivers and more to the framework level.

> 
> Since register_device() has access to
> (&iodev->dev)->parent->device_node, couldn't it do the alias lookup
> instead, so that each driver doesn't need to?
> 
> Then one could write:
> 
> iodev->dev.parent = iodev->hwdev;
> strcpy(iodev->dev.name, "io");
> iodev->dev.id = DEVICE_ID_DYNAMIC;
> ret = register_device(&iodev->dev);
> 
> I guess this doesn't work exactly for net drivers, since they want to do
> s/ethernet(\d+)/eth\1/ on the alias name.

The network drivers already do something similar. They pick only the
number from the "ethernetx" alias, see net/eth.c:

	edev->dev.id = of_alias_get_id(edev->dev.parent->device_node, "ethernet");

> 
> And some drivers create a cdev the alias should be applied to instead of
> a dev.  Though I supposed devfs_create() could do the same thing.

I'm not sure if we should handle aliases in devfs_create(), but at least
we should handle it in the subsystem so that the individual drivers no
longer have to care about it.

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
