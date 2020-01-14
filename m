Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMrr-0005EK-9p
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 14:08:31 +0000
Date: Tue, 14 Jan 2020 15:08:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200114140824.xdcv2qc7dygi67zv@pengutronix.de>
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
Subject: barebox-2020.01.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have the first release in this decade ;)

From the amount of patches it seems most of the work for this release
has gone into the SDHCI driver. A good bunch of the different implementations
for the same functionalities has been merged to a common code base.

Other than that Layerscape now has PCIe support, there are some more
Layerscape improvements as well.

As usual, see below for more details about the changes in this release.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (42):
      ARM: i.MX6: Embedsky E9: remove inaccurate comment
      ARM: i.MX6: sabresd: remove inaccurate comment
      watchdog: always populate watchdog priority from device tree if possible
      watchdog: implement generic support for .running device parameter
      watchdog: imxwd: support .running device parameter on i.MX2+
      watchdog: f71808e: support .running device parameter
      ARM: dts: stm32mp: move alias to SoC device tree
      ARM: stm32mp157c-dk2: add optional DEBUG_LL print to entry point
      mfd: stpmic1: use register define from header
      watchdog: stm32_iwdg: return -ENOSYS on attempt to disable
      i2c: stm32: use device_reset_us helper instead of open-coding
      Documentation: boards: stm32mp: document boot error LED
      ARM: stm32mp: add helper for querying ram size
      ARM: stm32mp: add basic DDR controller driver
      ARM: stm32mp: add stm32mp_cpu_lowlevel_init with stack set up
      ARM: stm32mp: dk2: don't hard-code memory size
      nvmem: bsec: fix typo in function name (s/st32/stm32/)
      ARM: psci: factor out smc command into commands/
      ARM: psci: properly wire in command help
      commands: psci: make locally-used function static
      commands: smc: verify PSCI_POWER_ON with interprocessor handshake
      commands: smc: make command usable when ARM_PSCI is undefined
      mci: dove: fix dereference of nullable pointer
      ARM: cpu: dtb: remove unused declaration
      remoteproc: register a device for new remoteproc instances
      remoteproc: add support for starting st,stm32mp1-m4
      watchdog: stm32_iwdg: explicitly set .running to UNSUPPORTED
      scripts: imx: report file where error occurred
      net: designware: eqos: remove done TODO
      param: add dev_add_param_tristate(_ro) helpers
      watchdog: core: use new dev_add_param_tristate helper for .running param
      images: i.MX: rearrange image rules in preparation for boilerplate removal
      efi: add and use new efi_device_has_guid helper
      driver: add missing parentheses around macro argument
      efi: fix off-by-one in mem_malloc_init(..., end)
      x86: efi: lds: don't discard any relocation sections
      PCI: add driver_data member to struct pci_device_id
      PCI: copy over some Linux PCI helpers
      efi: turn set of defines into enumerations
      serial: add support for PCI NS16550 UARTs
      bus: efi: add basic ACPI bus infrastructure
      misc: add ACPI test driver

Andrey Smirnov (13):
      ARM: VFxxx: Display UID information on boot
      mci: imx-esdhc: Drop unnecessary type conversion
      mci: imx-esdhc: Drop unused type definition
      mci: imx-esdhc: Drop extra helper varaible
      mci: imx-esdhc-pbl: Don't setup DMA registers
      mci: imx-esdhc-pbl: Share initialization code
      mci: imx-esdhc-pbl: Drop 'wrap_wml' flag
      mci: imx-esdhc-pbl: Share IO accessors with regular driver
      mci: imx-esdhc-pbl: Use sdhci_transfer_data()
      mci: imx-esdhc-pbl: Use sdhci_set_cmd_xfer_mode()
      mci: imx-esdhc: Share code for esdhc_(setup|do)_data operations
      mci: imx-esdhc: Introduce esdhc_poll()
      mci: imx-esdhc: Share code for esdhc_send_cmd()

