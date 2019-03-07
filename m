Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nsa-0000jN-9P
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:55:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1h1nsY-0002VM-Hj
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:55:46 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1h1nsY-0000b0-9r
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:55:46 +0100
Date: Thu, 7 Mar 2019 08:55:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190307075546.oly34rnym4iavta6@pengutronix.de>
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2019.03.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

barebox-2019.03.0 is out. No new shiny generic features around this
time, but some SoC specific improvements. The Rasperry Pi port now
supports the miniuart, so we do not need any hacks in the dt anymore.
The i.MX PCI support has been extended to i.MX7 and i.MX8M. Also, the
AT91 devicetree port now support the new PMC bindings which means
barebox now works properly again with the kernel provided dts files.
As usual, many fixes and cleanups went in, see below.

Sascha

----------------------------------------------------------------
Ahmad Fatoum (2):
      regmap: Implement syscon_regmap_lookup_by_compatible()
      clk: at91: add dt-compat to PMC bindings

Alexander Shiyan (14):
      ARN: Remove duplicate includes
      ARN: boards: Remove duplicate includes
      ARN: boards: Remove duplicate includes
      treewide: Remove trailing whitespaces and tabs
      ARM: qemu-virt64: Remove orphan Kconfig
      ARM: omap: Remove reference to non-existent HAVE_DEFAULT_ENVIRONMENT_=
NEW symbol
      ARM: mvebu: delete unused mach/kirkwood.h
      ARM: omap: delete unused mach/am33xx-devices.h
      ARM: imx: delete unused mach/clock-imx1.h
      ARM: mvebu: delete unused mach/dove.h
      PPC: delete unused asm/e300.h
      PPC: delete unused asm/mc146818rtc.h
      ARM: at91: delete unused mach/sama5d3_matrix.h
      ARM: netx: delete unused netx-devices.h

