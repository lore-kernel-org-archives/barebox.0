Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P97-0006dr-4e
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:36:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id f26-v6so7720929pfn.9
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:35:50 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:35:26 -0700
Message-Id: <20181008063542.18709-1-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/16] 
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

Patches in this series are a result of my work on porting Linux code
for MV88E6xxx switches to Barebox.

     - Patch 1 is loosely related header fix

     - Patch 2 adds clocksource support for ARM global time, needed on
       VF610 in order to get an accurate clocksource. MV88E6xxx EEPROM
       supporte code turned out to be dependent on that.

     - Pathes 3 and 4 are clocksource related fixes

     - Patches 5, 6, 7, 8 update the device naming scheme used by
       Barebox driver code. Old scheme couldn't handle devices created
       for DT nodes with identical names. This was the case on ZII
       VF610 Development Board Rev. C which had two switch devices.

    - Patch 9 is documentation/small code fix for generic MDIO bus
      code

    - Patches 10, 11 bring needed preprocessor constants from Linux kernel

    - Patch 12 prevents PHYs masked by MDIO bus's phy_maks from being
      probed

    - Patch 13 allows custom platform deviecs to be attached to an MDIO bus

    - Patch 14 exposes internal MDIO bus on MV88E6xxx devices

    - Patch 15 support for EEPROM devices attached to MV88E6xxx devices

    - Patch 16 exposes ports that don't have a PHY attached as
      "virtual" PHY devices (RPU2 needs this code to properly
      configure port connected to FEC)

NOTE: This is quite a mix and I am more than happy to split this
series in several if current patch grouping is problematic.

