Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fcPjr-0005jm-IG
 for barebox@lists.infradead.org; Mon, 09 Jul 2018 06:33:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1fcPje-0001z3-ES
 for barebox@lists.infradead.org; Mon, 09 Jul 2018 08:33:22 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1fcPja-0001ta-Jm
 for barebox@lists.infradead.org; Mon, 09 Jul 2018 08:33:18 +0200
Date: Mon, 9 Jul 2018 08:33:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180709063318.gipuovqlpha4366d@pengutronix.de>
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
Subject: v2018.07.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

v2018.07.0 is out. With this release finally lands the i.MX8MQ support.
After several preparations in the aarch64 area we now have support for
a first 64bit Arm SoC in mainline. Give it a try if you have the
hardware.

Have fun
Sascha

----------------------------------------------------------------
Alexander Kurz (3):
      ARM: i.MX50: Replace expicit casts with IOMEM
      ARM: i.MX50: Record reset reason as a part of startup
      ARM: i.MX50: fix Kindle-MX50 DT issues and warnings

Andrey Smirnov (71):
      ARM: mmu: Remove unused ARM_VECTORS_SIZE
      ARM: mmu: Make use of IS_ALIGNED in arm_mmu_remap_sdram()
      ARM: mmu: Use ALIGN and ALIGN_DOWN in map_cachable()
      ARM: mmu: Introduce set_ttbr()
      ARM: mmu: Introduce set_domain()
      ARM: mmu: Share code for create_sections()
      ARM: mmu: Separate index and address in create_sections()
      sizes.h: Sync with Linux 4.16
      ARM: mmu: Specify size in bytes in create_sections()
      ARM: mmu: Share code for initial flat mapping creation
      ARM: mmu: Share PMD_SECT_DEF_CACHED
      ARM: mmu: Drop needless shifting in map_io_sections()
      ARM: mmu: Replace hardcoded shifts with pgd_index() from Linux
      ARM: mmu: Trivial simplification in arm_mmu_remap_sdram()
      ARM: mmu: Replace various SZ_1M with PGDIR_SIZE
      ARM: mmu: Use PAGE_SIZE when specifying size of one page
      ARM: mmu: Define and use PTRS_PER_PTE
      ARM: mmu: Use PAGE_SIZE instead of magic right shift by 12
      ARM: mmu: Use xmemalign in arm_create_pte()
      ARM: mmu: Use xmemalign in mmu_init()
      ARM: mmu: Share code between dma_alloc_*() functions
      ARM: mmu: Pass PTE flags a parameter to arm_create_pte()
      of: Make of_property_get_value() public
      bootsource: Add bootsource alias name API
      common: oftree: Pass bootsource and bootsource instance to kernel
      common: oftree: Pass reset source and reset source instance to kernel
      ARM: mmu: Make sure that address is 1M aligned in arm_create_pte()
      ARM: mmu: Use find_pte() to find PTE in create_vector_table()
      ARM: mmu: Use dma_inv_range() in dma_sync_single_for_cpu()
      ARM: mmu: Simplify the use of dma_flush_range()
      ARM: mmu: Implement on-demand PTE allocation
      ARM: mmu: Introduce ARM_TTB_SIZE
      scripts/mkimage: Fix strncpy usage
      nvmem: snvs_lpgpr: Drop stray commas
      i.MX: ocotp: Unify code paths for reading MAC address
      i.MX: ocotp: Change MAC address layout for VFxxx
      i.MX: ocotp: Simplify OCOTP field packing/unpacking
      i.MX: ocotp: Simplify BF macro
      i.MX: ocotp: Move OCOTP driver to drivers/nvmem
      nvmem: Use name from struct nvmem_config for cdev
      nvmem: ocotp: Convert to NVMEM device
      ARM: mmu64: Trivial code simplification
      ARM: mmu64: Make use of create_table()
      ARM: mmu64: Convert flags in arch_remap_range()
      ARM: no-mmu: Disable building for ARMv8
      ARM: mmu: Make use of dsb() and isb() helpers
      ARM: interrupts64: Include ESR value in exception traceback
      ARM: cache: Remove unused cache ops struct
      ARM: include: dma: Add missing no-MMU stubs
      net: fec_imx: Make use of IS_ALIGNED
      ARM: i.MX: Split shared CCM code into a separate file
      ARM: i.MX: Add IOMUX pad constants for i.MX8
      ARM: i.MX: Add basic CCM constants for i.MX8
      ARM: Add constants and helpers for system counter interface
      clocksource: armv8-timer: Convert explicit assembly into helpers
      ARM: i.MX8: Initialize system counter
      ARM: i.MX: boot: Fix address casting on 64-bit platforms
      ARM: boot: Add trivial i.MX8 support
      ARM: i.MX: xload-esdhc: Rework to make code be less i.MX6-specific
      ARM: i.MX: xload-esdhc: Allow custom buffer address, device offset
      ARM: i.MX: xload-esdhc: Add support for i.MX8
      pinctrl: i.MX: Add support for i.MX8
      Documentation: imx: Change block size for 'dd' to 1024
      Documentation: i.MX: Add missing <soctype>
      clocksource: armv8-timer: Make armv8_clocksource_read() static
      clocksource: armv8-timer: Make use of postcore_platform_driver()
      scripts: imx-image: Drop error return from write_dcd()
      scripts: imx-image: Limit v2 header size to HEADER_LEN
      ARM: lib64: Make string functions aware of MMU configuration
      ARM: i.MX8: Add DDRC PHY and DDR CTL base addresses
      ARM: VFxxx: Record cpu boot source as a part of startup

