Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKpQ9-0002bE-2s
 for barebox@lists.infradead.org; Sat, 04 Apr 2020 20:29:38 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Sat,  4 Apr 2020 22:29:04 +0200
Message-Id: <20200404202910.12524-1-cleger@kalray.eu>
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
Subject: [PATCH v2 0/6] Add support for Kalray VLIW family (kvx) 
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

Kalray kv3 core is embedded in Kalray Coolidge SoC. This core which is the 
third of the KV family has the following features:
 - 32/64 bits execution mode
 - 6-issue VLIW architecture
 - 64 x 64bits general purpose registers
 - SIMD instructions
 - little-endian

This port is a 64 bits one and allows to boot up to a barebox prompt on a k200
board. kv3 support for clocksource and watchdog is also part of this port.

In order to build a usable toolchain, build scripts are provided at the
following address: https://github.com/kalray/build-scripts.

Kalray uses FOSS which is available at https://github.com/kalray

Changes v1 -> v2
 - Rename k1c -> kvx after marketing decision
 - Remove ELF_CLASS definition (waiting for official ELF id)
 - Include stack in linker script
 - Dynamically determine malloc_base and malloc_size using device tree
 - Get device tree from bootloader if magic number is present
 - Remove dead code from watchdog
 - Add patch for reset source and enable CMD_RESET
 - Rebase on master branch

Clement Leger (6):
  kvx: Initial Kalray Coolidge (kv3) architecture support
  kvx: Add processor definitions
  kvx: Add support for device tree
  kvx: Implement reset source and reset
  clocksource: kvx: Add kvx clocksource support
  watchdog: kvx: Add kvx watchdog support

 arch/kvx/Kconfig                   |   55 +
 arch/kvx/Makefile                  |   37 +
 arch/kvx/configs/generic_defconfig |   14 +
 arch/kvx/cpu/Makefile              |    7 +
 arch/kvx/cpu/barebox.lds.S         |   95 +
 arch/kvx/cpu/cpu.c                 |   32 +
 arch/kvx/cpu/exception.S           |   24 +
 arch/kvx/cpu/reset.c               |   67 +
 arch/kvx/cpu/start.S               |  184 +
 arch/kvx/dts/Makefile              |   13 +
 arch/kvx/dts/k200.dts              |  110 +
 arch/kvx/include/asm/barrier.h     |   18 +
 arch/kvx/include/asm/bitops.h      |   27 +
 arch/kvx/include/asm/bitsperlong.h |   12 +
 arch/kvx/include/asm/byteorder.h   |   12 +
 arch/kvx/include/asm/common.h      |   27 +
 arch/kvx/include/asm/elf.h         |   18 +
 arch/kvx/include/asm/ftu.h         |   24 +
 arch/kvx/include/asm/io.h          |   14 +
 arch/kvx/include/asm/linkage.h     |   10 +
 arch/kvx/include/asm/posix_types.h |   12 +
 arch/kvx/include/asm/privilege.h   |  192 ++
 arch/kvx/include/asm/sections.h    |   12 +
 arch/kvx/include/asm/sfr.h         |   47 +
 arch/kvx/include/asm/sfr_defs.h    | 5029 ++++++++++++++++++++++++++++
 arch/kvx/include/asm/string.h      |   14 +
 arch/kvx/include/asm/swab.h        |   14 +
 arch/kvx/include/asm/sys_arch.h    |   46 +
 arch/kvx/include/asm/types.h       |   14 +
 arch/kvx/include/asm/unaligned.h   |   17 +
 arch/kvx/lib/Makefile              |    6 +
 arch/kvx/lib/asm-offsets.c         |   11 +
 arch/kvx/lib/board.c               |  119 +
 arch/kvx/lib/cpuinfo.c             |   20 +
 arch/kvx/lib/dtb.c                 |   29 +
 arch/kvx/lib/poweroff.c            |   43 +
 drivers/clocksource/Kconfig        |    4 +
 drivers/clocksource/Makefile       |    1 +
 drivers/clocksource/kvx_timer.c    |   59 +
 drivers/of/Kconfig                 |    2 +-
 drivers/watchdog/Kconfig           |    6 +
 drivers/watchdog/Makefile          |    1 +
 drivers/watchdog/kvx_wdt.c         |   94 +
 43 files changed, 6591 insertions(+), 1 deletion(-)
 create mode 100644 arch/kvx/Kconfig
 create mode 100644 arch/kvx/Makefile
 create mode 100644 arch/kvx/configs/generic_defconfig
 create mode 100644 arch/kvx/cpu/Makefile
 create mode 100644 arch/kvx/cpu/barebox.lds.S
 create mode 100644 arch/kvx/cpu/cpu.c
 create mode 100644 arch/kvx/cpu/exception.S
 create mode 100644 arch/kvx/cpu/reset.c
 create mode 100644 arch/kvx/cpu/start.S
 create mode 100644 arch/kvx/dts/Makefile
 create mode 100644 arch/kvx/dts/k200.dts
 create mode 100644 arch/kvx/include/asm/barrier.h
 create mode 100644 arch/kvx/include/asm/bitops.h
 create mode 100644 arch/kvx/include/asm/bitsperlong.h
 create mode 100644 arch/kvx/include/asm/byteorder.h
 create mode 100644 arch/kvx/include/asm/common.h
 create mode 100644 arch/kvx/include/asm/elf.h
 create mode 100644 arch/kvx/include/asm/ftu.h
 create mode 100644 arch/kvx/include/asm/io.h
 create mode 100644 arch/kvx/include/asm/linkage.h
 create mode 100644 arch/kvx/include/asm/posix_types.h
 create mode 100644 arch/kvx/include/asm/privilege.h
 create mode 100644 arch/kvx/include/asm/sections.h
 create mode 100644 arch/kvx/include/asm/sfr.h
 create mode 100644 arch/kvx/include/asm/sfr_defs.h
 create mode 100644 arch/kvx/include/asm/string.h
 create mode 100644 arch/kvx/include/asm/swab.h
 create mode 100644 arch/kvx/include/asm/sys_arch.h
 create mode 100644 arch/kvx/include/asm/types.h
 create mode 100644 arch/kvx/include/asm/unaligned.h
 create mode 100644 arch/kvx/lib/Makefile
 create mode 100644 arch/kvx/lib/asm-offsets.c
 create mode 100644 arch/kvx/lib/board.c
 create mode 100644 arch/kvx/lib/cpuinfo.c
 create mode 100644 arch/kvx/lib/dtb.c
 create mode 100644 arch/kvx/lib/poweroff.c
 create mode 100644 drivers/clocksource/kvx_timer.c
 create mode 100644 drivers/watchdog/kvx_wdt.c

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
