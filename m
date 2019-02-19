Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw95f-0000yz-Mx
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 17:21:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gw95d-0002Tw-MZ
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 18:21:53 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC5)
 (envelope-from <afa@pengutronix.de>) id 1gw95c-00062l-0j
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 18:21:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Feb 2019 18:21:34 +0100
Message-Id: <20190219172150.11901-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH v2 00/16] ARM: at91: microchip-kz9477-evb: support first stage
 boot
To: barebox@lists.infradead.org

v1 is at <20190116174559.17416-1-a.fatoum@pengutronix.de>.

I tried to strip down barebox, so the first stage can be device tree
based as well. It boots up to trying to load the first stage from MMC,
where it fails. As it's very annoying to debug when only having few bytes
to spare, I am not sure if it's worth it. Future barebox updates might
increase size and break it again, so the first stage is again non-device
tree, but OFDEVICE can be selected and the curious user (you?) can try
to get the size further down and fix the bootstrap failure.

This patch set applies on top of "ARM: at91: misc fixes and cleanup",
<20190116174559.17416-1-a.fatoum@pengutronix.de>, which I sent out
earlier today.


Changes since v1:
- dropped removal of h32mx code, it was just touched by
  ARM: at91: microchip-kz9477-evb: support first stage boot and might
  be useful for future ports
- dropped removal of sama5d3_matrix.h, already mainline via
  f722f2a12 ("ARM: at91: delete unused mach/sama5d3_matrix.h")
- added commit with BSD-1-Clause license text
- split the migration to the at91bootstrap header for SDRAM defines
  into 3 separate commits for better comprehension as suggested by Sam
- arch-prefixed globally visible functions/defines
- copied over some helper functions from at91bootstrap for board init,
  or moved them to headers, so board code can look more like at91bootstrap
  board code
- moved some helper function into headers, so they can be used in
  multiple boards in future
- replaced all __raw_{read,write}T with {read,write}T
- added separate entry point for first stage, like am335x does
- added build-time size check for first stage
- renamed _first_stage suffix to _bootstrap, for symmetry with
  the other at91sam9261
- compressed the DTB
- added infrastructure for future device tree based first stage
- added documentation as suggested by Sam
- changed NAND partition layout in board code as suggested by Sascha
- stylistic fixes here and there


Ahmad Fatoum (16):
  LICENSES: add BSD-1-Clause license
  ARM: at91: import at91bootstrap's at91_ddrsdrc.h
  ARM: at91: migrate at91sam9_ddrsdr.h to use at91bootstrap's
    at91_ddrsdrc.h
  ARM: at91: replace at91sam9_ddrsdr.h with at91bootstrap's
    at91_ddrsdrc.h
  ARM: at91: watchdog: implement at91_wdt_disable
  ARM: at91: import lowlevel clock initialization from at91bootstrap
  ARM: at91: import early_udelay from at91bootstrap
  ARM: at91: import low level DDRAMC initialization code from
    at91bootstrap
  ARM: at91: import lowlevel dbgu UART init code from at91bootstrap
  images: at91: differentiate between first and second stage images
  ARM: at91: sama5: specify 0x10000 as first stage max size
  ARM: at91: microchip-ksz9477-evb: use compressed DTB
  ARM: dts: microchip-ksz9477-evb: add dummy first stage device tree
  ARM: at91: microchip-ksz9477-evb: implement first stage
  ARM: at91: microchip-ksz9477: provide board code fallback
  doc: microchip-ksz9477-evb: add documentation

 .../boards/at91/microchip-ksz9477-evb.rst     |  38 +-
 LICENSES/other/X11                            |  28 +
 LICENSES/preferred/BSD-1-Clause               |  15 +
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |   2 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c     |   2 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c      |   2 +-
 arch/arm/boards/at91sam9x5ek/lowlevel.c       |   2 +-
 .../arm/boards/microchip-ksz9477-evb/Makefile |   3 +
 arch/arm/boards/microchip-ksz9477-evb/board.c | 129 +++++
 .../boards/microchip-ksz9477-evb/lowlevel.c   | 199 ++++++-
 arch/arm/boards/pm9g45/lowlevel.c             |   3 +-
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |   2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c         |   2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c   |   2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c          |   2 +-
 ...rochip_ksz9477_evb_bootstrap_mmc_defconfig |  24 +
 arch/arm/dts/Makefile                         |   4 +-
 .../at91-microchip-ksz9477-evb-boot-bin.dts   |  13 +
 arch/arm/mach-at91/Kconfig                    |  23 +-
 arch/arm/mach-at91/Makefile                   |   3 +
 arch/arm/mach-at91/at91sam9g45_devices.c      |   2 +-
 arch/arm/mach-at91/at91sam9g45_reset.S        |   8 +-
 arch/arm/mach-at91/at91sam9n12_devices.c      |   2 +-
 arch/arm/mach-at91/at91sam9x5_devices.c       |   2 +-
 arch/arm/mach-at91/ddramc.c                   | 518 ++++++++++++++++++
 arch/arm/mach-at91/early_udelay.c             |  53 ++
 arch/arm/mach-at91/include/mach/at91_dbgu.h   |  57 +-
 .../arm/mach-at91/include/mach/at91_ddrsdrc.h | 390 +++++++++++++
 .../include/mach/at91_lowlevel_clock.h        |  52 ++
 arch/arm/mach-at91/include/mach/at91_pmc.h    |  24 +-
 arch/arm/mach-at91/include/mach/at91_wdt.h    |  16 +
 .../mach-at91/include/mach/at91sam9_ddrsdr.h  | 138 +----
 arch/arm/mach-at91/include/mach/ddramc.h      |  35 ++
 .../arm/mach-at91/include/mach/early_udelay.h |  13 +
 arch/arm/mach-at91/include/mach/sama5d3.h     |   1 +
 arch/arm/mach-at91/lowlevel_clock.c           | 174 ++++++
 arch/arm/mach-at91/sama5d3_devices.c          |   2 +-
 arch/arm/mach-at91/sama5d4_devices.c          |   2 +-
 images/Makefile.at91                          |  16 +-
 39 files changed, 1839 insertions(+), 164 deletions(-)
 create mode 100644 LICENSES/other/X11
 create mode 100644 LICENSES/preferred/BSD-1-Clause
 create mode 100644 arch/arm/boards/microchip-ksz9477-evb/board.c
 create mode 100644 arch/arm/configs/microchip_ksz9477_evb_bootstrap_mmc_defconfig
 create mode 100644 arch/arm/dts/at91-microchip-ksz9477-evb-boot-bin.dts
 create mode 100644 arch/arm/mach-at91/ddramc.c
 create mode 100644 arch/arm/mach-at91/early_udelay.c
 create mode 100644 arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91_lowlevel_clock.h
 create mode 100644 arch/arm/mach-at91/include/mach/ddramc.h
 create mode 100644 arch/arm/mach-at91/include/mach/early_udelay.h
 create mode 100644 arch/arm/mach-at91/lowlevel_clock.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
