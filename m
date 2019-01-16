Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjpGO-00063B-UA
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 17:46:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gjpGL-0006gS-6d
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:01 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC4)
 (envelope-from <afa@pengutronix.de>) id 1gjpGK-0007ps-OC
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Jan 2019 18:45:48 +0100
Message-Id: <20190116174559.17416-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 00/11] ARM: at91: microchip-kz9477-evb: support first stage
 boot
To: barebox@lists.infradead.org

This patch series imports the necessary infrastructure out of the
at91bootstrap project to support first stage usage on the SAMA5.

This is leveraged to implement first stage boot on the SAMA5D3 based
Microchip KSZ9477-EVB.

Ahmad Fatoum (11):
  ARM: at91: clk: prune never-compiled h32mx code
  ARM: at91: sama5d3: remove never referenced empty header file
  ARM: at91: replace at91sam9_ddrsdr.h with at91bootstrap's
  ARM: at91: watchdog: implement at91_wdt_disable
  ARM: at91: import lowlevel clock initialization from at91bootstrap
  ARM: at91: import early_udelay from at91bootstrap
  ARM: at91: import low level DDRAMC initialization code from
    at91bootstrap
  ARM: at91: import lowlevel dbgu UART init code from at91bootstrap
  ARM: at91: microchip-ksz9477-evb: reintroduce board code for first
    stage
  ARM: at91: microchip-ksz9477-evb: import low level init from
    at91bootstrap
  ARM: at91: microchip-ksz9477-evb: add first stage MMC defconfig

 arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |   2 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c     |   2 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c      |   2 +-
 arch/arm/boards/at91sam9x5ek/lowlevel.c       |   2 +-
 .../arm/boards/microchip-ksz9477-evb/Makefile |   3 +
 arch/arm/boards/microchip-ksz9477-evb/init.c  | 143 +++++
 .../boards/microchip-ksz9477-evb/lowlevel.c   | 196 ++++++-
 arch/arm/boards/pm9g45/lowlevel.c             |   3 +-
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |   2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c         |   2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c   |   2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c          |   2 +-
 .../configs/microchip_ksz9477_evb_defconfig   |   1 +
 ...chip_ksz9477_evb_first_stage_mmc_defconfig |  22 +
 arch/arm/dts/Makefile                         |   2 +-
 arch/arm/mach-at91/Kconfig                    |  18 +-
 arch/arm/mach-at91/Makefile                   |   3 +
 arch/arm/mach-at91/at91sam9g45_devices.c      |   2 +-
 arch/arm/mach-at91/at91sam9g45_reset.S        |   8 +-
 arch/arm/mach-at91/at91sam9n12_devices.c      |   2 +-
 arch/arm/mach-at91/at91sam9x5_devices.c       |   2 +-
 arch/arm/mach-at91/ddramc.c                   | 518 ++++++++++++++++++
 arch/arm/mach-at91/early_udelay.c             |  61 +++
 arch/arm/mach-at91/include/mach/at91_dbgu.h   |  57 +-
 .../arm/mach-at91/include/mach/at91_ddrsdrc.h | 426 ++++++++++++++
 .../include/mach/at91_lowlevel_clock.h        |  30 +
 arch/arm/mach-at91/include/mach/at91_pmc.h    |  24 +-
 arch/arm/mach-at91/include/mach/at91_wdt.h    |  16 +
 .../mach-at91/include/mach/at91sam9_ddrsdr.h  | 264 ---------
 arch/arm/mach-at91/include/mach/ddramc.h      |  35 ++
 .../arm/mach-at91/include/mach/early_udelay.h |  13 +
 arch/arm/mach-at91/include/mach/sama5d3.h     |   1 +
 .../mach-at91/include/mach/sama5d3_matrix.h   |  15 -
 arch/arm/mach-at91/lowlevel_clock.c           | 164 ++++++
 arch/arm/mach-at91/sama5d3_devices.c          |   2 +-
 arch/arm/mach-at91/sama5d4_devices.c          |   2 +-
 drivers/clk/at91/Makefile                     |   1 -
 drivers/clk/at91/clk-h32mx.c                  | 125 -----
 38 files changed, 1739 insertions(+), 436 deletions(-)
 create mode 100644 arch/arm/boards/microchip-ksz9477-evb/init.c
 create mode 100644 arch/arm/configs/microchip_ksz9477_evb_first_stage_mmc_defconfig
 create mode 100644 arch/arm/mach-at91/ddramc.c
 create mode 100644 arch/arm/mach-at91/early_udelay.c
 create mode 100644 arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91_lowlevel_clock.h
 delete mode 100644 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
 create mode 100644 arch/arm/mach-at91/include/mach/ddramc.h
 create mode 100644 arch/arm/mach-at91/include/mach/early_udelay.h
 delete mode 100644 arch/arm/mach-at91/include/mach/sama5d3_matrix.h
 create mode 100644 arch/arm/mach-at91/lowlevel_clock.c
 delete mode 100644 drivers/clk/at91/clk-h32mx.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
