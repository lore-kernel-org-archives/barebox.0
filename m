Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos5-00067i-4Z
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:36 +0100
Message-Id: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/78] ARM aarch64 updates
To: Barebox List <barebox@lists.infradead.org>

Hi All,

Here is a massive update for the ARM aarch64 port. With the following
series the aarch64 port should be on par with the 32bit support.

With this aarch64 supports relocatable binaries, proper MMU support, DMA
cache maintenance operations, and finally starting a aarch64 Linux
image :)

This all has been developed on a i.MX8MQ EVK board. The i.MX8MQ patches
are currently evolving, but are not yet quite ready. DDR setup is still
very crude and pinmux is not yet working. NXP did a nice job with the
i.MX8MQ: It behaves very much like a i.MX6 with a different core, so
we already have most of the drivers and I could concentrate on the
aarch64 update. I hope I can send i.MX8 patches soon.

Sascha


Sascha Hauer (78):
  ARM: Use obj-pbl- where appropriate
  ARM: Add 64bit compilation alternative
  ARM: return positive offset in get_runtime_offset()
  ARM: mmu: include pgtable header from where it's needed
  ARM: For relocatable image force TEXT_BASE 0x0
  ARM: scroll past image end without ld_var
  ARM: move away from ld_var
  ARM: remove ld_var support
  ARM: android image: Fix compiler warning on aarch64
  ARM: bootm: Fix wrong format specifier
  ARM: shutdown: Fix compiler warning
  ARM: aarch64: silence compiler warning
  ARM: aarch64: Add dummy naked attribute
  ARM: get_runtime_offset() returns unsigned long
  ARM: aarch64: Add runtime-offset
  ARM: aarch64: implement get_pc()
  ARM: Use generic ffz()
  ARM: bitops: remove unnecessary #ifdef
  ARM: aarch64: Do not use 32bit optimized fls
  ARM: Move mmu_disable to mmu.c
  debug_ll: support 64bit longs
  ARM: aarch64: fix early cache flushing
  ARM: aarch64: cache: Add v8_inv_dcache_range
  ARM: aarch64: cache: no need to ifdef prototypes
  ARM: Add function to return offset to global variables
  ARM: remove function prototypes from the past
  ARM: move linker variable declarations to sections.h
  ARM: relocate_to_current_adr: Use unsigned long for variables
  clocksource: Add armv8 generic timer support
  ARM: aarch64: Add relocation support
  ARM: aarch64: fix pbl linker script for aarch64
  ARM: aarch64: mmu: Allocate page tables dynamically
  ARM: aarch64: mmu: create_sections() takes size in bytes
  ARM: aarch64: mmu: fix creation of flat mapping
  ARM: aarch64: mmu: remove unused map_io_sections()
  ARM: aarch64: mmu: by default map as device memory
  ARM: aarch64: mmu: Fix mair register setting
  ARM: aarch64: qemu board: remove unnecessary mapping
  ARM: aarch64: mmu: enable mmu in generic code
  ARM: aarch64: mmu: use PTE_* definitions from U-Boot
  ARM: aarch64: mmu: Fix adding additional page table levels
  ARM: aarch64: mmu: Fix PTE_TYPE_* flags
  ARM: aarch64: mmu: Fix TCR setting
  ARM: aarch64: mmu: No need to disable icache
  ARM: aarch64: mmu: drop ttb check when disabling the MMU
  ARM: aarch64: mmu: Fix disabling the MMU
  ARM: Make some variables 64bit aware
  dma: Use dma_addr_t as type for DMA addresses
  dma: Add prototypes for dma mapping functions
  ARM: implement dma mapping functions
  ARM: aarch64: implement dma operations
  ARM: aarch64: compile with strict alignment
  ARM: aarch64: move aarch64 exception support to separate file
  ARM: aarch64: fix exception level mixup
  ARM: aarch64: Setup exception vectors in initcall
  ARM: aarch64: lowlevel: Use switch_el
  ARM: aarch64: remove dead code in linker script
  ARM: aarch64: hide some config options
  ARM: aarch64: implement show_regs()
  ARM: aarch64: implement stacktraces
  ARM: aarch64: mmu: Make zero page faulting
  ARM: aarch64: Allow to leave exceptions
  ARM: aarch64: Add esr strings
  ARM: aarch64: print more information on sync exception
  ARM: aarch64: implement ignoring data aborts
  dt-bindings: Drop unused files
  ARM: aarch64: Add barebox head support
  filetype: Detect ARM aarch64 Linux images
  common: Add functions to find free RAM
  bootm: provide handlers the start of the OS image
  ARM: aarch64: disable 32bit boot commands
  ARM: aarch64: Add support to start kernel and barebox
  ARM: cache-armv4: Fix wrong section
  ARM: build: Remove duplicate file compilation
  ARM: Create own cache.c file for aarch64
  ARM: create separate mmu_64.h file
  ARM: change mmu_early_enable() prototype
  ARM: aarch64: Make early MMU support work

 arch/arm/Kconfig                                   |   9 +-
 arch/arm/Makefile                                  |   4 +-
 arch/arm/boards/afi-gf/lowlevel.c                  |   2 +-
 arch/arm/boards/altera-socdk/lowlevel.c            |   2 +-
 arch/arm/boards/at91sam9263ek/lowlevel_init.c      |   2 +-
 arch/arm/boards/at91sam9x5ek/lowlevel.c            |   2 +-
 arch/arm/boards/beaglebone/lowlevel.c              |   2 +-
 .../boards/boundarydevices-nitrogen6/lowlevel.c    |  10 +-
 arch/arm/boards/ccxmx53/lowlevel.c                 |   4 +-
 arch/arm/boards/datamodul-edm-qmx6/lowlevel.c      |   2 +-
 arch/arm/boards/dfi-fs700-m60/lowlevel.c           |   6 +-
 arch/arm/boards/duckbill/lowlevel.c                |   2 +-
 arch/arm/boards/ebv-socrates/lowlevel.c            |   2 +-
 arch/arm/boards/efika-mx-smartbook/lowlevel.c      |   2 +-
 arch/arm/boards/element14-warp7/lowlevel.c         |   2 +-
 arch/arm/boards/eltec-hipercam/lowlevel.c          |   2 +-
 arch/arm/boards/embedsky-e9/lowlevel.c             |   2 +-
 arch/arm/boards/embest-riotboard/lowlevel.c        |   2 +-
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c  |   2 +-
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c      |   4 +-
 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c    |   2 +-
 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c   |   2 +-
 .../arm/boards/freescale-mx6sx-sabresdb/lowlevel.c |   2 +-
 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c   |   2 +-
 arch/arm/boards/freescale-vf610-twr/lowlevel.c     |   2 +-
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c     |   4 +-
 arch/arm/boards/gateworks-ventana/lowlevel.c       |   2 +-
 arch/arm/boards/gk802/lowlevel.c                   |   2 +-
 arch/arm/boards/globalscale-guruplug/lowlevel.c    |   2 +-
 arch/arm/boards/globalscale-mirabox/lowlevel.c     |   2 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |   2 +-
 arch/arm/boards/karo-tx6x/lowlevel.c               |   8 +-
 arch/arm/boards/kindle-mx50/lowlevel.c             |   6 +-
 arch/arm/boards/lenovo-ix4-300d/lowlevel.c         |   2 +-
 arch/arm/boards/marvell-armada-xp-gp/lowlevel.c    |   2 +-
 arch/arm/boards/netgear-rn104/lowlevel.c           |   2 +-
 arch/arm/boards/netgear-rn2120/lowlevel.c          |   2 +-
 arch/arm/boards/phytec-phycard-imx27/lowlevel.c    |   2 +-
 arch/arm/boards/phytec-phycore-imx27/lowlevel.c    |   2 +-
 arch/arm/boards/phytec-phycore-imx7/lowlevel.c     |   4 +-
 arch/arm/boards/phytec-som-am335x/lowlevel.c       |   6 +-
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |   2 +-
 arch/arm/boards/phytec-som-rk3288/lowlevel.c       |   2 +-
 arch/arm/boards/plathome-openblocks-a6/lowlevel.c  |   2 +-
 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c |   2 +-
 arch/arm/boards/qemu-virt64/init.c                 |  14 +-
 arch/arm/boards/radxa-rock/lowlevel.c              |   2 +-
 arch/arm/boards/raspberry-pi/lowlevel.c            |   4 +-
 arch/arm/boards/reflex-achilles/lowlevel.c         |   2 +-
 arch/arm/boards/solidrun-cubox/lowlevel.c          |   2 +-
 arch/arm/boards/solidrun-microsom/lowlevel.c       |  18 +-
 arch/arm/boards/technexion-pico-hobbit/lowlevel.c  |   2 +-
 arch/arm/boards/terasic-de0-nano-soc/lowlevel.c    |   2 +-
 arch/arm/boards/terasic-sockit/lowlevel.c          |   2 +-
 arch/arm/boards/tqma53/lowlevel.c                  |   4 +-
 arch/arm/boards/tqma6x/lowlevel.c                  |   4 +-
 arch/arm/boards/turris-omnia/lowlevel.c            |   2 +-
 arch/arm/boards/udoo/lowlevel.c                    |   2 +-
 arch/arm/boards/usi-topkick/lowlevel.c             |   2 +-
 arch/arm/boards/variscite-mx6/lowlevel.c           |   2 +-
 arch/arm/boards/vexpress/lowlevel.c                |   2 +-
 arch/arm/boards/vscom-baltos/lowlevel.c            |   2 +-
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c          |   4 +-
 arch/arm/boards/zii-vf610-dev/lowlevel.c           |   2 +-
 arch/arm/cpu/Makefile                              |  42 +---
 arch/arm/cpu/cache-armv4.S                         |   2 +-
 arch/arm/cpu/cache-armv8.S                         |  19 ++
 arch/arm/cpu/cache.c                               |  16 --
 arch/arm/cpu/cache_64.c                            |  35 +++
 arch/arm/cpu/common.c                              |  56 +++--
 arch/arm/cpu/cpu.c                                 |  37 ++-
 arch/arm/cpu/entry.c                               |   2 +-
 arch/arm/cpu/exceptions_64.S                       |  48 +++-
 arch/arm/cpu/interrupts.c                          |  48 +---
 arch/arm/cpu/interrupts_64.c                       | 198 +++++++++++++++
 arch/arm/cpu/lowlevel_64.S                         |  17 +-
 arch/arm/cpu/mmu-early.c                           |   4 +-
 arch/arm/cpu/mmu-early.h                           |   6 -
 arch/arm/cpu/mmu-early_64.c                        |  88 +++++++
 arch/arm/cpu/mmu.c                                 |  38 ++-
 arch/arm/cpu/mmu.h                                 |  54 -----
 arch/arm/cpu/mmu_64.c                              | 264 ++++++++++----------
 arch/arm/cpu/mmu_64.h                              | 121 ++++++++++
 arch/arm/cpu/no-mmu.c                              |   2 +-
 arch/arm/cpu/sections.c                            |  11 +
 arch/arm/cpu/setupc.S                              |  16 +-
 arch/arm/cpu/setupc_64.S                           |  58 +++++
 arch/arm/cpu/start-pbl.c                           |  14 +-
 arch/arm/cpu/start.c                               |   6 +-
 arch/arm/cpu/uncompress.c                          |  23 +-
 arch/arm/include/asm/assembler64.h                 |  21 ++
 arch/arm/include/asm/barebox-arm-head.h            |  13 +
 arch/arm/include/asm/barebox-arm.h                 |  41 +++-
 arch/arm/include/asm/barebox.h                     |   4 +-
 arch/arm/include/asm/bitops.h                      |  22 +-
 arch/arm/include/asm/cache.h                       |   9 +-
 arch/arm/include/asm/common.h                      |  10 +-
 arch/arm/include/asm/esr.h                         | 117 +++++++++
 arch/arm/include/asm/mmu.h                         |  19 +-
 arch/arm/include/asm/pgtable64.h                   |  77 +++---
 arch/arm/include/asm/ptrace.h                      |  19 ++
 arch/arm/include/asm/sections.h                    |  30 +--
 arch/arm/include/asm/stacktrace.h                  |   2 +
 arch/arm/lib/pbl.lds.S                             |  36 +--
 arch/arm/lib32/Makefile                            |   2 +
 arch/arm/lib32/barebox.lds.S                       |  23 +-
 arch/arm/{lib => lib32}/bootm.c                    |   4 +-
 arch/arm/{lib => lib32}/bootu.c                    |   0
 arch/arm/lib32/runtime-offset.S                    |  36 +--
 arch/arm/lib64/Makefile                            |   2 +
 arch/arm/lib64/armlinux.c                          | 120 ++++++++--
 arch/arm/lib64/barebox.lds.S                       |  38 +--
 arch/arm/lib64/runtime-offset.S                    |  19 ++
 arch/arm/lib64/stacktrace.c                        |  86 +++++++
 arch/arm/mach-imx/xload-common.c                   |   4 +-
 arch/arm/mach-mvebu/include/mach/common.h          |   4 +-
 arch/arm/mach-tegra/include/mach/lowlevel.h        |   2 +-
 arch/arm/mach-tegra/tegra_avp_init.c               |   2 +-
 arch/mips/lib/dma-default.c                        |   4 +-
 arch/openrisc/cpu/cpu.c                            |   5 -
 commands/Kconfig                                   |   4 +-
 common/Kconfig                                     |   2 +-
 common/bootm.c                                     |  10 +-
 common/filetype.c                                  |   3 +
 common/memory.c                                    |  51 ++++
 drivers/clocksource/Kconfig                        |   5 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/armv8-timer.c                  |  65 +++++
 include/bootm.h                                    |   7 +
 include/debug_ll.h                                 |   2 +-
 include/dma.h                                      |  16 +-
 include/dt-bindings/clock/tegra30-car.h            | 265 ---------------------
 include/dt-bindings/pinctrl/pinctrl-tegra.h        |  45 ----
 include/dt-bindings/pinctrl/rockchip.h             |  32 ---
 include/filetype.h                                 |   1 +
 include/memory.h                                   |   5 +
 136 files changed, 1611 insertions(+), 1106 deletions(-)
 create mode 100644 arch/arm/cpu/cache_64.c
 create mode 100644 arch/arm/cpu/interrupts_64.c
 delete mode 100644 arch/arm/cpu/mmu-early.h
 create mode 100644 arch/arm/cpu/mmu-early_64.c
 create mode 100644 arch/arm/cpu/mmu_64.h
 create mode 100644 arch/arm/cpu/sections.c
 create mode 100644 arch/arm/include/asm/assembler64.h
 create mode 100644 arch/arm/include/asm/esr.h
 rename arch/arm/{lib => lib32}/bootm.c (99%)
 rename arch/arm/{lib => lib32}/bootu.c (100%)
 create mode 100644 arch/arm/lib64/runtime-offset.S
 create mode 100644 arch/arm/lib64/stacktrace.c
 create mode 100644 drivers/clocksource/armv8-timer.c
 delete mode 100644 include/dt-bindings/clock/tegra30-car.h
 delete mode 100644 include/dt-bindings/pinctrl/pinctrl-tegra.h
 delete mode 100644 include/dt-bindings/pinctrl/rockchip.h

-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
