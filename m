Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzJz-0002U6-B1
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:19:33 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 14:18:49 +0200
Message-Id: <20191014121901.19471-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 00/12] ARM: at91: improve sama5 and multi-image support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

So far we had a menu that allowed multi-images only on a per-SoC basis.
This patch drop this, so we can use the newly added sama5d2 and sama5d3
support in the same image. The sama5d2 support is not yet complete, but
it boots to shell and network and QSPI-NOR drivers are already
available.

Ahmad Fatoum (12):
  ARM: at91: at91sam9x5ek: squelch new dtc warning
  ARM: at91: delete no-longer needed #ifdef guards
  usb: gadget: at91_udc: don't depend on !ARCH_SAMA5D4
  ARM: at91: don't define ARCH_BAREBOX_MAX_BARE_INIT_SIZE for
    multi-image
  ARM: at91: build for all SoCs when AT91_MULTI_BOARDS is selected
  ARM: at91: use compressed DTB for AT91_MULTI_BOARDS
  LICENSES: add BSD-1-Clause license
  ARM: at91: import lowlevel clock initialization from at91bootstrap
  ARM: at91: import lowlevel dbgu UART init code from at91bootstrap
  ARM: at91: microchip-ksz9477-evb: add debug_ll UART
  ARM: at91: add basic sama5d2 support
  ARM: at91: add basic sama5d2-som1-ek1 support

 LICENSES/preferred/BSD-1-Clause               |  26 ++
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/at91sam9263ek/lowlevel_init.c |   4 +-
 arch/arm/boards/at91sam9x5ek/lowlevel.c       |   4 +-
 .../boards/microchip-ksz9477-evb/lowlevel.c   |  35 ++-
 arch/arm/boards/sama5d27-som1/Makefile        |   1 +
 arch/arm/boards/sama5d27-som1/lowlevel.c      |  81 ++++++
 arch/arm/configs/sama5d27_som1_ek_defconfig   |  88 ++++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/at91-sama5d27_som1_ek.dts        |  36 +++
 arch/arm/dts/at91sam9x5ek.dts                 |  19 +-
 arch/arm/dts/sama5d2.dtsi                     |   0
 arch/arm/mach-at91/Kconfig                    |  78 ++++--
 arch/arm/mach-at91/Makefile                   |  23 +-
 arch/arm/mach-at91/at91_pmc_ll.c              | 183 ++++++++++++
 arch/arm/mach-at91/clock.c                    |  15 +-
 arch/arm/mach-at91/include/mach/at91_dbgu.h   |  63 ++++-
 arch/arm/mach-at91/include/mach/at91_pmc.h    |  24 +-
 arch/arm/mach-at91/include/mach/at91_pmc_ll.h |  78 ++++++
 .../include/mach/at91sam926x_board_init.h     |   6 -
 arch/arm/mach-at91/include/mach/cpu.h         |  60 +++-
 arch/arm/mach-at91/include/mach/hardware.h    |   1 +
 arch/arm/mach-at91/include/mach/sama5d2.h     | 261 ++++++++++++++++++
 arch/arm/mach-at91/include/mach/sama5d3.h     |   2 +-
 arch/arm/mach-at91/sam9_smc.c                 |   5 +-
 arch/arm/mach-at91/setup.c                    | 104 ++++++-
 common/Kconfig                                |   5 +-
 drivers/usb/gadget/Kconfig                    |   1 -
 drivers/usb/gadget/at91_udc.c                 |   6 -
 images/Makefile.at91                          |   4 +
 30 files changed, 1125 insertions(+), 90 deletions(-)
 create mode 100644 LICENSES/preferred/BSD-1-Clause
 create mode 100644 arch/arm/boards/sama5d27-som1/Makefile
 create mode 100644 arch/arm/boards/sama5d27-som1/lowlevel.c
 create mode 100644 arch/arm/configs/sama5d27_som1_ek_defconfig
 create mode 100644 arch/arm/dts/at91-sama5d27_som1_ek.dts
 create mode 100644 arch/arm/dts/sama5d2.dtsi
 create mode 100644 arch/arm/mach-at91/at91_pmc_ll.c
 create mode 100644 arch/arm/mach-at91/include/mach/at91_pmc_ll.h
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d2.h

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
