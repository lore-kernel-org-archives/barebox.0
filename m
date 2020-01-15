Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgF5-0006r1-NR
 for barebox@lists.infradead.org; Wed, 15 Jan 2020 10:49:48 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Wed, 15 Jan 2020 11:26:45 +0100
Message-Id: <20200115102650.11739-1-cleger@kalray.eu>
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
Subject: [PATCH 0/5] Add support for Kalray k1c core
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Clement Leger <cleger@kalray.eu>

Kalray k1c core is embedded in Kalray Coolidge SoC. This core has the
following features:
 - 32/64 bits
 - 6-issue VLIW architecture
 - 64 x 64bits general purpose registers
 - SIMD instructions
 - little-endian

This port is a 64 bits one and allows to boot up to a barebox prompt on a k200
board. k1c support for clocksource and watchdog is also part of this port.

In order to build a usable toolchain, build scripts are provided at the
following address: https://github.com/kalray/build-scripts.

Kalray uses FOSS which is available at https://github.com/kalray

Clement Leger (5):
  k1c: Initial Kalray Coolidge (k1c) architecture support
  k1c: Add processor definitions
  k1c: Add support for device tree
  clocksource: k1c: Add k1c clocksource support
  watchdog: k1c: Add k1c watchdog support

 arch/k1c/Kconfig                   |   65 +
 arch/k1c/Makefile                  |   37 +
 arch/k1c/boards/generic/Makefile   |    0
 arch/k1c/configs/generic_defconfig |   13 +
 arch/k1c/cpu/Makefile              |    7 +
 arch/k1c/cpu/barebox.lds.S         |   98 +
 arch/k1c/cpu/cpu.c                 |   22 +
 arch/k1c/cpu/exception.S           |   18 +
 arch/k1c/cpu/start.S               |  164 ++
 arch/k1c/dts/Makefile              |   13 +
 arch/k1c/dts/k200.dts              |  105 +
 arch/k1c/include/asm/barrier.h     |   18 +
 arch/k1c/include/asm/bitops.h      |   27 +
 arch/k1c/include/asm/bitsperlong.h |   12 +
 arch/k1c/include/asm/byteorder.h   |   12 +
 arch/k1c/include/asm/common.h      |   19 +
 arch/k1c/include/asm/elf.h         |   21 +
 arch/k1c/include/asm/io.h          |   14 +
 arch/k1c/include/asm/linkage.h     |   10 +
 arch/k1c/include/asm/posix_types.h |   12 +
 arch/k1c/include/asm/privilege.h   |  166 ++
 arch/k1c/include/asm/sections.h    |   12 +
 arch/k1c/include/asm/sfr.h         |   61 +
 arch/k1c/include/asm/sfr_defs.h    | 5029 ++++++++++++++++++++++++++++++++++++
 arch/k1c/include/asm/string.h      |   14 +
 arch/k1c/include/asm/swab.h        |   14 +
 arch/k1c/include/asm/sys_arch.h    |   46 +
 arch/k1c/include/asm/types.h       |   14 +
 arch/k1c/include/asm/unaligned.h   |   17 +
 arch/k1c/lib/Makefile              |    6 +
 arch/k1c/lib/asm-offsets.c         |   11 +
 arch/k1c/lib/board.c               |   20 +
 arch/k1c/lib/cpuinfo.c             |   20 +
 arch/k1c/lib/dtb.c                 |   31 +
 arch/k1c/lib/poweroff.c            |   43 +
 drivers/clocksource/Kconfig        |    4 +
 drivers/clocksource/Makefile       |    1 +
 drivers/clocksource/k1c_timer.c    |   59 +
 drivers/of/Kconfig                 |    2 +-
 drivers/watchdog/Kconfig           |    7 +
 drivers/watchdog/Makefile          |    1 +
 drivers/watchdog/k1c_wdt.c         |  126 +
 42 files changed, 6390 insertions(+), 1 deletion(-)
 create mode 100644 arch/k1c/Kconfig
 create mode 100644 arch/k1c/Makefile
 create mode 100644 arch/k1c/boards/generic/Makefile
 create mode 100644 arch/k1c/configs/generic_defconfig
 create mode 100644 arch/k1c/cpu/Makefile
 create mode 100644 arch/k1c/cpu/barebox.lds.S
 create mode 100644 arch/k1c/cpu/cpu.c
 create mode 100644 arch/k1c/cpu/exception.S
 create mode 100644 arch/k1c/cpu/start.S
 create mode 100644 arch/k1c/dts/Makefile
 create mode 100644 arch/k1c/dts/k200.dts
 create mode 100644 arch/k1c/include/asm/barrier.h
 create mode 100644 arch/k1c/include/asm/bitops.h
 create mode 100644 arch/k1c/include/asm/bitsperlong.h
 create mode 100644 arch/k1c/include/asm/byteorder.h
 create mode 100644 arch/k1c/include/asm/common.h
 create mode 100644 arch/k1c/include/asm/elf.h
 create mode 100644 arch/k1c/include/asm/io.h
 create mode 100644 arch/k1c/include/asm/linkage.h
 create mode 100644 arch/k1c/include/asm/posix_types.h
 create mode 100644 arch/k1c/include/asm/privilege.h
 create mode 100644 arch/k1c/include/asm/sections.h
 create mode 100644 arch/k1c/include/asm/sfr.h
 create mode 100644 arch/k1c/include/asm/sfr_defs.h
 create mode 100644 arch/k1c/include/asm/string.h
 create mode 100644 arch/k1c/include/asm/swab.h
 create mode 100644 arch/k1c/include/asm/sys_arch.h
 create mode 100644 arch/k1c/include/asm/types.h
 create mode 100644 arch/k1c/include/asm/unaligned.h
 create mode 100644 arch/k1c/lib/Makefile
 create mode 100644 arch/k1c/lib/asm-offsets.c
 create mode 100644 arch/k1c/lib/board.c
 create mode 100644 arch/k1c/lib/cpuinfo.c
 create mode 100644 arch/k1c/lib/dtb.c
 create mode 100644 arch/k1c/lib/poweroff.c
 create mode 100644 drivers/clocksource/k1c_timer.c
 create mode 100644 drivers/watchdog/k1c_wdt.c

-- 
2.15.0.276.g89ea799


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
