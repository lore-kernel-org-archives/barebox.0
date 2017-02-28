Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cikIo-0003Nr-2J
 for barebox@lists.infradead.org; Tue, 28 Feb 2017 16:07:03 +0000
Date: Tue, 28 Feb 2017 17:06:37 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170228160637.gtijba6fgvjxvx3p@pengutronix.de>
References: <20170225205242.18106-1-u.kleine-koenig@pengutronix.de>
 <20170228065947.q26xmiy5xyph3mnz@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170228065947.q26xmiy5xyph3mnz@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/4] mvebu: Make 2nd-stage booting possible
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 28, 2017 at 07:59:47AM +0100, Sascha Hauer wrote:
> On Sat, Feb 25, 2017 at 09:52:38PM +0100, Uwe Kleine-K=F6nig wrote:
> > Hello,
> > =

> > one specialty of mvebu is that it has a movable register window. Its
> > base address is configured within this register range, so there is no
> > way to find out the current position. The BootROM leaves this window at
> > 0xd0000000, however it is beneficial to move it further to the end of
> > the address range (usually 0xf1000000) to benefit from more continuous
> > RAM. For this reason one of the first things that barebox does it to
> > move the window accordingly. If however barebox is loaded as a second
> > stage image this results in a crash as the register base address
> > register is already moved.
> > =

> > This series implements that the called image gets the base address from
> > the barebox header. It defaults to 0xd0000000 which is right for the
> > (unaware) BootROM and when barebox jumps into such an image the register
> > position is passed accordingly.
> =

> This makes the 2nd stage images unnecessary, right? Can you remove them
> from images/Makefile.mvebu?

I thought about that already, too, but they are still necessary when you
convert from U-Boot to barebox or upgrade from an older barebox. So I
think keeping them for now makes sense.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
