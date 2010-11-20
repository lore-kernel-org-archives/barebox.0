Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PJnfy-00040z-UQ
	for barebox@lists.infradead.org; Sat, 20 Nov 2010 13:40:23 +0000
Date: Sat, 20 Nov 2010 14:40:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101120134017.GF6017@pengutronix.de>
References: <20101112180228.GC13661@game.jcrosoft.org>
	<1289585938-22813-1-git-send-email-plagnioj@jcrosoft.com>
	<20101119080049.GA6017@pengutronix.de>
	<20101119113009.GB4216@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101119113009.GB4216@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 19, 2010 at 12:30:09PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:00 Fri 19 Nov     , Sascha Hauer wrote:
> > Hi J,
> > 
> > On Fri, Nov 12, 2010 at 07:18:54PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > introdude also some helper to manager them
> > > 
> > > and add multi resource per device support
> > > 
> > > ram device: use resource structure instead of memory_platform_data
> > > 
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > 
> > 
> > You shouldn't use a resource_size_t type to access registers. This will
> > lead to problems when we start to support 64bit resource sizes
> no as resource_size_t is 64 bit aware

And exactly this is the problem. void * is usually only 32bit on arm.
This will lead to compiler warnings and sparse isn't happy about
unsigned long in readl/writel anyway.

> >. Instead we should introduce a
> > 
> > #define resource_size_to_iomem(size) (void __force __iomem *)(size)
> > 
> > macro which does the conversion to a void __iomem * type. In a more
> > advanced version this could also spit a warning when the resource start
> > is bigger than a pointer type. As an additional plus we'll get rid of
> > some sparse warnings where map_base is used for readl/writel.
> we do not do in the kernel and do see the advantage here for the ressource
> in mind it's in the drivers we need to do it
> if necessary

resource_size_t is never passed to readl/writel in the kernel.

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