Baeuerle, Florian (2):
      commands/of_property: add option to apply changes as fixup
      commands/of_node: add option to apply changes as fixup

Heinrich.Toews@wago.com (1):
      mtd: nand: omap_gpmc: fix: remove bch4 string extant

Lucas Stach (1):
      bbu: imx-bbu-internal: add i.MX51 SPI/I2C flash handler

Masahiro Yamada (1):
      .gitignore: sort normal pattern rules alphabetically

Nikita Yushchenko (2):
      clk: add clk-gpio driver
      clk: support pinmux configuration in clock provider nodes

Oleksij Rempel (2):
      defaultenv-2: make abort key to stop autoboot configurable
      ARM: i.MX: esdctl: Add support for i.MX6SoloX's memory controller

Pascal Vizeli (1):
      scripts/dtc: Update to upstream version 1.4.6

Peter Mamonov (12):
      resource: fix iomem_resource.end for 64 bit systems
      mw command: add `-x` option description
      mtd: cfi-flash: fix write_buff() for 64 bit systems
      i2c-mux-pca954x: fix out-of-bounds write for 64 bit systems
      MIPS: import 64-bit address conversion macros
      include/common.h: move IOMEM declaration for MIPS to arch/mips/includ=
e/asm/io.h
      MIPS: add proper IOMEM() declaration for MIPS64
      MIPS: fix copy_to_link_location for 64 bit mode
      MIPS: use CKSEG1 instead of KSEG1
      MIPS: add PHYS_ADDR_T_64BIT option
      MIPS: 64BIT selects PHYS_ADDR_T_64BIT
      MIPS: don't use optimized string functions for MIPS64

Philipp Zabel (1):
      ARM: imx6qp: fix NoC QoS passthrough for new cpu type functions.

Roland Hieber (3):
      README: describe how to build the documentation
      doc: boards: imx: link to mxs documentation
      scripts: gitignore omap3-usb-loader binary

Sascha Hauer (36):
      dts: update to v4.17-rc4
      dts: update to v4.17-rc5
      dts: update to v4.17-rc6
      imx-usb-loader: Align uploaded file length
      imx-usb-loader: Fix verify for non word aligned lengths
      imx-usb-loader: dump memory bytewise on verification mismatch
      ARM: mmu: only create flat mapping when early MMU hasn't done it alre=
ady
      dts: update to v4.17-rc7
      ARM: i.MX: xload: Fix compiler warning
      ARM: i.MX: compile arm32 specific errata only for CPU32
      ARM: Add i.MX8 support
      ARM: i.MX: ocotp: Add i.MX8MQ support
      Kbuild: Add $(quote)
      Add builtin firmware support
      dts: update to v4.17
      Include our own include/dt-bindings
      mci: imx-esdhc: use dma mapping functions
      net: fec_imx: remove unnecessary DMA sync ops
      net: fec_imx: Use dma mapping functions
      clock: Add i.MX8MQ clock driver
      serial: i.MX: Add i.MX8 support
      aarch64: Add i.MX8 debug UART support
      mmc: i.MX esdhc: Add i.MX8 support
      gpio: i.MX: Add i.MX8mq support
      scripts: omap3-usb-loader: fix compiler warning
      Merge branch 'for-next/arm'
      Merge branch 'for-next/arm-mmu'
      Merge branch 'for-next/clk'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx-ocotp'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mvebu'
      Merge branch 'for-next/of-bootsource'
      Release v2018.07.0

Teresa Remmet (2):
      mtd: nand: nand_omap_gpmc: Fix ecc steps
      commands: mmc_extcsd: Add support to write multibyte registers

Uwe Kleine-K=F6nig (8):
      dove: move memory controller remapping before RAM detection
      dove: fix bit layout of DOVE_CPU_CTRL register
      kwbimage_v0: add support to detect and boot a mvebu v0 image
      libfile: implement new helper write_file_flash()
      omap/am33xx_bbu: use file_write_flash() instead of its own variant
      scripts/kwboot: fix image check for v0 images
      scripts: create a separate section for host tools
      Documentation: use https for Pengutronix services

Vivien Didelot (1):
      net: use dev_warn() when no MAC address is set

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
