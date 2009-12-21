Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMehs-0004gh-Uq
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 09:37:40 +0000
Date: Mon, 21 Dec 2009 04:37:09 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20091221093248.GT15126@pengutronix.de>
Message-ID: <alpine.LFD.2.00.0912210433330.6617@localhost>
References: <alpine.LFD.2.00.0912200705560.18199@localhost>
	<20091221093248.GT15126@pengutronix.de>
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
Subject: Re: more CONFIG oddities in the current barebox tree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, 21 Dec 2009, Sascha Hauer wrote:

> On Sun, Dec 20, 2009 at 07:08:02AM -0500, Robert P. J. Day wrote:
> >
> >   here's a short list of Makefile CONFIG tests that test for
> > non-existent CONFIG variables -- not strictly an error, just
> > valueless and can be removed if there's no compelling reason to
> > keep them.  (as always, could be trivial false positives).
> >
> > ===== CMD_I2C =====
> > ./commands/Makefile:obj-$(CONFIG_CMD_I2C)		+= i2c.o
>
> This can be removed.

  ... snip ...

just to be clear, if such a reference to a non-existent CONFIG
variable can be removed from a Makefile, that normally implies that
what it was managing (the source file) can *also* be removed since
there will, of course, be nothing to force its compilation.

  in the above case, there just happens to be no file i2c.c in that
directory so it's not a problem, but if there had been, the patch to
take care of this would have involved deleting that source file.  as
long as we understand that.

  i may remove the removable stuff in more than one patch if they look
like logically separate operations.

rday
--

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
