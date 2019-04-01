Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAu1R-0005NA-6h
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 10:18:38 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 12:18:08 +0200
Message-Id: <20190401101822.7392-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 00/15] ARM: at91: microchip-kz9477-evb: support first stage
 boot
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

This is (the hopefully final and bestest) v3 of a series that pulls in
enough of at91bootstrap to make barebox usable as first stage bootloader
for the SAMA5 family of AT91 SoCs.

Besides incorporating feedback on v2 (mainly multi-image support), I've also
reinstated code paths needed by the sama5d2, whose port I worked a bit on.

This patchset applies on top of v2 of "ARM: at91: misc fixes and
cleanup", which I sent out an hour ago. As with v2, it leaves
the user the option to select OFDEVICE for the first stage. I haven't
managed to get a small enough of-based barebox that still works though.
The included defconfig uses board code instead, which makes the MMC
first stage fit into 49K.

Changes since v2 <20190219172150.11901-1-a.fatoum@pengutronix.de>:
  - addressed Roland's feedback: commits now indicate where they
    copy code from if any
  - SoC-specific get_ddram_size and associated #ifdeffery was removed
    as suggested by Sascha. This series was rebased on-top.
  - lowlevel_clock was renamed to at91_pmc_ll because I like that
    name more
  - removed instances of IS_ENABLED in generic code for multi-image
    support. One instance could be inferred from function argument,
    the rest now accepts a flags parameter.
  - reinstated sama5d2 specific SDRAM and PMC initialization code
    as well as necessary register offset definitions
  - added missing Atmel copyright/disclaimer in the evb's lowlevel.c
    as requested by Roland. Other files have the Atmel copyright,
    the disclaimer looks compatible with the newly added
    LICENSES/BSD-1-Clause
  - removed board code define for multi-image build support as per
    Sascha's comment
  - adjusted code to use the new MAX_PBL_IMAGE_SIZE for indicating
    maximum first stage bootloader size

Changes since v1 <20190116174559.17416-1-a.fatoum@pengutronix.de>:
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

Ahmad Fatoum (15):
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
 arch/arm/boards/microchip-ksz9477-evb/board.c | 127 +++++
 .../boards/microchip-ksz9477-evb/lowlevel.c   | 213 +++++++-
 arch/arm/boards/pm9g45/lowlevel.c             |   3 +-
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |   2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c         |   2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c   |   2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c          |   2 +-
 ...rochip_ksz9477_evb_bootstrap_mmc_defconfig |  24 +
 arch/arm/dts/Makefile                         |   4 +-
 .../at91-microchip-ksz9477-evb-boot-bin.dts   |  13 +
 arch/arm/mach-at91/Kconfig                    |  17 +-
 arch/arm/mach-at91/Makefile                   |   3 +
 arch/arm/mach-at91/at91_pmc_ll.c              | 184 +++++++
 arch/arm/mach-at91/at91sam9g45_devices.c      |   2 +-
 arch/arm/mach-at91/at91sam9g45_reset.S        |   8 +-
 arch/arm/mach-at91/at91sam9n12_devices.c      |   2 +-
 arch/arm/mach-at91/at91sam9x5_devices.c       |   2 +-
 arch/arm/mach-at91/ddramc.c                   | 507 ++++++++++++++++++
 arch/arm/mach-at91/early_udelay.c             |  56 ++
 arch/arm/mach-at91/include/mach/at91_dbgu.h   |  57 +-
 .../arm/mach-at91/include/mach/at91_ddrsdrc.h | 332 ++++++++++++
 arch/arm/mach-at91/include/mach/at91_pmc.h    |  32 +-
 arch/arm/mach-at91/include/mach/at91_pmc_ll.h |  89 +++
 arch/arm/mach-at91/include/mach/at91_wdt.h    |  16 +
 .../mach-at91/include/mach/at91sam9_ddrsdr.h  | 138 +----
 arch/arm/mach-at91/include/mach/ddramc.h      |  36 ++
 .../arm/mach-at91/include/mach/early_udelay.h |  14 +
 arch/arm/mach-at91/include/mach/sama5d3.h     |   1 +
 arch/arm/mach-at91/sama5d3_devices.c          |   2 +-
 arch/arm/mach-at91/sama5d4_devices.c          |   2 +-
 images/Makefile.at91                          |  17 +-
 39 files changed, 1835 insertions(+), 166 deletions(-)
 create mode 100644 LICENSES/other/X11
 create mode 100644 LICENSES/preferred/BSD-1-Clause
 create mode 100644 arch/arm/boards/microchip-ksz9477-evb/board.c
 create mode 100644 arch/arm/configs/microchip_ksz9477_evb_bootstrap_mmc_defconfig
 create mode 100644 arch/arm/dts/at91-microchip-ksz9477-evb-boot-bin.dts
 create mode 100644 arch/arm/mach-at91/at91_pmc_ll.c
 create mode 100644 arch/arm/mach-at91/ddramc.c
 create mode 100644 arch/arm/mach-at91/early_udelay.c
 create mode 100644 arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91_pmc_ll.h
 create mode 100644 arch/arm/mach-at91/include/mach/ddramc.h
 create mode 100644 arch/arm/mach-at91/include/mach/early_udelay.h

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
