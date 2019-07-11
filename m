Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlTbP-0000NC-79
 for barebox@lists.infradead.org; Thu, 11 Jul 2019 07:34:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>) id 1hlTbN-000558-J3
 for barebox@lists.infradead.org; Thu, 11 Jul 2019 09:34:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1hlTbN-0001cx-9a
 for barebox@lists.infradead.org; Thu, 11 Jul 2019 09:34:49 +0200
Date: Thu, 11 Jul 2019 09:34:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190711073449.47ddtmlefluaypvt@pengutronix.de>
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
Subject: v2019.07.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

barebox-2019.07.0 is out. With this release we get a feature that we
last had 12 years ago: We can read U-Boot environments. Yes, we can!
Also we now have support for OP-TEE, a Trusted execution environment
for the ARM secure world, see http://www.op-tee.org. An OP-TEE binary
can be started as part of starting the kernel so that OP-TEE runs in
the secure world and the kernel is then started in nonsecure mode. Right
now this is for development only since the Address space controller is
not yet configured which makes the secure world rather insecure. There's
room for improvements, but it's a start.

Other than that there's the usual flow of patches, see below.

Have fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (36):
      checkpatch: add upstream checkpatch v5.1 dependencies
      checkpatch: import as-is from Linux v5.1
      checkpatch: apply barebox-specific modifications
      clk: at91: fix compilation errors in sama5d2.c
      clk: at91: delete dead i2s/audio code
      ARM: at91: replace __raw_{readl, writel} of peripherals with readl, w=
ritel
      driver: left shift 1U instead of 1 in bitmask for consistency
      of: partition: use NULL instead of never-read argument
      clk: imx: vf610: correct __iomem 'qualifier' placement
      ARM: at91: debug_ll: make UART base address configurable
      ARM: at91: remove references to non-existing CONFIG_ARCH_AT91*
      ARM: at91: remove no-longer needed subarch #ifdefery
      ARM: at91: remove #ifdefery around *_get_ddram_size helpers
      ARM: at91: fix at91sama5_get_ddram_size for sama5d4
      ARM: at91: remove duplicate get_ddram_size code
      clk: at91: fix warning about missing const-safety
      ARM: at91: correct __iomem 'qualifier' placement
      scripts: extract symbol offsets using target, not host, nm
      scripts: includes: restrict strlcpy prototype to glibc
      scripts: compiler.h: don't include <stdint.h> twice
      scripts: don't depend on system <asm/types.h>
      scripts: bareboxcrc32: remove usage of loff_t
      scripts: bareboximd: remove usage of loff_t
      scripts: compiler.h: add endianness helpers for macOS
      scripts: use "compiler.h" endianness helpers
      scripts: mkimage: s/fdatasync/fsync/ on macOS & OpenBSD
      scripts: removes uses of <asm*/errno.h> in favor of <errno.h>
      scripts: omap3-usb-loader: don't depend on unportable le32toh
      scripts: omap3-usb-loader: drop unneeded header
      scripts: imx-usb-loader: don't depend on unportable headers
      scripts: kwbimage: fix build with non-glibc systems
      scripts: compiler.h: use Linux <endian.h> as default
      scripts: compiler.h: support BSDs as well
      scripts: kwboot: fix comparison with out-of-range constant
      ARM: imx8: fix discrepancy between comment and code
      Documentation: user: suggest U-Boot's bootm, not go

Andrey Smirnov (50):
      usb: imx-usb-phy: Import register definitions from Linux driver
      usb: imx-usb-phy: Wrap lines to silence checkpatch
      usb: storage: Zero CDB out before sending it
      usb: storage: Default to a single LUN
      usb: storage: Fix TEST_UNIT_READY command size
      usb: host: ehci: Do not zero out DMA coherent memory
      usb: host: ehci: Share code to enable/disable async schedule
      usb: host: ehci: Use to USBSTS to wait for transfer completion
      usb: host: ehci: Replace magic number with macros
      usb: host: ehci: Drop unnecessary cleanup code
      usb: host: ehci: Introduce ehci_prepare_qtd()
      usb: host: ehci: Simplify qTD buffer synchronization
      usb: host: ehci: Simplify ehci_td_buffer()
      usb: host: ehci: Initialize qTDs explicitly
      usb: host: ehci: Simplify ehci_submit_async()'s epilogue
      usb: host: ehci: Drop needless assignments in ehci_submit_async()
      usb: host: ehci: Use bool to simplify ehci_submit_async()
      usb: host: ehci: Add a comment explaing IOC setting for data
      usb: host: ehci: Replace explicit printf() with dev_err()
      usb: host: ehci: Drop explicit memset() in ehci_init()
      usb: host: ehci: Treat ehci->qh_list as an array
      ush: host: ehci: Simplify QH initialization in ehci_submit_async()
      usb: host: ehci: Allocate only NUM_QH queue heads for qh_list
      usb: imx-usb-phy: Use stmp_reset_block() to reset PHY
      usb: imx-usb-phy: Disable charger detect during initialization
      ARM: i.MX: Drop unused usb-imx6.c
      libfile: Simplify read_full()
      libfile: Do not return 0 from write_full()
      libbb: Drop simple_itoa()
      commands: Introduce memcpy_parse_options()
      usb: ohci-hcd: Do not zero out DMA coherent memory
      net: rtl8169: Do not zero out DMA coherent memory
      nand: nand_mxs: Do not zero out DMA coherent memory
      apbh: Do not zero out DMA coherent memory
      ahci: Do not zero out DMA coherent memory
      apbh: Use dma_alloc_coherent() to get DMA address
      usb: fsl_udc: Use dma_alloc_coherent() to get DMA address
      usb: ohci: Add dependency on HAS_DMA
      Documentation: Add zii-vf610-dev board documentation
      Documentation: Add zii-imx7d-rpu2 board documentation
      Documentation: Add zii-imx6-rdu2 board documentation
      Documentation: zii-imx8mq-dev: Update OpenOCD usage documentation
      ARM: rdu2: Initialize DEBUG_LL in entry function
      filetype: Add "U-Boot environmemnt variable data" filetype
      filetype: Allow specifying cdev's filetype explicitly
      drivers: Introduce late_platform_driver()
      misc: Add a driver to expose U-Boot environment variable data
      fs: Add a driver to access U-Boot environment variables
      ARM: rdu2: Add U-Boot environment partitions
      lib: Add missing arguments to memcpy_parse_options()

