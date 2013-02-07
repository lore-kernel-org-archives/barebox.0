Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3W9e-0005ex-GD
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 18:25:03 +0000
Received: from mail182.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 50CD0104FD51
 for <barebox@lists.infradead.org>; Thu,  7 Feb 2013 19:35:13 +0100 (CET)
Date: Thu, 7 Feb 2013 19:23:47 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130207182347.GO19322@game.jcrosoft.org>
References: <1360235367-30530-1-git-send-email-s.hauer@pengutronix.de>
 <20130207120206.GJ19322@game.jcrosoft.org>
 <20130207122051.GV1906@pengutronix.de>
 <20130207122613.GL19322@game.jcrosoft.org>
 <20130207124646.GW1906@pengutronix.de>
 <20130207160535.GN19322@game.jcrosoft.org>
 <20130207174348.GY1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130207174348.GY1906@pengutronix.de>
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
Subject: Re: [PATCH 1/2] net phy: Add support for finding a mdio bus by its
 name
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 18:43 Thu 07 Feb     , Sascha Hauer wrote:
> On Thu, Feb 07, 2013 at 05:05:35PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 13:46 Thu 07 Feb     , Sascha Hauer wrote:
> > > On Thu, Feb 07, 2013 at 01:26:13PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > On 13:20 Thu 07 Feb     , Sascha Hauer wrote:
> > > > > On Thu, Feb 07, 2013 at 01:02:06PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > > On 12:09 Thu 07 Feb     , Sascha Hauer wrote:
> > > > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > > > ---
> > > > > > >  drivers/net/phy/mdio_bus.c |   19 +++++++++++++++++++
> > > > > > >  include/linux/phy.h        |    3 +++
> > > > > > >  2 files changed, 22 insertions(+)
> > > > > > > 
> > > > > > > diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
> > > > > > > index d1d802b..3c4be1c 100644
> > > > > > > --- a/drivers/net/phy/mdio_bus.c
> > > > > > > +++ b/drivers/net/phy/mdio_bus.c
> > > > > > > @@ -25,6 +25,8 @@
> > > > > > >  #include <linux/phy.h>
> > > > > > >  #include <linux/err.h>
> > > > > > >  
> > > > > > > +static LIST_HEAD(mii_bus_list);
> > > > > > > +
> > > > > > >  /**
> > > > > > >   * mdiobus_register - bring up all the PHYs on a given bus and attach them to bus
> > > > > > >   * @bus: target mii_bus
> > > > > > > @@ -57,6 +59,8 @@ int mdiobus_register(struct mii_bus *bus)
> > > > > > >  	if (bus->reset)
> > > > > > >  		bus->reset(bus);
> > > > > > >  
> > > > > > > +	list_add_tail(&bus->list, &mii_bus_list);
> > > > > > > +
> > > > > > >  	pr_info("%s: probed\n", dev_name(&bus->dev));
> > > > > > >  	return 0;
> > > > > > >  }
> > > > > > > @@ -71,9 +75,24 @@ void mdiobus_unregister(struct mii_bus *bus)
> > > > > > >  			unregister_device(&bus->phy_map[i]->dev);
> > > > > > >  		bus->phy_map[i] = NULL;
> > > > > > >  	}
> > > > > > > +
> > > > > > > +	list_del(&bus->list);
> > > > > > >  }
> > > > > > >  EXPORT_SYMBOL(mdiobus_unregister);
> > > > > > >  
> > > > > > > +struct mii_bus *mdiobus_find(const char *name)
> > > > > > > +{
> > > > > > > +	struct mii_bus *bus;
> > > > > > > +
> > > > > > > +	list_for_each_entry(bus, &mii_bus_list, list) {
> > > > > > 	no use bus_for_each
> > > > > 
> > > > > That was my first try until I realized that not the mdio buses are
> > > > > registered on the mdio_bus_type, but instead the phy devices.
> > > > so add bus_type the list is already in the device_d so we jsut hav to populate
> > > > it
> > > 
> > > You want to put both the phys and the buses on mdio_bus_type? Or you
> > > want to introduce a mdio_bus_bus_type?
> > different
> 
> different what?
> 
> > 
> > I want to be able to use bus_for_each on each of them seperatly
> 
> I have no idea what you are talking about.

create a new bus_type for mdio

so you can use bus_for_each

Best Regards,
J.
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
