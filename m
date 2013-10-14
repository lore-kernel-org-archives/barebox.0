Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VVf4i-0000yW-AY
 for barebox@lists.infradead.org; Mon, 14 Oct 2013 10:08:32 +0000
Date: Mon, 14 Oct 2013 06:07:59 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <1381745115.11504.74.camel@coredoba.hi.pengutronix.de>
Message-ID: <alpine.DEB.2.02.1310140607290.10921@oneiric>
References: <1380534188-1734-1-git-send-email-s.hauer@pengutronix.de>
 <1381743497.11504.72.camel@coredoba.hi.pengutronix.de>
 <alpine.DEB.2.02.1310140542540.10762@oneiric>
 <1381745115.11504.74.camel@coredoba.hi.pengutronix.de>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-262926125-1381745282=:10921"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: bootloader specification for barebox
To: =?ISO-8859-15?Q?Jan_L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-262926125-1381745282=:10921
Content-Type: TEXT/PLAIN; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 14 Oct 2013, Jan Lübbe wrote:

> On Mon, 2013-10-14 at 05:43 -0400, Robert P. J. Day wrote:
> > On Mon, 14 Oct 2013, Jan Lübbe wrote:
> >
> > > Hi,
> > >
> > > On Mon, 2013-09-30 at 11:43 +0200, Sascha Hauer wrote:
> > > > Sascha Hauer (4):
> > > >       add function to read single line files
> > > >       cdev: store dos partition type in struct cdev
> > > >       Implement bootloader spec support for barebox
> > > >       add kernel-install tool for bootloader Spec
> > >
> > > I've tried these patches on my BeagleBones and they work as described.
> >
> >   oooh ... i'd like to test replacing u-boot with barebox on my
> > beaglebone black, is there any magic involved?
>
> You should just need to use am335x_beaglebone_mlo_small_defconfig
> for MLO and am335x_beaglebone_defconfig for barebox.bin. Then you
> place them in the FAT partition (same procedure as with u-boot).

  excellent, i may give that a shot later today, thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
--8323329-262926125-1381745282=:10921
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323329-262926125-1381745282=:10921--
