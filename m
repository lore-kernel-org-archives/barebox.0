Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUGtb-0003dx-7a
	for barebox@lists.infradead.org; Mon, 11 Jan 2010 09:49:12 +0000
Date: Mon, 11 Jan 2010 10:49:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100111094902.GR6923@pengutronix.de>
References: <20100109232838.GB14051@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100109232838.GB14051@darwin>
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

Hello Matthias,

Thanks for the nice work. The patches look mostly fine. I wonder that
U-Boot ep93xx support has never made it to the mainline. Some comments
about the patches inline.

Sascha

On Sun, Jan 10, 2010 at 12:28:38AM +0100, Matthias Kaehlcke wrote:
> Add support for the following Cirrus Logic EDB93xx boards:
> 
> EDB9301
> EDB9302
> EDB9302A
> EDB9307
> EDB9307A
> EDB93012
> EDB9315
> EDB9315A
> 
> This patchset has been tested on boards based on the EDB9301 and EDB9307A designs
> 
> Matthias Kaehlcke (5):
>   ARM: Add support for EP93xx SoCs
>   Add EP93xx ethernet driver
>   Add support for EP9xx GPIOs
>   Add PrimeCell PL010 serial driver
>   Add support for EDB93xx boards
> 
>  Documentation/boards.dox                        |    8 +
>  MAINTAINERS                                     |   11 +
>  arch/arm/Kconfig                                |    6 +
>  arch/arm/Makefile                               |    9 +
>  arch/arm/configs/edb93xx_defconfig              |  237 ++++++++
>  arch/arm/mach-ep93xx/Kconfig                    |  446 +++++++++++++++
>  arch/arm/mach-ep93xx/Makefile                   |    3 +
>  arch/arm/mach-ep93xx/clocksource.c              |   96 ++++
>  arch/arm/mach-ep93xx/gpio.c                     |  136 +++++
>  arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h |  600 ++++++++++++++++++++
>  arch/arm/mach-ep93xx/include/mach/gpio.h        |   29 +
>  arch/arm/mach-ep93xx/led.c                      |   62 ++
>  arch/arm/mach-ep93xx/led.h                      |   26 +
>  arch/arm/mach-ep93xx/lowlevel_init.S            |   64 +++

Aren't the LED functions and thus the lowlevel_init board specific?
I can imagine many custom boards do not have LEDs connected to these
gpio pins.

>  board/edb93xx/Makefile                          |    4 +
>  board/edb93xx/barebox.lds.S                     |   79 +++

I think it's better to add a

#ifdef CONFIG_ARCH_EP93XX
		/* the EP93xx expects to find the pattern 'CRUS' at
		 * 0x1000
		 */
		. = 0x1000;
		LONG(0x53555243) /* 'CRUS' */
#endif

to the generic linker script. We might have to revert this when we're
heading to an ifdeffery here, but for now I think it's better be able to
make changes to the linker script in only one file.

>  board/edb93xx/config.h                          |    4 +
>  board/edb93xx/early_udelay.h                    |   34 ++
>  board/edb93xx/edb93xx.c                         |  172 ++++++
>  board/edb93xx/edb93xx.dox                       |  108 ++++
>  board/edb93xx/edb93xx.h                         |   48 ++
>  board/edb93xx/env/bin/boot                      |   48 ++
>  board/edb93xx/env/bin/flash_partition           |   22 +
>  board/edb93xx/env/bin/init                      |   19 +
>  board/edb93xx/env/bin/set_nor_parts             |    3 +
>  board/edb93xx/env/bin/update_kernel             |   16 +
>  board/edb93xx/env/bin/update_rootfs             |   16 +
>  board/edb93xx/env/config                        |   16 +
>  board/edb93xx/flash_cfg.c                       |   38 ++
>  board/edb93xx/pll_cfg.c                         |   58 ++
>  board/edb93xx/pll_cfg.h                         |   72 +++
>  board/edb93xx/sdram_cfg.c                       |  127 +++++
>  board/edb93xx/sdram_cfg.h                       |  144 +++++
>  drivers/net/Kconfig                             |    5 +
>  drivers/net/Makefile                            |    1 +
>  drivers/net/ep93xx.c                            |  686 +++++++++++++++++++++++
>  drivers/net/ep93xx.h                            |  155 +++++
>  drivers/serial/Kconfig                          |    7 +
>  drivers/serial/Makefile                         |    2 +-
>  drivers/serial/serial_pl010.c                   |  172 ++++++
>  drivers/serial/serial_pl010.h                   |  100 ++++
>  include/common.h                                |    1 +
>  42 files changed, 3889 insertions(+), 1 deletions(-)
>  create mode 100644 arch/arm/configs/edb93xx_defconfig
>  create mode 100644 arch/arm/mach-ep93xx/Kconfig
>  create mode 100644 arch/arm/mach-ep93xx/Makefile
>  create mode 100644 arch/arm/mach-ep93xx/clocksource.c
>  create mode 100644 arch/arm/mach-ep93xx/gpio.c
>  create mode 100644 arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h
>  create mode 100644 arch/arm/mach-ep93xx/include/mach/gpio.h
>  create mode 100644 arch/arm/mach-ep93xx/led.c
>  create mode 100644 arch/arm/mach-ep93xx/led.h
>  create mode 100644 arch/arm/mach-ep93xx/lowlevel_init.S
>  create mode 100644 board/edb93xx/Makefile
>  create mode 100644 board/edb93xx/barebox.lds.S
>  create mode 100644 board/edb93xx/config.h
>  create mode 100644 board/edb93xx/early_udelay.h
>  create mode 100644 board/edb93xx/edb93xx.c
>  create mode 100644 board/edb93xx/edb93xx.dox
>  create mode 100644 board/edb93xx/edb93xx.h
>  create mode 100644 board/edb93xx/env/bin/boot
>  create mode 100644 board/edb93xx/env/bin/flash_partition
>  create mode 100644 board/edb93xx/env/bin/init
>  create mode 100644 board/edb93xx/env/bin/set_nor_parts
>  create mode 100644 board/edb93xx/env/bin/update_kernel
>  create mode 100644 board/edb93xx/env/bin/update_rootfs
>  create mode 100644 board/edb93xx/env/config
>  create mode 100644 board/edb93xx/flash_cfg.c
>  create mode 100644 board/edb93xx/pll_cfg.c
>  create mode 100644 board/edb93xx/pll_cfg.h
>  create mode 100644 board/edb93xx/sdram_cfg.c
>  create mode 100644 board/edb93xx/sdram_cfg.h
>  create mode 100644 drivers/net/ep93xx.c
>  create mode 100644 drivers/net/ep93xx.h
>  create mode 100644 drivers/serial/serial_pl010.c
>  create mode 100644 drivers/serial/serial_pl010.h
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
