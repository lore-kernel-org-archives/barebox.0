Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfSwH-0003Eh-Aq
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 10:07:49 +0000
Date: Mon, 3 Dec 2012 05:07:44 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20121203100446.GQ10369@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1212030505590.15045@oneiric>
References: <alpine.DEB.2.02.1212011607040.13954@oneiric>
 <20121203094625.GJ10369@pengutronix.de>
 <alpine.DEB.2.02.1212030449190.9853@oneiric>
 <20121203095649.GM10369@pengutronix.de>
 <alpine.DEB.2.02.1212030458310.14230@oneiric>
 <20121203100446.GQ10369@pengutronix.de>
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
Subject: Re: suddenly, i can't boot barebox on my beagle xM anymore
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, 3 Dec 2012, Sascha Hauer wrote:

> On Mon, Dec 03, 2012 at 05:01:43AM -0500, Robert P. J. Day wrote:
> > On Mon, 3 Dec 2012, Sascha Hauer wrote:
> >
> > > On Mon, Dec 03, 2012 at 04:50:24AM -0500, Robert P. J. Day wrote:
> > > > On Mon, 3 Dec 2012, Sascha Hauer wrote:
> > > >
> > > > > I just rechecked, current master works fine for me on my beagle (no
> > > > > xM though). Just a guess, have you used the barebox-flash-image link
> > > > > instead of barebox.bin? Since the image is compressed now it becomes
> > > > > important to use the link (which points to the compressed image).
> > > >
> > > >   whoops, no, i didn't ... will test right this instant.  what *name*
> > > > do i copy it to the SD card under?
> > >
>
> make omap3530_beagle_xload_defconfig && make
>
> > > xload: cp barebox-flash-image /mnt/MLO
>
> make omap3530_beagle_defconfig && make
>
> > > barebox: cp barebox-flash-image /mnt/barebox.bin
> >
> >   i did that second copy, but are you sure i should copy that new
> > flash image to MLO?  i'm not convinced...
>
> Not the same binary of course. I clarified this a bit above.

  ah, thanks.  it seems the actual "MLO" file works fine being copied
directly as "MLO".  not sure if it's supposed to, just making an
observation.  and now, off for coffee and to the lab.  thanks.

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
