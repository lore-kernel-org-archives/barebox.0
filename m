Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkS9E-00084C-Bc
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 10:45:03 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS90-0001C2-O2
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:46 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS98-0000eG-Es
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:54 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 31 Jul 2018 12:44:23 +0200
Message-Id: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 00/19] ARM: SoCFPGA: Arria10: Early FPGA config
To: Barebox List <barebox@lists.infradead.org>

Hi!

This series allows configuring the FPGA of an Arria10 SoCFPGA early
in the bootprocess from barebox. Early means: before the SDRAM is used.

The patches where developed for and tested on the Achilles board.

While at it, some cleanup patches are included, too.


Steffen



Enrico Jorns (1):
  bootm: allow booting SoCFPGA prebootloader image

Steffen Trumtrar (18):
  mci: dw_mmc: remove device_d pointer
  mci: dw_mmc: convert to BIT() macro
  mci: dw: move defines to headerfile
  reset: socfpga: add missing driver name
  ARM: socfpga: arria10: move debug_ll to common code
  ARM: socfpga: arria10: add ocram base address
  ARM: socfpga: add SMP_TWD_ADDR for Arria10
  ARM: socfpga: arria10-init: split pinsetup
  ARM: socfpga: arria10: set default TEXTBASE
  ARM: socfpga: arria10: fix SDMMC phase shift
  ARM: socfpga: achilles: update handoff files
  ARM: dts: socfpga: Fix achilles dtc warnings
  scripts: socfpga_mkimage: add size feature for PBL barebox
  ARM: socfpga: arria10-reset-manager: don't reset bootsource
  ARM: socfpga: Arria10: support programming FPGA in PBL
  ARM: socfpga: achilles: convert to PBL barebox
  ARM: arria10: update defconfig
  ARM: socfpga: achilles: move environment to raw partition

 arch/arm/Kconfig                                   |   4 -
 arch/arm/boards/reflex-achilles/Makefile           |   4 +-
 arch/arm/boards/reflex-achilles/board.c            |  19 +
 arch/arm/boards/reflex-achilles/lowlevel.c         |  87 +++-
 .../boards/reflex-achilles/pinmux-config-arria10.c |   2 +-
 .../boards/reflex-achilles/pll-config-arria10.c    |  16 +-
 arch/arm/configs/socfpga-arria10_defconfig         |   7 +-
 arch/arm/dts/socfpga_arria10_achilles.dts          |  20 +-
 arch/arm/lib32/bootm.c                             |   7 +
 arch/arm/mach-socfpga/Kconfig                      |   9 +-
 arch/arm/mach-socfpga/Makefile                     |  12 +-
 arch/arm/mach-socfpga/arria10-bootsource.c         |  16 +-
 arch/arm/mach-socfpga/arria10-generic.c            |   2 +-
 arch/arm/mach-socfpga/arria10-init.c               |  47 ++-
 arch/arm/mach-socfpga/arria10-reset-manager.c      |  33 +-
 arch/arm/mach-socfpga/arria10-sdram.c              |   2 +
 arch/arm/mach-socfpga/arria10-xload-emmc.c         | 222 ++++++++++
 arch/arm/mach-socfpga/arria10-xload.c              | 457 +++++++++++++++++++++
 arch/arm/mach-socfpga/include/mach/arria10-fpga.h  |  86 ++++
 arch/arm/mach-socfpga/include/mach/arria10-regs.h  |   2 +
 .../include/mach/arria10-system-manager.h          |   6 +
 arch/arm/mach-socfpga/include/mach/arria10-xload.h |  13 +
 arch/arm/mach-socfpga/include/mach/debug_ll.h      |   2 -
 arch/arm/mach-socfpga/include/mach/generic.h       |  41 ++
 drivers/mci/dw_mmc.c                               | 152 +------
 drivers/mci/dw_mmc.h                               | 140 +++++++
 drivers/reset/reset-socfpga.c                      |   1 +
 images/Makefile.socfpga                            |  17 +-
 scripts/socfpga_mkimage.c                          |  25 +-
 29 files changed, 1240 insertions(+), 211 deletions(-)
 create mode 100644 arch/arm/boards/reflex-achilles/board.c
 create mode 100644 arch/arm/mach-socfpga/arria10-xload-emmc.c
 create mode 100644 arch/arm/mach-socfpga/arria10-xload.c
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-fpga.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-xload.h
 create mode 100644 drivers/mci/dw_mmc.h

-- 
2.11.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
