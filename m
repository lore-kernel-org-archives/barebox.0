Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieHEU-0001bu-VV
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 11:29:45 +0000
Date: Mon, 9 Dec 2019 12:29:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191209112940.s5fv3afnsv3igkac@pengutronix.de>
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
Subject: v2019.12.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

I released barebox-2019.12.0. With this release the STM32MP1 support
continues to evolve, we gained MMC/SD support, PMIC support and ethernet
support. Another important thing is that we now have vi style bindings
for the internal editor, check it out! We also have some important ext4
patches in this release which fix reading of files containing sparse
areas, so if you use ext4, please upgrade. For the usual flow of patches
see below.

Have Fun
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (59):
      efi: Fix typo in description string
      efi: retire efi_compare_guid in favor of efi_guidcmp
      efi: use efi_guidcmp helper where appropriate
      x86: include: add asmlinkage 'storage class'
      efi: silence warning about un-prototyped assembly-called functions
      edit: replace %c for literal with literal directly
      edit: add vi alias with vi-style bindings
      serial: efi-stdio: replace globals with handles in priv struct
      serial: efi-stdio: Add simple_text_input_ex_protocol backend
      hwrng: dev-random: always use /dev/urandom
      commands: passwd: suggest sandbox for offline password generation
      partition: include partuuid string in debug string
      fs: devfs-core: do a case-insensitive compare of partuuids
      Documentation: efi: emphasize watchdog deactivation on ExitBootServices
      efi: efi-image: don't mask x86 interrupts on boot
      watchdog: efi: bump down priority below default
      watchdog: export priority as device parameter
      mfd: superio: use strerrorp helper instead of open-coding
      efi: populate boot source instance
      watchdog: export API to configure watchdogs by name
      commands: wd: support configuring watchdog by name
      watchdog: remove wrong uses of timeout_cur
      watchdog: rename timeout_curr to poller_timeout_curr internally
      watchdog: add timeout_cur parameter only when poller is enabled
      param: drop unused parameters in helpers
      ARM: stm32mp: select ARCH_HAS_RESET_CONTROLLER
      pinctrl: stm32: fix debug print of uninitialized variable
      pinctrl: demote dev_info on successful probes to dev_dbg
      pinctrl: stm32: parse pinctrl nodes without subnodes as well
      ARM: sm: document SMC/PSCI related options
      ARM: stm32mp: select ARM_SMCCC always
      nvmem: add read support for STM32MP1 bsec OTP
      ARM: stm32mp: implement SoC and boot source identification
      mci: stm32_sdmmc2: parse generic MCI oftree properties
      ARM: stm32mp: dk2: add barebox SD-Card update handler
      net: add Designware Ethernet QoS for STM32MP
      net: eqos: extend Designware Ethernet QoS for Tegra 186 support
      ARM: stm32mp: include new drivers in defconfig
      Documentation: boards: stm32mp: remove done TODOs
      Documentation: boards: stm32mp: document boot mode strap pins
      regulator: copy upstream struct regulator_desc documentation
      regulator: port Linux of_regulator_match
      regulator: import linear voltage range helpers
      mfd: stpmic1: use dev_get_regmap instead of priv member
      regulator: add driver for stpmic1-regulators
      ARM: dts: stm32mp157a-dk1: remove unnecessary sram node
      ARM: stm32mp: enable STPMIC1 MFD and cell drivers
      ARM: psci: translate PSCI error codes in smc command
      ARM: psci: use CONFIG_ARM_PSCI_DEBUG for smc command
      ARM: psci: wire in smc command help
      ARM: psci: implement PSCI client driver
      ARM: stm32mp: select ARM_USE_COMPRESSED_DTB for the whole arch
      ARM: dts: stm32mp: report psci v0.2 at least
      net: designware: eqos: stop DMA on halt
      net: designware: eqos: properly stop DMA on halt
      net: designware: eqos: enable clocks before mdio_register
      net: designware: eqos: fix NULL pointer use in dev_printf
      pstore: fix build by re-resolving botched merge conflict
      pstore: remove unused goto label

Clement Leger (1):
      mtd: spi-nor: fix wrong value for CR_QUAD_EN_SPAN

DU HUANPENG (1):
      readline: make ctrl-u to work like linux console

Du Huanpeng (1):
      MIPS: loongsonl: pull headers from linux kernel

Lucas Stach (5):
      OF: gpio: don't warn if ignored GPIO flag matches the behavior
      ARM: zii-common: setup Linux cmdline network config on RDU3
      fs: ubootvarfs: use correct format specifier for pointer diff
      image: add zynqimg to gitignore
      mfd: da9053: fix typo in variable name

Marco Felsch (4):
      parameter: strip leading and trailing whitespaces
      of: of_path: fix return in case of EPROBE_DEFER
      mfd: da9063: fix TWDSCALE debug message
      mfd: da9063: fix watchdog ping execution

Masahiro Yamada (1):
      kbuild: remove ar-option

Michael Tretter (1):
      firmware: zynqmp-fpga: print Xilinx bitstream header

Oleksij Rempel (7):
      MIPS: reloc: remove init of relocated bss
      MIPS: move r4k_cache_init in to cpu_probe function
      MIPS: reloc: init bss and cpu
      Documentation: add watchdog documentation
      doc: watchdog: add note about danger of autoping
      ARM: stm32mp: enable ARM_AMBA
      mci: add support for stm32mp sd/mmc controller

Robert Karszniewicz (5):
      cp: complete command help
      sandbox: add_image: output errno string on mmap failure
      libfile: copy_file: fix error handling
      sandbox: add_image: mmap block devices
      usb: storage: Increase retries for usb_stor_transport()

Roland Hieber (1):
      common: state: improve kconfig help text

Sascha Hauer (25):
      fs: ext4: Fix out of bounds memset
      fs: ext4: remove unnecessarily clever file read
      fs: ext4: Fix handling of sparse files
      fs: ext4: return NULL instead of 0
      dts: update to v5.4-rc4
      dts: update to v5.4-rc5
      dts: update to v5.4-rc6
      Merge branch 'for-next/dts'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/ext4'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/stm32'
      Merge branch 'for-next/watchdog'
      Merge branch 'for-next/zynqmp'
      ARM: mmu-early: On i.MX6 with HAB map ROM is mapped without XN
      ARM: am335x: Enable MMC2 clock
      ARM: am335x: Fix am335x_sdram_size() not running at link address
      usb: dwc3: Remove wrong error messages
      filetype: mvebu: Fix kwbimage v1 detection
      clk: i.MX6ul: Disable GPMI_IO clk before reparenting
      Revert "mci: core: make mci_register -EPROBE_DEFER sensitive"
      Release v2019.12.0

Steffen Trumtrar (6):
      ARM: socfpga: reset-manager: fix Wmissing-prototypes
      ARM: socfpga: clock-manager: fix Wmissing-prototypes
      ARM: socfpga: arria10-xload: fix Wmissing-prototypes
      net: designware: socfpga: fix phy setup for Arria10
      ARM: socfpga: cyclone5-system-manager.h: remove defines
      ARM: socfpga: defconfig: enable state_drv

Thomas Haemmerle (3):
      firmware-zynqmp: add macros for PMU and trustzone firmware versions
      firmware-zynqmp: extend driver with fpga relavant functions
      firmware: zynqmp-fpga: introduce driver to load bitstream to FPGA
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
