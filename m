Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfRTM-00068U-TJ
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 08:33:53 +0000
Date: Mon, 3 Dec 2012 09:33:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121203083349.GB10369@pengutronix.de>
References: <1354215748-25394-1-git-send-email-s.hauer@pengutronix.de>
 <1354215748-25394-3-git-send-email-s.hauer@pengutronix.de>
 <20121130045732.GA8327@game.jcrosoft.org>
 <20121130080646.GU10369@pengutronix.de>
 <20121130101030.GB8327@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121130101030.GB8327@game.jcrosoft.org>
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
Subject: Re: [PATCH 3/5] mci: Allow to specify device name
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 30, 2012 at 11:10:30AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:06 Fri 30 Nov     , Sascha Hauer wrote:
> > On Fri, Nov 30, 2012 at 05:57:32AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 20:02 Thu 29 Nov     , Sascha Hauer wrote:
> > > > When multiple MMC/SD cards are present in the system we often
> > > > have to have persistent names to identify them during runtime.
> > > > This patch allows to overwrite the devicename which is used.
> > > > 
> > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > ---
> > > >  drivers/mci/mci-core.c |   10 +++++++---
> > > >  include/mci.h          |    1 +
> > > >  2 files changed, 8 insertions(+), 3 deletions(-)
> > > > 
> > > > diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> > > > index 942d126..6e556a8 100644
> > > > --- a/drivers/mci/mci-core.c
> > > > +++ b/drivers/mci/mci-core.c
> > > > @@ -1397,9 +1397,13 @@ static int mci_card_probe(struct mci *mci)
> > > >  	mci->blk.dev = mci->mci_dev;
> > > >  	mci->blk.ops = &mci_ops;
> > > >  
> > > > -	disknum = cdev_find_free_index("disk");
> > > > +	if (host->devname) {
> > > > +		mci->blk.cdev.name = strdup(host->devname);
> > > 		can you use is a based name not the name
> > 
> > I don't understand this. What do you mean?
> <name><id>
> 
> instead of disk0 mmc0 as exmaple

You can pass "mmc0" directly as string if you want this. Either you want
persistent names or not, passing a fixed name and then adding an index
afterwards does not make sense IMO.

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
