Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamD-00026y-Jj
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:44 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TOamB-0004hh-IR
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 23:03:39 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TOamB-0002el-HJ
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 23:03:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:09 +0200
Message-Id: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: Make memory known to lowlevel code
To: barebox@lists.infradead.org

Memory is a precious resource and should be known early. This series
adds a new entry point for ARM which is passed the SDRAM region used
for barebox. This allows us to setup the stack and malloc space
according to the RAM we have and get rid of the values from Kconfig.
Later with relocatable binary support it will allow us to find a
suitable base for barebox.
With the new entry point it is also possible for the lowlevel code
to pass a pointer on to barebox which can be retrieved later. This
way data from an earlier loader can be passed on.
It is not necessary to pass the whole SDRAM to the entry point (which
wouldn't be possible anyway when there are multiple memory banks).
It instead is enough to pass the memory barebox should use for itself.
i.MX gets functions to read back the SDRAM size from the controller.
Atmel and Samsung also have such a function, but these are not used
by every board, I didn't change that. Other boards have different
possible SDRAM sizes, I passed the minimum amount to the barebox
entry.

Sascha

----------------------------------------------------------------
Sascha Hauer (28):
      ARM: Make malloc available in all initcalls
      ARM at91sam926x: provide reset function for boards with lowlevel init
      ARM at91rm9200: provide reset function for boards with lowlevel init
      ARM: Add new entry point for barebox
      ARM i.MX Add functions to get sdram base and size
      ARM i.MX boards: switch to barebox_arm_entry
      ARM AT91 boards: switch to barebox_arm_entry
      ARM i.MXs boards: switch to barebox_arm_entry
      ARM OMAP boards: switch to barebox_arm_entry
      ARM Samsung boards: switch to barebox_arm_entry
      ARM PXA boards: switch to barebox_arm_entry
      ARM ep93xx boards: switch to barebox_arm_entry
      ARM tegra boards: switch to barebox_arm_entry
      ARM nomadik boards: switch to barebox_arm_entry
      ARM versatile boards: switch to barebox_arm_entry
      ARM netx boards: switch to barebox_arm_entry
      ARM: remove now unused *_LOWLEVEL_INIT Kconfig options
      ARM start: remove unused board_init_lowlevel* functions
      ARM pbl: setup stack at end of SDRAM
      ARM pbl: Call uncompressed binary with arguments
      ARM pbl: make MMU functional again
      ARM start: pick up memory/boarddata arguments from pbl
      ARM start: Add barebox_arm_boarddata function
      ARM: Determine base and size of malloc space from SDRAM
      ARM pbl: always copy piggydata
      ARM i.MX: Use SRAM stack in lowlevel code
      generic memory layout: fix deps for [MALLOC|STACK]_BASE
      ARM: disable HAVE_CONFIGURABLE_MEMORY_LAYOUT

 arch/arm/Kconfig                                   |    1 -
 arch/arm/boards/a9m2410/lowlevel_init.S            |    9 +-
 arch/arm/boards/a9m2440/lowlevel_init.S            |    9 +-
 arch/arm/boards/archosg9/Makefile                  |    4 +-
 arch/arm/boards/archosg9/lowlevel.c                |    4 +-
 arch/arm/boards/at91rm9200ek/Makefile              |    2 +
 arch/arm/boards/at91rm9200ek/lowlevel.c            |   14 +
 arch/arm/boards/at91sam9260ek/Makefile             |    2 +
 arch/arm/boards/at91sam9260ek/lowlevel.c           |   12 +
 arch/arm/boards/at91sam9261ek/Makefile             |    2 +
 arch/arm/boards/at91sam9261ek/lowlevel.c           |   12 +
 arch/arm/boards/at91sam9263ek/Makefile             |    2 +
 arch/arm/boards/at91sam9263ek/lowlevel.c           |   15 ++
 arch/arm/boards/at91sam9m10g45ek/Makefile          |    2 +
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c        |   11 +
 arch/arm/boards/at91sam9x5ek/Makefile              |    2 +
 arch/arm/boards/at91sam9x5ek/lowlevel.c            |   11 +
 arch/arm/boards/beagle/Makefile                    |    2 +
 arch/arm/boards/beagle/lowlevel.c                  |   14 +
 arch/arm/boards/ccxmx51/Makefile                   |    2 +
 arch/arm/boards/ccxmx51/lowlevel.c                 |    9 +
 arch/arm/boards/chumby_falconwing/Makefile         |    2 +
 arch/arm/boards/chumby_falconwing/lowlevel.c       |   11 +
 arch/arm/boards/crystalfontz-cfa10036/Makefile     |    2 +
 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c   |   11 +
 arch/arm/boards/dss11/Makefile                     |    2 +
 arch/arm/boards/dss11/lowlevel.c                   |   12 +
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |   12 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    2 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |    7 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |   13 +-
 arch/arm/boards/eukrea_cpuimx51/Makefile           |    2 +
 arch/arm/boards/eukrea_cpuimx51/lowlevel.c         |    9 +
 arch/arm/boards/freescale-mx23-evk/Makefile        |    2 +
 arch/arm/boards/freescale-mx23-evk/lowlevel.c      |   11 +
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    2 +-
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |    7 +-
 arch/arm/boards/freescale-mx28-evk/Makefile        |    2 +
 arch/arm/boards/freescale-mx28-evk/lowlevel.c      |   11 +
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    7 +-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |    7 +-
 arch/arm/boards/freescale-mx51-pdk/Makefile        |    2 +
 arch/arm/boards/freescale-mx51-pdk/lowlevel.c      |    9 +
 arch/arm/boards/freescale-mx53-loco/Makefile       |    2 +
 arch/arm/boards/freescale-mx53-loco/lowlevel.c     |    9 +
 arch/arm/boards/freescale-mx53-smd/Makefile        |    2 +
 arch/arm/boards/freescale-mx53-smd/lowlevel.c      |    9 +
 arch/arm/boards/freescale-mx6-arm2/Makefile        |    2 +
 arch/arm/boards/freescale-mx6-arm2/lowlevel.c      |   10 +
 arch/arm/boards/freescale-mx6-sabrelite/Makefile   |    2 +
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c |   10 +
 .../boards/friendlyarm-mini2440/lowlevel_init.S    |    9 +-
 arch/arm/boards/friendlyarm-mini6410/Makefile      |    2 +
 arch/arm/boards/friendlyarm-mini6410/lowlevel.c    |   11 +
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c     |    4 +-
 arch/arm/boards/friendlyarm-tiny6410/Makefile      |    3 +-
 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c    |   11 +
 arch/arm/boards/guf-cupid/lowlevel.c               |   13 +-
 arch/arm/boards/guf-neso/lowlevel.c                |   13 +-
 arch/arm/boards/imx21ads/imx21ads.c                |    5 +-
 arch/arm/boards/imx21ads/lowlevel_init.S           |   11 +-
 arch/arm/boards/imx233-olinuxino/Makefile          |    2 +
 arch/arm/boards/imx233-olinuxino/lowlevel.c        |   11 +
 arch/arm/boards/imx27ads/lowlevel_init.S           |    4 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |   12 +-
 arch/arm/boards/karo-tx28/Makefile                 |    2 +
 arch/arm/boards/karo-tx28/lowlevel.c               |   11 +
 arch/arm/boards/karo-tx51/Makefile                 |    2 +
 arch/arm/boards/karo-tx51/lowlevel.c               |    9 +
 arch/arm/boards/karo-tx53/lowlevel.c               |    3 +-
 arch/arm/boards/mioa701/Makefile                   |    2 +
 arch/arm/boards/mioa701/lowlevel.c                 |   10 +
 arch/arm/boards/mmccpu/Makefile                    |    2 +
 arch/arm/boards/mmccpu/lowlevel.c                  |   12 +
 arch/arm/boards/netx/platform.S                    |    7 +-
 arch/arm/boards/nhk8815/Makefile                   |    2 +
 arch/arm/boards/nhk8815/lowlevel.c                 |   10 +
 arch/arm/boards/omap343xdsp/Makefile               |    2 +
 arch/arm/boards/omap343xdsp/lowlevel.c             |   14 +
 arch/arm/boards/omap3evm/Makefile                  |    2 +
 arch/arm/boards/omap3evm/lowlevel.c                |   10 +
 arch/arm/boards/panda/lowlevel.c                   |    7 +-
 arch/arm/boards/pcm027/lowlevel_init.S             |    7 +-
 arch/arm/boards/pcm037/lowlevel_init.S             |    4 +-
 arch/arm/boards/pcm037/pcm037.c                    |    2 +-
 arch/arm/boards/pcm038/lowlevel.c                  |   12 +-
 arch/arm/boards/pcm043/lowlevel.c                  |   13 +-
 arch/arm/boards/pcm049/lowlevel.c                  |    7 +-
 arch/arm/boards/phycard-a-l1/Makefile              |    2 +
 arch/arm/boards/phycard-a-xl2/lowlevel.c           |    7 +-
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |    5 +-
 arch/arm/boards/pm9261/Makefile                    |    2 +
 arch/arm/boards/pm9261/lowlevel.c                  |   14 +
 arch/arm/boards/pm9263/Makefile                    |    2 +
 arch/arm/boards/pm9263/lowlevel.c                  |   14 +
 arch/arm/boards/pm9g45/Makefile                    |    2 +
 arch/arm/boards/pm9g45/lowlevel.c                  |   11 +
 arch/arm/boards/qil-a9260/Makefile                 |    2 +
 arch/arm/boards/qil-a9260/lowlevel.c               |   12 +
 arch/arm/boards/scb9328/lowlevel_init.S            |    4 +-
 arch/arm/boards/tny-a926x/Makefile                 |    2 +
 arch/arm/boards/tny-a926x/lowlevel.c               |   12 +
 arch/arm/boards/toshiba-ac100/Makefile             |    2 +
 arch/arm/boards/toshiba-ac100/lowlevel.c           |   10 +
 arch/arm/boards/tqma53/Makefile                    |    2 +
 arch/arm/boards/tqma53/lowlevel.c                  |    9 +
 arch/arm/boards/usb-a926x/Makefile                 |    2 +
 arch/arm/boards/usb-a926x/lowlevel.c               |   12 +
 arch/arm/boards/versatile/Makefile                 |    3 +-
 arch/arm/boards/versatile/lowlevel.c               |   10 +
 arch/arm/cpu/cpu.c                                 |    9 +
 arch/arm/cpu/start-pbl.c                           |  105 +++-----
 arch/arm/cpu/start.c                               |  110 ++++++--
 arch/arm/include/asm/barebox-arm.h                 |    5 +-
 arch/arm/lib/Makefile                              |    1 -
 arch/arm/lib/arm.c                                 |   14 -
 arch/arm/mach-at91/Kconfig                         |   16 +-
 arch/arm/mach-at91/Makefile                        |    9 +-
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c      |   11 +-
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |   11 +-
 arch/arm/mach-at91/include/mach/board.h            |    4 +
 arch/arm/mach-ep93xx/Kconfig                       |    8 -
 arch/arm/mach-ep93xx/Makefile                      |    4 +-
 arch/arm/mach-ep93xx/lowlevel_init.S               |   11 +-
 arch/arm/mach-imx/Kconfig                          |   16 --
 arch/arm/mach-imx/Makefile                         |    3 +-
 arch/arm/mach-imx/esdctl.c                         |  273 ++++++++++++++++++++
 arch/arm/mach-imx/imx1.c                           |    2 +
 arch/arm/mach-imx/include/mach/esdctl.h            |   13 +
 arch/arm/mach-imx/include/mach/imx21-regs.h        |    1 +
 arch/arm/mach-imx/include/mach/imx25-regs.h        |    3 +
 arch/arm/mach-imx/include/mach/imx27-regs.h        |    1 +
 arch/arm/mach-netx/Kconfig                         |    1 -
 arch/arm/mach-omap/Kconfig                         |    5 -
 arch/arm/mach-omap/include/mach/silicon.h          |    1 +
 arch/arm/mach-omap/omap3_core.S                    |   11 +-
 arch/arm/mach-pxa/Kconfig                          |    1 -
 arch/arm/mach-samsung/Kconfig                      |    6 -
 arch/arm/pbl/zbarebox.lds.S                        |   20 +-
 common/Kconfig                                     |   12 -
 common/meminfo.c                                   |    5 -
 include/asm-generic/memory_layout.h                |    6 +-
 142 files changed, 1126 insertions(+), 308 deletions(-)
 create mode 100644 arch/arm/boards/at91rm9200ek/lowlevel.c
 create mode 100644 arch/arm/boards/at91sam9260ek/lowlevel.c
 create mode 100644 arch/arm/boards/at91sam9261ek/lowlevel.c
 create mode 100644 arch/arm/boards/at91sam9263ek/lowlevel.c
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/lowlevel.c
 create mode 100644 arch/arm/boards/at91sam9x5ek/lowlevel.c
 create mode 100644 arch/arm/boards/beagle/lowlevel.c
 create mode 100644 arch/arm/boards/ccxmx51/lowlevel.c
 create mode 100644 arch/arm/boards/chumby_falconwing/lowlevel.c
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
 create mode 100644 arch/arm/boards/dss11/lowlevel.c
 create mode 100644 arch/arm/boards/eukrea_cpuimx51/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx23-evk/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx28-evk/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx53-loco/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx53-smd/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/lowlevel.c
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
 create mode 100644 arch/arm/boards/imx233-olinuxino/lowlevel.c
 create mode 100644 arch/arm/boards/karo-tx28/lowlevel.c
 create mode 100644 arch/arm/boards/karo-tx51/lowlevel.c
 create mode 100644 arch/arm/boards/mioa701/lowlevel.c
 create mode 100644 arch/arm/boards/mmccpu/lowlevel.c
 create mode 100644 arch/arm/boards/nhk8815/lowlevel.c
 create mode 100644 arch/arm/boards/omap343xdsp/lowlevel.c
 create mode 100644 arch/arm/boards/omap3evm/lowlevel.c
 create mode 100644 arch/arm/boards/pm9261/lowlevel.c
 create mode 100644 arch/arm/boards/pm9263/lowlevel.c
 create mode 100644 arch/arm/boards/pm9g45/lowlevel.c
 create mode 100644 arch/arm/boards/qil-a9260/lowlevel.c
 create mode 100644 arch/arm/boards/tny-a926x/lowlevel.c
 create mode 100644 arch/arm/boards/toshiba-ac100/lowlevel.c
 create mode 100644 arch/arm/boards/tqma53/lowlevel.c
 create mode 100644 arch/arm/boards/usb-a926x/lowlevel.c
 create mode 100644 arch/arm/boards/versatile/lowlevel.c
 delete mode 100644 arch/arm/lib/arm.c
 create mode 100644 arch/arm/mach-imx/esdctl.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