Tested on the following H/W:

     - ZII i.MX6Q RDU2, MV88E6352 switch
     - ZII i.MX51 RDU1, MV88E6161 switch
     - ZII i.MX7D RPU2, MV88E6352 switch
     - ZII VF610 CFU1, MV88E6352 switch
     - ZII VF610 SPU3, MV88E6390X switch
     - ZII VF610 Development Board Rev. C, MV88E6390X switch x 2

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (16):
  ARM: Do not expose ARMv8 functions on ARMv7
  clocksource: Add ARM global timer support
  i.MX: Move GPT driver to drivers/clocksource
  clocksource: Introduce ARCH_HAS_IMX_GPT
  of: Demote "Bad cell count for" to debug
  drivers: Introduce dev_set_name()
  linux: string: Port kbasename()
  of: Port latest of_device_make_bus_id() implementation
  mdio_bus: Fix documentation for mdio_bus_match()
  include: linux: phy: Add missing PHY_INTERFACE_* constants
  include: linux: ethtool: Add missing *_UNKNOWN constants
  net: phy: Check phy_mask in get_phy_device()
  mdio_bus: Allow for non PHY-devices on MDIO buses
  net: phy: Add basic driver for MV88E6XXX switches from Marvell
  net: phy: mv88e6xxx: Port EEPROM support code
  net: phy: mv88e6xxx: Add support for MAC ports

 arch/arm/include/asm/system.h                 |   2 +-
 arch/arm/mach-imx/Kconfig                     |  11 +
 arch/arm/mach-imx/Makefile                    |   1 -
 arch/arm/mach-imx/iim.c                       |   2 +-
 .../arm/mach-imx/include/mach/devices-imx51.h |   2 +-
 .../arm/mach-imx/include/mach/devices-imx53.h |   2 +-
 arch/arm/mach-mxs/include/mach/devices.h      |   2 +-
 arch/arm/mach-mxs/ocotp.c                     |   2 +-
 arch/sandbox/board/console.c                  |   2 +-
 common/console.c                              |   4 +-
 common/state/state.c                          |   2 +-
 drivers/aiodev/core.c                         |   2 +-
 drivers/amba/bus.c                            |   2 +-
 drivers/ata/disk_ata_drive.c                  |   4 +-
 drivers/base/bus.c                            |   2 +-
 drivers/base/driver.c                         |  38 +-
 drivers/base/resource.c                       |   2 +-
 drivers/clocksource/Kconfig                   |  11 +
 drivers/clocksource/Makefile                  |   2 +
 drivers/clocksource/arm_global_timer.c        | 113 +++
 .../clocksource/timer-imx-gpt.c               |   0
 drivers/efi/efi-device.c                      |   2 +-
 drivers/firmware/socfpga.c                    |   2 +-
 drivers/i2c/i2c.c                             |   4 +-
 drivers/mci/mci-core.c                        |   4 +-
 drivers/mfd/rave-sp.c                         |   2 +-
 drivers/mtd/core.c                            |   2 +-
 drivers/mtd/spi-nor/cadence-quadspi.c         |   2 +-
 drivers/mtd/ubi/build.c                       |   2 +-
 drivers/mtd/ubi/vmt.c                         |   4 +-
 drivers/net/cpsw.c                            |   2 +-
 drivers/net/e1000/eeprom.c                    |   2 +-
 drivers/net/orion-gbe.c                       |   2 +-
 drivers/net/phy/Kconfig                       |   6 +
 drivers/net/phy/Makefile                      |   1 +
 drivers/net/phy/mdio_bus.c                    |  24 +-
 drivers/net/phy/mv88e6xxx/Makefile            |   5 +
 drivers/net/phy/mv88e6xxx/chip.c              | 945 ++++++++++++++++++
 drivers/net/phy/mv88e6xxx/chip.h              | 143 +++
 drivers/net/phy/mv88e6xxx/global2.c           | 389 +++++++
 drivers/net/phy/mv88e6xxx/global2.h           |  70 ++
 drivers/net/phy/mv88e6xxx/port.c              | 666 ++++++++++++
 drivers/net/phy/mv88e6xxx/port.h              | 127 +++
 drivers/net/phy/phy.c                         |  15 +-
 drivers/nvmem/core.c                          |   2 +-
 drivers/nvmem/ocotp.c                         |   2 +-
 drivers/of/address.c                          |   4 +-
 drivers/of/platform.c                         |  80 +-
 drivers/pci/bus.c                             |   3 +-
 drivers/phy/phy-core.c                        |   2 +-
 drivers/pwm/core.c                            |   2 +-
 drivers/rtc/class.c                           |   2 +-
 drivers/spi/spi.c                             |   2 +-
 drivers/usb/core/usb.c                        |   5 +-
 drivers/usb/gadget/udc-core.c                 |   4 +-
 drivers/usb/musb/musb_dsps.c                  |   2 +-
 drivers/video/backlight.c                     |   2 +-
 drivers/video/fb.c                            |   2 +-
 drivers/w1/w1.c                               |   4 +-
 drivers/watchdog/wd_core.c                    |   2 +-
 fs/fs.c                                       |   2 +-
 include/driver.h                              |   5 +-
 include/linux/ethtool.h                       |   3 +
 include/linux/phy.h                           |   9 +
 include/linux/string.h                        |  12 +
 net/eth.c                                     |   2 +-
 66 files changed, 2653 insertions(+), 129 deletions(-)
 create mode 100644 drivers/clocksource/arm_global_timer.c
 rename arch/arm/mach-imx/clocksource.c => drivers/clocksource/timer-imx-gpt.c (100%)
 create mode 100644 drivers/net/phy/mv88e6xxx/Makefile
 create mode 100644 drivers/net/phy/mv88e6xxx/chip.c
 create mode 100644 drivers/net/phy/mv88e6xxx/chip.h
 create mode 100644 drivers/net/phy/mv88e6xxx/global2.c
 create mode 100644 drivers/net/phy/mv88e6xxx/global2.h
 create mode 100644 drivers/net/phy/mv88e6xxx/port.c
 create mode 100644 drivers/net/phy/mv88e6xxx/port.h

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
