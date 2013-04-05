Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f377.i.mail.ru ([185.5.136.48])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UO0Iz-00055N-LJ
 for barebox@lists.infradead.org; Fri, 05 Apr 2013 06:39:23 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Fri, 05 Apr 2013 10:39:16 +0400
Message-ID: <1365143956.92002480@f377.i.mail.ru>
In-Reply-To: <1365057749.3836.16.camel@mars>
References: <1363263561.4022.37.camel@mars> <1363354762.13088.261.camel@mars>
 <1365057749.3836.16.camel@mars>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSF0gW1JGQ10gQVJNIE9NQVA0OiBlbmFibGUgRFNTIGJ5?=
 =?UTF-8?B?IGRlZmF1bHQ=?=
To: =?UTF-8?B?Q2hyaXN0b3BoIEZyaXR6?= <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

> On Fri, 2013-03-15 at 14:39 +0100, Christoph Fritz wrote:
> > On Fri, 2013-03-15 at 12:40 +0400, Alexander Shiyan wrote:
> > 
> > > MD command causes an error due to the inability of the reading memory area.
> > > Error can be disabled via the option "enable arm exception handling support",
> > > but it does not help solve the problem.
> > > OMAP has a memory areas (modules), which are locked,
> > 
> > This corresponds with my register observations. As noted above, register
> > CM_DSS_DSS_CLKCTRL (0x4a009120) reads 0x00070F02 which means: "Module is
> > disabled and cannot be accessed".
> > 
> > >  so you need to
> > > search this information from datasheet.
> > 
> > Finnaly I was very wise inspired to do "mw 0x4a009100 2". This disables
> > the HW_AUTO-Mode (Automatic transition) and starts a software forced
> > wake-up (SW_WKUP).
> > 
> > Now even the IDLEST field from CM_DSS_CLKSTCTRL reads 0x0: "Module is
> > fully functional, including INTRCONN" :-)
> > 
> > et la voila:
> > md 0x48040000+4
> > 48040000: 00000040
> > 
> > What do you think about the patch below?
> > 
> > ---
> > Subject: [PATCH] [RFC] ARM OMAP4: enable DSS by default
> > 
> > This patch removes the anyway default reset setting of HW_AUTO in favour of
> > SW_WKUP. So the DSS Module gets enabled and you gain full register access.
> > ---
> >  arch/arm/mach-omap/omap4_clock.c |    4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
> > index 0621fd3..72335d9 100644
> > --- a/arch/arm/mach-omap/omap4_clock.c
> > +++ b/arch/arm/mach-omap/omap4_clock.c
> > @@ -375,8 +375,8 @@ void omap4_enable_all_clocks(void)
> >  	/* Check for DSS Clocks */
> >  	while ((__raw_readl(0x4A009100) & 0xF00) != 0xE00)
> >  		;
> > -	/* Set HW_AUTO transition mode */
> > -	sr32(CM_DSS_CLKSTCTRL, 0, 32, 0x3);
> > +	/* Set SW_WKUP to enable DSS Module with full register access */
> > +	sr32(CM_DSS_CLKSTCTRL, 0, 32, 0x2);
> >  
> >  	/* Enable SGX clocks */
> >  	sr32(CM_SGX_CLKSTCTRL, 0, 32, 0x2);

I do not use OMAP and therefore can not comment on these changes.
I think AUTO mode should work by default, and the fact that it does not
work suggests that not all operations are performed (power, clocks etc.) ...
May be necessary to switch to AUTO back after forcing WKUP.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
