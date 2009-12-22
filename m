Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NN6h3-0002fV-0m
	for barebox@lists.infradead.org; Tue, 22 Dec 2009 15:30:40 +0000
Date: Tue, 22 Dec 2009 10:30:07 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20091222152340.GA22533@pengutronix.de>
Message-ID: <alpine.LFD.2.00.0912221028580.4973@localhost>
References: <alpine.LFD.2.00.0912221000250.4427@localhost>
	<20091222152340.GA22533@pengutronix.de>
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
Subject: Re: which drivers subdirs should be automatically selected?
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, 22 Dec 2009, Robert Schwebel wrote:

> On Tue, Dec 22, 2009 at 10:02:40AM -0500, Robert P. J. Day wrote:
> > drivers/Makefile:
> >
> > obj-y   += net/
> > obj-y   += serial/
> > obj-y   += nand/
> > obj-y   += nor/
> > obj-y   += usb/
> > obj-$(CONFIG_SPI) += spi/
> > obj-$(CONFIG_I2C) += i2c/
> > obj-$(CONFIG_VIDEO) += video/
> >
> >
> >   is there a fundamental reason that some of those subdirs are
> > auto-selected, while others are based on a CONFIG variable?
> > asked another way, are there some driver subdirs that are so
> > fundamentally required that they *should* be auto-selected, or
> > should *everything* be a user-selectable choice?  the above just
> > seems slightly inconsistent and non-obvious.
>
> They should be selectable.

  i thought as much.  perhaps i'll start with that smaller fix and
work my way up if i can make that change in isolation to start with.

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