Andrey Smirnov (115):
      treewide: Introduce MAP_FAILED and replace ad-hoc constants with it
      crypto: digest: Remove unused variable
      crypto: digest: Replace 4096 with PAGE_SIZE
      crypto: digest: Split memory vs. file code into separate functions
      commands: digest: Use MAX_LFS_FILESIZE instead of ~0
      crypto: digest: Change the signature of digest_file_window()
      PCI: Switch to using %pa to print memory addresses
      PCI: Replace magic number in setup_device()
      PCI: Remove superfluous parens in setup_device()
      PCI: Simplify resource setup code in setup_device()
      PCI: Store and reuse BAR offsets
      PCI: Remove unused variables/code
      PCI: Make pci_scan_bus static
      PCI: Drop "slots" from struct pci_bus
      PCI: Drop "resources" from struct pci_bus
      PCI: Drop "name" from struct pci_bus
      PCI: Drop "ops" from struct pci_bus
      PCI: Drop "rom_address" from struct pci_dev
      PCI: Simplify alloc_pci_dev()
      PCI: Assume 1:1 mapping if .res_start callback is NULL
      PCI: Convert ->res_start() to return resource_size_t
      PCI: Consify pci_ops in struct pci_controller
      crypto: digest: Return -errno if open() fails
      crypto: digest: Return -errno if lseek() fails
      crypto: digest: Return -errno if stat() fails
      regulator: Convert drivers to use struct regulator_desc
      regulator: Port basic regmap regulator functions
      regulator: Add support for setting regulator's voltage
      base: driver: Drop redundant list_empty() check
      regulator: Assume probe deferral instead of missing regulator
      regulator: Port ANATOP driver from Linux
      drivers: base: Port power management code from Linux
      soc: imx: Add GPCv2 power gating driver
      reset: Add i.MX7 SRC reset driver
      reset: Mark local functions as static
      PCI: imx6: Add code to support i.MX7D
      PCI: imx6: Allow probe deferral by reset GPIO
      PCI: imx6: Do not wait for speed change on i.MX7
      PCI: imx6: Do not switch speed if Gen2 is disabled
      PCI: imx6: Fix spelling mistake: "contol" -> "control"
      PCI: imx6: Drop unnecessary root_bus_nr setting
      PCI: imx6: Port imx6_pcie_ltssm_enable()
      block: Alias block_op_close() to block_op_flush()
      block: Replace debug() with dev_dbg()
      ARM: mmu: Drop custom virt_to_phys/phys_to_virt
      ARM: mmu: Simplify the use of dma_inv_range()
      ARM: mmu: Share code for dma_(un)map_single()
      lib: strtox: Use plumbing from kstrtox.c
      ARM64: mmu: Use arch_remap_range() internally
      ARM64: mmu: Merge create_sections() and map_region() together
      ARM: mmu: Share code for dma_free_coherent()
      ARM64: mmu: Invalidate memory before remapping as DMA coherent
      ARM: mmu: Share code for dma_alloc_coherent()
      ARM: mmu: Share code for dma_sync_single_for_cpu()
      ARM: mmu: Share sanity checking code in mmu_init()
      ARM: mmu: Share code for arm_mmu_not_initialized_error()
      ARM: mmu: Make sure DMA coherent memory is zeroed out
      block: Do not write past block device boundary during a flush
      block: Move shared code in get_chunk() out of if statement
      ls: Adjust amount of space allocated for filesize
      unlink_recursive: Drop struct data
      lib: image-sparse: Mark sparse_seek() as static
      commands: Move mem_parse_options() to lib/misc.c
      commands: Get rid of mem_rw_buf
      commands: Move /dev/mem driver to drivers/misc
      nvmem: Do not use DEVFS_IS_CHARACTER_DEV
      common: firmware: Don't use FILE_SIZE_STREAM directly
      devfs: Fix incorrect error check for cdev->ops->lseek()
      fs: Update FILE position in lseek()
      fs: Drop trivial .lseek() implementaitons in FS drivers
      devfs: Drop dev_lseek_default()
      fs: devfs: Change .lseek callbacks to return 'int'
      fs: Do not use IS_ERR_VALUE() to validate offset in lseek()
      fs: Simplify new position calculation in lseek()
      fs: Avoid division in memcpy_sz()
      libfile: Fix incorrect lseek check in open_and_lseek()
      fs: Share code between mem_write()/mem_read()
      Documentation: i.MX: Increase :maxdepth: for board documentation
      ARM: i.MX8MQ: bbu: Add MMC boot handler
      ARM: Select HAS_DMA for AArch64
      include: Import io-64-nonatomic-*.h from Linux
      net/e1000: Don't use coherent memory for Rx buffer
      net/e1000: Convert e1000_transmit to use dma_map_single()
      net/e1000: Fix debug print warning
      net/e1000: Fix incorrect "Rx ready" check
      net/e1000: Get rid of pointer arithmetic in e1000_poll
      net/e1000: Improve Rx descriptor handling in e1000_poll()
      net/e1000: Remove pointer arithmetic in e1000_transmit()
      net/e1000: Improve Tx descriptor handling in e1000_transmit
      net/e1000: Make use of readl_poll_timeout() in e1000_transmit()
      net/e1000: Rename fill_rx() to e1000_fill_rx()
      net/e1000: Remove pointer arithmetic from e1000_fill_rx()
      net/e1000: Consolidate next index calculation code
      net/e1000: Improve RX buffer handling in e1000_fill_rx()
      net/e1000: Do not hardcode TDBAH and RDBAH to 0
      ARM: i.MX: Add support for ZII i.MX8MQ based devices
      PCI: dwc: Fix pointer width cast problem
      ARM: aarch64: Add PCI fixups section to linker script
      soc: imx: gpcv2: use A_CORE instread of A7 for more i.MX platforms
      soc: imx: gpcv2: make pgc driver more generic for other i.MX platforms
      soc: imx: gpcv2: Switch to SPDX identifier
      soc: imx: gpcv2: prefix i.MX7 specific defines
      soc: imx: gpcv2: add support for i.MX8MQ SoC
      reset: Constify "ops" in struct reset_controller_dev
      reset: imx7: Add plubming to support multiple IP variants
      include: Import dt-bindings/reset/imx8mq-reset.h
      reset: imx7: Add support for i.MX8MQ IP block variant
      PCI: imx6: Introduce drvdata
      PCI: imx6: Mark PHY functions as i.MX6 specific
      PCI: imx6: Convert DIRECT_SPEED_CHANGE quirk code to use a flag
      PCI: imx6: Add support for i.MX8MQ
      ARM: i.MX8MQ: Invert the logic in imx8mq_cpu_revision()
      ARM: i.MX8MQ: Read only ROM version major
      ARM: i.MX8MQ: Add corner case for Rev 2.1 silicon
      usb: imx: Do not disable VBUS on ehci_register()'s success

Antony Pavlov (5):
      MIPS: asm/types.h: drop unused stuff
      move umode_t typedef from asm/types.h to linux/types.h
      MIPS: drop *_MULTI_BOARDS atavisms
      ARM: zynq: fix "'IO_SPACE_LIMIT' redefined" warning
      nvmem: eeprom_93xx46: fix whitespaces

Christian Hemp (1):
      Documentation: imx8mq-evk: fix firmware path

Enrico Jorns (8):
      doc: bootchooser: fix typos etc.
      doc: bootchooser: explicitly note configuration vs. storage backend
      doc: bootchooser: be more explicit what bootchooser.state_prefix is f=
or
      doc: bootchooser: be more explicit about attempts reset on successful=
 boot
      doc: bootchooser: note how to actually start the bootchooser
      doc: bootchooser: be more explicit about when the bootchooser termina=
tes
      doc: bootchooser: add details about bootchooser.reset_attempts handli=
ng
      doc: bootchooser: add retry handling to algorithm description

Ian Abbott (1):
      net: designware: drop bad RX frames

Lucas Stach (6):
      Documentation: imx8mq-evk: point to current version of the firmware
      Documentation: imx8mq-evk: add instructions for HDMITX firmware
      firmware: imx: remove prebuilt ATF binary
      firmware: add a note about license implications
      firmware: drop the imx subdir
      net: fec_imx: skip fec_halt if the FEC wasn't started