Antony Pavlov (1):
      i2c: gpio: use of_get_named_gpio() instead of of_get_named_gpio_flags()

Clement Leger (1):
      mtd: spi-nor: Add support for is25lp01g

Du Huanpeng (1):
      MIPS: Makefile: minor codingstyle fix

Florian Klink (4):
      scripts: use #!/usr/bin/env bash shebang instead of #!/bin/bash
      dts/scripts: use #!/usr/bin/env bash shebang instead of #!/bin/bash
      docs: use #!/usr/bin/env bash shebang instead of #!/bin/bash
      docs: use #!/usr/bin/env python shebang instead of #!/usr/bin/python

Lucas Stach (58):
      ARM: zynq: zedboard: enable MACB driver in defconfig
      ARM: zynq: add trivial image build mechanism
      ARM: zynq: use getopt in zynq_mkimage
      ARM: zynq: move header generation to zynq_mkimage
      ARM: zynq: add size check in zynq_mkimage
      ARM: zynq: zedboard: provide DTB
      net: macb: handle more clocks
      net: macb: add Zynq compatible
      ARM: zynq: move clock controller driver to drivers/clk
      clk: zynq: use base address of clock controller
      clk: zynq: improve PLL enable handling
      clk: zynq: fix up address from DT
      clk: zynq: partially sync with Linux
      ARM: zynq: switch to DT based probing
      clk: zynq: remove clkdevs
      ARM: zynq: switch to multi-image build
      bootsource: add JTAG bootsource
      ARM: zynq: add bootsource detection
      ARM: start: check for machine type last
      ratp: add more build dependencies
      ARM: move into ARM32 specific optee kernel start into lib32 dir
      ARM: implement CONFIG_PBL_BREAK for ARM64
      lib: zstd: declare locally used functions as static
      common: provide stubs for ctrlc_* functions
      commands: keystore: use correct type for s_len
      gui: picopng: declare locally used functions as static
      reset_source: add stub for reset_source_set_device
      spi: fix symbol export for spi_register_controller
      mfd: superio: add missing semicolon after EXPORT_SYMBOL
      ARM: psci: declare locally used functions as static
      ARM: mxs: bcb: declare locally used functions as static
      usb: dwc3: depend on OFDEVICE
      mtd: nand: don't call BBT functions if BBT support isn't built
      mfd: da9063: don't try to register gpiochip when GPIOLIB isn't built
      mci: MCI_IMX_ESDHC_PBL has no dependency on MCI
      i2c: always walk down into i2c/busses Makefile
      usb: usb251xb: depend on OFDEVICE
      pstore: don't try to grab non-existent logbuf
      firmware: zynqmp-fpga: fix comparison between pointer and integer
      pstore: ramoops: use correct format specifier for size_t variables
      clocksource: ARMv8 timer can only be built on ARMv8
      input: select POLLER
      ARM: layerscape: add missing selects for TQMLS1046A
      ARM: PBL break is not available on ARMv4
      ARM: ARM_SMCCC is only available on >= ARMv7
      ARM: layerscape: select OFTREE and OFDEVICE
      usb: dwc3: dual role mode needs gadget support
      pinctrl: at91pio4: move to correct location in Kconfig
      ARM: layerscape: ppa: use sync_for_execution instead of a manual cache flush
      ubootvarfs: depend on OFTREE
      ARM: davinci: virt2real: select OFTREE and OFDEVICE
      ARM: omap: pfc200: NAND support requires CONFIG_OMAP_GPMC
      net: designware-eqos: depend on COMMON_CLK
      ARM: mvebu: correct DTB rule for MARVELL_ARMADA_XP_DB
      nvme: correct symbol export name for nvme_submit_sync_cmd
      pinctrl: tegra: mark drvdata as maybe unused
      pinctrl: at91pio4 depends on OFDEVICE
      lds: align RO_DATA_SECTION members

