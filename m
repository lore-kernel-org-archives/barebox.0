Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x231.google.com ([2a00:1450:4013:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WE1bi-0001SZ-A8
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 19:05:59 +0000
Received: by mail-ea0-f177.google.com with SMTP id m10so2693807eaj.8
 for <barebox@lists.infradead.org>; Thu, 13 Feb 2014 11:05:33 -0800 (PST)
Date: Thu, 13 Feb 2014 20:05:27 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140213190526.GA4900@omega>
References: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
 <20140213110856.GA8468@x61s.campuswlan.hs-rm.de>
 <20140213133429.GA17250@pengutronix.de>
 <20140213140153.GA31426@x61s.campuswlan.hs-rm.de>
 <20140213184533.GC17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140213184533.GC17250@pengutronix.de>
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
Subject: Re: [PATCH 1/8] mtd: Simplify partitions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 13, 2014 at 07:45:33PM +0100, Sascha Hauer wrote:
> On Thu, Feb 13, 2014 at 03:01:55PM +0100, Alexander Aring wrote:
> > On Thu, Feb 13, 2014 at 02:34:30PM +0100, Sascha Hauer wrote:
> > > On Thu, Feb 13, 2014 at 12:08:58PM +0100, Alexander Aring wrote:
> > > > Hi Sascha,
> > > > 
> > > > only some small nitpicks.
> > > > 
> > > > On Thu, Feb 13, 2014 at 11:25:28AM +0100, Sascha Hauer wrote:
> > > > > Embed the partition information in struct mtd_info. This makes the
> > > > > mtd partition code simpler.
> > > > > 
> > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > ---
> > > > >  drivers/mtd/partition.c | 75 ++++++++++++++++++++-----------------------------
> > > > >  include/linux/mtd/mtd.h |  5 +++-
> > > > >  2 files changed, 34 insertions(+), 46 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
> > > > > index 85f486d..7431fc1 100644
> > > > > --- a/drivers/mtd/partition.c
> > > > > +++ b/drivers/mtd/partition.c
> > > > > @@ -4,29 +4,19 @@
> > > > >  #include <linux/err.h>
> > > > >  #include <linux/mtd/mtd.h>
> > > > >  
> > > > ...
> > > > > +	struct mtd_info *part;
> > > > >  	int start = 0, end = 0, i;
> > > > >  
> > > > > -	slave = xzalloc(sizeof(*slave));
> > > > > -	slave_mtd = &slave->mtd;
> > > > > +	part = xzalloc(sizeof(*part));
> > > > >  
> > > > > -	memcpy(slave_mtd, mtd, sizeof(*slave));
> > > > > +	memcpy(part, mtd, sizeof(*part));
> > > > 
> > > > Maybe we should fixup this commit with patch:
> > > > 
> > > > [PATCH 6/8] mtd: partition: only copy selected fields to partition
> > > 
> > > I don't think so. Both change the same line, but do quite different
> > > things.
> > > 
> > ok.
> > > > > -	struct mtd_part *part = PART(mtd);
> > > > > +	if (!part->master)
> > > > > +		return -EINVAL;
> > > > >  
> > > > > -	free(mtd->name);
> > > > I think this should be free(part->name);
> > > 
> > > What do you mean? The line you are referring to is removed in this
> > > patch.
> > > 
> > I mean the part->name = strdup(mtd->name) in add partition function.
> 
> Now I get it. It's actually there in the end result but slipped into the
> wrong patch. Fixed this.
> 
sry Sascha, I am thinking too fast sometimes. Next time I will try to makes
a proper description.

Thanks

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
