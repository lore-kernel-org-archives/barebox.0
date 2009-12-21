Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMgWF-0005KX-Ry
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 11:33:47 +0000
Date: Mon, 21 Dec 2009 06:33:17 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20091221113052.GG15126@pengutronix.de>
Message-ID: <alpine.LFD.2.00.0912210631160.13694@localhost>
References: <alpine.LFD.2.00.0912210615350.13305@localhost>
	<20091221113052.GG15126@pengutronix.de>
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
Subject: Re: [PATCH] commands:  Remove reference to non-existent
	CONFIG_CMD_I2C.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, 21 Dec 2009, Sascha Hauer wrote:

> On Mon, Dec 21, 2009 at 06:17:19AM -0500, Robert P. J. Day wrote:
> >
> > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> >
> > ---
> >
> >   the commands directory doesn't even have an i2c.c source file, so
> > it's clearly safe to remove this reference.  although i'm assuming
> > that, at some point down the road, there will be an "i2c" command
> > since that would be useful.
>
> Ok, applied.
>
> Is a i2c command really useful? For I2C eeproms you would create an
> epprom driver which creates a file under /dev/ which you can then
> access using the usual mm/mw commands. Maybe an i2c command could be
> useful to register a new device on an I2C bus.

  i'm not sure -- maybe it *isn't* all that useful.  if at some point
it becomes useful, we can always put this back in.  from the original
u-boot, i recall being able to at least run "i2c probe" or something
like that.

  in any event, that doesn't exist now so no big deal.

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
