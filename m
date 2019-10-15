Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKIlT-0002qp-0i
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 09:05:13 +0000
Date: Tue, 15 Oct 2019 11:05:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191015090508.lrb3jrgt6hy5ej4e@pengutronix.de>
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
Subject: v2019.10.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

I just released our October Release barebox-2019.10.0. The STM32MP1
support continues to evolve, this time we have I2C, watchdog and PMIC
drivers. The OMAP Nand driver gained BCH16 support and with it support
for the Error Location Module (ELM). One bug fixed that someone might
have stumbled upon is that TFTP files no longer get cached which means
that if you exchange a file on a TFTP server and load it again in
barebox you actually get the new version of the file and no longer the
outdated version. As usual, a for a full list of changes see below.

Have fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (48):
      net: macb: extend support to Microchip SAMA5D2
      serial: stm32: set linux_console_name
      fs: tftp: remove duplicate header
      fs: provide no_revalidate_d_ops for network file systems
      fs: tftp: don't maintain tftp dentries in dcache
      sandbox: include header to provide missing prototype
      sandbox: remove unused ARCH_LINUX Kconfig symbol
      sandbox: redefine optarg and optind to avoid collisions
      sandbox: compile with symbol -fvisibility=3Dhidden
      ratp: fix use of %hu for printing int
      complete: remove unused variable
      ata: fix mismatched header guards
      i2c-mux-pca954x: remove use of uninitialized variable
      net: phy: mv88e6xxx: remove duplicate member in struct initializer
      smc911x: fix inverted poll-for-ready
      nvme: use 64 bit types for timeouts even on 32 bit systems
      usb: gadget: fsl_udc: remove always-true null pointer checks
      commands: mmc_extcsd: describe missing bit
      gui: png_lode: fix freeing of uninitialized pointer
      fs: fat: fix use of wrong enumeration type
      libfile: have write_full return a descriptive error code
      ARM: i.MX: bbu: early exit when partition too small
      fs: omap4_usbbootfs: remove commented out code
      startup: allow ctrl+c abort during boot sequence
      Kconfig: create Kconfig symbol for ARCH_HAS_STACK_DUMP
      Kconfig: create Kconfig symbol for ARCH_HAS_DATA_ABORT_MASK
      blackfin: delete unused <asm/barebox.h> definitions
      Kconfig: retire empty <asm/barebox.h>
      lib: add HAVE_EFFICIENT_UNALIGNED_ACCESS Kconfig option
      console: fix out-of-bounds read in dputc(/dev/*, ...)
      Documentation: efi: fix typos
      gpio: iopoll: implement gpio_poll_timeout_us
      param: make dev_add_param_string_fixed value parameter const
      input: add handler for reset and power key input events
      edit: replace ASCII codes by symbolic names
      common: add generic CONFIG_UBSAN plumbing
      commands: add intentionally UB triggering ubsan command
      common: add generic CONFIG_KASAN option
      sandbox: use sanitizer unwind for dump_stack if available
      sandbox: support Address and UndefinedBehavior sanitizers
      sandbox: hostfile: allow probing from device tree
      sandbox: dts: add example for barebox, hostfile backed state
      hwrng: add sandbox driver interface to host /dev/random
      i2c: port Linux i2c_parse_fw_timings
      i2c: add stm32f7 I2C adapter driver
      mfd: add support for STPMIC1
      watchdog: add support for STPMIC1 integrated watchdog
      input: specialkeys: remove unused printk argument

Andrey Smirnov (13):
      mfd: rave-sp: Emulate firmware/bootloader mode reporting on RDU2
      mtd: spi-nor: Import missing Micron devices
      i2c/pca954x: Initialize the mux to disconnected state
      Documentation: Provide default values for version/release
      ARM: dts: vf610-zii-dev-rev-b: Fix SPI flash node name
      ARM: dts: vf610-zii-dev-rev-c: Fix DSPI flash node name
      ARM: dts: vf610-zii-cfu1: Configure "STATUS" LED as heartbeat
      ARM: dts: vf610-zii-cfu1: Expose fiber optic module EEPROM
      ARM: dts: vf610-zii-scu4-aib: Expose fiber EEPROM modules
      ARM: dts: imx8mq-zii-ultra: Add switch EEPROM alias
      ARM: zii-vf610-dev: Re-align SCU4's hostname with upstream kernel
      mci: imx-esdhc-pbl: Fix watermark level value for i.MX
      Documentation: zii-vf610-dev: Fix bogus DDR configuration values

Clement Leger (2):
      elf: add 64 bits elf loading support
      mips: bootm: Cast elf entry into unsigned long

Cory Tusar (4):
      Documentation: zii-vf610-dev: Fix 'halt' in openocd configuration scr=
ipt
      ARM: dts: vf610-zii-cfu1: Fix indentation
      ARM: zii-vf610-dev: Use CTRL-C as autoboot abort
      Documentation: zii-imx7d-dev: Fix errors with openocd configuration s=
cript

DU HUANPENG (2):
      mtd: spi-nor: Add support for s25fl128s0 s25fl128s1 flashes from Linux
      fix compile error when set CONFIG_CONSOLE_SIMPLE=3Dy

David Dgien (1):
      console: set default console_device devname

Ladislav Michl (1):
      startup: Fix typo in comment

Michael Tretter (2):
      libfile: fix typos
      clk: zynqmp: rename driver specific CLK_MUX_READ_ONLY

Oleksij Rempel (8):
      net: macb: init multiple dummy TX queues
      serial: atmel: set linux_console_name
      mtd: spi-nor: add UNLOCK_GLOBAL_BLOCK support
      mtd: spi-nor: add support for sst26vf series
      spi: add atmel-quadspi support
      MIPS: ath79: enable watchdog support
      MIPS: dts: dpt-module: fix gpio button
      MIPS: ath79: enable gpio key support.

Rouven Czerwinski (1):
      ARM: aarch64: add image markers to linker script

Sascha Hauer (47):
      dts: update to v5.2-rc7
      dts: update to v5.2
      dts: update to v5.3-rc1
      dts: update to v5.3-rc2
      dts: update to v5.3-rc3
      dts: update to v5.3-rc4
      dtc: Update update-dtc-source.sh from Linux
      scripts/dtc: Update to upstream version v1.5.0
      pbl: Implement strrchr
      Compile libfdt for barebox
      common: return "none" when board unset
      ARM: Add generic device tree 2nd stage support
      ARM: i.MX: Do not hang() on unknown SoCs
      ARM: i.MX: When generic DT image is enabled do not hardcode SoC
      mtd: nand: Add and use static inline wrapper for getting nand_chip fr=
om mtd
      mtd: nand: denali: Add variables for mtd_info and nand_chip
      mtd: nand: Embed struct mtd_info into struct nand_chip
      ARM: omap: am35xx_emif4: Fix bit polling
      mtd: nand: gpmc: Add support for ELM
      mtd: nand: gpmc: Add BCH16 support
      net: cpsw: Make phy its own driver
      mtd: peb: Add function to write file
      ARM: OMAP: bbu: Add an all-in-one NAND update handler
      net: nfs: Fix possible buffer overflow
      fs: nfs: Fix possible buffer overflow
      ARM: Cleanup stack offset cargo cult
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/for-master'
      Merge branch 'for-next/fsanitize'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/net'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/qemu'
      Merge branch 'for-next/reset-source'
      Merge branch 'for-next/sandbox'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/stm32'
      Merge branch 'for-next/tftp'
      gcc-9: silence 'address-of-packed-member' warning
      bootm: release tee_res
      clk: i.MX6qp: Fix location of the enfc_sel mux
      mtd: nand: Fix retrieving nand_chip from mtd_info
      Release v2019.10.0

Steffen Trumtrar (4):
      ARM: socfpga: fix xload on arria10
      ARM: Arria10: achilles: fix offsets in node names
      ARM: Arria10: achilles: add named partitions
      ARM: achilles: add bbu handler

Teresa Remmet (1):
      mtd: nand: nand_omap_gpmc: Fix mtd_info usage

Uwe Kleine-K=F6nig (8):
      reset_source: use instance =3D -1 as default
      reset_source: fix ordering of exported functions
      reset_source: drop reset_source_set_instance()
      reset_source: implement helper to set a device as reset source
      video/stm: fix return value handling for of_get_display_timings()
      mfd: da9053: use new reset_source_set_device()
      mfd: da9063: use new reset_source_set_device()
      oftree: expose reset_source device in device tree
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
