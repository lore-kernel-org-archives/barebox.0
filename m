Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaNw2-0003Cc-CZ
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 09:46:35 +0000
Date: Mon, 19 Nov 2012 04:46:29 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20121119094101.GK10369@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1211190445360.7567@oneiric>
References: <alpine.DEB.2.02.1211180844430.18098@oneiric>
 <20121118162637.GF8327@game.jcrosoft.org>
 <alpine.DEB.2.02.1211181139290.32036@oneiric>
 <20121119094101.GK10369@pengutronix.de>
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
Subject: Re: is there a standard for putting the name of a source file in
 the file?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, 19 Nov 2012, Sascha Hauer wrote:

> On Sun, Nov 18, 2012 at 11:39:48AM -0500, Robert P. J. Day wrote:
> > On Sun, 18 Nov 2012, Jean-Christophe PLAGNIOL-VILLARD wrote:
> >
> > > On 08:48 Sun 18 Nov     , Robert P. J. Day wrote:
> > > >
> > > >   as i'm working my way thru the lib/ routines in barebox, i notice
> > > > that some source files there, like getopt.c, conveniently have the
> > > > filename right at the top:
> > > >
> > > > /*
> > > >  * getopt.c - a simple getopt(3) implementation. See getopt.h for explanation.
> > > > ...
> > > >
> > > > i really like this habit as it makes it easy to send a file to the
> > > > printer and not forget what the file was.
> > > >
> > > >   however, most of the files in lib/ don't have that.  as i work my
> > > > way through the files, i'd be happy to add something like that to each
> > > > file, and submit the changes all as one patch.  is there a standard?
> > > > from what i can see, there's quite the variety in how people add that
> > > > to a source file.
> > > >
> > > >   i'm open to guidance and i can take it from there.
> > > no this is a pain in the ass to maintian when we move file
> > >
> > > I' drop it and I'm against it
> >
> >   ok, that logic makes sense, i'm good with that.
>
> Me aswell. Tools like a2ps also print the filename ;)

  yes, i agree, it was a silly idea, i only brought it up since some
of the files under lib/ were doing that and some weren't and i didn't
know if there was a standard of some kind.  movin' on ...

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
