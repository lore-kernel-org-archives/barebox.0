Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3QTG-0008S6-JP
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 12:20:55 +0000
Date: Thu, 7 Feb 2013 13:20:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130207122051.GV1906@pengutronix.de>
References: <1360235367-30530-1-git-send-email-s.hauer@pengutronix.de>
 <20130207120206.GJ19322@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130207120206.GJ19322@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 07, 2013 at 01:02:06PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 12:09 Thu 07 Feb     , Sascha Hauer wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/net/phy/mdio_bus.c |   19 +++++++++++++++++++
> >  include/linux/phy.h        |    3 +++
> >  2 files changed, 22 insertions(+)
> > 
> > diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
> > index d1d802b..3c4be1c 100644
> > --- a/drivers/net/phy/mdio_bus.c
> > +++ b/drivers/net/phy/mdio_bus.c
> > @@ -25,6 +25,8 @@
> >  #include <linux/phy.h>
> >  #include <linux/err.h>
> >  
> > +static LIST_HEAD(mii_bus_list);
> > +
> >  /**
> >   * mdiobus_register - bring up all the PHYs on a given bus and attach them to bus
> >   * @bus: target mii_bus
> > @@ -57,6 +59,8 @@ int mdiobus_register(struct mii_bus *bus)
> >  	if (bus->reset)
> >  		bus->reset(bus);
> >  
> > +	list_add_tail(&bus->list, &mii_bus_list);
> > +
> >  	pr_info("%s: probed\n", dev_name(&bus->dev));
> >  	return 0;
> >  }
> > @@ -71,9 +75,24 @@ void mdiobus_unregister(struct mii_bus *bus)
> >  			unregister_device(&bus->phy_map[i]->dev);
> >  		bus->phy_map[i] = NULL;
> >  	}
> > +
> > +	list_del(&bus->list);
> >  }
> >  EXPORT_SYMBOL(mdiobus_unregister);
> >  
> > +struct mii_bus *mdiobus_find(const char *name)
> > +{
> > +	struct mii_bus *bus;
> > +
> > +	list_for_each_entry(bus, &mii_bus_list, list) {
> 	no use bus_for_each

That was my first try until I realized that not the mdio buses are
registered on the mdio_bus_type, but instead the phy devices.

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
