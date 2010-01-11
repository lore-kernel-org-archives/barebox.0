Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUIPM-0007p6-U2
	for barebox@lists.infradead.org; Mon, 11 Jan 2010 11:26:05 +0000
Date: Mon, 11 Jan 2010 12:25:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100111112557.GU6923@pengutronix.de>
References: <20100109232838.GB14051@darwin>
	<20100111094902.GR6923@pengutronix.de>
	<20100111103700.GH14051@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100111103700.GH14051@darwin>
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
Subject: Re: [PATCH 0/5] Add support for EDB93xx boards
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

On Mon, Jan 11, 2010 at 11:37:00AM +0100, Matthias Kaehlcke wrote:
> Hi Sascha,
> 
> El Mon, Jan 11, 2010 at 10:49:02AM +0100 Sascha Hauer ha dit:
> 
> > Thanks for the nice work. The patches look mostly fine. I wonder that
> > U-Boot ep93xx support has never made it to the mainline. Some comments
> > about the patches inline.
> 
> in late december i sent a (new) set of patches to the U-Boot mailing
> list. i still havn't received feedback, i suppose due to christmas,
> new year, ... my aim is to mainline ep93xx support, i am confident
> this will be accomplished soon.
> 
> > On Sun, Jan 10, 2010 at 12:28:38AM +0100, Matthias Kaehlcke wrote:
> > > Add support for the following Cirrus Logic EDB93xx boards:
> > > 
> > > EDB9301
> > > EDB9302
> > > EDB9302A
> > > EDB9307
> > > EDB9307A
> > > EDB93012
> > > EDB9315
> > > EDB9315A
> > > 
> > > This patchset has been tested on boards based on the EDB9301 and EDB9307A designs
> > > 
> > > Matthias Kaehlcke (5):
> > >   ARM: Add support for EP93xx SoCs
> > >   Add EP93xx ethernet driver
> > >   Add support for EP9xx GPIOs
> > >   Add PrimeCell PL010 serial driver
> > >   Add support for EDB93xx boards
> > > 
> > >  Documentation/boards.dox                        |    8 +
> > >  MAINTAINERS                                     |   11 +
> > >  arch/arm/Kconfig                                |    6 +
> > >  arch/arm/Makefile                               |    9 +
> > >  arch/arm/configs/edb93xx_defconfig              |  237 ++++++++
> > >  arch/arm/mach-ep93xx/Kconfig                    |  446 +++++++++++++++
> > >  arch/arm/mach-ep93xx/Makefile                   |    3 +
> > >  arch/arm/mach-ep93xx/clocksource.c              |   96 ++++
> > >  arch/arm/mach-ep93xx/gpio.c                     |  136 +++++
> > >  arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h |  600 ++++++++++++++++++++
> > >  arch/arm/mach-ep93xx/include/mach/gpio.h        |   29 +
> > >  arch/arm/mach-ep93xx/led.c                      |   62 ++
> > >  arch/arm/mach-ep93xx/led.h                      |   26 +
> > >  arch/arm/mach-ep93xx/lowlevel_init.S            |   64 +++
> > 
> > Aren't the LED functions and thus the lowlevel_init board specific?
> > I can imagine many custom boards do not have LEDs connected to these
> > gpio pins.
> 
> custom board could do this, but probably shouldn't. the EP93xx
> explicitly 'reserves' specific GPIOs for a red and a green LED. these
> LEDs are used by the boot algorithm to give feed back before the
> bootloader is started.

Ah, I didn't know this. A good move from Cirrus that the software
developer can rely on some debug LEDs.

> 
> please tell me if this convinces you to leave the LED functions and
> lowlevel_init in the SoC part or if you prefer moving them to the
> board directory.

I'm fine with the LEDs being available for all ep93xx then.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
