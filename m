Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfRR8-00063U-FG
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 08:31:35 +0000
Date: Mon, 3 Dec 2012 03:31:14 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <1354522782.3772.3.camel@coredoba.hi.pengutronix.de>
Message-ID: <alpine.DEB.2.02.1212030327430.6352@oneiric>
References: <alpine.DEB.2.02.1212011607040.13954@oneiric>
 <alpine.DEB.2.02.1212011733350.24134@oneiric>
 <alpine.DEB.2.02.1212020418020.6898@oneiric>
 <1354522782.3772.3.camel@coredoba.hi.pengutronix.de>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-414507315-1354523490=:6352"
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
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-414507315-1354523490=:6352
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Mon, 3 Dec 2012, Jan L=C3=BCbbe wrote:

> Hi,
>
> On Sun, 2012-12-02 at 04:24 -0500, Robert P. J. Day wrote:
> > i've isolated the commit that introduces the apparent booting
> > problem on my xM:
> >
> > $ git show 154496f
> > commit 154496f736db54123c3f6daaba18809fab54ed9b
> > Merge: 05d251f bd6d12b
> > Author: Sascha Hauer <s.hauer@pengutronix.de>
> > Date:   Fri Nov 16 14:02:49 2012 +0100
> >
> >     Merge branch 'for-next/omap'
>
> *snip*
>
> >   so something in that omap merge is causing this.
>
> The merge itself does not actually introduce new code.
>
> Could you try finding the commit with git bisect?
>
> ~/git/barebox $ git bisect start
> ~/git/barebox $ git bisect bad 154496f736db54123c3f6daaba18809fab54ed9b
> ~/git/barebox $ git bisect good 05d251f
> Bisecting: 3 revisions left to test after this (roughly 2 steps)
> [663c466794382f803a69414c935cf0a13d4f0761] ARM OMAP4 panda: switch to new=
 environment
> ~/git/barebox $
>
> Then test this checkout and tell git using "git bisect good" or "git
> bisect bad".

  *sigh* ... i *think* i figured out what's happening.  in order to
play with barebox on my xM, until recently, i'd done nothing more than
create a single FAT partition on a micro SD card, put MLO and
barebox.bin on it, put it in my xM, and let it boot.  until that OMAP
merge, it worked fine.

  as i read it, the new default environment for the xM *requires* a
second (ext3) partition or the boot process simply hangs, am i reading
that right?  if that's true, how can i adjust that so i can once again
just boot to barebox without having a kernel and root fs created yet?

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
--8323329-414507315-1354523490=:6352
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323329-414507315-1354523490=:6352--
