Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOzch-00089k-2R
 for barebox@lists.infradead.org; Fri, 10 May 2019 07:07:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1hOzcf-0004GR-8c
 for barebox@lists.infradead.org; Fri, 10 May 2019 09:07:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1hOzce-0001sK-W6
 for barebox@lists.infradead.org; Fri, 10 May 2019 09:07:13 +0200
Date: Fri, 10 May 2019 09:07:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190510070712.mmcy7sbriyisgzp7@pengutronix.de>
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
Subject: v2019.05.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

v2019.05.0 is out. This time we gained initial Layerscape support (for
the LS1046a) and initial very basic STM32MP1 support. What I like best
for this release is the improved pstore support. With pstore it's
possible to access the last kernel log, possibly including oopses and
panics. Also the barebox log is accessible from the running kernel.
pstore has been present before, but with this release we got the device
tree bindings, so now it's only a matter of putting the right thing
into the device tree to use pstore. Give it a try, it's nice ;)

Sascha

-------------------------8<--------------------------

Alexander Kurz (4):
      ARM Kindle3 defconfig: enable MMU
      ARM Kindle3: switch on pull-ups for fiveway device
      ARM: i.MX: extend kindle-mx50 defconfig
      ARM: Makefile.imx: group and sort board entries

Alexander Shiyan (1):
      drivers: video: Fix parsing oftree timings

Andrey Smirnov (56):
      libfile: Make failure path of open_and_lseek() consistent
      common: Always return enum filetype in file_name_detect_type_offset()
      MIPS: ath79: Use errno to get error code from open_and_lseek()
      ARM: i.MX: bbu: Fix variable type in imx_bbu_external_nand_update()
      ARM: i.MX: bbu: Fix lseek error check in imx_bbu_external_nand_update()
      ARM: i.MX: bbu: Fix lseek error check in imx_bbu_internal_v2_write_nand_dbbt()
      ARM: i.MX: bbu: Fix variable type in imx_bbu_internal_v2_write_nand_dbbt()
      bpkfs: Fix lseek error check in bpkfs_probe()
      uimage: Fix lseek error check in uimage_verify()
      uimage: Fix lseek error check in uimage_load()
      uimage: Fix lseek error check in uimage_load_to_buf()
      state: Fix lseek error check in state_backend_bucket_direct_read()
      state: Fix lseek error check in state_backend_bucket_direct_write()
      state: Fix lseek error check in state_mtd_peb_read()
      state: Fix lseek error check in state_mtd_peb_write()
      commands: loadxy: Make use of open_and_lseek()
      usb: storage: Simplify memory allocation in usb_stor_probe()
      usb: storage: Replace custom debug tracing with dev_dbg
      usb: storage: Don't use "unsigned long" for 32-bit values
      usb: storage: Make usb_stor_read_capacity() a standalone function
      usb: storage: Make usb_stor_inquiry() a standalone function
      usb: storage: Make usb_stor_test_unit_ready() a standalone function
      usb: storage: Make usb_stor_read_10() a standalone function
      usb: storage: Make usb_stor_write_10() a standalone function
      usb: storage: Drop extra call to transport in usb_stor_write_10()
      usb: storage: Share code for READ(10) and WRITE(10)
      usb: storage: Make usb_stor_request_sense() a standalone function
      usb: storage: Remove unused variables
      usb: storage: Drop struct SCSI_cmd_block
      usb: hub: Do not include <scsi.h>
      ata: ahci: Do not include <scsi.h>
      usb: storage: Drop unused fields in struct us_data
      usb: storage: Drop unused us_blkdev_list
      usb: storage: Introduce usb_stor_transport()
      usb: storage: Use put_unaligned_be* helpers
      usb: Drop usb_disable_asynch()
      usb: storage: Drop unnecessary check in usb_stor_blk_io()
      usb: storage: Drop needless macro
      usb: storage: Use simple boolean to speficy read vs. write operation
      usb: storage: Simplify I/O loop in usb_stor_blk_io()
      usb: storage: Drop unnecessary assignment
      usb: storage: Inline usb_limit_blk_cnt()
      commands: loadb: Make use of open_and_lseek()
      fs: ramfs: Drop unused 'handle' filed from struct ramfs_inode
      fs: ramfs: Drop unused 'chunks' conter
      fs: ramfs: Drop unnecessary check in ramfs_mknod()
      ARM: zii-vf610-dev: Add ZII SPB4 board
      ARM: zii-vf610-dev: Switch SCU4 AIB board to use upstream DTS
      commands: memcpy: Make use of write_full()
      commands: memcpy: Make use of min_t()
      libfile: Make use of write_full() in copy_file()
      ARM: i.MX7: Make sure CNTFRQ is initialized early enough
      ARM: i.MX8MQ: Don't use cpu_is_mx8mq() at core_initcall level
      usb: dwc3: Toggle GCTL.CORESOFTRESET as a first step
      ARM: zii-common: introduce RDU part-number based fixup abstraction
      ARM: rdu2: patch DSA config

Bastian Krause (1):
      common: extend BOOTM_FITIMAGE_SIGNATURE help text

