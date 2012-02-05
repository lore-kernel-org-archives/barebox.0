Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ru9Fy-0006Yu-Ff
 for barebox@lists.infradead.org; Sun, 05 Feb 2012 21:04:20 +0000
Date: Sun, 5 Feb 2012 16:04:07 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20120205204443.60ee2afa@eb-e6520>
Message-ID: <alpine.DEB.2.02.1202051558230.17815@oneiric>
References: <alpine.DEB.2.02.1202050635190.30340@oneiric>
 <20120205155201.4086003e@eb-e6520>
 <alpine.DEB.2.02.1202051026020.9491@oneiric>
 <20120205184340.1bddd53a@eb-e6520>
 <alpine.DEB.2.02.1202051257100.13319@oneiric>
 <20120205204443.60ee2afa@eb-e6520>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-170116159-1328475853=:17815"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: how do i add the defn for the beagle xM to barebox?
To: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-170116159-1328475853=:17815
Content-Type: TEXT/PLAIN; charset=ISO-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Sun, 5 Feb 2012, Eric B=E9nard wrote:

> Le Sun, 5 Feb 2012 13:00:13 -0500 (EST),
> "Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :
>
> > On Sun, 5 Feb 2012, Eric B=E9nard wrote:
> >
> > > This is the case where u-boot is built with SPL thus reoplacing
> > > x-load : they always read NAND ID as some XM boards were mounted
> > > with Numonyx POP which includes NAND and 166MHz RAM when mot XM
> > > boards have a POP with only 200MHz DDR (and in that case
> > > manufacturer ID is 0). So even on a XM you need to check the NAND ID
> > > to set the right RAM settings.
> >
> >   ah, got it.  but what about in a more general case?  what if you
> > have a current, accurate definition for an existing board?  then a
> > *slight* variant of that board comes along, for which some settings in
> > the defconfig file are simply wrong?
> >
> >   are there any examples of that in barebox right now?  and if not,
> > how would one handle them?  put another way, what if *all* xM boards
> > had no NAND?  then we'd be back to my original question, and it's
> > still not clear how you'd define that new board for barebox.
> >
> if no XM board had NAND, you would simply check the board type using the
> GPIO sampled and you wouldn't register the nand (line 305 in
> board-beagle.c) and the fact that the nand driver is enabled is not a
> problem if the device is not registrered the driver won't be used.

  not to put too fine a point on it but ... yuck.  don't get me wrong,
i certainly see the value in testing things like board versions so the
code knows how to handle small differences between similar boards
(memory speed, flash types or sizes and so on).

  but this isn't a small difference -- this represents potentially an
entire subsystem (NAND) that i want the ability to de-activate.  in a
perfect world, i want the ability to say concisely that i have a
beagle but i have no NAND flash, period.  i don't want any of the NAND
code compiled, i don't want it included in the binary, so obviously i
don't want any of that code to run, only to realize it has nothing to
do.

  i haven't finished reading the docs, but i'm assuming there's no way
to do that trivially easily.

rday


--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--8323329-170116159-1328475853=:17815
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323329-170116159-1328475853=:17815--
