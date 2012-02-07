Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ruime-0006y7-6A
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 11:00:25 +0000
Date: Tue, 7 Feb 2012 06:00:02 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20120207105141.GC3852@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1202070559330.17306@oneiric>
References: <alpine.DEB.2.02.1202061612300.17751@oneiric>
 <20120207105141.GC3852@pengutronix.de>
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
Subject: Re: what is the purpose of config option HAS_OMAP_NAND?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, 7 Feb 2012, Sascha Hauer wrote:

> On Mon, Feb 06, 2012 at 04:14:45PM -0500, Robert P. J. Day wrote:
> >
> >   based on the output from grep:
> >
> > $ grep -r HAS_OMAP_NAND *
> > arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
> > arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
> > arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
> > arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
> > arch/arm/mach-omap/Kconfig:config HAS_OMAP_NAND
> > arch/arm/configs/phycard_a_l1_defconfig:CONFIG_HAS_OMAP_NAND=y
> > $
> >
> > i'm not sure of the purpose of that Kconfig option.  if nothing in the
> > source tree tests it, what value does it have?  the definition of that
> > option is simply:
> >
> > config HAS_OMAP_NAND
> >         bool
> >
> > am i missing something subtle?
>
> I can only guess that the nand driver depended on this. We can remove
> this.

  do you want me to submit a patch?  or are you already handling it?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
