Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNq2P-00071g-3z
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 19:09:17 +0000
Date: Mon, 15 Oct 2012 21:09:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121015190915.GQ27665@pengutronix.de>
References: <20121014205929.GU13639@game.jcrosoft.org>
 <20121015071010.GI27665@pengutronix.de>
 <20121015102307.GV13639@game.jcrosoft.org>
 <20121015132125.GM27665@pengutronix.de>
 <20121015144935.GA5803@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121015144935.GA5803@game.jcrosoft.org>
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
Subject: Re: [PATCH 00/12] add bus device
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 15, 2012 at 04:49:35PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:21 Mon 15 Oct     , Sascha Hauer wrote:
> > > > --- a/drivers/base/driver.c
> > > > +++ b/drivers/base/driver.c
> > > > @@ -127,6 +127,11 @@ int register_device(struct device_d *new_device)
> > > >  
> > > >  	list_add_tail(&new_device->bus_list, &new_device->bus->device_list);
> > > >  
> > > > +	if (!new_device->parent) {
> > > > +		new_device->parent = &new_device->bus->dev;
> > > > +		dev_add_child(new_device->parent, new_device);
> > > and I was wanting to add global name "barebox" and add everyone under to it
> > > 
> > > I choose to do let the bus manage the child
> > > and to create a device or not
> > 
> > Any idea why we would need this?
> mdio bus as example I was thinking to drop the device as they are always
> attached to a ethernet device
> 
> input bus too
> 
> as example some bus as device specific so no need to add device as the device
> is already here
> 
> I already implement this on arm and so it in the kernel arm too

The patch only makes the new device a child of the bus device when no
parent is set, so it would still be possible to make the phy a child
of the ethernet device.

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
