Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x235.google.com ([2a00:1450:400c:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgNMp-0003HX-47
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 01:04:20 +0000
Received: by wgsk9 with SMTP id k9so3355730wgs.3
 for <barebox@lists.infradead.org>; Thu, 09 Apr 2015 18:03:57 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 10 Apr 2015 03:03:37 +0200
Message-Id: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 00/13] Add support for Lenovo ix4-300d NAS
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This patch set adds support for the Lenovo ix4-300d NAS based on
Marvell Armada XP MV78230 SoC. Unfortunately, this very SoC has
a broken SoC-Id and wrongly indentifies itself as MV78460 instead.
Marvell's BSP u-boot fixes this by overwriting the PCI ID register
that is used by Linux for SoC identification with the correct value,
so we also add a proper fixup.

Stuff that is already working on ix4:
- Front USB port on xHCI PCI
- Both GbEs (with txdesc fix for mvneta) on 88E1318S PHYs
- LEDs and buttons

Missing functions:
- Front GLCD (I started a driver but have to have another look at it)
- Back USB on internal controllers (missing CI glue logic and USB PHY
  for Armada XP, have some old patches for KW and Dove)
- 88SX7042 4-port SATA controller on PCIe x4 (nothing here)
- NAND flash (hope Ezequiel finds some time here)
- External RTC, Fan control (nothing here)

Patches 1-4 add support for Marvell 88E1318S PHYs, 74x164 used as
GPIO expander, and bitbang SPI.

Patches 5-7 cleanup and convert mvebu-mbus driver from a
postcore-registered driver to be directly called from mvebu SoC
init which allows to setup mbus windows before any drivers.

Patches 8-9 install a fixup function for Armada 370/XP SoCs to
fake a correct SoC Id for broken MV78230 SoCs.

Patches 10-12 cleanup Armada 370/XP code prior to adding support
for Lenovo ix4-300d in Patch 13.

Sebastian Hesselbarth (13):
  net: phy: Support Marvell 88E1318S PHY
  gpio: Add driver for 74x164 compatible shift-registers
  spi: ath79: move spidelay from spi-bitbang-txrx
  spi: Add SPI GPIO bitbang driver
  bus: mvebu-mbus: Remove coherency attribute
  bus: mvebu-mbus: Drop device reference
  bus: mvebu-mbus: Convert mbus platform driver to direct driver
  ARM: mvebu: Move PCIe register defines to socid.h
  ARM: mvebu: armada-xp: Fixup broken MV78230-A0 SoC ID
  ARM: mvebu: armada-xp: Limit PUP access to Armada XP
  ARM: mvebu: armada-xp: Use MBUS_ERR_PROP_EN define
  ARM: mvebu: armada-xp: Sort boards and images alphabetically
  ARM: mvebu: armada-xp: Add Lenovo Iomega ix4-300d

 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/lenovo-ix4-300d/Makefile           |   1 +
 arch/arm/boards/lenovo-ix4-300d/kwbimage.cfg       |   5 +
 arch/arm/boards/lenovo-ix4-300d/lowlevel.c         |  35 +++
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts      |  14 ++
 arch/arm/mach-mvebu/Kconfig                        |   8 +-
 arch/arm/mach-mvebu/armada-370-xp.c                |  87 +++++++-
 arch/arm/mach-mvebu/common.c                       |   5 +-
 arch/arm/mach-mvebu/dove.c                         |   1 +
 .../mach-mvebu/include/mach/armada-370-xp-regs.h   |  31 ++-
 arch/arm/mach-mvebu/include/mach/socid.h           |   4 +
 arch/arm/mach-mvebu/kirkwood.c                     |   1 +
 drivers/bus/mvebu-mbus.c                           |  48 ++---
 drivers/gpio/Kconfig                               |   8 +
 drivers/gpio/Makefile                              |   1 +
 drivers/gpio/gpio-74164.c                          | 131 ++++++++++++
 drivers/net/phy/marvell.c                          |  31 +++
 drivers/spi/Kconfig                                |   4 +
 drivers/spi/Makefile                               |   1 +
 drivers/spi/ath79_spi.c                            |   2 +
 drivers/spi/gpio_spi.c                             | 238 +++++++++++++++++++++
 drivers/spi/spi-bitbang-txrx.h                     |   2 -
 images/Makefile.mvebu                              |  31 ++-
 include/linux/mbus.h                               |   2 +
 include/spi/spi_gpio.h                             |  36 ++++
 26 files changed, 665 insertions(+), 64 deletions(-)
 create mode 100644 arch/arm/boards/lenovo-ix4-300d/Makefile
 create mode 100644 arch/arm/boards/lenovo-ix4-300d/kwbimage.cfg
 create mode 100644 arch/arm/boards/lenovo-ix4-300d/lowlevel.c
 create mode 100644 arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts
 create mode 100644 drivers/gpio/gpio-74164.c
 create mode 100644 drivers/spi/gpio_spi.c
 create mode 100644 include/spi/spi_gpio.h

---
Cc: barebox@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
