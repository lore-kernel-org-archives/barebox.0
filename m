Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZ2U0-0005SE-JL
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 16:40:05 +0000
Date: Thu, 15 Nov 2012 11:39:58 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20121115161615.GI10369@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1211151128470.5359@oneiric>
References: <alpine.DEB.2.02.1211150924030.1247@oneiric>
 <20121115161615.GI10369@pengutronix.de>
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
Subject: Re: how easy to add extra config for NAND-less beagle?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Thu, 15 Nov 2012, Sascha Hauer wrote:

> Hi Robert,
>
> On Thu, Nov 15, 2012 at 09:36:37AM -0500, Robert P. J. Day wrote:
> >
> >   returning to playing with barebox after lengthy hiatus and i asked
> > an equivalent question on the u-boot list, let's see if it's relevant
> > here.
> >
> >   i did a regular configure and build for my beagle xM (rev C) which,
> > unlike the beagle classic, has no NAND flash:
> >
> > $ make omap3530_beagle_xload_defconfig ; make
> > $ make omap3530_beagle_defconfig ; make
> >
> > then copied MLO and barebox.bin to an appropriate card and, lo, it
> > booted nicely and i'm currently sitting in barebox:
> >
> >   barebox@Texas Instrument's Beagle:/ version
> >
> >   barebox 2012.10.0-00283-gd65d9df #2 Thu Nov 15 06:45:21 EST 2012
> >
> > thing is, this build has a good deal of NAND-related functionality
> > that is of no use whatsoever on the current beagle xMs, so i'm
> > interested in how little work it would take to add an extra config
> > that would deselect everything related to NAND.  (obviously, having
> > that functionality there doesn't *hurt*, but i'm planning to use
> > barebox in my new embedded linux courses and it would be nice to be
> > able to build for an xM and have it *totally* correspond to the actual
> > hardware.)  it shouldn't be hard -- simply deselecting anything
> > related to NAND, MTD or JFFS2 should do the trick.
>
> Disable MTD support and if you want also the protect/erase commands:
>
> make menuconfig
>
> Drivers                         --->
>   [ ] Memory Technology Device (MTD) support  --->
>
> commands                        --->
>   flash                           --->
>     [ ] protect/erase
>
> Saves you around 35Kb of binary space

  yup, i'm testing that shortly, but my question was more along the
lines of, rather than having to disable all NAND-related
functionality *manually*, how easy/worthwhile would it be to create an
additional make target that reflects a beagle *without* NAND flash?

  one significant difference between a classic beagle and a current xM
is the total lack of NAND flash, and that's not a minor difference.
it means you can remove all barebox functionality related to that --
NAND routines and support, MTD stuff, JFFS2(?) support, and so on.
this could be automated by creating a couple new configs, say:

  make dm3730_beaglexm_xload_defconfig
  make dm3730_beaglexm_defconfig

so that the result really matches the underlying board.

  is this worth doing?  it would seem to be fairly easy, i can whip
something up and test it.

rday

p.s.  there are other significant differences as well -- onboard
ethernet, 4-port USB hub.  it seems to me that there is enough of a
difference to warrant a separate configuration.  thoughts?

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
