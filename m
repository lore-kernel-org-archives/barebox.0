Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkRbU-00069x-5Q
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 08:01:05 +0000
Date: Thu, 15 Sep 2016 10:00:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160915080042.dj2b2by7r7nqxsch@pengutronix.de>
References: <1473844368-13030-1-git-send-email-s.hauer@pengutronix.de>
 <1473844368-13030-4-git-send-email-s.hauer@pengutronix.de>
 <20160914092450.xd5xrsf37qb3odxm@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160914092450.xd5xrsf37qb3odxm@pengutronix.de>
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
Subject: Re: [PATCH 04/12] ARM: i.MX53 Vincell: Add PBL console support
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Sep 14, 2016 at 11:24:50AM +0200, Michael Grzeschik wrote:
> On Wed, Sep 14, 2016 at 11:12:40AM +0200, Sascha Hauer wrote:
> > PBL console support is more useful than debug_ll. Add support
> > for it to the Vincell Board.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/guf-vincell/lowlevel.c | 50 ++++++++++++++++++++--------------
> >  1 file changed, 29 insertions(+), 21 deletions(-)
> > 
> > diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
> > index af7c65d..3985dd7 100644
> > --- a/arch/arm/boards/guf-vincell/lowlevel.c
> > +++ b/arch/arm/boards/guf-vincell/lowlevel.c
> > @@ -11,6 +11,7 @@
> >  #include <mach/generic.h>
> >  #include <asm/barebox-arm.h>
> >  #include <asm/barebox-arm-head.h>
> > +#include <asm/cache.h>
> >  
> >  #define IOMUX_PADCTL_DDRI_DDR (1 << 9)
> >  
> > @@ -123,12 +124,16 @@ void disable_watchdog(void)
> >  	writew(0x0, MX53_WDOG2_BASE_ADDR + 8);
> >  }
> >  
> > -static noinline void imx53_guf_vincell_init(void *fdt)
> > +extern char __dtb_imx53_guf_vincell_lt_start[];
> > +extern char __dtb_imx53_guf_vincell_start[];
> > +
> > +static noinline void imx53_guf_vincell_init(int is_lt)
> >  {
> >  	void __iomem *ccm = (void *)MX53_CCM_BASE_ADDR;
> > +	void __iomem *uart = IOMEM(MX53_UART4_BASE_ADDR);
> 
> This should be MX53_UART2_BASE_ADDR to be consistent with
> linux,stdout-path in imx53-guf-vincell.dts and imx53-guf-vincell-lt.dts.

Yes. Fixed.

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
