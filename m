Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Urkff-0000uz-6R
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 08:01:45 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Urkew-0004Xp-PL
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 10:00:58 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Urkew-0004Co-OI
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 10:00:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 10:00:46 +0200
Message-Id: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Multi board support
To: barebox@lists.infradead.org

Following multi image support we now get multi board support.

With this series it's possible to build a barebox binary for multiple
boards. At the end of this series a new imx_v7_defconfig is added
which currently builds:

 barebox-freescale-imx51-babbage.img
 barebox-genesi-efikasb.img
 barebox-freescale-imx53-loco.img
 barebox-datamodul-edm-qmx6.img

All are simply PBL/imximage wrappers around the same base binary. This
finally brings together the various pieces like relocatable binary support,
devicetree support, multiple cpu support and regular driver support for
core SoC devices.

Sascha

----------------------------------------------------------------
Sascha Hauer (11):
      ARM: i.MX: select SoC from board
      ARM: i.MX51 babbage: add board name to flash header file
      ARM: i.MX51 babbage: prepare for multiboard support
      ARM: i.MX51 babbage: Move over to multiboard
      ARM: i.MX53 loco: add board name to flash header file
      ARM: i.MX53 loco: prepare multiboard support
      ARM: i.MX53 loco: Move over to multiboard
      ARM: i.MX6 realq7: prepare multiboard support
      ARM: i.MX6 realq7: switch to multiboard
      ARM: i.MX51 efikasb: switch to multiboard support
      ARM: Add a imx_v7_defconfig

 arch/arm/boards/dmo-mx6-realq7/board.c             |  19 +-
 arch/arm/boards/efika-mx-smartbook/Makefile        |   5 +-
 arch/arm/boards/efika-mx-smartbook/board.c         |  17 +-
 arch/arm/boards/efika-mx-smartbook/dcd-data.h      |  56 ------
 .../flash-header-imx51-genesi-efikasb.imxcfg       |  57 ++++++
 arch/arm/boards/efika-mx-smartbook/flash_header.c  |  29 ---
 arch/arm/boards/efika-mx-smartbook/lowlevel.c      |  14 +-
 arch/arm/boards/freescale-mx51-pdk/Makefile        |   4 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |  21 +-
 ...er.imxcfg => flash-header-imx51-babbage.imxcfg} |   0
 arch/arm/boards/freescale-mx53-loco/Makefile       |   4 +-
 arch/arm/boards/freescale-mx53-loco/board.c        |  17 +-
 ...eader.imxcfg => flash-header-imx53-loco.imxcfg} |   0
 arch/arm/configs/dmo-realq7_defconfig              |   2 +-
 arch/arm/configs/efika-mx-smartbook_defconfig      |   1 +
 arch/arm/configs/eukrea_cpuimx25_defconfig         |   1 +
 arch/arm/configs/eukrea_cpuimx27_defconfig         |   1 +
 arch/arm/configs/eukrea_cpuimx35_defconfig         |   1 +
 arch/arm/configs/freescale-mx6-arm2_defconfig      |   1 +
 arch/arm/configs/freescale_mx51_babbage_defconfig  |   3 +-
 arch/arm/configs/freescale_mx53_loco_defconfig     |   3 +-
 arch/arm/configs/imx_v7_defconfig                  | 131 +++++++++++++
 arch/arm/configs/mx21ads_defconfig                 |   1 +
 arch/arm/configs/pcm037_defconfig                  |   1 +
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/mach-imx/Kconfig                          | 215 +++++++++------------
 images/Makefile.imx                                |  10 +-
 27 files changed, 366 insertions(+), 249 deletions(-)
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/dcd-data.h
 create mode 100644 arch/arm/boards/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/flash_header.c
 rename arch/arm/boards/freescale-mx51-pdk/{flash-header.imxcfg => flash-header-imx51-babbage.imxcfg} (100%)
 rename arch/arm/boards/freescale-mx53-loco/{flash-header.imxcfg => flash-header-imx53-loco.imxcfg} (100%)
 create mode 100644 arch/arm/configs/imx_v7_defconfig


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
