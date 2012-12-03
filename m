Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfRhl-0006Ys-81
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 08:48:45 +0000
Date: Mon, 3 Dec 2012 03:48:40 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <1354524242.3772.11.camel@coredoba.hi.pengutronix.de>
Message-ID: <alpine.DEB.2.02.1212030344360.6469@oneiric>
References: <alpine.DEB.2.02.1212011607040.13954@oneiric>
 <alpine.DEB.2.02.1212011733350.24134@oneiric>
 <alpine.DEB.2.02.1212020418020.6898@oneiric>
 <1354522782.3772.3.camel@coredoba.hi.pengutronix.de>
 <alpine.DEB.2.02.1212030327430.6352@oneiric>
 <1354524242.3772.11.camel@coredoba.hi.pengutronix.de>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1058267650-1354524522=:6469"
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
Subject: Re: suddenly, i can't boot barebox on my beagle xM anymore [ISOLATED]
To: =?ISO-8859-15?Q?Jan_L=FCbbe?= <jlu@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1058267650-1354524522=:6469
Content-Type: TEXT/PLAIN; charset=ISO-8859-15
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Mon, 3 Dec 2012, Jan L=FCbbe wrote:

> On Mon, 2012-12-03 at 03:31 -0500, Robert P. J. Day wrote:
> > *sigh* ... i *think* i figured out what's happening.  in order to
> > play with barebox on my xM, until recently, i'd done nothing more than
> > create a single FAT partition on a micro SD card, put MLO and
> > barebox.bin on it, put it in my xM, and let it boot.  until that OMAP
> > merge, it worked fine.
> >
> >   as i read it, the new default environment for the xM *requires* a
> > second (ext3) partition or the boot process simply hangs, am i reading
> > that right?  if that's true, how can i adjust that so i can once again
> > just boot to barebox without having a kernel and root fs created yet?
>
> Only the kernel uses the second partition for its rootfs, barebox
> should get to the prompt where you can interrupt autoboot anyway.
>
> So figuring out the exact commit would be useful. The bisection
> should take only a few steps. Sascha build-checks every revision, so
> all the bisection steps should build fine.

  actually, i *did* use bisection to isolate it -- here's the commit
that introduces the issue:

commit 5f2074bdd13ea69af5a10c3bcccb648720d6937a
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Wed Oct 31 10:16:48 2012 +0100

    ARM OMAP3 beagle: switch to new environment

    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

  did i forget to post that?  oops ...

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
--8323329-1058267650-1354524522=:6469
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323329-1058267650-1354524522=:6469--
