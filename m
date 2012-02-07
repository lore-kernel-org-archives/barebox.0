Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rujje-0006PF-E1
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 12:01:23 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2ED10100445B
 for <barebox@lists.infradead.org>; Tue,  7 Feb 2012 13:01:21 +0100 (CET)
Date: Tue, 7 Feb 2012 12:56:18 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120207115618.GA19413@game.jcrosoft.org>
References: <alpine.DEB.2.02.1202061041330.5018@oneiric>
 <20120207093342.GB3852@pengutronix.de>
 <alpine.DEB.2.02.1202070608280.17306@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1202070608280.17306@oneiric>
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
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On 06:13 Tue 07 Feb     , Robert P. J. Day wrote:
> On Tue, 7 Feb 2012, Sascha Hauer wrote:
> 
> > On Mon, Feb 06, 2012 at 10:57:22AM -0500, Robert P. J. Day wrote:
> 
> ... snip ...
> 
> > >   i tried it and it seems to work fine although the aesthetics in
> > > "make menuconfig" is a bit strange WRT order:
> > >
> > >     (Texas Instrument's Beagle) Board info
> > >         Select OMAP board (Texas Instrument's Beagle Board)  --->
> > >
> > > but that could be fixed just by moving the BOARDINFO entry below the
> > > board choice in that file.
> > >
> > >   was this already discussed and rejected once upon a time?  it's not
> > > a big deal but it has the value of being moderately informative.
> >
> > It hasn't been discussed before. It's mostly the way it is because I
> > did it that way without much thinking. The change you suggest has
> > one drawback. Consider you do a make menuconfig and change the
> > board. Currently BOARDINFO correctly changes to the new board, but
> > if we prompt the user for BOARDINFO the board string will still have
> > the name of the old board.
> 
>   i'd noticed that but didn't know if there was any way to resolve
> it easily.
add set support to Kconfig

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
