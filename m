Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEdLJ-0006rn-13
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 09:14:30 +0000
Date: Mon, 2 Apr 2012 11:14:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120402091423.GS3852@pengutronix.de>
References: <20120330045639.GZ444@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120330045639.GZ444@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/9] AT91 update rm9200ek support and add sam9x5 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

On Fri, Mar 30, 2012 at 06:56:39AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	this patch serie update the rm9200 support with
> 
> 	 - USB OHCI
> 	 - USB Device (USB serial)
> 	 - leds
> 
> 	and add the basic support for the sam9x5 series
> 
> 	NB: the hardware ecc PMECC is not yet supported
> 
> please pull
> The following changes since commit 79ea2bb5284cc4b5b28a3fa3fee6ede7304e4179:
> 
>   at91rm9200ek: adjust kernel partition to be able to flash mainline kernel (2012-03-30 12:51:54 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git at91

Applied, thanks.

If you send pull requests please make sure they don't contain any other
patches. This pull request has the at91-fixes branch in it.

Sascha

> 
> for you to fetch changes up to bfd880f58915ae8098a6a0603e1003efc9d6feae:
> 
>   AT91: at91sam9x5: add chip and board file (2012-03-30 13:00:23 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (9):
>       at91rm9200ek: add ohci support
>       at91rm9200ek: add leds support
>       at91rm9200ek: add usb serial support
>       at91rm9200ek: update defconfig
>       atmel_nand: add on_flash_btt option to enable bbt option
>       ARM: at91: add sam9x5 series CPU definition and cpu_is_xxx macro
>       ARM: at91: allow to pass the interface id to at91_add_device_eth
>       ARM: at91/pio: add new PIO3 features
>       AT91: at91sam9x5: add chip and board file
> 
>  arch/arm/Makefile                                  |    1 +
>  arch/arm/boards/at91rm9200ek/env/bin/init_board    |   11 +
>  arch/arm/boards/at91rm9200ek/init.c                |   65 ++++-
>  arch/arm/boards/at91sam9260ek/init.c               |    2 +-
>  arch/arm/boards/at91sam9263ek/init.c               |    2 +-
>  arch/arm/boards/at91sam9m10g45ek/init.c            |    2 +-
>  arch/arm/boards/at91sam9x5ek/Makefile              |    1 +
>  arch/arm/boards/at91sam9x5ek/config.h              |    6 +
>  arch/arm/boards/at91sam9x5ek/env/config            |   38 +++
>  arch/arm/boards/at91sam9x5ek/init.c                |  167 +++++++++++
>  arch/arm/boards/dss11/init.c                       |    2 +-
>  arch/arm/boards/mmccpu/init.c                      |    2 +-
>  arch/arm/boards/pm9263/init.c                      |    2 +-
>  arch/arm/boards/pm9g45/init.c                      |    2 +-
>  arch/arm/boards/tny-a926x/init.c                   |    2 +-
>  arch/arm/boards/usb-a926x/init.c                   |    2 +-
>  arch/arm/configs/at91rm9200ek_defconfig            |   18 +-
>  arch/arm/configs/at91sam9x5ek_defconfig            |   69 +++++
>  arch/arm/mach-at91/Kconfig                         |   25 ++
>  arch/arm/mach-at91/Makefile                        |    1 +
>  arch/arm/mach-at91/at91rm9200_devices.c            |    4 +-
>  arch/arm/mach-at91/at91sam9260_devices.c           |    4 +-
>  arch/arm/mach-at91/at91sam9263_devices.c           |    4 +-
>  arch/arm/mach-at91/at91sam9g45_devices.c           |    4 +-
>  arch/arm/mach-at91/at91sam9x5.c                    |  314 ++++++++++++++++++++
>  arch/arm/mach-at91/at91sam9x5_devices.c            |  270 +++++++++++++++++
>  arch/arm/mach-at91/clock.c                         |   82 ++++-
>  arch/arm/mach-at91/gpio.c                          |  129 ++++++++-
>  arch/arm/mach-at91/include/mach/at91_pio.h         |   25 ++
>  arch/arm/mach-at91/include/mach/at91_pmc.h         |   68 ++++-
>  arch/arm/mach-at91/include/mach/at91sam9x5.h       |  179 +++++++++++
>  .../arm/mach-at91/include/mach/at91sam9x5_matrix.h |  139 +++++++++
>  arch/arm/mach-at91/include/mach/board.h            |    2 +-
>  arch/arm/mach-at91/include/mach/cpu.h              |   28 ++
>  arch/arm/mach-at91/include/mach/gpio.h             |    6 +
>  arch/arm/mach-at91/include/mach/hardware.h         |    2 +
>  drivers/mtd/nand/atmel_nand.c                      |    6 +
>  37 files changed, 1628 insertions(+), 58 deletions(-)
>  create mode 100644 arch/arm/boards/at91rm9200ek/env/bin/init_board
>  create mode 100644 arch/arm/boards/at91sam9x5ek/Makefile
>  create mode 100644 arch/arm/boards/at91sam9x5ek/config.h
>  create mode 100644 arch/arm/boards/at91sam9x5ek/env/config
>  create mode 100644 arch/arm/boards/at91sam9x5ek/init.c
>  create mode 100644 arch/arm/configs/at91sam9x5ek_defconfig
>  create mode 100644 arch/arm/mach-at91/at91sam9x5.c
>  create mode 100644 arch/arm/mach-at91/at91sam9x5_devices.c
>  create mode 100644 arch/arm/mach-at91/include/mach/at91sam9x5.h
>  create mode 100644 arch/arm/mach-at91/include/mach/at91sam9x5_matrix.h
> 
> Best Regards,
> J.
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