Maik Otto (5):
      i.mx6: signed boot: add habv4-imx6-gencsf.h to the flash header of the PHYTEC boards
      imx6: added fit image signature to the devicetree for PHYTEC boards
      Kconfig: add selection for creation of signed/encrypted HABV4 images
      Makefile.imx: add build_imx_habv4img for creation of signed/encrypted images
      Makefile.imx: change image creation to build_imx_habv4img for i.MX6

Michael Tretter (2):
      ARM: zynqmp: defconfig: fix FIRMWARE_ZYNQMP_FPGA
      ARM: zynqmp: defconfig: reenable DRIVER_NET_MACB

Oleksij Rempel (1):
      MIPS: ath79: art: fix typo in SPDX-License-Identifier

Roland Hieber (2):
      usb: gadget: fastboot: fix typo
      README: add section about contributing to barebox

Sascha Hauer (77):
      ARM: Compile with -fPIE
      dts: update to v5.4-rc7
      net: fsl-fman: reset device before leaving
      net: fsl-fman: Store index for txbd
      net: fsl-fman: move status read into loop
      net: fsl-fman: Store index for rxbd
      net: fsl-fman: simplify setting next offset
      net: fsl-fman: do not leave not transmitted DMA buffers mapped
      mci: Add sdhci helper
      mci: sdhci: Add missing command type defines
      mci: imx-esdhc: use sdhci helpers
      mci: bcm2835: use sdhci helpers
      mci: tegra: use sdhci helpers
      mci: dove: use sdhci helpers
      mci: imx-esdhc: Use 16bit register definitions
      mci: mci-bcm2835: Use 16bit register definitions
      mci: tegra: Use 16bit register definitions
      mci: imx-esdhc-pbl: Use 16bit register definitions
      mci: sdhci: remove 32bit register defines
      mci: sdhci: remove duplicate transfer mode register defines
      mci: sdhci: remove duplicate register defines for interrupt bits
      mci: sdhci: remove duplicate register defines for prsstat bits
      mci: dove: Use sdhci_set_cmd_xfer_mode()
      mci: imx-esdhc: Use sdhci_set_cmd_xfer_mode()
      mci: bcm2835: Use sdhci_set_cmd_xfer_mode()
      mci: tegra: Use sdhci_set_cmd_xfer_mode()
      mci: imx-esdhci: Use generic PIO transfer function
      mci: mci-bcm2835: Use generic PIO transfer function
      usb: dwc3: remove unnecessary warning
      usb: Add function to register otg dev
      usb: dwc3: register otg device
      usb: i.MX: Use usb_register_otg_device()
      usb: musb: use usb_register_otg_device()
      of: Add of_property_read_string_array()
      gpio: Introduce GPIO names
      of/gpio: Support gpio-line-names property
      ARM: Layerscape: TQMLS1046a: Add gpio-line-names
      PCI: dwc: Don't hard-code DBI/ATU offset
      PCI: dwc: Make use of IS_ALIGNED()
      PCI: dwc: Add dw_pcie_disable_atu()
      PCI: dwc: Make use of BIT() in constant definitions
      PCI: dwc: Enable iATU unroll for endpoint too
      PCI: dwc: Fix ATU identification for designware version >= 4.80
      PCI: dwc: imx6: Share PHY debug register definitions
      PCI: dwc: Cleanup DBI,ATU read and write APIs
      PCI: dwc: rename readl/writel_dbi ops to read/write_dbi
      PCI: dwc: Sync register definitions with Linux-5.4
      PCI: dwc: Return directly when num-lanes is not found
      PCI: Add layerscape PCIe driver
      ARM Layerscape: ls1046ardb: Fix SD partitions
      ARM Layerscape: ls1046ardb: Add barebox update handler
      ARM Layerscape: ls1046ardb: Fix SPI NOR flash compatibles
      ARM Layerscape: ls1046ardb: Enable PCIe support
      ARM Layerscape: ls1046ardb: Fix EEPROM nodes
      ARM64: Switch to 4 level page tables
      ARM Layerscape: ls1046ardb: read nxid eeprom
      ARM: Layerscape: TQMLS1046a: Fix partition name
      net: fsl-fman: Disable unused network interfaces
      ARM: Layerscape: PPA: Disable CAAM JR used by secure firmware
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/fsl-fman'
      Merge branch 'for-next/gpio'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/layerscape'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/pci'
      Merge branch 'for-next/randfixes'
      Merge branch 'for-next/sdhci'
      Merge branch 'for-next/shebang'
      Merge branch 'for-next/stm32'
      Merge branch 'for-next/usb'
      Merge branch 'for-next/watchdog'
      Merge branch 'for-next/zynq'
      ARM: i.MX: Fix PBL size test
      usb: ehci: Do not use memset on dma coherent memory
      Release v2020.01.0

