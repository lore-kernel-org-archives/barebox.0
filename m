Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RutZp-00067x-2l
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 22:31:53 +0000
Date: Tue, 7 Feb 2012 17:31:45 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20120207223022.GJ3852@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1202071731290.4878@oneiric>
References: <alpine.DEB.2.02.1202071540550.29923@oneiric>
 <20120207221213.GG3852@pengutronix.de>
 <alpine.DEB.2.02.1202071718260.4214@oneiric>
 <20120207223022.GJ3852@pengutronix.de>
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
Subject: Re: for which OMAP platform is MCI_OMAP_HSMMC appropriate?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, 7 Feb 2012, Sascha Hauer wrote:

> On Tue, Feb 07, 2012 at 05:20:12PM -0500, Robert P. J. Day wrote:
> > On Tue, 7 Feb 2012, Sascha Hauer wrote:
> >
> > > On Tue, Feb 07, 2012 at 03:42:14PM -0500, Robert P. J. Day wrote:
> > > >
> > > >   from drivers/mci/Kconfig:
> > > >
> > > > config MCI_OMAP_HSMMC
> > > >         bool "OMAP HSMMC"
> > > >         depends on ARCH_OMAP4 || ARCH_OMAP3
> > > >         help
> > > >           Enable this entry to add support to read and write SD cards on a
> > > >           OMAP4 based system.
> > > >
> > > > i assume you can see the confusion. :-)
> > >
> > > I added this driver for the OMAP4 and forgot to adjust this when I
> > > realized that it works on OMAP3 aswell. U-boot uses this driver for
> > > omap5 also, so we better just drop the '4' in OMAP4.
> >
> >   ok, i can submit an adjusted patch but what would this depend on
> > then?  OMAP 3,4 and 5, or OMAP in general?  maybe you better handle
> > that, then, i'm not sure what the proper set of dependencies is.
>
> We don't have omap5 support, so for now it's enough to fix the help
> text. We can come back to the dependencies when omap5 support is added.

  ok, then the patch i posted a while back should be fine for now.

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
