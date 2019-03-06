Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1T6q-0000Le-GZ
 for barebox@lists.infradead.org; Wed, 06 Mar 2019 09:45:10 +0000
Date: Wed, 6 Mar 2019 10:45:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190306094506.s53yk4ipgs672vml@pengutronix.de>
References: <20190228113900.16177-1-tomaz.solc@tablix.org>
 <20190304080442.hjyncl4whxmrz2eu@pengutronix.de>
 <890b8bc1-68d2-1b7d-e4b8-071f63d53fd9@klevio.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <890b8bc1-68d2-1b7d-e4b8-071f63d53fd9@klevio.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: rpi: refactor debug UART Kconfig settings.
To: =?iso-8859-15?Q?Toma=B8_=A6olc?= <tomaz.solc@klevio.com>
Cc: barebox@lists.infradead.org

Hi Toma=B8,

On Tue, Mar 05, 2019 at 10:13:04AM +0100, Toma=B8 =A6olc wrote:
> On 4. 03. 19 09:04, Sascha Hauer wrote:
> > So that said, even with a debug UART enabled for Rpi1 we should still
> > allow to build for Rpi2/3 although we know it won't work there.
> > =

> > The reason is you might get failures only when multiple SoCs are
> > selected. In that case you only want to enable early debugging support
> > (for the SoC you are currently testing on) without changing other things
> > in the config which might make your errors disappear.
> =

> Thanks for the clarification. I've sent another patch series that removes
> the restriction for board builds and adds the help text.
> =

> On the topic of the debug UART, I've also noticed that it's a bit tricky =
to
> get it running on Raspberry Pi 3. The problem is that the debug UART is
> using PL011 hardware, but the console is now using miniuart.
> =

> In addition to enabling it in menuconfig, I have to reverse the commit
> ab76f9d0 (switch to miniuart for stdout in the device tree) and keep
> "dtoverlay=3Dpi3-miniuart-bt" in "config.txt" (instruction for this was
> removed in f1330536).

I just sent a series based on your patches adding mini UART support for
the rpi3. I need the basic ns16550 early debugging code for Layerscape
anyway, so it's a win-win ;) Tested on Layerscape, but not on rpi3, so
I would be glad if you could test it.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
