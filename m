Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QnoG3-0000BE-GP
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 08:53:56 +0000
Date: Mon, 1 Aug 2011 10:53:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110801085351.GF31404@pengutronix.de>
References: <20110729155356.GF25658@game.jcrosoft.org>
	<1311995831-25350-8-git-send-email-plagnioj@jcrosoft.com>
	<20110801073240.GE20587@pengutronix.de>
	<20110801074721.GB6255@game.jcrosoft.org>
	<20110801080902.GB31404@pengutronix.de>
	<20110801080301.GC6255@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110801080301.GC6255@game.jcrosoft.org>
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
Subject: Re: [PATCH 21/23] mci-core: switch to resource
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 01, 2011 at 10:03:01AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:09 Mon 01 Aug     , Sascha Hauer wrote:
> > On Mon, Aug 01, 2011 at 09:47:21AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 09:32 Mon 01 Aug     , Sascha Hauer wrote:
> > > > On Sat, Jul 30, 2011 at 05:17:09AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > > ---
> > > > >  drivers/mci/mci-core.c |    2 +-
> > > > >  1 files changed, 1 insertions(+), 1 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> > > > > index 3cf364c..c03885b 100644
> > > > > --- a/drivers/mci/mci-core.c
> > > > > +++ b/drivers/mci/mci-core.c
> > > > > @@ -1231,7 +1231,7 @@ static int mci_card_probe(struct device_d *mci_dev)
> > > > >  	p->priv = mci_dev;
> > > > >  
> > > > >  	strcpy(disk_dev->name, "disk");
> > > > > -	disk_dev->size = mci->capacity;
> > > > > +	disk_dev->resource[0].size = mci->capacity;
> > > > >  	disk_dev->platform_data = p;
> > > > 
> > > > Resources for a device must be allocated. I already fixed this once with
> > > > the following. Please do not reintroduce this bug again.
> > > > 
> > > > (and honestly, this registering of the "disk" device is just a crude way
> > > > of passing around data in a void pointer. The real solution for this is
> > > > to just add a register_ata_interface() function instead of registering a
> > > > device.)
> > > agreed I plan to get rid of this but first need to fininsh the map_base frop
> > > 
> > > but as we drop map_base and size so we need to do like this
> > 
> > Ok, but please allocate the space for the resource then.
> > 
> > I thought about using mapping the vector page to the top of the memory
> > space. Then we could get proper NULL pointer deref aborts to catch
> > things like this.
> can we can we do it in a second patch?

This was just an idea not a call for action :)

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
