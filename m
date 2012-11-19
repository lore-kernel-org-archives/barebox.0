Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaNqh-0000dY-Mv
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 09:41:04 +0000
Date: Mon, 19 Nov 2012 10:41:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121119094101.GK10369@pengutronix.de>
References: <alpine.DEB.2.02.1211180844430.18098@oneiric>
 <20121118162637.GF8327@game.jcrosoft.org>
 <alpine.DEB.2.02.1211181139290.32036@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1211181139290.32036@oneiric>
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
Subject: Re: is there a standard for putting the name of a source file in the
 file?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sun, Nov 18, 2012 at 11:39:48AM -0500, Robert P. J. Day wrote:
> On Sun, 18 Nov 2012, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> > On 08:48 Sun 18 Nov     , Robert P. J. Day wrote:
> > >
> > >   as i'm working my way thru the lib/ routines in barebox, i notice
> > > that some source files there, like getopt.c, conveniently have the
> > > filename right at the top:
> > >
> > > /*
> > >  * getopt.c - a simple getopt(3) implementation. See getopt.h for explanation.
> > > ...
> > >
> > > i really like this habit as it makes it easy to send a file to the
> > > printer and not forget what the file was.
> > >
> > >   however, most of the files in lib/ don't have that.  as i work my
> > > way through the files, i'd be happy to add something like that to each
> > > file, and submit the changes all as one patch.  is there a standard?
> > > from what i can see, there's quite the variety in how people add that
> > > to a source file.
> > >
> > >   i'm open to guidance and i can take it from there.
> > no this is a pain in the ass to maintian when we move file
> >
> > I' drop it and I'm against it
> 
>   ok, that logic makes sense, i'm good with that.

Me aswell. Tools like a2ps also print the filename ;)

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