Antony Pavlov (3):
      riscv: dts: erizo-generic: fix memory node name
      Documentation: add riscv mention
      filetype: fix typo

Bastian Krause (3):
      scripts: imx-image: document -d, -e, -s, -u
      doc: boards: imx: document image creation
      doc: boards: imx: add HAB section

Cory Tusar (1):
      ARM: rdu1: Add U-Boot environment partition

Ian Abbott (1):
      startup: execute /env/bin/init as part of the initial shell

Jan Remmet (1):
      common: state: check length

Ladislav Michl (1):
      net: macb: dma_sync_* receive buffers

Lucas Stach (9):
      ARM: zii-common: add missing stddef.h include
      ARM: zii-imx8mq-dev: add barebox and environment partition
      ARM: zii-imx8mq-dev: add defaultenv with simple boot configuration
      ARM: rdu3: disable i210 network interface
      ARM: rdu2: extend environment for netboot
      ARM: rdu2: disable i210 network interface
      ARM: rdu2: extend boot script for eMMC boot
      ARM: imx: rdu1: disable FEC node
      ARM: imx6sx-sdb: remove PHY reset GPIO from DT

Masahiro Yamada (6):
      arch: add KBUILD_DEFCONFIG to allow "make defconfig"
      .gitignore: import some updates from Linux
      treewide: replace '---help---' with 'help' in Kconfig files
      kbuild: remove unneeded patterns from distclean
      kbuild: drop support for cc-ldoption
      kbuild: suppress warnings from 'getconf LFS_*'

Michael Forney (1):
      kbuild: Use ls(1) instead of stat(1) to obtain file size

Michael Grzeschik (2):
      gpio: add driver for PCF857x, PCA{85, 96}7x, and MAX732[89] I2C GPIO =
expanders
      pcf857x: fix CONFIG_OF to OFDEVICE

Oleksij Rempel (1):
      remove CONFIG_DEBUG_INFO

Peter Mamonov (1):
      MIPS: use anonymous labels in ENTRY_FUNCTION_END and STOP_WITH_DEBUG_=
EVENT macros

Philipp Zabel (2):
      ARM: rdu2: reserve pstore memory region
      ARM: rdu1: reserve pstore memory region

Rouven Czerwinski (9):
      ARM: i.MX6: add support for Digi CCIMX6UL SBC Pro
      scripts: imx-usb-loader: add i.MX8MQ PID and VID
      images: ignore *.csfbin files
      firmware: add gitignore file for *.bin
      ARM: udoo-neo: add ocotp and environment nodes
      nvmem: ocotp: Elongate OCOTP_CTRL_ADDR field
      nvmem: ocotp: Ensure WAIT bits are preserved
      nvmem: ocotp: Change TIMING calculation algorithm
      i.MX: HABv4: Reset index variable after error type

Sam Ravnborg (1):
      arm: sama5d4: fix stack setup

Sascha Hauer (31):
      ARM: introduce sync_caches_for_execution
      ARM: unify asm/arm-smccc.h and linux/arm-smccc.h
      ARM: psci: factor out of_psci_fixup() to separate file
      ARM: Layerscape: Add PPA firmware support
      imx-bbu-nand-fcb: print page numbers instead of block numbers
      imx-bbu-nand-fcb: print primary/secondary firmware page numbers
      imx-bbu-nand-fcb: always print info messages in read_firmware_all()
      imx-bbu-nand-fcb: make info messages in read_firmware_all() clearer
      imx-bbu-nand-fcb: return positive result when firmware needs cleanup
      imx-bbu-nand-fcb: refresh unused firmware when it needs refresh
      commands: mw: Use kstrto*() instead of simple_strtoul()
      imx-bbu-nand-fcb: exchange firmware slots when used firmware is refre=
shed
      ARM: Initial OP-TEE support
      dts: update to v5.2-rc1
      dts: update to v5.2-rc2
      dts: update to v5.2-rc3
      Merge branch 'for-next/arm'
      Merge branch 'for-next/at91'
      Merge branch 'for-next/checkpatch'
      Merge branch 'for-next/dma'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/macos'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/ubootenv'
      Merge branch 'for-next/usb-ehci'
      Merge branch 'for-next/usb-phy'
      startup: Do not overwrite global.linux.bootargs.console
      net: cpsw: adopt to upstream device tree changes
      usb: imx-usb-phy: select syscon driver
      Release v2019.07.0

Tomaz Solc (1):
      ARM: rpi: use sdhost for eMMC access on CM3.

Ulrich =D6lmann (1):
      images: remove forgotten occurences of *.imx-sram-img

Uwe Kleine-K=F6nig (4):
      plathome-openblocks-a6: provide a kwbimage.cfg file
      serial_ns16550: readd support for mvebu armada 38x
      mvebu: make the compiler inline mvebu_remap_registers
      plathome-openblocks-a6: use image format 0

Vivien Didelot (1):
      ARM: zii-vf610-dev: disable eth1
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
