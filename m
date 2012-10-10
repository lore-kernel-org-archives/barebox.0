Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLzS9-0006Mm-53
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 16:48:14 +0000
Date: Wed, 10 Oct 2012 18:48:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121010164809.GC27665@pengutronix.de>
References: <1349862240-1501-1-git-send-email-s.hauer@pengutronix.de>
 <20121010105743.GA13639@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121010105743.GA13639@game.jcrosoft.org>
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
Subject: Re: [PATCH] platform driver: Drop check for resource conflicts
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 10, 2012 at 12:57:43PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 11:44 Wed 10 Oct     , Sascha Hauer wrote:
> > The check is wrong since it would have to check whether the
> > new iomem region overlaps with an existing region. Checking
> > for the base address only is not enough.
> > Currently this is not possible because every device conflicts
> > with the top iomem region which covers the whole address space.
> > 
> > This at least fixes the regression that devices whose memory region
> > begins at 0x0 can no longer be succesfully registered.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: Alexander Shiyan <shc_work@mail.ru>
> > Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/base/platform.c |   12 ------------
> >  1 file changed, 12 deletions(-)
> > 
> > diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> > index 13b4620..ea4e37b 100644
> > --- a/drivers/base/platform.c
> > +++ b/drivers/base/platform.c
> > @@ -66,18 +66,6 @@ int platform_device_register(struct device_d *new_device)
> >  {
> >  	new_device->bus = &platform_bus;
> >  
> > -	if (new_device->resource) {
> > -		struct device_d *dev;
> > -
> > -		bus_for_each_device(new_device->bus, dev) {
> > -			if (!dev->resource)
> > -				continue;
> > -			if (dev->resource->start == new_device->resource->start) {
> > -				return -EBUSY;
> > -			}
> > -		}
> > -	}
> > -
> IIRC this break the dt probe no?

Why should it?

> 
> this break the arm and st hw atleast

What breaks it? The check for conflicts or the removal of the check?
What breaks? I know no board which registers conflicting resources, so
the check never triggers.

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
