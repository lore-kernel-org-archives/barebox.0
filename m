Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3dvj-0003GA-PC
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 10:47:13 +0000
Date: Mon, 17 Feb 2020 11:47:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200217104709.pinrcr3uhiz43few@pengutronix.de>
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
Subject: v2020.02.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

I just released barebox-2020.02.0. Nicest thing to note this time is
that we finally have USB support on the Raspberry Pi boards and with
it networking support, hurray ;)
See below for the usual flow of patches that went into this release.

Haev Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (16):
      ARM: i.MX: introduce imx_image_rule variable for code deduplication
      ARM: i.MX: rebuild .imximg if DCD table in .imxcfg changes
      led: pca955x: remove ineffectual assignment
      commands: led: print actual error code when led_set fails
      ARM: cache_64: invalidate dcache in arm_early_mmu_cache_invalidate
      ARM: cache_64: invalidate icache in arm_early_mmu_cache_flush
      Revert "clocksource: ARMv8 timer can only be built on ARMv8"
      net: designware: eqos: don't funnel all MDIO writes to register 0
      mci: stm32_sdmmc2: use correct card power cycle sequence
      mci: stm32_sdmmc2: don't reset before retrying failed operations
      mci: core: don't test 4-bit-buswidth support if MMC host lacks capabi=
lity
      mci: stm32_sdmmc2: compare ios ->bus_width with correct constants
      mci: stm32_sdmmc2: fix typo in debug string
      acpi: include missing header in <acpi.h>
      hw_random: add support for STM32 RNG
      serial: ns16550_pci: fix possible read of uninitialized variable

Albert Schwarzkopf (1):
      Allow usage of default environment without environment file storage

Andrey Smirnov (1):
      ARM: aarch64: Add support for passing initrd to Linux

Antony Pavlov (4):
      include/linux/amba/bus.h: drop unused declarations
      MIPS: dts: rename tplink-mr3020.dts -> ar9331_tl_mr3020.dts
      MIPS: actually use CONFIG_MIPS_RELOCATION_TABLE_SIZE
      RISC-V: unbreak built-in dtb

Christian Eggers (1):
      doc: bootchooser: Fix barebox-state example

Du Huanpeng (1):
      MIPS: loongson: rename CPU_LOONGSON1 to CPU_GS232

Hubert Feurstein (7):
      led: unify led trigger tables
      led: add documentation for net-tx and net-rx triggers
      led: check for 'barebox, default-trigger' when 'linux, default-trigge=
r' is not found
      led: parse panic-indicator from device-tree
      commands: digest: don't be to restrictive with the length of verifica=
tion files
      mci: imx-esdhc: fix termination of statement
      commands: miitool: handle powerdown-flag

Lucas Stach (31):
      ARM: zynq: zedboard: split out PS7 init
      ARM: zynq: zedboard: allow lowlevel init to be called as second stage
      filetype: add Zynq image type
      ARM: zynq: add Zynq image bootm handler
      ARM: zii-imx8mq-dev: make eMMC update target the default
      clk: zynq: add QSPI reference clock
      spi: add Zynq QSPI controller driver
      ARM: zynq: add QSPI DT node
      ARM: zynq: zed: add QSPI flash support
      ARM64: entry: save/restore potentially clobbered registers
      ARM: zii-imx8mq-dev: add DT fixups
      ARM: zii-imx8mq-dev: fixup touchscreen and ethernet switch alias
      ARM: rdu-common: restart machine after fixing i210 device ID
      ARM: rdu2: don't reduce i2c frequency for eGalax touch
      ARM: rdu2: fixup touchscreen alias
      ARM: rdu1: add default environment
      ARM: nxp-imx8mq-evk: switch to SPDX license header
      ARM: nxp-imx8mq-evk: switch the PBL memcpy parameters to common varia=
bles
      ARM: nxp-imx8mq-evk: clean up nxp_imx8mq_evk_start
      ARM: nxp-imx8mq-evk: fix bootflow comment
      ARM: zynq: add Zynq specific lowlevel CPU init function
      ARM: zynq: zed: use zynq_cpu_lowlevel_init()
      esdhc-pbl: allow to skip starting i.MX8 image
      ARM: nxp-imx8mq-evk: fix second stage booting
      esdhc-pbl: remove now unused imx8_esdhc_load_piggy
      ARM: zynq: zed: partially revert zynq_cpu_lowlevel_init() chnages
      serial: cadence: move register definitions into header file
      serial: cadence: add lowlevel init and putc functions
      ARM: zynq: zedboard: add PBL console support
      ARM: qemu-virt64: convert to assembly entry
      ARM: imx6: properly check for IPU presence

Maik Otto (1):
      habv4: imx change signing area from full to the executed image

Michael Tretter (1):
      firmware: zynqmp-fpga: drop example bin format header

Oleksij Rempel (1):
      MIPS: don't overlay relocation data with BSS

Roland Hieber (1):
      of: demote most debug output to loglevel 8 (vdebug)

Ruslan V. Sushko (1):
      RDU2: add support to boot from SD card autonomously

Sascha Hauer (39):
      dts: update to v5.4
      dts: update to v5.5-rc1
      dts: update to v5.5-rc2
      ARM: rpi: Do not warn when firmware doesn't pass a dtb
      usb: Make timeout unit clear
      of: Add of_bus_n_xxx_cells()
      device: Introduce dma_offset
      of: Read dma_offset from device tree
      usb: Add usbroothubdes.h
      regulator: add function to get regulator by its name
      rpi: Enable USB Power domain during startup
      usb: Forward error code from usb_set_configuration
      usb: Add dwc2 host driver
      dts: update to v5.5-rc3
      ARM: bcm2835 mbox: Remove response valid check
      gpio: Add raspberrypi exp gpio driver
      ARM: bcm2835 mbox: use pr_* to print messages
      ARM: rpi_defconfig: Enable raspberry GPIO exp driver
      ARM: rpi mailbox: Use non interruptible timeout
      ARM: rpi_defconfig: Enable more features
      images: gitignore more files
      ARM: Layerscape: replace overcomplicated macros
      include/soc/fsl: remove unused function prototypes
      include/soc/fsl: Make struct ccsr_qman v3 specific
      net: fsl-fman: Do not put hardware in reset before Linux start
      ARM: Layerscape: setup icids for the IOMMU
      PCI: layerscape: rename variable
      PCI: layerscape: Fixup iommu-map properties
      dts: update to v5.5-rc5
      dts: update to v5.5-rc6
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/layerscape'
      Merge branch 'for-next/led'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/rpi'
      Merge branch 'for-next/zynq'
      Release v2020.02.0

Stefan Riedmueller (7):
      ARM: dts: imx6: pcaaxl3: Order nodes alphabetically
      ARM: dts: imx6: pcaaxl3: Update license and model description
      ARM: dts: imx6: pcaaxl3: Make use of the simpler name phycard
      ARM: dts: imx6: phycard: Make eeprom configurable
      ARM: dts: imx6: phycard: Switch to new partitions binding
      ARM: dts: imx6: phycard: Use gpio binding constants
      ARM: dts: imx6: phytec: Increase NAND barebox partition size

Ulrich =D6lmann (1):
      mtd: spi-nor: Add support for en25qh64

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
