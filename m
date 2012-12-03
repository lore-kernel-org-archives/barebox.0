Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfRwm-0007JQ-6A
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 09:04:17 +0000
Date: Mon, 3 Dec 2012 10:04:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121203090413.GH10369@pengutronix.de>
References: <alpine.DEB.2.02.1212010809040.13064@oneiric>
 <alpine.DEB.2.02.1212010818090.13158@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1212010818090.13158@oneiric>
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
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sat, Dec 01, 2012 at 08:19:26AM -0500, Robert P. J. Day wrote:
> On Sat, 1 Dec 2012, Robert P. J. Day wrote:
> 
> >
> >   writing up a simple barebox exercise for students and on this page:
> >
> > http://wiki.barebox.org/doku.php?id=user:first_steps
> >
> > it seems clear(?) that you can define multiple environments that will
> > appear at /dev/env0, /dev/env1, etc, but that page also claims that
> > *only* the configuration on /dev/env0 will be executed automatically
> > if barebox finds that it's a valid configuration sector.
> >
> >   so what happens with the additional environments?  that page doesn't
> > make it clear.  i'm just about to read the source to see if i can
> > figure this out.
> 
>   oh, wait, i think i see ... the "loadenv" command will load a given
> environment into a directory so i'm *assuming* that additional
> environments are simply available to be loaded, but /dev/env0 is the
> only one treated special.  or feel free to correct me if i'm
> hopelessly wrong.

/dev/env0 is the only environment used by barebox by default. As you
correctly found out loadenv/saveenv could be used to load arbitrary
envfs images to arbitrary directories. We could also think about
adding some kind of redundancy, but currently this would be board
specific, there is no generic heuristic to fall back to a second
env if the first one is corrupted.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
