Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8S9P-0006Mx-NM
	for barebox@lists.infradead.org; Wed, 20 Oct 2010 06:27:52 +0000
Date: Wed, 20 Oct 2010 08:27:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101020062748.GC28242@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
	<1287492930-15716-22-git-send-email-s.hauer@pengutronix.de>
	<20101020014820.GB20390@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101020014820.GB20390@game.jcrosoft.org>
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
Subject: Re: [PATCH 21/42] i.MX remove wdog registers from header files
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 20, 2010 at 03:48:20AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 14:55 Tue 19 Oct     , Sascha Hauer wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/clocksource.c             |   23 +++++++++++++++++++----
> >  arch/arm/mach-imx/include/mach/imx1-regs.h  |    8 --------
> >  arch/arm/mach-imx/include/mach/imx21-regs.h |    8 --------
> >  arch/arm/mach-imx/include/mach/imx27-regs.h |    8 --------
> >  arch/arm/mach-imx/include/mach/imx31-regs.h |   10 ----------
> >  arch/arm/mach-imx/include/mach/imx35-regs.h |   10 ----------
> >  arch/arm/mach-imx/include/mach/imx51-regs.h |    7 -------
> >  7 files changed, 19 insertions(+), 55 deletions(-)
> > 
> > diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
> > index e492890..4cb923f 100644
> > --- a/arch/arm/mach-imx/clocksource.c
> > +++ b/arch/arm/mach-imx/clocksource.c
> > @@ -101,19 +101,34 @@ static int clocksource_init (void)
> >  core_initcall(clocksource_init);
> >  
> >  /*
> > + * Watchdog Registers
> > + */
> > +#ifdef CONFIG_ARCH_IMX1
> > +#define WDOG_WCR	0x00 /* Watchdog Control Register */
> > +#define WDOG_WSR	0x02 /* Watchdog Service Register */
> > +#define WDOG_WSTR	0x04 /* Watchdog Status Register  */
> > +#define WDOG_WCR_WDE	(1 << 0)
> > +#else
> > +#define WDOG_WCR	0x00 /* Watchdog Control Register */
> > +#define WDOG_WSR	0x02 /* Watchdog Service Register */
> > +#define WDOG_WSTR	0x04 /* Watchdog Status Register  */
> > +#define WDOG_WCR_WDE	(1 << 2)
> only the WDE seems different

oops, bug. on i.MX1 WSR should be 0x4 and SWTR should be 0x8. Will fix
this.

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
