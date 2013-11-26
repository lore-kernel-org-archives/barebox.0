Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLmR-0000cZ-82
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:45 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VlLm4-0005PV-LG
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 17:46:08 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VlLm4-0004Vc-K4
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 17:46:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:45:50 +0100
Message-Id: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] AM33xx devicetree support
To: barebox@lists.infradead.org

The following series based on the previous patches switch the am33xx based boards
(Phytec phyCORE and Beaglebone(black)) over to devicetree and multi image support.

I've tested this on both boards in both MLO and regular builds. They start, the
devices come up and things seem to work, but more testing would be welcomed.
Wait, I just realized that the network on Beaglebone black stopped working, I'll
have a look.

Sascha

The following changes since commit 9df02e05f5fff6dafab5c140ce92dc33c196e5f9:

  Merge branch 'for-next/x86' into next (2013-11-26 17:22:06 +0100)

are available in the git repository at:


  git://git.pengutronix.de/git/barebox.git work/am335x

for you to fetch changes up to 82f44858223a2e61cb825ea6f68b6d2f77975e6e:

  ARM: OMAP: consolidate am335x mlo defconfigs (2013-11-26 17:37:36 +0100)

----------------------------------------------------------------
Sascha Hauer (17):
      ARM: Make multi images startup process simpler
      ARM: Make ENTRY_FUNCTION more robust
      ARM: Add base am335x-phytec-phycore devicetree file
      ARM: am335x phytec phyCORE: Switch to devicetree probe support
      ARM: am33xx Phytec phyCORE: initialize debug UART
      ARM: am33xx Phytec phyCORE: Switch to multiimage support
      ARM: am33xx Phytec phyCORE: update defconfig
      ARM: dts: Add am33xx beaglebone(black) dts files
      ARM: am33xx: beaglebone: remove mlo_large_defconfig
      ARM: beaglebone: Add memory to devicetrees
      ARM: beaglebone: Switch to devicetree and multiimage
      ARM: am335x Phytec phyCORE: Move partition descriptions to devicetree
      ARM: OMAP: Safe boot info in fixed SRAM address
      ARM: am335x Phytec phyCORE: configure environment from devicetree
      ARM: beaglebone: configure console from devicetree
      ARM: OMAP: introduce multiboard support and move am33xx boards to it
      ARM: OMAP: consolidate am335x mlo defconfigs

 arch/arm/boards/beaglebone/beaglebone.h            |   2 +
 arch/arm/boards/beaglebone/board.c                 | 121 +-------
 arch/arm/boards/beaglebone/lowlevel.c              |  67 ++++-
 arch/arm/boards/dfi-fs700-m60/lowlevel.c           |   8 +-
 arch/arm/boards/dmo-mx6-realq7/lowlevel.c          |   4 +-
 arch/arm/boards/ebv-socrates/lowlevel.c            |   6 +-
 arch/arm/boards/efika-mx-smartbook/lowlevel.c      |   4 +-
 arch/arm/boards/freescale-mx51-pdk/lowlevel.c      |   4 +-
 arch/arm/boards/freescale-mx53-loco/lowlevel.c     |   4 +-
 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c    |   4 +-
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c |   4 +-
 arch/arm/boards/gk802/lowlevel.c                   |   4 +-
 arch/arm/boards/pcm051/Makefile                    |   2 +-
 arch/arm/boards/pcm051/board.c                     | 166 +----------
 arch/arm/boards/pcm051/env/init/mtdparts-nand      |  11 -
 arch/arm/boards/pcm051/env/init/mtdparts-nor       |  12 -
 arch/arm/boards/pcm051/lowlevel.c                  |  44 ++-
 arch/arm/boards/pcm051/mux.c                       |  65 -----
 arch/arm/boards/pcm051/mux.h                       |   4 -
 arch/arm/boards/phytec-pfla02/lowlevel.c           |   8 +-
 arch/arm/boards/solidrun-cubox/lowlevel.c          |   4 +-
 arch/arm/boards/terasic-sockit/lowlevel.c          |   8 +-
 arch/arm/boards/toradex-colibri-t20-iris/entry.c   |   4 +-
 arch/arm/boards/toshiba-ac100/entry.c              |   4 +-
 arch/arm/boards/tqma6x/lowlevel.c                  |   8 +-
 arch/arm/configs/am335x_beaglebone_defconfig       |   8 +-
 .../configs/am335x_beaglebone_mlo_large_defconfig  |  55 ----
 .../configs/am335x_beaglebone_mlo_small_defconfig  |  29 --
 .../{pcm051_mlo_defconfig => am335x_mlo_defconfig} |  27 +-
 arch/arm/configs/pcm051_defconfig                  |  34 ++-
 arch/arm/cpu/Makefile                              |   2 +-
 arch/arm/cpu/start-images.c                        |  49 ----
 arch/arm/cpu/uncompress.c                          |   9 +-
 arch/arm/dts/Makefile                              |   6 +
 arch/arm/dts/am335x-bone-common.dtsi               | 300 ++++++++++++++++++++
 arch/arm/dts/am335x-bone.dts                       |  39 +++
 arch/arm/dts/am335x-boneblack.dts                  |  88 ++++++
 arch/arm/dts/am335x-phytec-phycore.dts             | 304 +++++++++++++++++++++
 arch/arm/dts/tps65217.dtsi                         |  56 ++++
 arch/arm/include/asm/barebox-arm.h                 |  16 +-
 arch/arm/mach-omap/Kconfig                         |  34 ++-
 arch/arm/mach-omap/Makefile                        |   4 +-
 arch/arm/mach-omap/am33xx_generic.c                |   3 +-
 arch/arm/mach-omap/include/mach/am33xx-generic.h   |   3 +-
 arch/arm/mach-omap/include/mach/am33xx-silicon.h   |   1 +
 arch/arm/mach-omap/include/mach/generic.h          |   2 -
 arch/arm/mach-omap/include/mach/omap3-generic.h    |   2 +-
 arch/arm/mach-omap/include/mach/omap3-silicon.h    |   1 +
 arch/arm/mach-omap/include/mach/omap4-generic.h    |   2 +-
 arch/arm/mach-omap/include/mach/omap4-silicon.h    |   3 +-
 arch/arm/mach-omap/omap3_generic.c                 |   3 +-
 arch/arm/mach-omap/omap4_generic.c                 |   3 +-
 arch/arm/mach-omap/omap_bootinfo.S                 |  25 --
 arch/arm/mach-omap/omap_generic.c                  |  17 +-
 images/Makefile                                    |  15 +-
 images/Makefile.am33xx                             |  30 ++
 56 files changed, 1077 insertions(+), 665 deletions(-)
 delete mode 100644 arch/arm/boards/pcm051/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/pcm051/env/init/mtdparts-nor
 delete mode 100644 arch/arm/boards/pcm051/mux.c
 delete mode 100644 arch/arm/boards/pcm051/mux.h
 delete mode 100644 arch/arm/configs/am335x_beaglebone_mlo_large_defconfig
 delete mode 100644 arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
 rename arch/arm/configs/{pcm051_mlo_defconfig => am335x_mlo_defconfig} (54%)
 delete mode 100644 arch/arm/cpu/start-images.c
 create mode 100644 arch/arm/dts/am335x-bone-common.dtsi
 create mode 100644 arch/arm/dts/am335x-bone.dts
 create mode 100644 arch/arm/dts/am335x-boneblack.dts
 create mode 100644 arch/arm/dts/am335x-phytec-phycore.dts
 create mode 100644 arch/arm/dts/tps65217.dtsi
 delete mode 100644 arch/arm/mach-omap/omap_bootinfo.S
 create mode 100644 images/Makefile.am33xx

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
