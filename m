Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGvMM-0002Kl-7U
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 17:25:18 +0000
Date: Wed, 26 Sep 2012 19:25:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120926172516.GR1322@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
 <1348484692-24993-3-git-send-email-s.hauer@pengutronix.de>
 <20120926160239.GV26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120926160239.GV26553@game.jcrosoft.org>
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
Subject: Re: [PATCH 02/23] clk clkdev: Add clkdev matching based on physbase
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 26, 2012 at 06:02:39PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 13:04 Mon 24 Sep     , Sascha Hauer wrote:
> > Most clock/device associations can be done based on the physical
> > base address of the corresponding device. So instead of depending
> > on string matching add an optional possibility to associate a clock
> > lookups with physical addresses. This also has the advantage that
> > the lookups for devicetree based devices can be identical to the
> > platform based devices.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/clk/clkdev.c   |   47 +++++++++++++++++++++++++++++++++++++++++++++++
> >  include/linux/clkdev.h |    3 +++
> >  2 files changed, 50 insertions(+)
> > 
> > diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
> > index 717fea5..40bc006 100644
> > --- a/drivers/clk/clkdev.c
> > +++ b/drivers/clk/clkdev.c
> > @@ -62,6 +62,32 @@ static struct clk *clk_find(const char *dev_id, const char *con_id)
> >  	return clk;
> >  }
> >  
> > +static struct clk *clk_find_physbase(struct device_d *dev, const char *con_id)
> > +{
> > +	struct clk_lookup *p;
> > +	unsigned long start;
> > +
> > +	if (!dev || !dev->resource)
> > +		return ERR_PTR(-ENOSYS);
> this is broken
> 
> clk_get_sys(NULL, "toto") is a valid call

clk_get_sys never calls clk_find_physbase. clk_get(NULL, "toto") will
call clk_find_physbase in which case clk_find_physbase returns -ENOSYS
and clk_get falls back to clk_get_sys just as it did before.

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
