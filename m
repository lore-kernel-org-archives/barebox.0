Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFesV-0005kL-PT
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:50:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1ZFd0P-0004Jm-Ho
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:50:53 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86_RC4)
 (envelope-from <sha@pengutronix.de>) id 1ZFes9-0000CI-Nk
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 10:50:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 10:50:17 +0200
Message-Id: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX6 xload and Utilite support
To: Barebox List <barebox@lists.infradead.org>

This series adds support for the Utilite Mini Computer. Like several
other i.MX6 based boards this one also wants to setup the SDRAM from
code rather than from a DCD table. This has previously limited the
barebox image size to the internal SRAM size. This series overcomes
this limitation. We now create the i.MX image from the pblx image
instead of the complete image including payload. With this the ROM
code only loads the initial portion to SRAM and we can setup the
SDRAM there. Afterwards we have to load the remaining image ourselves,
but it turned out require only very little code to load an image
from the SPI NOR flash. This series implements this mechanism for
i.MX6 on SPI NOR flash only, support for other SoCs and other devices
needs to be added to get this working in other cases.

Sascha

----------------------------------------------------------------
Sascha Hauer (11):
      ARM: i.MX6: Add i.MX6 entry function
      ARM: i.MX6: remove unnecessary includes
      ARM: i.MX6: add function to get bootsource in pbl
      memsize: Compile for PBL aswell
      ARM: i.MX: compile boot.c for pbl aswell
      ARM: i.MX6: create cpu_is() functions for use in PBL
      images: i.MX: Create target for SRAM images
      spi: i.MX: move register defines to include/
      ARM: i.MX: Add SPI xload code
      ARM: i.MX6: Add DDR setup code from U-Boot
      ARM: initial cm-fx6 support

 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/cm-fx6/Makefile                    |   3 +
 arch/arm/boards/cm-fx6/board.c                     |  74 +++
 .../boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg   |   3 +
 arch/arm/boards/cm-fx6/lowlevel.c                  | 363 ++++++++++++++
 arch/arm/boards/datamodul-edm-qmx6/board.c         |   1 -
 arch/arm/boards/dfi-fs700-m60/lowlevel.c           |   1 -
 arch/arm/boards/embest-riotboard/lowlevel.c        |   1 -
 arch/arm/boards/phytec-phycard-imx6/lowlevel.c     |   1 -
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c     |   1 -
 arch/arm/boards/tqma6x/board.c                     |   1 -
 arch/arm/boards/tqma6x/lowlevel.c                  |   1 -
 arch/arm/boards/variscite-mx6/lowlevel.c           |   1 -
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx6q-cm-fx6.dts                      |  29 ++
 arch/arm/dts/imx6q-cm-fx6.dtsi                     |  99 ++++
 arch/arm/dts/imx6q-utilite.dts                     |  42 ++
 arch/arm/dts/imx6qdl-cm-fx6.dtsi                   | 463 ++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |   4 +
 arch/arm/mach-imx/Makefile                         |   6 +-
 arch/arm/mach-imx/boot.c                           |  38 +-
 arch/arm/mach-imx/esdctl.c                         |  11 +
 arch/arm/mach-imx/imx6-mmdc.c                      | 544 +++++++++++++++++++++
 arch/arm/mach-imx/include/mach/esdctl.h            |   2 +-
 arch/arm/mach-imx/include/mach/generic.h           |   2 +
 arch/arm/mach-imx/include/mach/imx6-mmdc.h         | 274 +++++++++++
 arch/arm/mach-imx/include/mach/imx6.h              |  41 +-
 arch/arm/mach-imx/include/mach/xload.h             |   7 +
 arch/arm/mach-imx/xload-spi.c                      | 160 ++++++
 common/Makefile                                    |   2 +-
 drivers/spi/imx_spi.c                              |  80 +--
 images/Makefile.imx                                |  21 +
 include/spi/imx-spi.h                              |  83 ++++
 34 files changed, 2230 insertions(+), 132 deletions(-)
 create mode 100644 arch/arm/boards/cm-fx6/Makefile
 create mode 100644 arch/arm/boards/cm-fx6/board.c
 create mode 100644 arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
 create mode 100644 arch/arm/boards/cm-fx6/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-cm-fx6.dts
 create mode 100644 arch/arm/dts/imx6q-cm-fx6.dtsi
 create mode 100644 arch/arm/dts/imx6q-utilite.dts
 create mode 100644 arch/arm/dts/imx6qdl-cm-fx6.dtsi
 create mode 100644 arch/arm/mach-imx/include/mach/xload.h
 create mode 100644 arch/arm/mach-imx/xload-spi.c
 create mode 100644 include/spi/imx-spi.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
