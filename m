Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rbvca-0003Wq-DW
 for barebox@lists.infradead.org; Sat, 17 Dec 2011 14:52:22 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RbvcQ-0003Wh-7l
 for barebox@lists.infradead.org; Sat, 17 Dec 2011 15:52:10 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RbvcQ-0000hz-6q
 for barebox@lists.infradead.org; Sat, 17 Dec 2011 15:52:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Dec 2011 15:52:00 +0100
Message-Id: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Thumb-2 support
To: barebox@lists.infradead.org

The following series adds Thumb-2 support to barebox. To do this
we have to update the Arm assembly functions which are from the
kernel anyway, so we just update them to newer versions. Some
boards may need additional updates for their lowlevel assembly
code. At least the babbage lowlevel code did not work in Thumb-2,
so this series contains an update for this board. If Omap works
in Thumb-2 remains to be tested.

This series was tested on a babbage board and reduces the binary
size by about 25%.

Sascha

Sascha Hauer (9):
      ARM i.MX5: prepare to add a imx51_lowlevel_init
      ARM i.MX51: implement a imx51_lowlevel_init
      ARM i.MX51 babbage: use generic lowlevel init function
      ARM eukrea i.MX51: use generic lowlevel init
      ARM: update string functions from Linux Kernel
      ARM cache-armv7: use thumb-2 instructions where necessary
      ARM: move exception vectors away from start of binary
      ARM: get runtime offset of board_init_lowlevel_return by using separate section
      ARM: Allow to compile in thumb-2 mode

 arch/arm/Kconfig                                   |   12 +
 arch/arm/Makefile                                  |   11 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    3 +-
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    3 +-
 arch/arm/boards/eukrea_cpuimx51/Makefile           |    1 -
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |    3 +
 arch/arm/boards/eukrea_cpuimx51/flash_header.c     |    3 +-
 arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S    |  216 --------------------
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    3 +-
 .../boards/freescale-mx35-3-stack/flash_header.c   |    3 +-
 arch/arm/boards/freescale-mx51-pdk/Makefile        |    1 -
 arch/arm/boards/freescale-mx51-pdk/board.c         |    3 +
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |    3 +-
 arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S |  216 --------------------
 arch/arm/boards/freescale-mx53-loco/board.c        |    2 +-
 arch/arm/boards/freescale-mx53-loco/flash_header.c |    3 +-
 arch/arm/boards/freescale-mx53-smd/board.c         |    2 +-
 arch/arm/boards/freescale-mx53-smd/flash_header.c  |    3 +-
 arch/arm/cpu/cache-armv7.S                         |    8 +-
 arch/arm/cpu/cpu.c                                 |   27 +++
 arch/arm/cpu/exceptions.S                          |    1 +
 arch/arm/cpu/mmu.c                                 |    4 +-
 arch/arm/cpu/start.c                               |   44 +++--
 arch/arm/include/asm/barebox-arm-head.h            |   29 +++
 arch/arm/include/asm/barebox-arm.h                 |    3 +
 arch/arm/include/asm/unified.h                     |    8 +-
 arch/arm/lib/armlinux.c                            |   16 ++-
 arch/arm/lib/barebox.lds.S                         |    7 +-
 arch/arm/lib/copy_template.S                       |   24 ++-
 arch/arm/lib/findbit.S                             |   84 +++++---
 arch/arm/lib/io-writesw-armv4.S                    |   11 +-
 arch/arm/lib/memcpy.S                              |    7 +-
 arch/arm/mach-imx/Kconfig                          |    2 -
 arch/arm/mach-imx/Makefile                         |    4 +-
 arch/arm/mach-imx/imx51.c                          |  105 ++++++++++
 arch/arm/mach-imx/imx53.c                          |   61 +-----
 arch/arm/mach-imx/include/mach/imx5.h              |    9 +
 arch/arm/mach-imx/include/mach/imx53.h             |    6 -
 commands/go.c                                      |    6 +-
 common/misc.c                                      |    3 +
 include/common.h                                   |    6 +
 41 files changed, 387 insertions(+), 579 deletions(-)
 delete mode 100644 arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S
 create mode 100644 arch/arm/include/asm/barebox-arm-head.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx5.h
 delete mode 100644 arch/arm/mach-imx/include/mach/imx53.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
