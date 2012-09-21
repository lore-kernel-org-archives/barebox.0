Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TEyIm-0002Yn-Al
 for barebox@lists.infradead.org; Fri, 21 Sep 2012 08:09:34 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A142E1030159
 for <barebox@lists.infradead.org>; Fri, 21 Sep 2012 10:15:22 +0200 (CEST)
Date: Fri, 21 Sep 2012 10:06:58 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120921080658.GL26553@game.jcrosoft.org>
References: <1348158669-14034-1-git-send-email-renaud.barbier@ge.com>
 <1348158669-14034-2-git-send-email-renaud.barbier@ge.com>
 <20120920182332.GD26553@game.jcrosoft.org>
 <20120921063408.GC1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120921063408.GC1322@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:34 Fri 21 Sep     , Sascha Hauer wrote:
> On Thu, Sep 20, 2012 at 08:23:32PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 17:31 Thu 20 Sep     , Renaud Barbier wrote:
> > > Added an entry point for a bus reset function.
> > > 
> > > Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> > > ---
> > >  drivers/net/phy/phy.c |    3 +++
> > >  include/miidev.h      |    1 +
> > >  2 files changed, 4 insertions(+), 0 deletions(-)
> > > 
> > > diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> > > index 5406ea3..d9f5409 100644
> > > --- a/drivers/net/phy/phy.c
> > > +++ b/drivers/net/phy/phy.c
> > > @@ -129,6 +129,9 @@ int phy_device_connect(struct eth_device *edev, struct mii_device *bus, int addr
> > >  	unsigned int i;
> > >  	int ret = -EINVAL;
> > >  
> > > +	if (bus->reset)
> > > +		bus->reset(bus);
> > > +
> > I do not like this we should not touch the bus at phy connect
> 
> Then please make a suggestion where it should be then. I also have some
> drivers where this function could be used.
I have too the need of a reset

I get a big issue on reset the mii bus at eth open

my only idea was to move the phy detect awqy from the eth_open to the mii bus
probe

but this will increase the boot time as we do not need to probe the phy if we
do not use the network

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
