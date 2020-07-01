Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqYm7-0002dd-UC
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 09:11:29 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 11:10:54 +0200
Message-Id: <20200701091122.3437-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH RESEND 00/28] ARM: at91: add sama5d2 first stage support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

[Sent out old branch by mistake, this one actually works.]

This adapts the sama5d3 first stage patch set I sent around a few times
for use on the sama5d2. Unlike the original patch set, we now do the
chainloading in the PBL, so integrators can still use multi-image and
don't have to build barebox more than once.

With the FAT PBL implementation in place, first stages of the OMAP and
SoCFPGA could also be migrated to multi-image.

Much code has been adapted from at91bootstrap v3.8.12. Key changes:

 - We detect bootsource automatically, so we don't need to hardcode
   which MCI instance to use
 - We pass along the bootsource, so it's available to second stage
   bootloaders
 - We don't reset the SD card, so we can avoid having a complete
   SD/MMC core implementation in PBL
 - We don't disable the watchdog in first stage. We leave the decision
   on how to deal with it to second stage.

There's no defconfig for this yet, it will follow along with a generic
at91_multi_defconfig, when support for the sama5d3 is posted.

Cheers,
Ahmad Fatoum (28):
  ARM: at91: remove <mach/hardware.h> include from assembly code
  ARM: at91: sama5d2: cast peripheral base addresses to __iomem pointers
  ARM: at91: import at91bootstrap's at91_ddrsdrc.h
  ARM: at91: migrate at91sam9_ddrsdr.h to use at91bootstrap's
    at91_ddrsdrc.h
  ARM: at91: replace at91sam9_ddrsdr.h with at91bootstrap's
    at91_ddrsdrc.h
  ARM: at91: import early_udelay from at91bootstrap
  ARM: at91: import low level DDRAMC initialization code from
    at91bootstrap
  ARM: at91: watchdog: implement at91_wdt_disable
  watchdog: add support for at91sam9/sama5 watchdog
  ARM: at91: implement sama5d2 lowlevel init
  ARM: at91: sama5d2: add sama5d2 matrix configuration
  ARM: at91: add sama5d2 cache init
  ARM: at91: add necessary Advanced Interrupt Controller configuration
  ARM: at91: extend low level PMC driver for generic clk support
  pbl: add block I/O API
  fs: fat: extend for in-PBL support
  mci: sdhci: atmel: extend driver for PBL usage
  ARM: at91: add code for sama5 boot source detection
  ARM: at91: add helpers for chain-loading barebox from SD-card
  ARM: at91: sama5d2: reuse stack set-up by first stage
  ARM: at91: debug_ll: remove duplicated IS_ENABLED(CONFIG_DEBUG_LL)
    condition
  ARM: at91: sama5d2: reduce UART setup boilerplate with new helpers
  ARM: at91: sama5d27-som1: add additional first stage entry point
  ARM: at91: sama5d2: read back memory size from DDRAM controller
  ARM: at91: sama5d2: populate $bootsource and $bootsource_instance
  ARM: at91: sama5d27-som1-ek: add barebox_update and multi environment
    support
  ARM: at91: sama5d27-giantboard: add additional first stage entry point
  ARM: at91: sama5d27-giantboard: add default environment/bbu

 arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |   2 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c     |   2 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c      |   2 +-
 arch/arm/boards/at91sam9x5ek/lowlevel.c       |   3 +-
 arch/arm/boards/pm9g45/lowlevel.c             |   3 +-
 arch/arm/boards/sama5d27-giantboard/Makefile  |   2 +
 arch/arm/boards/sama5d27-giantboard/board.c   |  17 +
 .../defaultenv-giantboard/nv/boot.default     |   1 +
 .../arm/boards/sama5d27-giantboard/lowlevel.c |  51 +-
 arch/arm/boards/sama5d27-som1/Makefile        |   1 +
 arch/arm/boards/sama5d27-som1/board.c         |  35 ++
 arch/arm/boards/sama5d27-som1/lowlevel.c      |  61 +--
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |   2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c         |   2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c   |   2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c          |   2 +-
 arch/arm/dts/at91-sama5d27_giantboard.dts     |  10 +-
 arch/arm/dts/at91-sama5d27_som1_ek.dts        |  19 +-
 arch/arm/dts/sama5d2.dtsi                     |   2 +
 arch/arm/mach-at91/Kconfig                    |  11 +
 arch/arm/mach-at91/Makefile                   |   9 +-
 arch/arm/mach-at91/aic.c                      |  28 +
 arch/arm/mach-at91/at91_pmc_ll.c              | 169 +++++-
 arch/arm/mach-at91/at91sam9_reset.S           |   1 -
 arch/arm/mach-at91/at91sam9g45_devices.c      |   2 +-
 arch/arm/mach-at91/at91sam9g45_reset.S        |   9 +-
 arch/arm/mach-at91/at91sam9n12_devices.c      |   2 +-
 arch/arm/mach-at91/at91sam9x5_devices.c       |   2 +-
 arch/arm/mach-at91/ddramc.c                   |  59 ++
 arch/arm/mach-at91/ddramc_ll.c                | 507 ++++++++++++++++++
 arch/arm/mach-at91/early_udelay.c             |  56 ++
 arch/arm/mach-at91/include/mach/aic.h         |   9 +
 arch/arm/mach-at91/include/mach/at91_dbgu.h   |  34 +-
 .../arm/mach-at91/include/mach/at91_ddrsdrc.h | 373 +++++++++++++
 arch/arm/mach-at91/include/mach/at91_pmc.h    |  22 +
 arch/arm/mach-at91/include/mach/at91_pmc_ll.h |  32 +-
 arch/arm/mach-at91/include/mach/at91_wdt.h    |  16 +
 .../mach-at91/include/mach/at91sam9_ddrsdr.h  | 214 --------
 arch/arm/mach-at91/include/mach/barebox-arm.h |  21 +
 arch/arm/mach-at91/include/mach/ddramc.h      |  37 ++
 arch/arm/mach-at91/include/mach/debug_ll.h    |  17 +-
 .../arm/mach-at91/include/mach/early_udelay.h |  14 +
 arch/arm/mach-at91/include/mach/matrix.h      |  21 +
 .../mach-at91/include/mach/sama5_bootsource.h |  49 ++
 .../include/mach/sama5d2-sip-ddramc.h         |  39 ++
 arch/arm/mach-at91/include/mach/sama5d2.h     | 225 +++++---
 arch/arm/mach-at91/include/mach/sama5d2_ll.h  | 139 +++++
 arch/arm/mach-at91/include/mach/tz_matrix.h   |  95 ++++
 arch/arm/mach-at91/include/mach/xload.h       |  12 +
 arch/arm/mach-at91/matrix.c                   |  45 ++
 arch/arm/mach-at91/sama5d2.c                  |  71 +++
 arch/arm/mach-at91/sama5d2_ll.c               | 220 ++++++++
 arch/arm/mach-at91/sama5d3_devices.c          |   2 +-
 arch/arm/mach-at91/sama5d4_devices.c          |   2 +-
 arch/arm/mach-at91/xload-mmc.c                |  85 +++
 common/Makefile                               |   3 +-
 drivers/mci/Kconfig                           |   4 +
 drivers/mci/Makefile                          |   1 +
 drivers/mci/atmel-sdhci-common.c              |   3 +
 drivers/mci/atmel-sdhci-pbl.c                 | 128 +++++
 drivers/watchdog/Kconfig                      |   6 +
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/at91sam9_wdt.c               | 109 ++++
 fs/Makefile                                   |   2 +-
 fs/fat/Kconfig                                |   7 +
 fs/fat/Makefile                               |   4 +-
 fs/fat/diskio.h                               |   7 +-
 fs/fat/fat-diskio.c                           |  43 ++
 fs/fat/fat-pbl.c                              |  53 ++
 fs/fat/fat.c                                  |  31 --
 fs/fat/ff.c                                   |  89 +--
 fs/fat/ff.h                                   |  22 +-
 images/Makefile.at91                          |  10 +
 include/pbl.h                                 |  15 +
 lib/Makefile                                  |   2 +-
 75 files changed, 2888 insertions(+), 520 deletions(-)
 create mode 100644 arch/arm/boards/sama5d27-giantboard/board.c
 create mode 100644 arch/arm/boards/sama5d27-giantboard/defaultenv-giantboard/nv/boot.default
 create mode 100644 arch/arm/boards/sama5d27-som1/board.c
 create mode 100644 arch/arm/mach-at91/aic.c
 create mode 100644 arch/arm/mach-at91/ddramc.c
 create mode 100644 arch/arm/mach-at91/ddramc_ll.c
 create mode 100644 arch/arm/mach-at91/early_udelay.c
 create mode 100644 arch/arm/mach-at91/include/mach/aic.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
 delete mode 100644 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
 create mode 100644 arch/arm/mach-at91/include/mach/barebox-arm.h
 create mode 100644 arch/arm/mach-at91/include/mach/ddramc.h
 create mode 100644 arch/arm/mach-at91/include/mach/early_udelay.h
 create mode 100644 arch/arm/mach-at91/include/mach/matrix.h
 create mode 100644 arch/arm/mach-at91/include/mach/sama5_bootsource.h
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d2-sip-ddramc.h
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d2_ll.h
 create mode 100644 arch/arm/mach-at91/include/mach/tz_matrix.h
 create mode 100644 arch/arm/mach-at91/include/mach/xload.h
 create mode 100644 arch/arm/mach-at91/matrix.c
 create mode 100644 arch/arm/mach-at91/sama5d2.c
 create mode 100644 arch/arm/mach-at91/sama5d2_ll.c
 create mode 100644 arch/arm/mach-at91/xload-mmc.c
 create mode 100644 drivers/mci/atmel-sdhci-pbl.c
 create mode 100644 drivers/watchdog/at91sam9_wdt.c
 create mode 100644 fs/fat/fat-diskio.c
 create mode 100644 fs/fat/fat-pbl.c

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