Stefan Riedmueller (3):
      ARM: dts: imx6: phycore: Make use of upstream devicetree
      ARM: dts: imx6: phycore: Update License, copyright and model description
      ARM: boards: phytec-som-imx6: Replace spi by spi-nor in bootsource script

Thomas Haemmerle (1):
      mci: add Arasan SDHCI controller driver

 Documentation/boards/stm32mp.rst                   |   10 +
 Documentation/gen_commands.py                      |    2 +-
 Documentation/user/usb.rst                         |    2 +-
 MAKEALL                                            |    2 +-
 Makefile                                           |    4 +-
 README                                             |   15 +
 arch/arm/Kconfig                                   |    6 +
 arch/arm/Makefile                                  |    3 +
 arch/arm/boards/avnet-zedboard/Makefile            |    1 -
 arch/arm/boards/avnet-zedboard/board.c             |   24 -
 arch/arm/boards/avnet-zedboard/flash_header.c      |   62 -
 arch/arm/boards/avnet-zedboard/lowlevel.c          |   10 +-
 arch/arm/boards/avnet-zedboard/zedboard.zynqcfg    |   24 +
 arch/arm/boards/embedsky-e9/board.c                |    5 -
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    4 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    4 +-
 arch/arm/boards/freescale-mx6-sabresd/board.c      |    5 -
 arch/arm/boards/ls1046ardb/board.c                 |  122 +
 arch/arm/boards/nvidia-beaver/Makefile             |    4 +-
 arch/arm/boards/nvidia-jetson-tk1/Makefile         |    4 +-
 .../defaultenv-physom-imx6-phycore/init/bootsource |    2 +-
 .../defaultenv-physom-imx6/init/bootsource         |    2 +-
 .../flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg  |    1 +
 .../flash-header-phytec-pcaaxl3-1gib.imxcfg        |    1 +
 .../flash-header-phytec-pcaaxl3-2gib.imxcfg        |    1 +
 .../flash-header-phytec-pcl063-256mb.imxcfg        |    1 +
 .../flash-header-phytec-pcl063-512mb.imxcfg        |    1 +
 .../flash-header-phytec-pcm058-1gib.imxcfg         |    1 +
 .../flash-header-phytec-pcm058-2gib.imxcfg         |    1 +
 .../flash-header-phytec-pcm058dl-1gib-32bit.imxcfg |    1 +
 .../flash-header-phytec-pcm058dl-1gib.imxcfg       |    1 +
 .../flash-header-phytec-pcm058dl-256mb.imxcfg      |    2 +
 .../flash-header-phytec-pcm058qp-1gib.imxcfg       |    1 +
 .../flash-header-phytec-pfla02-1gib-1bank.imxcfg   |    1 +
 .../flash-header-phytec-pfla02-1gib.imxcfg         |    1 +
 .../flash-header-phytec-pfla02-2gib.imxcfg         |    1 +
 .../flash-header-phytec-pfla02-4gib.imxcfg         |    1 +
 .../flash-header-phytec-pfla02-512mb-1bank.imxcfg  |    1 +
 .../flash-header-phytec-pfla02dl-1gib-1bank.imxcfg |    1 +
 .../flash-header-phytec-pfla02dl-1gib.imxcfg       |    1 +
 .../flash-header-phytec-pfla02s-128mb-1bank.imxcfg |    1 +
 .../flash-header-phytec-pfla02s-256mb-1bank.imxcfg |    1 +
 .../flash-header-phytec-pfla02s-512mb-1bank.imxcfg |    1 +
 arch/arm/boards/stm32mp157c-dk2/board.c            |   11 -
 arch/arm/boards/stm32mp157c-dk2/lowlevel.c         |   17 +-
 arch/arm/boards/toradex-colibri-t20/Makefile       |    6 +-
 arch/arm/boards/toshiba-ac100/Makefile             |    4 +-
 arch/arm/boards/wago-pfc-am35xx/board-mlo.c        |    4 +-
 arch/arm/boards/zii-imx51-rdu1/Makefile            |    1 -
 arch/arm/boards/zii-imx7d-dev/Makefile             |    1 -
 arch/arm/boards/zii-vf610-dev/Makefile             |    1 -
 .../configs/{zedboard_defconfig => zynq_defconfig} |    4 +-
 arch/arm/configs/zynqmp_defconfig                  |    4 +-
 arch/arm/cpu/Makefile                              |    3 +-
 arch/arm/cpu/common.c                              |    4 +
 arch/arm/cpu/dtb.c                                 |    2 -
 arch/arm/cpu/mmu-early_64.c                        |    6 +-
 arch/arm/cpu/mmu_64.c                              |    7 +-
 arch/arm/cpu/mmu_64.h                              |    9 +-
 arch/arm/cpu/psci.c                                |  104 -
 arch/arm/cpu/start.c                               |   22 +-
 arch/arm/dts/Makefile                              |    4 +-
 arch/arm/dts/fsl-ls1046a-rdb.dts                   |   46 +-
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts          |   50 +-
 arch/arm/dts/imx6dl-phytec-pbab01.dts              |    4 +-
 arch/arm/dts/imx6dl-phytec-phyboard-subra.dts      |    3 +
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts    |   37 +-
 arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts |   24 +-
 arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts |   18 +-
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts    |   34 +-
 arch/arm/dts/imx6q-phytec-pbaa03.dts               |    3 +
 arch/arm/dts/imx6q-phytec-pbab01.dts               |    3 +
 arch/arm/dts/imx6q-phytec-phyboard-alcor.dts       |    3 +
 arch/arm/dts/imx6q-phytec-phyboard-subra.dts       |    3 +
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts     |   40 +-
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts     |   40 +-
 arch/arm/dts/imx6qdl-phytec-mira.dtsi              |   44 +
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi       |  297 +-
 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts    |   38 +-
 arch/arm/dts/imx6s-phytec-pbab01.dts               |    4 +-
 arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts    |    4 +-
 arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts   |    4 +-
 .../arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts |    4 +-
 arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts   |    4 +-
 arch/arm/dts/stm32mp157a-dk1.dtsi                  |    4 -
 arch/arm/dts/stm32mp157c.dtsi                      |    8 +
 arch/arm/dts/zynq-zed.dts                          |    7 +
 arch/arm/include/asm/barebox-arm-head.h            |    4 +
 arch/arm/include/asm/pgtable64.h                   |    5 +-
 arch/arm/lib32/Makefile                            |    1 +
 arch/arm/{cpu => lib32}/start-kernel-optee.S       |    0
 arch/arm/mach-at91/Kconfig                         |    1 +
 arch/arm/mach-davinci/Kconfig                      |    2 +
 arch/arm/mach-imx/Kconfig                          |   22 +
 arch/arm/mach-imx/include/mach/vf610.h             |    2 +
 arch/arm/mach-imx/vf610.c                          |    8 +
 arch/arm/mach-layerscape/Kconfig                   |    3 +
 arch/arm/mach-layerscape/ppa.c                     |   23 +-
 arch/arm/mach-mxs/bcb.c                            |    2 +-
 arch/arm/mach-omap/Makefile                        |    2 -
 arch/arm/mach-stm32mp/Makefile                     |    1 +
 arch/arm/mach-stm32mp/ddrctrl.c                    |  155 +
 arch/arm/mach-stm32mp/include/mach/ddr_regs.h      |  368 ++
 arch/arm/mach-stm32mp/include/mach/entry.h         |   19 +
 arch/arm/mach-stm32mp/include/mach/stm32.h         |    2 +
 arch/arm/mach-tegra/Makefile                       |   12 +-
 arch/arm/mach-zynq/Kconfig                         |   21 +-
 arch/arm/mach-zynq/Makefile                        |    2 +-
 arch/arm/mach-zynq/devices.c                       |   13 -
 arch/arm/mach-zynq/include/mach/barebox.lds.h      |    8 -
 arch/arm/mach-zynq/include/mach/devices.h          |   20 -
 .../arm/mach-zynq/include/mach/zynq-flash-header.h |   39 +-
 .../mach-zynq/include/mach/zynq7000-header-regs.h  |   49 +
 arch/arm/mach-zynq/include/mach/zynq7000-regs.h    |    1 +
 arch/arm/mach-zynq/zynq.c                          |   30 +-
 arch/mips/Makefile                                 |    4 +-
 arch/mips/mach-ath79/art.c                         |    2 +-
 arch/x86/mach-efi/elf_x86_64_efi.lds.S             |    7 +-
 commands/Kconfig                                   |   15 +
 commands/Makefile                                  |    1 +
 commands/gpio.c                                    |    4 +-
 commands/keystore.c                                |    2 +-
 commands/smc.c                                     |  162 +
 common/Kconfig                                     |    2 +-
 common/bootsource.c                                |    1 +
 common/console_simple.c                            |   11 -
 common/efi/efi.c                                   |    2 +-
 common/ratp/Kconfig                                |    1 +
 drivers/Makefile                                   |    4 +-
 drivers/block/efi-block-io.c                       |   11 +-
 drivers/bus/Kconfig                                |    8 +
 drivers/bus/Makefile                               |    1 +
 drivers/bus/acpi.c                                 |  255 +
 drivers/clk/Makefile                               |    1 +
 drivers/clk/zynq/Makefile                          |    1 +
 .../clk-zynq7000.c => drivers/clk/zynq/clkc.c      |  149 +-
 drivers/clocksource/Kconfig                        |    2 +-
 drivers/efi/efi-device.c                           |   11 +-
 drivers/firmware/zynqmp-fpga.c                     |    2 +-
 drivers/gpio/gpiolib.c                             |   47 +-
 drivers/i2c/Makefile                               |    3 +-
 drivers/i2c/busses/i2c-gpio.c                      |    4 +-
 drivers/i2c/busses/i2c-stm32.c                     |   11 +-
 drivers/input/Kconfig                              |    1 +
 drivers/mci/Kconfig                                |   20 +-
 drivers/mci/Makefile                               |    6 +-
 drivers/mci/arasan-sdhci.c                         |  423 ++
 drivers/mci/dove-sdhci.c                           |  159 +-
 drivers/mci/imx-esdhc-common.c                     |  275 +
 drivers/mci/imx-esdhc-pbl.c                        |  333 +-
 drivers/mci/imx-esdhc.c                            |  441 +-
 drivers/mci/imx-esdhc.h                            |  108 +-
 drivers/mci/mci-bcm2835.c                          |  227 +-
 drivers/mci/sdhci.c                                |  140 +
 drivers/mci/sdhci.h                                |  127 +-
 drivers/mci/tegra-sdmmc.c                          |  159 +-
 drivers/mfd/da9053.c                               |    1 -
 drivers/mfd/da9063.c                               |   17 +-
 drivers/mfd/stpmic1.c                              |    3 +-
 drivers/mfd/superio.c                              |    4 +-
 drivers/misc/Kconfig                               |    7 +
 drivers/misc/Makefile                              |    1 +
 drivers/misc/acpi-test.c                           |   61 +
 drivers/mtd/nand/nand_base.c                       |    4 +-
 drivers/mtd/spi-nor/spi-nor.c                      |    2 +
 drivers/net/Kconfig                                |    3 +-
 drivers/net/designware_stm32.c                     |    1 -
 drivers/net/fsl-fman.c                             |  128 +-
 drivers/net/macb.c                                 |   25 +-
 drivers/nvme/host/core.c                           |    2 +-
 drivers/nvmem/bsec.c                               |    4 +-
 drivers/of/base.c                                  |  122 +-
 drivers/pci/Kconfig                                |    7 +
 drivers/pci/Makefile                               |    1 +
 drivers/pci/bus.c                                  |   26 +
 drivers/pci/pci-imx6.c                             |   11 +-
 drivers/pci/pci-layerscape.c                       |  484 ++
 drivers/pci/pcie-designware-host.c                 |   16 -
 drivers/pci/pcie-designware.c                      |  108 +-
 drivers/pci/pcie-designware.h                      |  152 +-
 drivers/pinctrl/Kconfig                            |   20 +-
 drivers/pinctrl/pinctrl-tegra30.c                  |    4 +-
 drivers/remoteproc/Kconfig                         |   10 +
 drivers/remoteproc/Makefile                        |    1 +
 drivers/remoteproc/remoteproc_core.c               |   29 +-
 drivers/remoteproc/stm32_rproc.c                   |  199 +
 drivers/serial/Kconfig                             |    8 +
 drivers/serial/Makefile                            |    1 +
 drivers/serial/serial_ns16550_pci.c                | 5311 ++++++++++++++++++++
 drivers/spi/spi.c                                  |    2 +-
 drivers/usb/dwc3/Kconfig                           |    3 +
 drivers/usb/dwc3/core.c                            |   23 +-
 drivers/usb/dwc3/core.h                            |    1 -
 drivers/usb/gadget/f_fastboot.c                    |    2 +-
 drivers/usb/host/ehci-hcd.c                        |   15 +-
 drivers/usb/imx/Kconfig                            |    1 +
 drivers/usb/imx/chipidea-imx.c                     |   85 +-
 drivers/usb/misc/Kconfig                           |    1 +
 drivers/usb/musb/Kconfig                           |    1 +
 drivers/usb/musb/musb_dsps.c                       |   44 +-
 drivers/usb/otg/Kconfig                            |    4 +
 drivers/usb/otg/Makefile                           |    2 +-
 drivers/usb/otg/otgdev.c                           |   69 +
 drivers/watchdog/f71808e_wdt.c                     |    7 +-
 drivers/watchdog/imxwd.c                           |   14 +
 drivers/watchdog/stm32_iwdg.c                      |    3 +-
 drivers/watchdog/stpmic1_wdt.c                     |   28 +-
 drivers/watchdog/wd_core.c                         |   48 +-
 dts/scripts/cronjob                                |    2 +-
 dts/scripts/index-filter.sh                        |    2 +-
 dts/scripts/merge-new-release.sh                   |    2 +-
 dts/src/arm/imx6-logicpd-baseboard.dtsi            |    4 +
 dts/src/arm/imx6qdl-sabreauto.dtsi                 |    8 +
 dts/src/arm/stm32mp157c-ev1.dts                    |   13 +-
 dts/src/arm/stm32mp157c.dtsi                       |    4 +-
 dts/src/arm/sun8i-a83t-tbs-a711.dts                |    1 +
 dts/src/arm64/freescale/fsl-ls1028a-qds.dts        |    2 +-
 dts/src/arm64/freescale/imx8mm.dtsi                |    6 +-
 dts/src/arm64/freescale/imx8mn.dtsi                |    6 +-
 dts/src/arm64/freescale/imx8mq-zii-ultra.dtsi      |    2 +-
 fs/pstore/platform.c                               |    3 +
 fs/pstore/ram.c                                    |    8 +-
 images/Makefile                                    |    3 +-
 images/Makefile.imx                                |  591 +--
 images/Makefile.zynq                               |   23 +
 include/acpi.h                                     |   73 +
 include/asm-generic/barebox.lds.h                  |   14 +-
 include/bootsource.h                               |    1 +
 include/common.h                                   |    5 +
 include/console.h                                  |    5 +
 include/driver.h                                   |    4 +-
 include/efi.h                                      |   42 +-
 include/efi/efi-device.h                           |   12 +
 include/gpio.h                                     |    6 +
 include/linux/mod_devicetable.h                    |    1 +
 include/linux/pci.h                                |   34 +
 include/linux/remoteproc.h                         |    1 -
 include/of.h                                       |   83 +-
 include/param.h                                    |   24 +
 include/reset_source.h                             |    5 +
 include/soc/fsl/fsl_fman.h                         |    3 +
 include/usb/chipidea-imx.h                         |    8 +-
 include/usb/usb.h                                  |    3 +
 include/watchdog.h                                 |   27 +-
 lib/Kconfig                                        |    5 +
 lib/gui/picopng.c                                  |   60 +-
 lib/parameter.c                                    |   22 +
 lib/zstd/decompress.c                              |   10 +-
 scripts/Makefile                                   |    1 +
 scripts/canon-a1100-image                          |    4 +-
 scripts/check_size                                 |    2 +-
 scripts/dfuboot.sh                                 |    2 +-
 scripts/extract_symbol_offset                      |    2 +-
 scripts/gen-dtb-s                                  |    2 +-
 scripts/genenv                                     |    2 +-
 scripts/imx/imx.c                                  |   23 +-
 scripts/socfpga_get_sequencer                      |    2 +-
 scripts/socfpga_import_preloader                   |    2 +-
 scripts/socfpga_xml_to_config.sh                   |    2 +-
 scripts/zynq_mkimage.c                             |  274 +-
 260 files changed, 10839 insertions(+), 2970 deletions(-)
 delete mode 100644 arch/arm/boards/avnet-zedboard/flash_header.c
 create mode 100644 arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
 rename arch/arm/configs/{zedboard_defconfig => zynq_defconfig} (92%)
 create mode 100644 arch/arm/dts/imx6qdl-phytec-mira.dtsi
 create mode 100644 arch/arm/dts/zynq-zed.dts
 rename arch/arm/{cpu => lib32}/start-kernel-optee.S (100%)
 create mode 100644 arch/arm/mach-stm32mp/ddrctrl.c
 create mode 100644 arch/arm/mach-stm32mp/include/mach/ddr_regs.h
 create mode 100644 arch/arm/mach-stm32mp/include/mach/entry.h
 delete mode 100644 arch/arm/mach-zynq/devices.c
 delete mode 100644 arch/arm/mach-zynq/include/mach/barebox.lds.h
 delete mode 100644 arch/arm/mach-zynq/include/mach/devices.h
 create mode 100644 arch/arm/mach-zynq/include/mach/zynq7000-header-regs.h
 create mode 100644 commands/smc.c
 create mode 100644 drivers/bus/acpi.c
 create mode 100644 drivers/clk/zynq/Makefile
 rename arch/arm/mach-zynq/clk-zynq7000.c => drivers/clk/zynq/clkc.c (65%)
 create mode 100644 drivers/mci/arasan-sdhci.c
 create mode 100644 drivers/mci/imx-esdhc-common.c
 create mode 100644 drivers/mci/sdhci.c
 create mode 100644 drivers/misc/acpi-test.c
 create mode 100644 drivers/pci/pci-layerscape.c
 create mode 100644 drivers/remoteproc/stm32_rproc.c
 create mode 100644 drivers/serial/serial_ns16550_pci.c
 create mode 100644 drivers/usb/otg/otgdev.c
 create mode 100644 images/Makefile.zynq
 create mode 100644 include/acpi.h
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
