Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1drgcN-0004Iw-9t
 for barebox@lists.infradead.org; Tue, 12 Sep 2017 08:32:29 +0000
Date: Tue, 12 Sep 2017 10:32:02 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170912083202.urfrvyewzddlghg6@pengutronix.de>
References: <6e6e8b7d-3fe7-04ca-c275-efbf89cec410@gr13.net>
 <20170911071614.ubhmelfunysejs4a@pengutronix.de>
 <207dcf09-6116-29e2-e854-aa3e02cc0c10@gr13.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <207dcf09-6116-29e2-e854-aa3e02cc0c10@gr13.net>
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
Subject: Re: [ptxdist] boot problem w/ barebox
To: ptxdist@pengutronix.de
Cc: barebox@lists.infradead.org, d.schultz@phytec.de

Hello,

On Mon, Sep 11, 2017 at 08:47:03PM +0200, Enrico Weigelt, metux IT consult =
wrote:
> On 11.09.2017 09:16, Uwe Kleine-K=F6nig wrote:
> =

> > Try adding a #define DEBUG in linux-4.13/arch/arm/boot/compressed/head.S
> > > and make sure enabled DEBUG_LL and selected the right UART in your>
> .config.
> After deep digging in the init code, I've meanwhile fixed it (at least
> with self-compiled 2015 bbx - didn't try newer versions yet). In the end
> was just dt misconfiguration (that wasn't obvious in this dts wood,
> which I ported from the old 4.1-phy tree): the debug uart was disabled.
> =

> This lead to some funny situations:
> =

> * DEBUG_ll worked after fixing the port number (the counting is a bit
>   confusing: ttymxc1 is #2)

CONFIG_DEBUG_IMX_UART_PORT=3D2 means it should use UART-2 as documented in
the reference manual. But yeah, this is confusing, the problem is that
the hardware guy numbering the UARTS named the first UART UART-1 which
isn't what a kernel hacker would have picked.

> * console works up to the point where the uarts tty drivers are
>   configured. as the uart was disabled in dt, no tty driver was
>   associated (while ll driver was still active), so the clock was
>   disabled on some point, leading to supposedly hangup (actually,
>   just the console was gone)

When the UART tty driver are configured doesn't play a role here. At
some point during boot all unused clocks are disabled and up to then no
driver ensured your uart clock to be used. And maybe you had a real
hangup because writing to an UART with its clock off might have "funny"
effects.

> * hacking out the clock disable lead further to the point where rootfs
>   is mounted and init started

There is no need for a hack, just pass "clk_ignore_unused" on the kernel
command line.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
