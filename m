Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEydB-0008Em-IX
 for barebox@lists.infradead.org; Fri, 21 Sep 2012 08:30:38 +0000
Date: Fri, 21 Sep 2012 10:30:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120921083034.GE1322@pengutronix.de>
References: <1348158669-14034-1-git-send-email-renaud.barbier@ge.com>
 <1348158669-14034-2-git-send-email-renaud.barbier@ge.com>
 <20120920182332.GD26553@game.jcrosoft.org>
 <20120921063408.GC1322@pengutronix.de>
 <20120921080658.GL26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120921080658.GL26553@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/5] phylib: bus reset function
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 21, 2012 at 10:06:58AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:34 Fri 21 Sep     , Sascha Hauer wrote:
> > On Thu, Sep 20, 2012 at 08:23:32PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 17:31 Thu 20 Sep     , Renaud Barbier wrote:
> > > > Added an entry point for a bus reset function.
> > > > 
> > > > Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> > > > ---
> > > >  drivers/net/phy/phy.c |    3 +++
> > > >  include/miidev.h      |    1 +
> > > >  2 files changed, 4 insertions(+), 0 deletions(-)
> > > > 
> > > > diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> > > > index 5406ea3..d9f5409 100644
> > > > --- a/drivers/net/phy/phy.c
> > > > +++ b/drivers/net/phy/phy.c
> > > > @@ -129,6 +129,9 @@ int phy_device_connect(struct eth_device *edev, struct mii_device *bus, int addr
> > > >  	unsigned int i;
> > > >  	int ret = -EINVAL;
> > > >  
> > > > +	if (bus->reset)
> > > > +		bus->reset(bus);
> > > > +
> > > I do not like this we should not touch the bus at phy connect
> > 
> > Then please make a suggestion where it should be then. I also have some
> > drivers where this function could be used.
> I have too the need of a reset
> 
> I get a big issue on reset the mii bus at eth open
> 
> my only idea was to move the phy detect awqy from the eth_open to the mii bus
> probe
> 
> but this will increase the boot time as we do not need to probe the phy if we
> do not use the network

Before we start adding quirks for do-the-reset-only-when necessary,
access-the-phy-pnly-when necessary can we have a statement on which
timescales we talk about here? A quick test on a i.MX board shows that
detecting the phy takes 186us when its address is specified and 1.7ms
when the whole bus is scanned for phys. This is really not worth adding
quirks for.

BTW the reset function for the mii *bus* really should be done when the
bus is registered. Doing it when a new phy is registered will break phys
already present.

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