Marco Felsch (2):
      memory: of_fixup: adapt to new memory layout
      net: phy: micrel: backport ksz9031 125MHz ref-clk workaround

Masahiro Yamada (4):
      kconfig: remove unused zconf.hash.c
      kbuild: cherry-pick changes from Linux v5.0-rc3
      scripts: fixdep: update to v5.0-rc3
      kconfig.h: update to v4.16-rc2

Michael Olbrich (1):
      i.MX habv3: add missing includes and make locally used function static

Moritz Augsburger (1):
      ARM: rpi: complete new revision scheme

Oleksij Rempel (3):
      MIPS: tplink-mr3020: use ar9331_pbl_generic_start
      MIPS: black-swift: use ar9331_pbl_generic_start
      MIPS: ath79: add spi and sram bootstrap helpers

Robert Karszniewicz (1):
      readline: add ctrl-u (unix-line-discard)

Roland Hieber (5):
      Documentation: state: fix closing brace without opening brace
      Documentation: i.MX: Kindle 4/5: fix sphinx warnings
      ubi: prevent null pointer reference
      ARM: rpi: make locally used functions static
      mci: bcm2835: make locally used functions static

Rouven Czerwinski (9):
      ARM: rpi: fix typo in rpi-common.c
      ARM: rpi: move clks into board specific rpi-common
      ARM: rpi: retrieve miniuart clock from firmware
      serial_ns16550: handle default reg-io-width
      serial_ns16550: add raspberry pi compatible and init
      ARM: rpi: add NS16550 support
      ARM: rpi: choose miniuart as stdout
      doc: bcm283x: remove miniuart overlay instruction
      ARM: rpi: use defines for uart bases

Sam Ravnborg (9):
      arm: at91: fix at91_configure_usart6 warning
      clocksource: Do not mix depends and select for ATMEL_PIT
      arm: at91: add SOC_SAMA5{D2,D3,D4}
      clk: at91: add at91sam9260
      clk: at91: add at91sam9rl
      clk: at91: add at91sam9x5
      clk: at91: add sama5d2
      clk: at91: add sama5d4
      clk: at91: update to PMC bindings

Sascha Hauer (42):
      ARM: Makefile: Drop unnecessary imxcfg-y settings
      mtd: peb: Add function to skip bad blocks
      usb: fastboot: ubiformat: Fix bad block handling
      ARM: omap: Wago PFC200: Initialize switch registers
      fs: let truncate take a loff_t argument
      fs: set errno in ftruncate()
      fs: do not call truncate for FILE_SIZE_STREAM sized files
      fs: devfs: forbid truncation when cdev has no truncate operation
      misc: fix /dev/mem size
      mci: imx-esdhc: Do not reset twice
      mci: imx-esdhc: use dev_id
      mci: imx-esdhc: move platform_data
      mci: imx-esdhc: make clkidx configurable
      mci: imx-esdhc: remove unnecessary include
      net: Phy: Update phy interface modes from Linux
      mci: imx-esdhc: implement static inline io wrappers
      mci: imx-esdhc: Add bigendian register access support
      scripts: imx-image: Be more informative on open errors
      scripts: imx-image: make read_file behaviour consistent
      dts: update to v5.0-rc3
      dts: update to v5.0-rc4
      dts: update to v5.0-rc5
      dts: update to v5.0-rc6
      mci: imx-esdhc: Add layerscape support
      Merge branch 'for-next/arm'
      Merge branch 'for-next/arm-mmu'
      Merge branch 'for-next/digest'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/e1000'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/kbuild'
      Merge branch 'for-next/lseek'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mmc-esdhc'
      Merge branch 'for-next/nfs'
      Merge branch 'for-next/pci'
      Merge branch 'for-next/rpi'
      kbuild: Add missing semicolon
      defaultenv: Fix dependencies
      Merge branch 'for-next/at91-pmc-clk'
      Release v2019.03.0

Thomas Haemmerle (1):
      ARM: zynqmp: select macb driver

Ulrich =D6lmann (9):
      common: state: fix typo
      state: Documentation: fix typo
      common: state: fix compiler warnings about wrong type conversion in m=
essages
      common: state: fix formatting of "off_t" variables
      common: state: fix formatting of "uint32_t" variables
      common: state: harmonize code with dt-utils
      common: state: harmonize code with dt-utils
      common: state: harmonize code with dt-utils
      common: state: harmonize code with dt-utils

Uwe Kleine-K=F6nig (7):
      ARM: imx: add support for Udoo Neo full
      fs/nfs: don't try to set nfs error code from mount rpc call
      fs/nfs: copy data from rpc replies to local storage
      fs/nfs: stop using a global variable for nfs packet payload
      gen-dtb-s: annotate magic values with their meaning
      i2c_probe: limit slave addresses to [0x04, 0x77]
      i2c_probe: Use a quick write transfer instead of writing a zero

Vivien Didelot (5):
      defaultenv-2: trigger DHCP before booting 'net'
      defaultenv-2: centralize nfs commands for 'net'
      boot: make it a little bit less verbose
      ARM: zii-vf610-dev: fix boot from SD
      ARM: zii-vf610-dev: boot initrd from SD
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
