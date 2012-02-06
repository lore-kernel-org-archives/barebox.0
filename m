Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuMl9-0004Av-LL
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 11:29:25 +0000
Date: Mon, 6 Feb 2012 12:29:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120206112906.GM1990@pengutronix.de>
References: <alpine.DEB.2.02.1202050635190.30340@oneiric>
 <20120205155201.4086003e@eb-e6520>
 <alpine.DEB.2.02.1202051026020.9491@oneiric>
 <20120205184340.1bddd53a@eb-e6520>
 <alpine.DEB.2.02.1202051257100.13319@oneiric>
 <20120205204443.60ee2afa@eb-e6520>
 <alpine.DEB.2.02.1202051558230.17815@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1202051558230.17815@oneiric>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: how do i add the defn for the beagle xM to barebox?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: barebox@lists.infradead.org

On Sun, Feb 05, 2012 at 04:04:07PM -0500, Robert P. J. Day wrote:
> On Sun, 5 Feb 2012, Eric B=E9nard wrote:
> =

> > Le Sun, 5 Feb 2012 13:00:13 -0500 (EST),
> > "Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :
> >
> > > On Sun, 5 Feb 2012, Eric B=E9nard wrote:
> > >
> > > > This is the case where u-boot is built with SPL thus reoplacing
> > > > x-load : they always read NAND ID as some XM boards were mounted
> > > > with Numonyx POP which includes NAND and 166MHz RAM when mot XM
> > > > boards have a POP with only 200MHz DDR (and in that case
> > > > manufacturer ID is 0). So even on a XM you need to check the NAND ID
> > > > to set the right RAM settings.
> > >
> > >   ah, got it.  but what about in a more general case?  what if you
> > > have a current, accurate definition for an existing board?  then a
> > > *slight* variant of that board comes along, for which some settings in
> > > the defconfig file are simply wrong?
> > >
> > >   are there any examples of that in barebox right now?  and if not,
> > > how would one handle them?  put another way, what if *all* xM boards
> > > had no NAND?  then we'd be back to my original question, and it's
> > > still not clear how you'd define that new board for barebox.
> > >
> > if no XM board had NAND, you would simply check the board type using the
> > GPIO sampled and you wouldn't register the nand (line 305 in
> > board-beagle.c) and the fact that the nand driver is enabled is not a
> > problem if the device is not registrered the driver won't be used.
> =

>   not to put too fine a point on it but ... yuck.  don't get me wrong,
> i certainly see the value in testing things like board versions so the
> code knows how to handle small differences between similar boards
> (memory speed, flash types or sizes and so on).
> =

>   but this isn't a small difference -- this represents potentially an
> entire subsystem (NAND) that i want the ability to de-activate.  in a
> perfect world, i want the ability to say concisely that i have a
> beagle but i have no NAND flash, period.  i don't want any of the NAND
> code compiled, i don't want it included in the binary, so obviously i
> don't want any of that code to run, only to realize it has nothing to
> do.

The mentioned U-Boot code does not use any of the nand layer but only
some omap specific function to detect the nand id (identify_nand_chip).
This means that you can add this code to barebox and still disable nand
support.

If you still want to have a more fine grained config we can add a

config MACH_PANDA_XM_VARIANT
	bool

config MACH_PANDA_XM_DETECT_RAM_TYPE
	bool

But we should add such options with care. Generally I don't really
like to ask the user complicated questions for things that can be
autodetected.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
