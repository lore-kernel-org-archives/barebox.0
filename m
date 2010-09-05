Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OsIVA-00054s-Uc
	for barebox@lists.infradead.org; Sun, 05 Sep 2010 16:55:34 +0000
Date: Sun, 5 Sep 2010 18:54:50 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100905165450.GN30479@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/18] add sh support and st40 primarly support
To: barebox@lists.infradead.org

Hi,

	you will found here the primarly support of sh and sh4  (st40)

	this support include
	STx7105 support with clock
	serial (asc and dtf)
	cpu and cache detection

	will come soon
	stmac with phylib
	I2C
	SPI with spi flash
	usb (ohci and ehci)
	NAND
	modules
	other soc as Stx7108, STx7111, STx7141, Freeman
	framebuffer
	MMC

	NB for ST40 we will not support legacy 29bit

Best Regards,
J.
The following changes since commit f170426042736992238289ae2ba7e90b0e53cd9a:

  init: introduce __BARE_INIT for .section ".text_bare_init.text" (2010-09-06 00:47:25 +0800)

are available in the git repository at:
  git://git.jcrosoft.org/barebox.git sh4

Jean-Christophe PLAGNIOL-VILLARD (18):
      initial SH support
      sh: initial SH4 support
      sh: cpu detection frameweork
      sh: cache detection
      sh: initial STM ST40 support
      st40: add cache support
      sh: implement dummy reset
      sh: add clock support
      SH: implement tmu support
      STM: add tmu0 ressources
      sh: add bootm support
      STM: add serial driver
      STM: add dtf serial driver
      STM: add pio support
      STM: add sysconf support
      STM: add stx7105 basic support
      sh: add hdk7105 board support
      sh: add hdk7106 board support

 Makefile                                        |    1 +
 arch/sh/Kconfig                                 |  106 +
 arch/sh/Makefile                                |   68 +
 arch/sh/boards/Kconfig                          |   30 +
 arch/sh/boards/mach-hdk7105/Makefile            |    1 +
 arch/sh/boards/mach-hdk7105/config.h            |    1 +
 arch/sh/boards/mach-hdk7105/env/bin/init        |   15 +
 arch/sh/boards/mach-hdk7105/env/config          |    6 +
 arch/sh/boards/mach-hdk7105/pmb.h               |   46 +
 arch/sh/boards/mach-hdk7105/romgen.h            | 2806 +++++++++++++++++++++++
 arch/sh/boards/mach-hdk7105/setup.c             |   57 +
 arch/sh/boards/mach-hdk7106/Makefile            |    1 +
 arch/sh/boards/mach-hdk7106/config.h            |    1 +
 arch/sh/boards/mach-hdk7106/env/bin/init        |   15 +
 arch/sh/boards/mach-hdk7106/env/config          |    6 +
 arch/sh/boards/mach-hdk7106/pmb.h               |   46 +
 arch/sh/boards/mach-hdk7106/romgen.h            | 2806 +++++++++++++++++++++++
 arch/sh/boards/mach-hdk7106/setup.c             |   56 +
 arch/sh/configs/hdk7105_defconfig               |   40 +
 arch/sh/configs/hdk7106_defconfig               |   40 +
 arch/sh/include/asm/addrspace.h                 |   29 +
 arch/sh/include/asm/asmdefs.h                   |  136 ++
 arch/sh/include/asm/barebox.h                   |    2 +
 arch/sh/include/asm/bitops-grb.h                |  172 ++
 arch/sh/include/asm/bitops-llsc.h               |  144 ++
 arch/sh/include/asm/bitops-op32.h               |  142 ++
 arch/sh/include/asm/bitops.h                    |   97 +
 arch/sh/include/asm/bitsperlong.h               |    1 +
 arch/sh/include/asm/byteorder.h                 |   12 +
 arch/sh/include/asm/cache.h                     |   53 +
 arch/sh/include/asm/clkdev.h                    |   19 +
 arch/sh/include/asm/clock.h                     |   16 +
 arch/sh/include/asm/common.h                    |    2 +
 arch/sh/include/asm/cpu-features.h              |   29 +
 arch/sh/include/asm/elf.h                       |  240 ++
 arch/sh/include/asm/io.h                        |  364 +++
 arch/sh/include/asm/io_stb1eval.h               |   87 +
 arch/sh/include/asm/linkage.h                   |   14 +
 arch/sh/include/asm/mmu.h                       |  132 ++
 arch/sh/include/asm/posix_types.h               |   13 +
 arch/sh/include/asm/posix_types_32.h            |   29 +
 arch/sh/include/asm/posix_types_64.h            |   34 +
 arch/sh/include/asm/processor.h                 |   68 +
 arch/sh/include/asm/processor_32.h              |   34 +
 arch/sh/include/asm/regdef.h                    |   35 +
 arch/sh/include/asm/sh_timer.h                  |   35 +
 arch/sh/include/asm/string.h                    |    4 +
 arch/sh/include/asm/system.h                    |  132 ++
 arch/sh/include/asm/system_32.h                 |  273 +++
 arch/sh/include/asm/types.h                     |   23 +
 arch/sh/include/asm/unaligned.h                 |   12 +
 arch/sh/include/asm/watchdog.h                  |  110 +
 arch/sh/include/cpu-common/cpu/addrspace.h      |   19 +
 arch/sh/include/cpu-sh4/cpu/addrspace.h         |   35 +
 arch/sh/include/cpu-sh4/cpu/cache.h             |   60 +
 arch/sh/include/cpu-sh4/cpu/mmu_context.h       |   63 +
 arch/sh/include/cpu-sh4/cpu/st40.h              |   31 +
 arch/sh/include/cpu-sh4/cpu/st40/devices.h      |   55 +
 arch/sh/include/cpu-sh4/cpu/st40/lmi.h          |  106 +
 arch/sh/include/cpu-sh4/cpu/st40/old-pokeloop.h |   81 +
 arch/sh/include/cpu-sh4/cpu/st40/pio.h          |   70 +
 arch/sh/include/cpu-sh4/cpu/st40/pmb.h          |   81 +
 arch/sh/include/cpu-sh4/cpu/st40/pokeloop.h     |  117 +
 arch/sh/include/cpu-sh4/cpu/st40/sh4regtype.h   |   51 +
 arch/sh/include/cpu-sh4/cpu/st40/stx7105.h      |   59 +
 arch/sh/include/cpu-sh4/cpu/st40/stx7105_clk.h  |   46 +
 arch/sh/include/cpu-sh4/cpu/st40/sysconf.h      |   52 +
 arch/sh/include/cpu-sh4/cpu/watchdog.h          |   25 +
 arch/sh/kernel/Makefile                         |    5 +
 arch/sh/kernel/cpu/Makefile                     |    6 +
 arch/sh/kernel/cpu/clock.c                      |   40 +
 arch/sh/kernel/cpu/init.c                       |   40 +
 arch/sh/kernel/cpu/sh4/Makefile                 |    7 +
 arch/sh/kernel/cpu/sh4/clock-stm.c              |   58 +
 arch/sh/kernel/cpu/sh4/clock-stm.h              |   26 +
 arch/sh/kernel/cpu/sh4/clock-stx7105.c          |  429 ++++
 arch/sh/kernel/cpu/sh4/probe.c                  |  114 +
 arch/sh/kernel/cpu/sh4/setup-stx7105.c          |  183 ++
 arch/sh/kernel/cpu/sh4/stm_tmu.c                |   36 +
 arch/sh/lib/.gitignore                          |    1 +
 arch/sh/lib/Makefile                            |   11 +
 arch/sh/lib/ashiftrt.S                          |  149 ++
 arch/sh/lib/ashldi3.c                           |   29 +
 arch/sh/lib/ashlsi3.S                           |  193 ++
 arch/sh/lib/ashrdi3.c                           |   32 +
 arch/sh/lib/ashrsi3.S                           |  185 ++
 arch/sh/lib/barebox.lds.S                       |   73 +
 arch/sh/lib/libgcc.h                            |   25 +
 arch/sh/lib/lshrdi3.c                           |   29 +
 arch/sh/lib/lshrsi3.S                           |  193 ++
 arch/sh/lib/reset.c                             |   41 +
 arch/sh/lib/setup.c                             |   52 +
 arch/sh/lib/sh.c                                |   13 +
 arch/sh/lib/sh_linux.c                          |  200 ++
 arch/sh/lib/st40/Makefile                       |   24 +
 arch/sh/lib/st40/cache.c                        |  132 ++
 arch/sh/lib/st40/cacheops.S                     |  205 ++
 arch/sh/lib/st40/init_ram.S                     |  127 +
 arch/sh/lib/st40/lowlevel_init-stx7105.S        |   61 +
 arch/sh/lib/st40/old-pokeloop.S                 |  169 ++
 arch/sh/lib/st40/pokeloop.S                     |  318 +++
 arch/sh/lib/st40/start.S                        |  272 +++
 arch/sh/lib/udivsi3.S                           |   87 +
 arch/sh/lib/udivsi3_i4i-Os.S                    |  149 ++
 arch/sh/lib/udivsi3_i4i.S                       |  666 ++++++
 arch/sh/mm/Makefile                             |    1 +
 arch/sh/mm/cache.c                              |   33 +
 drivers/Kconfig                                 |    1 +
 drivers/Makefile                                |    2 +
 drivers/serial/Kconfig                          |   10 +
 drivers/serial/Makefile                         |    2 +
 drivers/serial/stm-asc.c                        |  213 ++
 drivers/serial/stm-asc.h                        |  145 ++
 drivers/serial/stm-dtf.c                        |  179 ++
 drivers/sh/Makefile                             |    5 +
 drivers/sh/clk.c                                |  267 +++
 drivers/sh/sh_tmu.c                             |  119 +
 drivers/stm/Kconfig                             |    2 +
 drivers/stm/Makefile                            |    2 +
 drivers/stm/pio.c                               |   81 +
 drivers/stm/sysconf.c                           |  140 ++
 include/asm-generic/bitops/atomic.h             |  189 ++
 include/asm-generic/bitops/non-atomic.h         |  108 +
 include/asm-generic/bitsperlong.h               |   32 +
 include/asm-generic/int-l64.h                   |   73 +
 include/asm-generic/int-ll64.h                  |   78 +
 include/asm-generic/posix_types.h               |  165 ++
 include/asm-generic/types.h                     |   42 +
 include/asm-generic/unaligned.h                 |   30 +
 include/image.h                                 |    2 +
 include/linux/sh_clk.h                          |  159 ++
 131 files changed, 16052 insertions(+), 0 deletions(-)
 create mode 100644 arch/sh/Kconfig
 create mode 100644 arch/sh/Makefile
 create mode 100644 arch/sh/boards/Kconfig
 create mode 100644 arch/sh/boards/mach-hdk7105/Makefile
 create mode 100644 arch/sh/boards/mach-hdk7105/config.h
 create mode 100644 arch/sh/boards/mach-hdk7105/env/bin/init
 create mode 100644 arch/sh/boards/mach-hdk7105/env/config
 create mode 100644 arch/sh/boards/mach-hdk7105/pmb.h
 create mode 100644 arch/sh/boards/mach-hdk7105/romgen.h
 create mode 100644 arch/sh/boards/mach-hdk7105/setup.c
 create mode 100644 arch/sh/boards/mach-hdk7106/Makefile
 create mode 100644 arch/sh/boards/mach-hdk7106/config.h
 create mode 100644 arch/sh/boards/mach-hdk7106/env/bin/init
 create mode 100644 arch/sh/boards/mach-hdk7106/env/config
 create mode 100644 arch/sh/boards/mach-hdk7106/pmb.h
 create mode 100644 arch/sh/boards/mach-hdk7106/romgen.h
 create mode 100644 arch/sh/boards/mach-hdk7106/setup.c
 create mode 100644 arch/sh/configs/hdk7105_defconfig
 create mode 100644 arch/sh/configs/hdk7106_defconfig
 create mode 100644 arch/sh/include/asm/addrspace.h
 create mode 100644 arch/sh/include/asm/asmdefs.h
 create mode 100644 arch/sh/include/asm/barebox.h
 create mode 100644 arch/sh/include/asm/bitops-grb.h
 create mode 100644 arch/sh/include/asm/bitops-llsc.h
 create mode 100644 arch/sh/include/asm/bitops-op32.h
 create mode 100644 arch/sh/include/asm/bitops.h
 create mode 100644 arch/sh/include/asm/bitsperlong.h
 create mode 100644 arch/sh/include/asm/byteorder.h
 create mode 100644 arch/sh/include/asm/cache.h
 create mode 100644 arch/sh/include/asm/clkdev.h
 create mode 100644 arch/sh/include/asm/clock.h
 create mode 100644 arch/sh/include/asm/common.h
 create mode 100644 arch/sh/include/asm/cpu-features.h
 create mode 100644 arch/sh/include/asm/elf.h
 create mode 100644 arch/sh/include/asm/io.h
 create mode 100644 arch/sh/include/asm/io_stb1eval.h
 create mode 100644 arch/sh/include/asm/linkage.h
 create mode 100644 arch/sh/include/asm/mmu.h
 create mode 100644 arch/sh/include/asm/posix_types.h
 create mode 100644 arch/sh/include/asm/posix_types_32.h
 create mode 100644 arch/sh/include/asm/posix_types_64.h
 create mode 100644 arch/sh/include/asm/processor.h
 create mode 100644 arch/sh/include/asm/processor_32.h
 create mode 100644 arch/sh/include/asm/regdef.h
 create mode 100644 arch/sh/include/asm/sh_timer.h
 create mode 100644 arch/sh/include/asm/string.h
 create mode 100644 arch/sh/include/asm/system.h
 create mode 100644 arch/sh/include/asm/system_32.h
 create mode 100644 arch/sh/include/asm/types.h
 create mode 100644 arch/sh/include/asm/unaligned.h
 create mode 100644 arch/sh/include/asm/watchdog.h
 create mode 100644 arch/sh/include/cpu-common/cpu/addrspace.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/addrspace.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/cache.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/mmu_context.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/st40.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/st40/devices.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/st40/lmi.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/st40/old-pokeloop.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/st40/pio.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/st40/pmb.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/st40/pokeloop.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/st40/sh4regtype.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/st40/stx7105.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/st40/stx7105_clk.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/st40/sysconf.h
 create mode 100644 arch/sh/include/cpu-sh4/cpu/watchdog.h
 create mode 100644 arch/sh/kernel/Makefile
 create mode 100644 arch/sh/kernel/cpu/Makefile
 create mode 100644 arch/sh/kernel/cpu/clock.c
 create mode 100644 arch/sh/kernel/cpu/init.c
 create mode 100644 arch/sh/kernel/cpu/sh4/Makefile
 create mode 100644 arch/sh/kernel/cpu/sh4/clock-stm.c
 create mode 100644 arch/sh/kernel/cpu/sh4/clock-stm.h
 create mode 100644 arch/sh/kernel/cpu/sh4/clock-stx7105.c
 create mode 100644 arch/sh/kernel/cpu/sh4/probe.c
 create mode 100644 arch/sh/kernel/cpu/sh4/setup-stx7105.c
 create mode 100644 arch/sh/kernel/cpu/sh4/stm_tmu.c
 create mode 100644 arch/sh/lib/.gitignore
 create mode 100644 arch/sh/lib/Makefile
 create mode 100644 arch/sh/lib/ashiftrt.S
 create mode 100644 arch/sh/lib/ashldi3.c
 create mode 100644 arch/sh/lib/ashlsi3.S
 create mode 100644 arch/sh/lib/ashrdi3.c
 create mode 100644 arch/sh/lib/ashrsi3.S
 create mode 100644 arch/sh/lib/barebox.lds.S
 create mode 100644 arch/sh/lib/libgcc.h
 create mode 100644 arch/sh/lib/lshrdi3.c
 create mode 100644 arch/sh/lib/lshrsi3.S
 create mode 100644 arch/sh/lib/reset.c
 create mode 100644 arch/sh/lib/setup.c
 create mode 100644 arch/sh/lib/sh.c
 create mode 100644 arch/sh/lib/sh_linux.c
 create mode 100644 arch/sh/lib/st40/Makefile
 create mode 100644 arch/sh/lib/st40/cache.c
 create mode 100644 arch/sh/lib/st40/cacheops.S
 create mode 100644 arch/sh/lib/st40/init_ram.S
 create mode 100644 arch/sh/lib/st40/lowlevel_init-stx7105.S
 create mode 100644 arch/sh/lib/st40/old-pokeloop.S
 create mode 100644 arch/sh/lib/st40/pokeloop.S
 create mode 100644 arch/sh/lib/st40/start.S
 create mode 100644 arch/sh/lib/udivsi3.S
 create mode 100644 arch/sh/lib/udivsi3_i4i-Os.S
 create mode 100644 arch/sh/lib/udivsi3_i4i.S
 create mode 100644 arch/sh/mm/Makefile
 create mode 100644 arch/sh/mm/cache.c
 create mode 100644 drivers/serial/stm-asc.c
 create mode 100644 drivers/serial/stm-asc.h
 create mode 100644 drivers/serial/stm-dtf.c
 create mode 100644 drivers/sh/Makefile
 create mode 100644 drivers/sh/clk.c
 create mode 100644 drivers/sh/sh_tmu.c
 create mode 100644 drivers/stm/Kconfig
 create mode 100644 drivers/stm/Makefile
 create mode 100644 drivers/stm/pio.c
 create mode 100644 drivers/stm/sysconf.c
 create mode 100644 include/asm-generic/bitops/atomic.h
 create mode 100644 include/asm-generic/bitops/non-atomic.h
 create mode 100644 include/asm-generic/bitsperlong.h
 create mode 100644 include/asm-generic/int-l64.h
 create mode 100644 include/asm-generic/int-ll64.h
 create mode 100644 include/asm-generic/posix_types.h
 create mode 100644 include/asm-generic/types.h
 create mode 100644 include/asm-generic/unaligned.h
 create mode 100644 include/linux/sh_clk.h

Best Regards,
J>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
