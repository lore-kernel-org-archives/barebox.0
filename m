Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PJPE2-0005Fv-PU
	for barebox@lists.infradead.org; Fri, 19 Nov 2010 11:33:55 +0000
Date: Fri, 19 Nov 2010 12:30:09 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101119113009.GB4216@game.jcrosoft.org>
References: <20101112180228.GC13661@game.jcrosoft.org>
	<1289585938-22813-1-git-send-email-plagnioj@jcrosoft.com>
	<20101119080049.GA6017@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101119080049.GA6017@pengutronix.de>
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
Subject: Re: [PATCH 1/5] device: introduce resource structure to simplify
	resource delaration
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:00 Fri 19 Nov     , Sascha Hauer wrote:
> Hi J,
> 
> On Fri, Nov 12, 2010 at 07:18:54PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > introdude also some helper to manager them
> > 
> > and add multi resource per device support
> > 
> > ram device: use resource structure instead of memory_platform_data
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> 
> You shouldn't use a resource_size_t type to access registers. This will
> lead to problems when we start to support 64bit resource sizes
no as resource_size_t is 64 bit aware
>. Instead we should introduce a
> 
> #define resource_size_to_iomem(size) (void __force __iomem *)(size)
> 
> macro which does the conversion to a void __iomem * type. In a more
> advanced version this could also spit a warning when the resource start
> is bigger than a pointer type. As an additional plus we'll get rid of
> some sparse warnings where map_base is used for readl/writel.
we do not do in the kernel and do see the advantage here for the ressource
in mind it's in the drivers we need to do it
if necessary
> 
> 
> > diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
> > index 11cf2a4..e89f8bb 100644
> > --- a/arch/arm/mach-imx/devices.c
> > +++ b/arch/arm/mach-imx/devices.c
> > @@ -9,8 +9,8 @@ static struct device_d *imx_add_device(char *name, int id, void *base, int size,
> >  	dev = xzalloc(sizeof(*dev));
> >  	strcpy(dev->name,name);
> >  	dev->id = id;
> > -	dev->map_base = (unsigned long)base;
> > -	dev->size = size;
> > +	dev_resource_set_start(dev, (unsigned long)base);
> > +	dev_resource_set_size(dev, (unsigned long)size);
> >  	dev->platform_data = pdata;
> 
> Should be a cast to resource_size_t.
yeah

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
