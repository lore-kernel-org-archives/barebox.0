Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SVIsL-0006VY-2c
 for barebox@lists.infradead.org; Fri, 18 May 2012 08:49:30 +0000
Date: Fri, 18 May 2012 10:49:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120518084921.GP30400@pengutronix.de>
References: <CAA4bVAF6=LXsv7Q97Mi6uSx_0oY+h=pyTOrRip=+dyAykGWKpw@mail.gmail.com>
 <CAA4bVAE=UFvDOv0MS97wZjqBLJKxjxRvt3n+7eQME1gfk++RbA@mail.gmail.com>
 <20120517181915.GJ30400@pengutronix.de>
 <CAA4bVAGhuekyOa5cjJHcWJUYm6K4SPn=c3BXTauFP3CvFaMX7A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAGhuekyOa5cjJHcWJUYm6K4SPn=c3BXTauFP3CvFaMX7A@mail.gmail.com>
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
Subject: Re: build timestamps don't work
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Fri, May 18, 2012 at 12:28:52AM +0400, Antony Pavlov wrote:
> On 17 May 2012 22:19, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Thu, May 17, 2012 at 09:52:36PM +0400, Antony Pavlov wrote:
> >> ping
> >>
> >> On 16 May 2012 08:27, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> >> > Hi!
> >> >
> >> > =A0I have found that on my Debian testing build system generation of
> >> > timestamps don't work correctly.
> >
> > I just tried and it works with ARM builds. Tried again with MIPS, and
> > yes, indeed it does not work. Maybe worth looking at the architecture
> > specific Makefile.
> >
> =

> I tried another debian linux. I tried ARM & MIPS: the both don't work.
> =

> I checked linux-3.1 build for mips: it work. At least  there is one diffe=
rrence:
> in linux if i make 'rm .version && make', then scripts/mkcompile_h
> started _two_ times, but only _one_ time in barebox.

Just to make sure, you have the following in your tree, right?

commit 55c81081e577922a8d7d0a1d633efb7feb3560d4
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Sun Apr 15 12:05:21 2012 +0200

    Makefile: fix build timestamps
    =

    This patch adds the scripts/mkcompile_h from the Kernel. This gives
    us additional information about the build like who built this binary
    and with which compiler. Currently the only information used is the
    build timestamp and the generation number.
    This also fixes the build timestamp in the banner which is now
correct
    even with consecutive builds without making clean in between.
    =

    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

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
