Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGO1q-0000K9-QJ
 for barebox@lists.infradead.org; Wed, 09 May 2018 12:17:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1fGO1c-0004Vi-RD
 for barebox@lists.infradead.org; Wed, 09 May 2018 14:16:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1fGO1c-00018H-Is
 for barebox@lists.infradead.org; Wed, 09 May 2018 14:16:52 +0200
Date: Wed, 9 May 2018 14:16:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180509121652.rvisqkkfgdipqrtd@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2018.05.0
To: Barebox List <barebox@lists.infradead.org>

Hi all,

barebox-v2018.05.0 is out. Most notable this time is the big aarch64
series that brings the aarch64 support in par with the arm32 support.
arm32 users hopefully do not notice anything from this change.
Other than that we now have functionality to ping a watchdog
periodically without intervention which can help for example to
silence a watchdog that can't be disabled.

For a detailed list of changes see below.

Sascha


----------------------------------------------------------------
Andreas Schmidt (3):
      watchdog: core: check hwdev before use it
      watchdog: omap: set hwdev before call watchdog_register
      ARM: arm32: fix realocate_to_curr_addr

Andrey Gusakov (2):
      video: tc358767: register aux i2c bus after validating link
      video: tc358767: set num_modes=0 if no valid mode found

Andrey Smirnov (8):
      lib: Port CRC-CCITT functions from Linux kernel
      aiodev: Constify 'unit' in 'struct aiodev'
      clk: i.MX7: Port NAND clock setup code from Linux
      clk: Forward declare struct of_device_id in linux/clk.h
      dma: apbh: Enable clock as a part of probing
      i.MX53/TX53: Adjust to latest get_runtime_offset()
      boards: samx6: Adjust to latest get_runtime_offset()
      gitignore: Add *.pblx files

Antony Pavlov (1):
      commands: i2c_write: enable reg == 0 too

Juergen Borleis (1):
      i.MX/DCD compiler and interpreter: logic is different

Lucas Stach (1):
      of: demote "no ranges" message to debug level

Michael Grzeschik (5):
      ARM: i.MX: Add lowlevel gpio input functions
      boards: samx6: add initial support for kontron samx6i
      i.MX53/TX53: cfg revxx30: don't disable usb clks, so imx-usb-loader works
      i.MX53/TX53: rework to dts based boot
      i.MX53/TX53: add new samsung based xx30 variant

Oleksij Rempel (5):
      watchdog: register watchdog virtual device with short name wdog
      watchdog: move max timeout test in to wd_core
      watchdog: set some reasonable timeout_max value if no other is available
      watchdog: provide timeout_cur value
      watchdog: add watchdog poller

Roland Hieber (1):
      doc: bcm283x: update documentation for Raspberry Pi

Sascha Hauer (108):
      ARM: AM335x: Fix invalid register access
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
      clocksource: Add armv8 generic timer support
      of: Pass barebox version to kernel
      watchdog: rename dev to hwdev
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
      dts: update to v4.16-rc4
      dts: update to v4.16-rc5
      dts: update to v4.16-rc6
      dts: update to v4.16-rc7
      dts: update to v4.16
      rename file_operations -> cdev_operations
      ubifs: remove dead code
      ubifs: Remove Linux struct definitions we already have
      ubifs: remove dead code
      fs: Add super_operations
      fs: Move mem_write/mem_read to devfs-core
      fs: Cleanup whitespace damage
      fs: Fix finding correct directory for mkdir/rmdir
      glob: do not unnecessarily opendir() a directory
      ls: Do not depend on normalise_path()
      loadenv: Do not depend on normalise_path()
      ARM: socfpga: remove nonexistent Kconfig dependency
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/fs'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/watchdog'
      ARM: mmu64: Add commment
      ARM: i.MX53 TX53: remove duplicate _imx53
      mfd: da9063: Fix compilation
      Release v2018.05.0

Stefan Riedmueller (1):
      mtd: nand: Add Winbond manufacturer ID

michael grassmann (1):
      mtd: spi-nor: add manufacturer IDs for ISSI and Winbond

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