Christian Hemp (1):
      ARM: dts: mx8mq-phytec-phycore-som: Add watchdog

Greg Hackmann (1):
      pstore/ram: add Device Tree bindings

Ian Abbott (1):
      clk: socfpga: fix compiler warnings for Cyclone5

Juergen Borleis (1):
      pstore/doc: fix layout

Kees Cook (9):
      ramoops: use DT reserved-memory bindings
      pstore: Make ramoops_init_przs generic for other prz arrays
      pstore/ram: Do not use stack VLA for parity workspace
      pstore: improve error report for failed setup
      pstore/ram: Clarify resource reservation labels
      pstore: Extract common arguments into structure
      pstore: Switch pstore_mkfile to pass record
      pstore: Replace arguments for read() API
      pstore: Replace arguments for write() API

Lucas Stach (6):
      ARM: add Zii common directory and move switch reset command
      ARM: zii-common: add support for switch reset on RDU1
      ARM: zii-common: fetch network config from SP
      ARM: rdu2: Add p/n based fixups for touchscreen and display panel
      ARM: zii-common: reuse i210 config check for RDU3
      ARM: zii-imx8mq-dev: select ZII_COMMON

Masahiro Yamada (2):
      linux/kernel.h: split *_MAX and *_MIN macros into <linux/limits.h>
      treewide: surround Kconfig file paths with double quotes

Michael Tretter (5):
      ARM: zynqmp: move PAYLOAD_ARG_CNT to firmware header
      clk: add ZynqMP clock driver
      ARM: zynqmp: switch to firmware clock driver
      commands: unify newlines for options
      ARM: aarch64: do not use 32bit optimized find bit functions

Philipp Zabel (4):
      ramoops: probe from device tree if OFTREE is enabled
      pstore: add console support
      pstore: pass ramoops configuration to kernel via device tree
      pstore: ramoops: allow zapping invalid buffers in read-only mode

Rouven Czerwinski (1):
      ARM: imx: disable IPU QoS setup for correct SoCs

Sascha Hauer (61):
      clk: clk-composite: return parent_rate if no rate clk
      clk: parent_names should be const
      clk: export clk_gate_is_enabled()
      clk: Make CLK_IGNORE_UNUSED generic
      clk: Support CLK_IS_CRITICAL flag
      clk: divider: pass divider flags
      clk: divider: Support CLK_DIVIDER_READ_ONLY flag
      clk: mux: Support mux specific flags
      clk: mux: Support CLK_MUX_READ_ONLY flag
      clk: mux: Support CLK_SET_RATE_NO_REPARENT flag
      ARM: stm32mp1: Add clk driver
      ARM: stm32mp1: Add serial driver
      clocksource: Enable architected timer support for CPU_V7
      net: phy: Add PHY_ID_MATCH_* macros
      net: phy: Add register access helper functions for phys
      realtek phy driver
      ARM: Add initial STM32MP1 support
      pbl multiimage: Allow to check image sizes
      mci: imx-esdhc: Actually enable cache snooping
      Add Freescale QUICC Engine firmware support
      net: Add Freescale FMan ethernet support
      ARM: Add arm64 pbl udelay
      esdhc-xload: Add support for Layerscape
      watchdog: imx: Add register accessor functions
      watchdog: imx: Add big endian register access support
      scripts: Add Layerscape image tool
      i2c: i.MX: Add layerscape support
      ddr: fsl: Add Freescale ddr driver
      ARM: Add basic Layerscape support
      clk: Add Layerscape clk support
      ARM: Layerscape: Add LS1046a RDB board support
      ARM: Layerscape: Add TQ TQMLS1046a board support
      ARM: Add layerscape_defconfig
      ARM: semihosting: Fix function prototype
      treewide: Make locally used functions static
      treewide: Add missing includes
      ARM: i.MX: external-nand-boot: remove unused i.MX21 entry
      ARM: boards: Harmonize barebox_arm_reset_vector() prototype
      ARM: sha256: Remove unused functions
      ARM: sha256: Remove unused header file
      ARM: PXA: Provide prototype for pxa_clear_reset_source()
      bus: mvebu-mbus: Add missing whitespace
      mfd: twl-core: Add missing prototype for twlcore_get()
      fs: squashfs: Remove unused function
      dts: update to v5.1-rc1
      dts: update to v5.1-rc2
      dts: update to v5.1-rc3
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/layerscape'
      Merge branch 'for-next/lseek'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/net'
      Merge branch 'for-next/pstore'
      Merge branch 'for-next/stm32'
      Merge branch 'for-next/usb-storage'
      Merge branch 'for-next/warnings'
      Merge branch 'for-next/zynqmp'
      hab: habv4_need_rng_software_self_test is needed without hab support
      hab/caam: Fix compilation of caam driver when hab is disabled
      Release v2019.05.0

Thomas Haemmerle (3):
      of: populate "/firmware" while populating device tree
      ARM: zynqmp: populate zynqmp_firmware dt node
      ARM: zynqmp: add firmware DT node

Tomaz Solc (1):
      ARM: rpi: add board revision for Compute Module 3+

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
