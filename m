Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfVS3-0002C5-MV
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 12:48:48 +0000
Date: Mon, 3 Dec 2012 07:48:43 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20121203090413.GH10369@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1212030747180.23376@oneiric>
References: <alpine.DEB.2.02.1212010809040.13064@oneiric>
 <alpine.DEB.2.02.1212010818090.13158@oneiric>
 <20121203090413.GH10369@pengutronix.de>
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
Subject: Re: how does barebox deal with more than one environment?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, 3 Dec 2012, Sascha Hauer wrote:

> On Sat, Dec 01, 2012 at 08:19:26AM -0500, Robert P. J. Day wrote:
> > On Sat, 1 Dec 2012, Robert P. J. Day wrote:
> >
> > >
> > >   writing up a simple barebox exercise for students and on this page:
> > >
> > > http://wiki.barebox.org/doku.php?id=user:first_steps
> > >
> > > it seems clear(?) that you can define multiple environments that will
> > > appear at /dev/env0, /dev/env1, etc, but that page also claims that
> > > *only* the configuration on /dev/env0 will be executed automatically
> > > if barebox finds that it's a valid configuration sector.
> > >
> > >   so what happens with the additional environments?  that page doesn't
> > > make it clear.  i'm just about to read the source to see if i can
> > > figure this out.
> >
> >   oh, wait, i think i see ... the "loadenv" command will load a
> > given environment into a directory so i'm *assuming* that
> > additional environments are simply available to be loaded, but
> > /dev/env0 is the only one treated special.  or feel free to
> > correct me if i'm hopelessly wrong.
>
> /dev/env0 is the only environment used by barebox by default. As you
> correctly found out loadenv/saveenv could be used to load arbitrary
> envfs images to arbitrary directories. We could also think about
> adding some kind of redundancy, but currently this would be board
> specific, there is no generic heuristic to fall back to a second env
> if the first one is corrupted.

  oh, i wasn't suggesting getting that carried away, just wanted to
clarify that only the first environment is automatically consulted,
while additional environments are available only *manually* to the
developer.  that's fine, i just wanted to make sure i understood that.
thanks.

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
