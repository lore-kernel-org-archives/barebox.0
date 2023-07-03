Delivery-date: Mon, 03 Jul 2023 16:10:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGKFm-00Dclt-Ve
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 16:10:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGKFk-0002NC-1c
	for lore@pengutronix.de; Mon, 03 Jul 2023 16:10:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:To:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qlPHf70a2P8U7YpNDfefATM+B+jcw42Gd9RZgZBDaNI=; b=wKAcfdfNuQWs/E
	rLLqOOsqYhGFUwpewXJsrUHGVxvftT+Kzc7Nr5QQrMr7T/FpJL8oSWCLxLJagy1kmUVGGATai8UBQ
	soaPDZEkTdKlQIMZn7EQioLA7Eb2e2COBLkUii72sBPIibDKGYVqycPQPtysyJwXyrkoGBv/WKRSD
	kvPTubXiHkOqWo9YkbyaIKt0V9wZIzDnukxgLpWrvuk2YiXZDfIwivB4C+P/bc7gXV1KIG957vP3H
	hP2HtKa9SiEOADB0PN/PU+yD9ibu4B6XfWCjT6g87l10Y+/rXCGVDimF1xJi/kU1xRSG3nolyomGG
	Fx5m9MQ3HkYGX3BipAYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGKEK-00AinF-2V;
	Mon, 03 Jul 2023 14:08:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGKEG-00AimN-25
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 14:08:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGKEE-00029l-EK; Mon, 03 Jul 2023 16:08:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGKEE-0004Bu-6m; Mon, 03 Jul 2023 16:08:34 +0200
Date: Mon, 3 Jul 2023 16:08:34 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230703140834.GR18491@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_070837_023322_46938F0F 
X-CRM114-Status: GOOD (  23.85  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: v2023.07.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

I just released barebox-2023.07.0. This comes a bit early this time for
two reasons: With barebox-2023.06.0 barebox disabled boards which need
firmware that isn't available at build time. This had several
shortcomings, like for example some build system receipts only provide
the firmware files at compile time, but not during configuration time
which resulted in boards being accidently disabled. We wanted to fix
this issue fast, so this release comes earlier than usual. The second
reason is that I am on vacation for the next three weeks, so it's now
or after my holidays.

This is a rather small release, nevertheless there are some things to
tell. barebox now has a of_compatible command. This can be used to test
for specific boards on the command line and is useful to limit init
scripts to certain boards when support for multiple boards is compiled
in.

The CI infrastructure continues to involve. We now do runtime tests on
64bit MIPS as well and also on 64bit RISCV. The toolchains are updated
to gcc 13.

Denis has reworked the dma_sync_single_for_*() interface. These
functions now take a struct device * argument and now properly take the
virtual address and no longer a DMA address. With this we can take
device specific translations of the virtual address into a DMA address
into account.

See below for a full list of patches that went into this release.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (121):
      ARM: i.MX8M: move early_clock_init out of power_init_board
      treewide: don't mix goto labels and statements on same line
      treewide: drop null pointer checks around of_delete_node
      commands: of_property: use new of_read_file
      commands: of_dump: remove duplicate error message
      commands: of_dump: use of_dup instead of flattening/unflattening
      commands: implement of_compatible command
      crypto: digest: match driver name if no algo name matches
      test: self: add digest test
      include: sync <linux/linkage.h> with Linux
      ARM: asm: implement CPU_BE/CPU_LE
      ARM: asm: import Linux adr_l/ldr_l assembler.h definitions
      crypto: sha: reorder struct sha*_state into Linux order
      ARM64: crypto: add Crypto Extensions accelerated SHA implementation
      regulator: core: add debug print for regulator_resolve_supply
      commands: stat: print symlink destination when called without -L
      commands: stat: add basic handling for cdev links
      include: sync min/max definitions with Linux
      include: minmax.h: implement compare3 helper
      string: import strverscmp_improved from systemd
      common: limit CONFIG_TEXT_BASE to 32-bit
      test: self: add setjmp/longjmp/initjmp test
      common: add CONFIG_WERROR option
      ARM64: cpu: support 64-bit stack top in ENTRY_FUNCTION_WITHSTACK
      common: partitions: decouple from EFI GUID definition
      efi: define efi_guid_t as 32-bit aligned guid_t
      cdev: fix for_each_cdev macro
      of: partition: support of_partition_ensure_probed on parent device
      state: fix deep probe handling
      of: of_path: always call of_partition_ensure_probed before resolving
      driver: add new cdev_is_partition helper
      commands: stat: remove code duplication for type info
      cdev: use more descriptive struct cdev::diskuuid/partuuid
      cdev: record whether partition is parsed from OF
      cdev: have devfs_add_partition return existing identical partition, not NULL
      ARM: replace CONFIG_CPU_V8 with CONFIG_CPU_64 in Makefile
      ARM: don't assume 32-bit when no boards are selected
      include: sync <linux/stddef.h> with Linux
      of: change superfluous of_fix_tree int return type to void
      commands: of_diff: simplify error handling
      commands: of_diff: support applying fixups on arbitrary device trees
      include: move PATH_MAX from fs.h to linux/limits.h
      file_list: implement file_list_add_cdev_entry
      file-list: support special 'auto', 'block' specifiers
      block: parse partition table on block device registration
      common: partitions: record whether disk is GPT or MBR partitioned
      block: add cdev_is_block_(device|partition|disk) helpers
      of: export new of_cdev_find helper
      state: factor device path lookup into helper function
      cdev: use cdev::dos_partition_type only if cdev_is_mbr_partitioned
      common: partitions: efi: record type UUID in cdev
      state: allow lookup of barebox state partition by Type GUID
      boot: don't print error message on -ENOMEDIUM
      clk: always define clk_prepare_enable/disable
      clk: define clk_get_parent stub
      pci: disable building CONFIG_PCI when CONFIG_COMPILE_TEST
      mci: tegra: fix base address constant to be hexadecimal
      mci: sdhci: dove: fix pointer to u32 casts
      mci: tegra: use correct types for mmio and DMA address
      ata: ide-sff: fix warnings when compiling as 64-bit
      video: bochs: remove dependency on PCI header in common part
      commands: ubsan: hide pointer provenance used to trigger UB
      test: self: printf: silence clang warnings
      crypto: caam - fix pointer to u32 casts
      crypto: imx-scc: fix u32 to pointer casts
      lib: make_directory: return -ENOMEM on allocation failure
      include <linux/idr.h>: handle OOM gracefully inside idr_alloc_one
      mtd: spi-nor: cadence: fix types
      video: simplefb-fixup: warn on framebuffers >= 4G
      watchdog: imx28: use correct constant for computing timeout_max
      firmware: mark firmware sections as having non-executable stack
      phy: stm32: usb: depend on COMMON_CLK
      nvmem: retire struct nvmem_bus for better Linux compatibility
      test: self: add basic regulator selftest
      boards: qemu-virt: apply overlay at postcore_initcall level
      kbuild: support DTC_CPP_FLAGS_file.dtbo
      boards: qemu-virt: compile overlay as such
      boards: qemu-virt: support passing in FIT public key
      asm: align virt_to_phys definitions
      scripts: add container.sh as simple podman wrapper
      gitignore: don't ignore files in .github/ directory
      test/Containerfile: reduce duplication in cross toolchain handling
      test/Containerfile: install only one RISC-V toolchain
      test/Containerfile: drop i386 toolchain
      test/Containerfile: update to GCC 13.1.0
      test/Containerfile: drop unneeded dependencies
      ci: test-defconfigs.yml: rename to build-defconfigs.yml
      ci: shorten name in YAML files
      ci: don't fail fast
      ci: don't use deprecated Node.js 12 actions
      ci: pytest: upload artifacts
      ci: build: dynamically generate build matrix
      test: labgrid-env: rv64i: use QEmu built-in openSBI
      ci: pytest: test RISCV 64-bit as well
      test/Containerfile: run wget with no-verbose flag
      video: panel-ilitek-ili9341: drop #define DEBUG
      scripts: container.sh: don't add -v twice if unneeded
      ci: build: have CI build ARCH=openrisc
      MAKEALL: add incremental build support
      scripts: container.sh: reexport KBUILD_OUTPUT LG_BUILDDIR envvars
      ci: test-defconfigs: build with -Werror
      usb: add basic USB Type-C framework
      usb: add basic TUSB320 Type-C controller support
      driver: include dev_print and family from <driver.h>
      include: linux/printk: define new dev_errp_probe
      gpio: have gpiod_ functions return and accept pointers
      gpio: gpiolib: rename struct gpio_info to gpio_desc
      gpiolib: export proper gpio descriptor API
      bitmap: implement bitmap_{to,from}_arr{32,64}
      gpiolib: factor out finding gpio property
      gpiolib: add support for requesting and setting gpiod arrays
      gpiolib: rename gpioinfo_ to gpiodesc_
      firmware: reference pointer alignment defined in <asm-generic/pointer.h>
      firmware: mark firmware used in PBL as pbl-only
      firmware: turn missing firmware into linker error
      firmware: optionally turn missing firmware errors into warnings
      ARM64: Rockchip: gracefully handle missing firmware
      ARM64: unset CONFIG_MISSING_FIRMWARE_ERROR for Rockchip/i.MX
      firmware: don't hardcode firmware paths in srctree for existence check
      sandbox: dts: skip reboot mode without hostfile
      kbuild: delete images with missing firmware instead of truncating

Denis Orlov (28):
      net: r8169: fix builds on archs without system.h header
      dma: rework dma_sync_single_for_*() interface
      net: macb: remove const from dev pointer in macb_device
      include: const: make UL/ULL() macros commonly available
      include: bitops: allow BIT* macros to be used in assembly code
      include: bitops: import more BITS_TO_* defines from linux
      MIPS: malta: allow to choose MIPS64 target CPU in config
      MIPS: malta: use CKSEG instead of KSEG macros
      MIPS: reloc: fix relocation with CONFIG_64BIT enabled
      MIPS: o32: provide ta0..ta3 register definitions
      MIPS: pbl: use o32/n64 compatible register definitions
      MIPS: pbl: fix linking errors with CONFIG_64BIT
      MIPS: use MIPS32/MIPS64 generic instruction macros
      MIPS: malta: fix GT64120 base virtual address on 64BIT
      MIPS: fix addresses of exception vectors in 64-bit mode
      MIPS: fix *ADDR macro usage warnings on CONFIG_64BIT
      MIPS: Makefile: sign-extend TEXT_BASE value on CONFIG_64BIT
      MIPS: enable 64-bit kernel segment addressing on CONFIG_64BIT
      MIPS: traps: fix passing wrong sp when returning from exception
      MIPS: pbl_macros: use generic load/store macros in copy_to_link_location
      MIPS: add 64-bit support for optimized string functions
      MIPS: make setjmp/longjmp/initjmp available in 64BIT builds
      MIPS: main_entry-pbl: fix conversion warnings on CONFIG_64BIT
      MIPS: add qemu-malta64el_defconfig
      test: mips: add QEMU Malta 64le labgrid config
      ci: add a job for testing 64BIT MIPS with labgrid
      virtio: remove VIRTIO_PCI dependance on MMU for MIPS
      MIPS: enable more options in malta defconfigs

Ian Abbott (4):
      scripts: socfpga_import_preloader: Update include paths
      scripts: socfpga_get_sequencer: Update file paths and include paths
      scripts: socfpga_import_preloader: Use SDK-supplied Python
      scripts: socfpga_import_preloader: Translate DOS line endings

Jules Maselbas (2):
      kvx: Add missing include/asm/mmu.h
      usb: gadget: dfu: Add missing get_alt callback

Julien Villette (1):
      kvx: Replace dinval alias with d1inval

Marc Kleine-Budde (4):
      ARM: i.MX8MM: InnoComm: fix base address for I2C1
      ddr: imx: fix indention of debug message
      I2C: i.MX: fix guard macro comment
      ARM: dts: InnoComm: fix node address of environment partitions

Marc Reilly (2):
      commands: add pwm manipulation command
      include: pwm: minor function doc fix for pwm_set_relative_duty_cycle()

Marco Felsch (9):
      gpiolib: simplify for loop break condition
      gpiolib: rename local gpio-line-names variable
      gpiolib: fix gpio name memory leak
      gpiolib: fix missing error check while query gpio-line-names
      gpiolib: refactor gpio-line-names parsing
      gpiolib: introduce of_gpiochip_add to bundle all of functions
      OF: gpio: sync of_get_named_gpio_flags variable with kernel
      OF: gpio: call of_node_put in of_get_named_gpio_flags
      gpiolib: add of_xlate support

Paul Iannetta (1):
      kvx: Fix asm syntax in start.S

Roland Hieber (2):
      net: phy: add phy_modify_mmd_indirect convenience function
      net: phy: dp83867: respect ti,clk-output-sel DT property

Sascha Hauer (37):
      include: make linux/export.h safe for being included from assembly
      dts: update to v6.4-rc3
      mci: rockchip-dwcmshc-sdhci: Add rk3588
      firmware: arm_scmi: fix async check
      clk: rockchip: add missing pll_rk3588_core handling
      clk: clk-divider: fix CLK_DIVIDER_HIWORD_MASK flag
      pinctrl: rockchip: fix bias settings
      ARM: dts: rk3588s: Set CPU clock to 816MHz
      mci: rockchip-dwcmshc-sdhci: enable DLL only for clock >= 52MHz
      ARM: rockchip_v8_defconfig: Enable SCMI support
      ARM: multi_v8_defconfig: Enable SCMI support
      ARM: rockchip rock 5b: drop no longer valid comments
      dts: update to v6.4-rc4
      fixup! commands: add pwm manipulation command
      net: gianfar: make MAC addr setup endian safe, cleanup
      dts: update to v6.4-rc5
      dmesg: factor out str_to_loglevel()
      dmesg: error out on unknown loglevels
      dmesg: allow loglevels specified as numbers
      dmesg: implement dmesg -n
      dmesg: udpate help
      dts: update to v6.4-rc6
      dts: update to v6.4-rc7
      Merge branch 'for-next/arm64-sha'
      Merge branch 'for-next/ci'
      Merge branch 'for-next/dma-streaming-interface'
      Merge branch 'for-next/dmesg'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/gpiohog'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/misc-fixes-sandbox'
      Merge branch 'for-next/of-compat'
      Merge branch 'for-next/pwm'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/state'
      Release v2023.07.0

Steffen Trumtrar (1):
      firmware: zynqmp: fix loading for PMU FWv1.1

Ulrich Ölmann (1):
      common: Kconfig: fix typo

Yegor Yefremov (2):
      net: phy: add driver for MotorComm PHY
      mtd: nand: omap: Depend on BUS_OMAP_GPMC
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


