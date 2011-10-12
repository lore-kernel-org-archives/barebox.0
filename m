Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arroyo.ext.ti.com ([192.94.94.40])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RDvmH-0005Gm-2B
	for barebox@lists.infradead.org; Wed, 12 Oct 2011 10:11:10 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Wed, 12 Oct 2011 15:41:00 +0530
Message-ID: <B85A65D85D7EB246BE421B3FB0FBB5930257A576C4@dbde02.ent.ti.com>
References: <1318346600-13360-1-git-send-email-premi@ti.com>
	<20111011203011.GJ18064@game.jcrosoft.org>
In-Reply-To: <20111011203011.GJ18064@game.jcrosoft.org>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: [PATCH v2] omap: Unify run_shell() in xload configuration
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Jean-Christophe PLAGNIOL-VILLARD [mailto:plagnioj@jcrosoft.com] 
> Sent: Wednesday, October 12, 2011 2:00 AM
> To: Premi, Sanjeev
> Cc: barebox@lists.infradead.org
> Subject: Re: [PATCH v2] omap: Unify run_shell() in xload configuration
> 
> > -
> > -	if (!func) {
> > -		printf("booting failed\n");
> > -		while (1);
> > -	}
> > -
> > -	shutdown_barebox();
> > -	func();
> > -
> > -	while (1);
> > -}
> > -#endif
> > diff --git a/arch/arm/mach-omap/Makefile 
> b/arch/arm/mach-omap/Makefile
> > index 7204746..07bf30a 100644
> > --- a/arch/arm/mach-omap/Makefile
> > +++ b/arch/arm/mach-omap/Makefile
> > @@ -25,4 +25,5 @@ obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o 
> omap3_generic.o
> >  obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
> >  obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock_core.o 
> omap3_clock.o
> >  obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
> > -obj-y += gpio.o xload.o
> > +obj-$(CONFIG_SHELL_NONE) += xload.o
> > +obj-y += gpio.o
> > diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> > index 216b9b5..ac859fa 100644
> > --- a/arch/arm/mach-omap/xload.c
> > +++ b/arch/arm/mach-omap/xload.c
> > @@ -52,3 +52,39 @@ void *omap_xload_boot_mmc(void)
> >  
> >  	return buf;
> >  }
> > +
> > +/*
> > + * Replaces the default shell in xload configuration
> > + */
> > +int run_shell(void)
> > +{
> > +	int (*func)(void) = NULL;
> > +
> > +#if defined(CONFIG_ARCH_OMAP3)
> > +	switch (omap3_bootsrc())
> > +#elif  defined(CONFIG_ARCH_OMAP4)
> > +	switch (omap4_bootsrc())
> > +#endif
> I really don't like this
> 
> please create a small local station like this to manage the OMAPx
> 
> static u32 omap_bootsrc(void)
> {
> #if defined(CONFIG_ARCH_OMAP3)
> 	return omap3_bootsrc())
> #elif defined(CONFIG_ARCH_OMAP4)
> 	return omap4_bootsrc())
> 	switch (omap4_bootsrc())
> #endif
> }

Actually I wanted to do this... just postponed it long enough to forget :(
Will do this now.

~sanjeev

> 
> and then
> 	switch (omap_bootsrc()) {
> 
> 
> Best Regards,
> J.
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
