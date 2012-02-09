Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvQ9U-0005eY-7j
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 09:18:54 +0000
Date: Thu, 9 Feb 2012 04:18:33 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20120209081628.GV3852@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1202090418050.10799@oneiric>
References: <alpine.DEB.2.02.1202081718100.26281@oneiric>
 <20120209081628.GV3852@pengutronix.de>
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
Subject: Re: "panda" config and build doesn't work on panda ES at all
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Thu, 9 Feb 2012, Sascha Hauer wrote:

> On Wed, Feb 08, 2012 at 05:20:45PM -0500, Robert P. J. Day wrote:
> >
> >   just for fun, i configured and built MLO and barebox.bin for the
> > panda, then tried to use that on a panda ES -- got no response
> > whatever from minicom.  i did verify that i could boot to barebox just
> > fine on a regular panda, though.
> >
> >   this is different from the case of a regular beagle and beagle xM,
> > for which the MLO and barebox.bin boot just fine on an xM, so there's
> > clearly a significant difference between those two panda variants as
> > far as barebox is concerned.  i haven't had any time to look at it in
> > more detail yet.
>
> We should add some information about that here:
>
> http://wiki.barebox.org/doku.php?id=boards:texas_instruments_panda
> http://wiki.barebox.org/doku.php?id=boards:texas_instruments_beagle
>
> So what variants of these boards are out there?
>
> Panda 'regular'
> Panda ES
> Beagle 'regular'
> Beagle xM
>
> Do these correspond somehow to the revisions printed on the board?
> I have a Beagle rev C3 and a Panda rev A1.

  i'll write something up and ask the beagle & panda lists to take a
look.

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
