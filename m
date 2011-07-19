Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj822-0008Uk-AI
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 11:00:07 +0000
Date: Tue, 19 Jul 2011 13:00:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110719110002.GO20587@pengutronix.de>
References: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
	<1311064803-6305-4-git-send-email-s.hauer@pengutronix.de>
	<20110719101347.GE5727@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110719101347.GE5727@game.jcrosoft.org>
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
Subject: Re: [PATCH 03/19] add a add_mem_device function
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 19, 2011 at 12:13:47PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:39 Tue 19 Jul     , Sascha Hauer wrote:
> > Add a helper function for boards to register their memory
> > devices. This makes the board code smaller and also helps
> > getting rid of map_base.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  commands/mem.c   |   25 +++++++++++++++++++++++++
> >  include/driver.h |    6 ++++++
> >  2 files changed, 31 insertions(+), 0 deletions(-)
> > 
> > diff --git a/commands/mem.c b/commands/mem.c
> > index 8df5f0a..745eec4 100644
> > --- a/commands/mem.c
> > +++ b/commands/mem.c
> > @@ -587,6 +587,31 @@ static struct file_operations memops = {
> >  	.lseek = dev_lseek_default,
> >  };
> >  
> > +struct device_d *add_mem_device(const char *name, unsigned long start, size_t size,
> > +		unsigned int flags)
> > +{
> > +	struct device_d *dev;
> > +	struct memory_platform_data *pdata;
> > +
> > +	dev = xzalloc(sizeof(*dev));
> > +	strcpy(dev->name, "mem");
> > +	dev->id = -1;
> > +	dev->resource = xzalloc(sizeof(struct resource));
> > +	dev->num_resources = 1;
> > +	dev->resource[0].start = start;
> > +	dev->resource[0].size = size;
> > +	dev->resource[0].flags = IORESOURCE_MEM;
> > +	pdata = xzalloc(sizeof(*pdata));
> > +	dev->platform_data = pdata;
> > +
> > +	pdata->flags = flags;
> > +	pdata->name = xstrdup(name);
> can we drop the name here and use the resource name instead

I think so, yes.

> 
> I think we can drop the platfrom_data too

This is still needed for the rw/ro flag (though it seems this is not
handled)

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
