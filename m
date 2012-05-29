Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZJse-0004f6-0g
 for barebox@lists.infradead.org; Tue, 29 May 2012 10:42:24 +0000
Date: Tue, 29 May 2012 12:42:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120529104220.GT30400@pengutronix.de>
References: <1338192756-3688-1-git-send-email-antonynpavlov@gmail.com>
 <1338192756-3688-5-git-send-email-antonynpavlov@gmail.com>
 <20120529083010.GY30400@pengutronix.de>
 <20120529103720.GL2202@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120529103720.GL2202@game.jcrosoft.org>
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
Subject: Re: [PATCH v20120528 4/5] toshiba-ac100: add USB host support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, May 29, 2012 at 12:37:20PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:30 Tue 29 May     , Sascha Hauer wrote:
> > On Mon, May 28, 2012 at 12:12:35PM +0400, Antony Pavlov wrote:
> > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > ---
> > >  arch/arm/boards/toshiba-ac100/board.c |   18 ++++++++++++++++++
> > >  1 file changed, 18 insertions(+)
> > > 
> > > diff --git a/arch/arm/boards/toshiba-ac100/board.c b/arch/arm/boards/toshiba-ac100/board.c
> > > index e3a5eba..3fd720d 100644
> > > --- a/arch/arm/boards/toshiba-ac100/board.c
> > > +++ b/arch/arm/boards/toshiba-ac100/board.c
> > > @@ -24,6 +24,8 @@
> > >  #include <init.h>
> > >  #include <asm/armlinux.h>
> > >  #include <sizes.h>
> > > +#include <usb/ehci.h>
> > > +#include <mach/iomap.h>
> > >  
> > >  static int ac100_mem_init(void)
> > >  {
> > > @@ -32,3 +34,19 @@ static int ac100_mem_init(void)
> > >  	return 0;
> > >  }
> > >  mem_initcall(ac100_mem_init);
> > > +
> > > +#ifdef CONFIG_USB_EHCI
> > > +static struct ehci_platform_data ehci_pdata = {
> > > +	.flags = EHCI_HAS_TT,
> > > +};
> > > +#endif
> > > +
> > > +static int ac100_devices_init(void)
> > > +{
> > > +#ifdef CONFIG_USB_EHCI
> > > +	add_generic_usb_ehci_device(-1, TEGRA_USB3_BASE, &ehci_pdata);
> > > +#endif
> > 
> > Better skip the ifdefs. It won't hurt except for a few bytes of wated
> > space.
> and the -1 need to be a define
> 
> 
> btw I think we need to change the auto allocated dev_id to -2 so -1 one have
> the same meanning as in the kernel

I think we still have hardcoded -1 around.

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
