Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TfvSd-00007e-As
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 16:35:08 +0000
Received: from mail413.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D8D0D1050897
 for <barebox@lists.infradead.org>; Tue,  4 Dec 2012 17:43:16 +0100 (CET)
Date: Tue, 4 Dec 2012 17:33:15 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121204163315.GG8327@game.jcrosoft.org>
References: <alpine.DEB.2.02.1212031041250.19977@oneiric>
 <20121203162121.GT10369@pengutronix.de>
 <20121204115246.GF8327@game.jcrosoft.org>
 <alpine.DEB.2.02.1212040706440.4812@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1212040706440.4812@oneiric>
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
Subject: Re: how does one enable barebox's low-level debugging?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On 07:10 Tue 04 Dec     , Robert P. J. Day wrote:
> On Tue, 4 Dec 2012, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> > On 17:21 Mon 03 Dec     , Sascha Hauer wrote:
> > > On Mon, Dec 03, 2012 at 10:45:41AM -0500, Robert P. J. Day wrote:
> > > >
> > > >   looking through common/startup.c and decided i wanted to see
> > > > confirmation of all the initcalls running here:
> > > >
> > > >         for (initcall = __barebox_initcalls_start;
> > > >                         initcall < __barebox_initcalls_end; initcall++) {
> > > >                 debug("initcall-> %pS\n", *initcall);
> > > >                 result = (*initcall)();
> > > >                 if (result)
> > > >                         pr_err("initcall %pS failed: %s\n", *initcall,
> > > >                                         strerror(-result));
> > > >         }
> > > >
> > > >
> > > > so i started from scratch, ran "make menuconfig" for both the x-loader
> > > > and barebox to enable "low level debug messages", but i don't see any
> > > > difference in the boot output.
> > > >
> > > >   i've perused the barebox wiki and don't see anything regarding that
> > > > setting.  am i doing something wrong?
> > >
> > > You have to add a "#define DEBUG" to the file you want to have the debug
> > > messages from. Add this *above* the includes, just like in the kernel.
> > >
> > > Something not mentioned in the wiki is that before the first console is
> > > initialized barebox will print the messages into a ring buffer which it
> > > will dump when the first console is initialized.
> 
> > but also print on the debug console if enabled
> > on the current barebox
> 
>   i thought that was true, i'll add it to my barebox debugging page.
> i know i mentioned this before but i've started a series of barebox
> pages on my wiki that i may incorporate into some embedded linux
> classes in the near future.  in particular, i'm currently documenting
> the set of initcalls invoked when booting my beagle xM:
> 
> http://www.crashcourse.ca/wiki/index.php/Barebox_initcalls_for_the_xM
> 
> which is a really convenient way to examine exactly what happens when
> the xM powers up.  i may now know what to do with pages just yet:
> 
> http://www.crashcourse.ca/wiki/index.php/Barebox_pages
> 
> but i just want the info available in case the need arises.  all still
> very much a work in progress.
your wiki do not show one point

is that the lowlevel debug will print message directly on the uart but will
expect the uart to be init by some thing else

this is usefull when your barebox have a bug really early even before the
console is init

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
