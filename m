Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZJu2-00048p-WC
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 11:16:07 +0000
Date: Fri, 16 Nov 2012 06:16:03 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20121115192630.GJ10369@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1211160614560.4073@oneiric>
References: <alpine.DEB.2.02.1211150924030.1247@oneiric>
 <20121115161615.GI10369@pengutronix.de>
 <alpine.DEB.2.02.1211151128470.5359@oneiric>
 <20121115192630.GJ10369@pengutronix.de>
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

> On Thu, Nov 15, 2012 at 11:39:58AM -0500, Robert P. J. Day wrote:
> >
> >   yup, i'm testing that shortly, but my question was more along the
> > lines of, rather than having to disable all NAND-related
> > functionality *manually*, how easy/worthwhile would it be to create an
> > additional make target that reflects a beagle *without* NAND flash?
> >
> >   one significant difference between a classic beagle and a current xM
> > is the total lack of NAND flash, and that's not a minor difference.
> > it means you can remove all barebox functionality related to that --
> > NAND routines and support, MTD stuff, JFFS2(?) support, and so on.
> > this could be automated by creating a couple new configs, say:
> >
> >   make dm3730_beaglexm_xload_defconfig
> >   make dm3730_beaglexm_defconfig
> >
> > so that the result really matches the underlying board.
> >
> >   is this worth doing?  it would seem to be fairly easy, i can whip
> > something up and test it.
>
> I don't think this is worth it. We should rather keep the number of
> defconfigs low. Splitting them means we have to maintain them and
> keep them in sync. Also it means to increase the time needed to
> compile all defconfigs (which I do routinely, currently on every
> commit).

  ok, that makes sense.  i'll still have a couple questions later on
the proper configuration of barebox for flash-less systems like the
xM.  thanks.

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
