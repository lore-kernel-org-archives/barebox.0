Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmAfl-0002rr-6C
 for barebox@lists.infradead.org; Mon, 07 Dec 2020 07:11:02 +0000
Date: Mon, 7 Dec 2020 08:10:58 +0100
Message-ID: <20201207071058.GB3977@pengutronix.de>
References: <20201128213934.681065-1-ahmad@a3f.at>
 <20201128213934.681065-11-ahmad@a3f.at>
 <20201129195042.iz25xbxifh75yryo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201129195042.iz25xbxifh75yryo@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 11/11] doc: bcm283x: document use of mini-uart on
 Raspberry Pi Zero W / CM3
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <ahmad@a3f.at>, Andrew John <andrew@mobius-embedded-systems.co.uk>, Robert Carnecky <robert@neopsis.com>, Rouven Czerwinski <rcz@pengutronix.de>

On Sun, Nov 29, 2020 at 08:50:42PM +0100, Roland Hieber wrote:
> On Sat, Nov 28, 2020 at 10:39:34PM +0100, Ahmad Fatoum wrote:
> > As described in the UART configuration[1] article in the Raspberry Pi
> > Foundation documentation, Raspberry Pi 3 & 4 as well as Zero W use the
> > mini-uart as primary (easily user-accessible) UART. At least on the
> > Raspberry Zero W and CM3, we need to pass uart_2ndstage=1, so the
> > BootROM leaves the 8250 IP in a suitable state for use by barebox.
> > Document this.
> > 
> > [1]: https://www.raspberrypi.org/documentation/configuration/uart.md
> > 
> > Cc: Roland Hieber <rhi@pengutronix.de>
> > Cc: Rouven Czerwinski <rcz@pengutronix.de>
> > Cc: Robert Carnecky <robert@neopsis.com>
> > Cc: Andrew John <andrew@mobius-embedded-systems.co.uk>
> > Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> > ---
> >  Documentation/boards/bcm2835.rst | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
> > index c896871e0d82..dbdfc2633173 100644
> > --- a/Documentation/boards/bcm2835.rst
> > +++ b/Documentation/boards/bcm2835.rst
> > @@ -23,6 +23,13 @@ Raspberry Pi
> >           kernel=barebox.img
> >           enable_uart=1
> >  
> > +     If you want to use the mini-uart instead of the PL011, you might need to additionally set::
> > +
> > +         uart_2ndstage=1
> > +
> > +     This is useful on newer boards like the Raspberry Pi Zero W and CM3, which route the
> > +     more easily accessible primary UART to the mini-uart.
> 
> This seems to be non-optional on RPi Zero W, so I would word it more
> strongly.
> 
> With this series, at least barebox boots, which is better than in master
> :-) However, I cannot get the stock kernel (/boot/kernel.img) to boot on
> Zero W, and I cannot figure out why:

Should I wait for this being fixed before I merge this series?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
