Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ruizu-0005AX-SP
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 11:14:07 +0000
Date: Tue, 7 Feb 2012 06:13:58 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20120207093342.GB3852@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1202070608280.17306@oneiric>
References: <alpine.DEB.2.02.1202061041330.5018@oneiric>
 <20120207093342.GB3852@pengutronix.de>
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
Subject: Re: any value in allowing user selection of barebox prompt?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, 7 Feb 2012, Sascha Hauer wrote:

> On Mon, Feb 06, 2012 at 10:57:22AM -0500, Robert P. J. Day wrote:

... snip ...

> >   i tried it and it seems to work fine although the aesthetics in
> > "make menuconfig" is a bit strange WRT order:
> >
> >     (Texas Instrument's Beagle) Board info
> >         Select OMAP board (Texas Instrument's Beagle Board)  --->
> >
> > but that could be fixed just by moving the BOARDINFO entry below the
> > board choice in that file.
> >
> >   was this already discussed and rejected once upon a time?  it's not
> > a big deal but it has the value of being moderately informative.
>
> It hasn't been discussed before. It's mostly the way it is because I
> did it that way without much thinking. The change you suggest has
> one drawback. Consider you do a make menuconfig and change the
> board. Currently BOARDINFO correctly changes to the new board, but
> if we prompt the user for BOARDINFO the board string will still have
> the name of the old board.

  i'd noticed that but didn't know if there was any way to resolve
it easily.

> I think the board name does not have to come from Kconfig anyway.
> How about keeping things in Kconfig how they are but instead of
> using CONFIG_BOARDINFO directly we could use a string. This string
> defaults to CONFIG_BOARDINFO but can be overwritten by board code by
> calling a set_boardinfo(const char *) function. For new boards we
> could use this exclusively and maybe convert the existing boards
> over to it.

  i didn't want to make a big deal of this, i figured if it was
something sufficiently simple, it would be useful.

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
