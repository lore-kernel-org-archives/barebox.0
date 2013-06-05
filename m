Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UkBOU-0006tP-Nq
 for barebox@lists.infradead.org; Wed, 05 Jun 2013 10:56:43 +0000
Message-ID: <1370429778.3824.7.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Wed, 05 Jun 2013 12:56:18 +0200
In-Reply-To: <20130604145327.GJ32299@pengutronix.de>
References: <1369741903-24988-2-git-send-email-j.weitzel@phytec.de>
 <20130604145327.GJ32299@pengutronix.de>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Subject: Re: [PATCH] OMAP4: Use default clock source for mcbsp
To: Sascha Hauer <s.hauer@pengutronix.de>, vicencb@gmail.com
Cc: barebox@lists.infradead.org

Am Dienstag, den 04.06.2013, 16:53 +0200 schrieb Sascha Hauer:
> Hi Jan,
> 
> On Tue, May 28, 2013 at 01:51:40PM +0200, Jan Weitzel wrote:
> > In omap4_enable_all_clocks we not only enable the mcbsp clocks, but also
> > change the source from ABE_24M_FCLK to 24M_FCLK. Revert this and default
> > to the reset state.
> 
> Can you add a description why this is necessary?
We had some trouble because the kernel takes the default clock sources
from the registers. There seams to be no reason to change them in the
boot loader. Is clean up a good enough answer?
Could someone test it on pandaboard and ArchosG9? I didn't have
(working) hardware here.

Jan
> 
> Sascha
> 
> > 
> > Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> > ---
> >  arch/arm/mach-omap/omap4_clock.c |    6 +++---
> >  1 files changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
> > index 0621fd3..889d1f9 100644
> > --- a/arch/arm/mach-omap/omap4_clock.c
> > +++ b/arch/arm/mach-omap/omap4_clock.c
> > @@ -253,9 +253,9 @@ void omap4_enable_all_clocks(void)
> >  	sr32(CM1_ABE_PDM_CLKCTRL, 0, 32, 0x2);
> >  	sr32(CM1_ABE_DMIC_CLKCTRL, 0, 32, 0x2);
> >  	sr32(CM1_ABE_MCASP_CLKCTRL, 0, 32, 0x2);
> > -	sr32(CM1_ABE_MCBSP1_CLKCTRL, 0, 32, 0x08000002);
> > -	sr32(CM1_ABE_MCBSP2_CLKCTRL, 0, 32, 0x08000002);
> > -	sr32(CM1_ABE_MCBSP3_CLKCTRL, 0, 32, 0x08000002);
> > +	sr32(CM1_ABE_MCBSP1_CLKCTRL, 0, 32, 0x2);
> > +	sr32(CM1_ABE_MCBSP2_CLKCTRL, 0, 32, 0x2);
> > +	sr32(CM1_ABE_MCBSP3_CLKCTRL, 0, 32, 0x2);
> >  	sr32(CM1_ABE_SLIMBUS_CLKCTRL, 0, 32, 0xf02);
> >  	sr32(CM1_ABE_TIMER5_CLKCTRL, 0, 32, 0x2);
> >  	sr32(CM1_ABE_TIMER6_CLKCTRL, 0, 32, 0x2);
> > -- 
> > 1.7.0.4
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
