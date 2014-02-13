Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDwRK-0007Mz-7v
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 13:34:55 +0000
Date: Thu, 13 Feb 2014 14:34:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140213133429.GA17250@pengutronix.de>
References: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
 <20140213110856.GA8468@x61s.campuswlan.hs-rm.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140213110856.GA8468@x61s.campuswlan.hs-rm.de>
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
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 13, 2014 at 12:08:58PM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> only some small nitpicks.
> 
> On Thu, Feb 13, 2014 at 11:25:28AM +0100, Sascha Hauer wrote:
> > Embed the partition information in struct mtd_info. This makes the
> > mtd partition code simpler.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/mtd/partition.c | 75 ++++++++++++++++++++-----------------------------
> >  include/linux/mtd/mtd.h |  5 +++-
> >  2 files changed, 34 insertions(+), 46 deletions(-)
> > 
> > diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
> > index 85f486d..7431fc1 100644
> > --- a/drivers/mtd/partition.c
> > +++ b/drivers/mtd/partition.c
> > @@ -4,29 +4,19 @@
> >  #include <linux/err.h>
> >  #include <linux/mtd/mtd.h>
> >  
> ...
> > +	struct mtd_info *part;
> >  	int start = 0, end = 0, i;
> >  
> > -	slave = xzalloc(sizeof(*slave));
> > -	slave_mtd = &slave->mtd;
> > +	part = xzalloc(sizeof(*part));
> >  
> > -	memcpy(slave_mtd, mtd, sizeof(*slave));
> > +	memcpy(part, mtd, sizeof(*part));
> 
> Maybe we should fixup this commit with patch:
> 
> [PATCH 6/8] mtd: partition: only copy selected fields to partition

I don't think so. Both change the same line, but do quite different
things.

> > -	struct mtd_part *part = PART(mtd);
> > +	if (!part->master)
> > +		return -EINVAL;
> >  
> > -	free(mtd->name);
> I think this should be free(part->name);

What do you mean? The line you are referring to is removed in this
patch.

> 
> ...
> Yea I know it's only a bootloader but I can't stop to say something to
> this. :-(
> 
> >  	free(part);
> > +
> > +	return 0;
> >  }
> > diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
> > index 402e497..347443b 100644
> > --- a/include/linux/mtd/mtd.h
> > +++ b/include/linux/mtd/mtd.h
> > @@ -217,6 +217,9 @@ struct mtd_info {
> >  	/* If true erasing bad blocks is allowed, this is set via a device parameter */
> >  	bool allow_erasebad;
> >  	int p_allow_erasebad;
> > +
> > +	struct mtd_info *master;
> > +	uint64_t master_offset;
> Currently we have only u_int32_t like for total mtd size. Do you
> plan a support for mtd devices which a greater than 4GB? :-)

Well the mtd layer is directly from Linux which supports devices > 4GB,
so sooner or later we'll do aswell. Anyway, since the master device
doesn't support 64bit there's no point in making this variable 64bit
now.

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
