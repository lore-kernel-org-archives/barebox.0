Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yy0Aj-00009u-N4
 for barebox@lists.infradead.org; Thu, 28 May 2015 15:56:42 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 28 May 2015 17:55:59 +0200
Message-Id: <1432828567-14037-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 0/8] Socfpga: QSPI support
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi!

This series adds support for reading,writing and booting from Quad SPI
flash chips on the SoCFPFGA platform.

The driver is based on a patch for linux, which is still in development.
As this driver uses the spi-nor framework, this is imported into barebox, too.
To deduplicate the code base, the m25p80 is also converted to use the spi-nor
framework.

With the QSPI driver in place, support for booting from it is also added.
As the preloader barebox doesn't have a devicetree to go from, the driver doesn't
touch the registers that have already been set up successfully by the Boot ROM code.
If there ever is any other user of the Cadence QSPI core, that does not have a
devicetree to probe from, platform code might have to be added for this initialization.
As there isn't at the moment, I chose to not bother with this.

The cadence-qspi was tested on the Socrates, Sockit and Socdk.
The m25p80 was tested as "m25p80" on a Phycore AM335x SOM.

Regards,
Steffen

Steffen Trumtrar (8):
  mtd: spi-nor: add SPI-NOR framework
  mtd: spi-nor: add cadence quadspi driver
  ARM: dts: socfpga: add qspi node
  ARM: socfpga: socdk add qspi flash
  ARM: socfpga: socrates: add qspi flash
  ARM: socfpga: sockit: add qspi flash
  ARM: socfpga: xload: support qspi bootsource
  mtd: m25p80: use the SPI nor framework

 Documentation/boards/socfpga.rst                  |   56 +-
 arch/arm/dts/socfpga.dtsi                         |   15 +
 arch/arm/dts/socfpga_cyclone5_socdk.dts           |   21 +
 arch/arm/dts/socfpga_cyclone5_sockit.dts          |   20 +
 arch/arm/dts/socfpga_cyclone5_socrates.dts        |   20 +
 arch/arm/mach-socfpga/include/mach/generic.h      |    5 +
 arch/arm/mach-socfpga/include/mach/socfpga-regs.h |    2 +
 arch/arm/mach-socfpga/xload.c                     |   58 +-
 drivers/mtd/Kconfig                               |    1 +
 drivers/mtd/Makefile                              |    1 +
 drivers/mtd/devices/Kconfig                       |    2 +-
 drivers/mtd/devices/m25p80.c                      |  998 +++--------------
 drivers/mtd/spi-nor/Kconfig                       |   15 +
 drivers/mtd/spi-nor/Makefile                      |    2 +
 drivers/mtd/spi-nor/cadence-quadspi.c             | 1211 +++++++++++++++++++++
 drivers/mtd/spi-nor/spi-nor.c                     | 1148 +++++++++++++++++++
 include/linux/mod_devicetable.h                   |    7 +
 include/linux/mtd/spi-nor.h                       |  204 ++++
 include/platform_data/cadence_qspi.h              |    9 +
 19 files changed, 2955 insertions(+), 840 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/Kconfig
 create mode 100644 drivers/mtd/spi-nor/Makefile
 create mode 100644 drivers/mtd/spi-nor/cadence-quadspi.c
 create mode 100644 drivers/mtd/spi-nor/spi-nor.c
 create mode 100644 include/linux/mtd/spi-nor.h
 create mode 100644 include/platform_data/cadence_qspi.h

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
