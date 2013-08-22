Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCbdH-0001vs-QK
 for barebox@lists.infradead.org; Thu, 22 Aug 2013 20:37:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Aug 2013 22:36:51 +0200
Message-Id: <1377203819-23074-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] OMAP fixes and beaglebone black support
To: barebox@lists.infradead.org

The following are some fixes (1/8 - 3/8) For OMAP needed for
making the OMAP boards boot 2nd stage again and fixing the
beaglebone lowlevel init. These are for master.

The remaining patches add beaglebone black support.

Most of this stuff is from Jan, I only polished a bit.

Sascha

----------------------------------------------------------------
Jan Luebbe (5):
      ARM: cpuinfo: display the core name and version
      ARM: am33xx: implement cpu revision decoding
      ARM: am33xx: beaglebone: split out DDR2 init for BB White
      ARM: am33xx: beaglebone: configure I2C EEPROM
      ARM: am33xx: beaglebone: add support for beaglebone black with DDR3 RAM

Sascha Hauer (3):
      ARM: am33xx: Add SRAM0 address/size defines
      ARM: omap: fix omap_save_bootinfo
      ARM: am33xx: Make uart0 mux init callable during early init

 arch/arm/boards/archosg9/lowlevel.c              |   3 +-
 arch/arm/boards/beagle/lowlevel.c                |   3 +-
 arch/arm/boards/beaglebone/Makefile              |   2 +-
 arch/arm/boards/beaglebone/beaglebone.h          |   9 ++
 arch/arm/boards/beaglebone/board.c               |  55 ++++++-
 arch/arm/boards/beaglebone/ddr.h                 |   2 +
 arch/arm/boards/beaglebone/ddr2.c                | 178 +++++++++++++++++++++
 arch/arm/boards/beaglebone/ddr3.c                | 155 ++++++++++++++++++
 arch/arm/boards/beaglebone/lowlevel.c            | 195 +++--------------------
 arch/arm/boards/omap343xdsp/lowlevel.c           |   3 +-
 arch/arm/boards/omap3evm/lowlevel.c              |   3 +-
 arch/arm/boards/panda/lowlevel.c                 |   3 +-
 arch/arm/boards/pcm049/lowlevel.c                |   3 +-
 arch/arm/boards/pcm051/lowlevel.c                |   2 +-
 arch/arm/boards/phycard-a-l1/lowlevel.c          |   3 +-
 arch/arm/boards/phycard-a-xl2/lowlevel.c         |   3 +-
 arch/arm/cpu/cpuinfo.c                           |  33 ++++
 arch/arm/mach-omap/am33xx_clock.c                |   9 +-
 arch/arm/mach-omap/am33xx_generic.c              |  34 +++-
 arch/arm/mach-omap/am33xx_mux.c                  |  13 +-
 arch/arm/mach-omap/include/mach/am33xx-clock.h   |   5 +-
 arch/arm/mach-omap/include/mach/am33xx-devices.h |   6 +
 arch/arm/mach-omap/include/mach/am33xx-generic.h |  19 +++
 arch/arm/mach-omap/include/mach/am33xx-silicon.h |   8 +-
 arch/arm/mach-omap/include/mach/generic.h        |   2 +-
 arch/arm/mach-omap/include/mach/omap3-generic.h  |  21 +++
 arch/arm/mach-omap/include/mach/omap4-generic.h  |  21 +++
 arch/arm/mach-omap/include/mach/sys_info.h       |  10 +-
 28 files changed, 595 insertions(+), 208 deletions(-)
 create mode 100644 arch/arm/boards/beaglebone/beaglebone.h
 create mode 100644 arch/arm/boards/beaglebone/ddr.h
 create mode 100644 arch/arm/boards/beaglebone/ddr2.c
 create mode 100644 arch/arm/boards/beaglebone/ddr3.c
 create mode 100644 arch/arm/mach-omap/include/mach/omap3-generic.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap4-generic.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
