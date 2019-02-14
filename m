Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1guH0e-0000pU-Rk
 for barebox@lists.infradead.org; Thu, 14 Feb 2019 13:25:24 +0000
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Thu, 14 Feb 2019 14:24:22 +0100
Message-Id: <20190214132429.7463-1-tomaz.solc@tablix.org>
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
Subject: [PATCH 0/7] Fixing MMC access on Raspberry Pi CM3
To: barebox@lists.infradead.org
Cc: Tomaz Solc <tomaz.solc@tablix.org>

Dear all,

These are the changes required to get Raspberry Pi CM3 to boot from the
built-in MMC flash chip. With these patches applied, Barebox successfully boots
a Raspbian system using the following commands:

global linux.bootargs.base="earlyprintk console=tty0 console=ttyAMA0,115200
root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd"

bootm -o /boot/bcm2710-rpi-cm3.dtb /boot/kernel7.img

Overview of the changes:

 - Implemented pinctrl driver hooks for BCM2835 GPIO, so that pinctrl-
   directives in the device tree are honored.
 - Added the missing device tree property parsing to mci-bcm2835 driver.
 - Added a new Kconfig setting for the Compute Module 3 since a slightly
   different device tree is required compared to Raspberry Pi 3.

Slightly ugly parts:

 - pinctrl needs to be initialized before mci. The only way I found to do this
   is to change the link order, since mci is already started early using
   coredevice_initcall().
 - having a separate MACH_RPI_CM3 in addition to MACH_RPI3 seems an overkill,
   but I couldn't find a clean way to just have a different device tree.

Best regards
Tomaz

Tomaz Solc (7):
  ARM: rpi: switch emmc from sdhost to sdhci
  Kconfig: add pin controllers submenu.
  pinctrl: bcm2835: move existing code from gpio.
  pinctrl: bcm2835: register the pin controller.
  mci: move after pinctrl in link order.
  mci: bcm2835: parse other device tree properties.
  ARM: rpi: Add device tree for Compute Module 3.

 arch/arm/boards/raspberry-pi/lowlevel.c            | 10 +++++
 arch/arm/configs/rpi_defconfig                     |  2 +-
 arch/arm/dts/Makefile                              |  1 +
 arch/arm/dts/bcm2837-rpi-3.dts                     |  9 ++++
 arch/arm/dts/bcm2837-rpi-cm3.dts                   | 26 +++++++++++
 arch/arm/mach-bcm283x/Kconfig                      |  6 +++
 drivers/Makefile                                   |  2 +-
 drivers/gpio/Kconfig                               |  4 --
 drivers/gpio/Makefile                              |  1 -
 drivers/mci/mci-bcm2835.c                          |  3 ++
 drivers/pinctrl/Kconfig                            | 10 +++++
 drivers/pinctrl/Makefile                           |  1 +
 .../gpio-bcm2835.c => pinctrl/pinctrl-bcm2835.c}   | 52 +++++++++++++++++++++-
 images/Makefile.bcm283x                            |  6 ++-
 14 files changed, 124 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/dts/bcm2837-rpi-cm3.dts
 rename drivers/{gpio/gpio-bcm2835.c => pinctrl/pinctrl-bcm2835.c} (77%)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
