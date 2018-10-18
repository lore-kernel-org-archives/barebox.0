Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2Kd-0001tw-51
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 07:02:56 +0000
Date: Thu, 18 Oct 2018 09:02:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181018070243.hstz2tb3pjrj7smf@pengutronix.de>
References: <20181016191552.16690-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181016191552.16690-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v4 00/22] MV88E6xxx switch family support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 16, 2018 at 12:15:30PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> Patches in this series are a result of my work on porting Linux code
> for MV88E6xxx switches to Barebox.
> 
> Tested on the following H/W:
> 
>      - ZII i.MX6Q RDU2, MV88E6352 switch
>      - ZII i.MX51 RDU1, MV88E6161 switch
>      - ZII i.MX7D RPU2, MV88E6352 switch
>      - ZII VF610 CFU1, MV88E6352 switch
>      - ZII VF610 SPU3, MV88E6390X switch
>      - ZII VF610 Development Board Rev. C, MV88E6390X switch x 2
> 
> Feedback is welcome!

Applied, thanks

Sascha

> 
> Changes since [v3]:
> 
>    - Fix spaces/tabs mixup, missing newlines
> 
> Changes since [v2]:
> 
>    - Added code to deal with port layout on MV88E6161
> 
>    - Removed unused, #ifdefed-out code
> 
>    - basename() re-implemented using kbasename()
> 
>    - Added patches to deal with device name collision in aiodev
>      reported by Lucas
> 
>    - Patch introducing dev_set_name() was split in two
> 
>    - Added fix for dev_id()'s global buffer "collision"
> 
>    - Removed a patch hunk for code that's not yet in "next"
> 
> Changes since [v1]:
> 
>     - CONFIG_CLOCKSOURCE_ARM_GLOBAL_TIMER is not selected by
>       default. VF610 now selects it explicitly
> 
>     - Incorrect logic in patch 14/17 was fixed to correctly handle PHY
>       nodes that have "compatible" property
> 
>     - Added more documentation for dev_set_name()
> 
> [v3] http://lists.infradead.org/pipermail/barebox/2018-October/035015.html
> [v2] http://lists.infradead.org/pipermail/barebox/2018-October/034965.html
> [v1] http://lists.infradead.org/pipermail/barebox/2018-October/034963.html
> 
> Andrey Smirnov (22):
>   ARM: Do not expose ARMv8 functions on ARMv7
>   clocksource: Add ARM global timer support
>   VFxxx: Select CLOCKSOURCE_ARM_GLOBAL_TIMER
>   i.MX: Move GPT driver to drivers/clocksource
>   clocksource: Introduce ARCH_HAS_IMX_GPT
>   of: Demote "Bad cell count for" to debug
>   aiodev: Don't try to use DT node name as aiodev->name
>   aiodev: imx_thermal: Give aiodev a more descriptive name
>   aiodev: qoriq_thermal: Give aiodev a more descriptive name
>   drivers: Introduce dev_set_name()
>   base: Don't use shared buffer for results of dev_id()
>   drivers: base: Convert device_d name to be dynamically allocated
>   linux: string: Port kbasename()
>   of: Port latest of_device_make_bus_id() implementation
>   mdio_bus: Fix documentation for mdio_bus_match()
>   include: linux: phy: Add missing PHY_INTERFACE_* constants
>   include: linux: ethtool: Add missing *_UNKNOWN constants
>   net: phy: Check phy_mask in get_phy_device()
>   mdio_bus: Allow for non PHY-devices on MDIO buses
>   net: phy: Add basic driver for MV88E6XXX switches from Marvell
>   net: phy: mv88e6xxx: Port EEPROM support code
>   net: phy: mv88e6xxx: Add support for MAC ports
> 
>  arch/arm/include/asm/system.h                 |   2 +-
>  arch/arm/mach-imx/Kconfig                     |  12 +
>  arch/arm/mach-imx/Makefile                    |   1 -
>  arch/arm/mach-imx/iim.c                       |   2 +-
>  .../arm/mach-imx/include/mach/devices-imx51.h |   2 +-
>  .../arm/mach-imx/include/mach/devices-imx53.h |   2 +-
>  arch/arm/mach-mxs/include/mach/devices.h      |   2 +-
>  arch/arm/mach-mxs/ocotp.c                     |   2 +-
>  arch/sandbox/board/console.c                  |   2 +-
>  common/console.c                              |   4 +-
>  common/state/state.c                          |   2 +-
>  drivers/aiodev/core.c                         |   4 +-
>  drivers/aiodev/imx_thermal.c                  |   1 +
>  drivers/aiodev/qoriq_thermal.c                |   1 +
>  drivers/amba/bus.c                            |   2 +-
>  drivers/ata/disk_ata_drive.c                  |   4 +-
>  drivers/base/bus.c                            |   2 +-
>  drivers/base/driver.c                         |  45 +-
>  drivers/base/resource.c                       |   2 +-
>  drivers/clocksource/Kconfig                   |  10 +
>  drivers/clocksource/Makefile                  |   2 +
>  drivers/clocksource/arm_global_timer.c        | 113 +++
>  .../clocksource/timer-imx-gpt.c               |   0
>  drivers/efi/efi-device.c                      |   2 +-
>  drivers/firmware/socfpga.c                    |   2 +-
>  drivers/i2c/i2c.c                             |   4 +-
>  drivers/mci/mci-core.c                        |   4 +-
>  drivers/mtd/core.c                            |   2 +-
>  drivers/mtd/spi-nor/cadence-quadspi.c         |   2 +-
>  drivers/mtd/ubi/build.c                       |   2 +-
>  drivers/mtd/ubi/vmt.c                         |   4 +-
>  drivers/net/cpsw.c                            |   2 +-
>  drivers/net/e1000/eeprom.c                    |   2 +-
>  drivers/net/orion-gbe.c                       |   2 +-
>  drivers/net/phy/Kconfig                       |   6 +
>  drivers/net/phy/Makefile                      |   1 +
>  drivers/net/phy/mdio_bus.c                    |  27 +-
>  drivers/net/phy/mv88e6xxx/Makefile            |   5 +
>  drivers/net/phy/mv88e6xxx/chip.c              | 913 ++++++++++++++++++
>  drivers/net/phy/mv88e6xxx/chip.h              | 142 +++
>  drivers/net/phy/mv88e6xxx/global2.c           | 389 ++++++++
>  drivers/net/phy/mv88e6xxx/global2.h           |  70 ++
>  drivers/net/phy/mv88e6xxx/port.c              | 663 +++++++++++++
>  drivers/net/phy/mv88e6xxx/port.h              | 137 +++
>  drivers/net/phy/phy.c                         |  15 +-
>  drivers/nvmem/core.c                          |   2 +-
>  drivers/nvmem/ocotp.c                         |   2 +-
>  drivers/of/address.c                          |   4 +-
>  drivers/of/platform.c                         |  80 +-
>  drivers/pci/bus.c                             |   3 +-
>  drivers/phy/phy-core.c                        |   2 +-
>  drivers/pwm/core.c                            |   2 +-
>  drivers/rtc/class.c                           |   2 +-
>  drivers/spi/spi.c                             |   2 +-
>  drivers/usb/core/usb.c                        |   5 +-
>  drivers/usb/gadget/udc-core.c                 |   4 +-
>  drivers/usb/musb/musb_dsps.c                  |   2 +-
>  drivers/video/backlight.c                     |   2 +-
>  drivers/video/fb.c                            |   2 +-
>  drivers/w1/w1.c                               |   4 +-
>  drivers/watchdog/wd_core.c                    |   2 +-
>  fs/fs.c                                       |   2 +-
>  include/driver.h                              |  25 +-
>  include/linux/ethtool.h                       |   3 +
>  include/linux/phy.h                           |   9 +
>  include/linux/string.h                        |  12 +
>  lib/libgen.c                                  |  16 +-
>  net/eth.c                                     |   2 +-
>  68 files changed, 2649 insertions(+), 155 deletions(-)
>  create mode 100644 drivers/clocksource/arm_global_timer.c
>  rename arch/arm/mach-imx/clocksource.c => drivers/clocksource/timer-imx-gpt.c (100%)
>  create mode 100644 drivers/net/phy/mv88e6xxx/Makefile
>  create mode 100644 drivers/net/phy/mv88e6xxx/chip.c
>  create mode 100644 drivers/net/phy/mv88e6xxx/chip.h
>  create mode 100644 drivers/net/phy/mv88e6xxx/global2.c
>  create mode 100644 drivers/net/phy/mv88e6xxx/global2.h
>  create mode 100644 drivers/net/phy/mv88e6xxx/port.c
>  create mode 100644 drivers/net/phy/mv88e6xxx/port.h
> 
> -- 
> 2.17.1
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
