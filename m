Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fp8PX-0003VG-70
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 08:41:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1fp8PL-0005Pz-9W
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 10:40:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1fp8PL-0000R5-0K
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 10:40:59 +0200
Date: Mon, 13 Aug 2018 10:40:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180813084058.it547ecrp5typswc@pengutronix.de>
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
Subject: v2018.08.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

barebox-2018.08.0 is out. With this release we no longer support
freeing the internal device tree (oftree -f), which has often led to use of
freed memory. Another change worth noting is that the MIPS port now
supports booting ELF Linux images. Other than that we have the usual
flow of patches, but see below.

Sascha

----------------------------------------------------------------
Alexander Kurz (1):
      i.MX: iomuxv3: restore NO_PAD_CTRL semantic

Andrey Smirnov (60):
      ARM: i.MX: bbu: Alias identical functions
      ARM: i.MX: bbu: Replace magic number with a constant
      ARM: i.MX: bbu: Share MMC code between i.MX51 and 53
      ARM: i.MX: bbu: Use pr_* functions for output
      ARM: i.MX: bbu: Add support for MMC on VFxxx
      ARM: i.MX: zii-vf610-spu3: Add support for BBU on eMMC
      VFxxx: Remove stale code from DCD files
      VFxxx: Add common header for DDR IOMUX DCD configuration
      VFxxx: Add common DDR PHY DCD header
      VFxxx: Add common header for DDR clock setting DCD
      VFxxx: Add common DCD header for common DDR configuration
      VFxxx: Reconcile shared DDR DCD configuration with U-Boot
      VFxxx: Reconcile shared DDR DCD with memory datasheet
      VFxxx: zii-vf610-dev: Drop most custom DDRMC DCD code
      VFxxx: Initialize IOMUXC_DUMMY_DDRBYTE1/2 in default DDR DCD
      VFxxx: Reconcile shared DDR IOMUX DCD with schematic
      VFxxx: DCD: Remove CR151 initialization
      VFxxx: DCD: Drop initialization of CR139 - CR148
      VFxxx: DCD: Remove CR97, CR98 and CR99
      VFxxx: DCD: Remove read leveling and gate training delays
      Port <linux/iopoll.h> from U-Boot
      clock: Use udelay() to implement mdelay()
      ARM: i.MX8: Add DDRC PHY support code
      ARM: Specify HAVE_PBL_IMAGE for CPU_64
      scripts: imx-image: Use a loop to create multiple header copies
      scripts: imx-image: Share the code to write barebox header
      ARM: Introduce imx_v8_defconfig
      ARM: psci: Remove unused code in psci_entry()
      ARM: psci: Make use of set_ttbr() in armv7_secure_monitor_install()
      ARM: mmu: psci: Make use of get_ttbr()
      console: Fix console_get_first_active()
      ARM: i.MX: babbage: Make use of imx_setup_pad()
      ARM: i.MX: rdu2: Make use of imx_setup_pad()
      nvmem: Port RAVE SP EEPROM driver from Linux kernel
      video: Port RAVE SP backlight driver from Linux kernel
      fs: devfs-core: Make use of devpath_to_name()
      commands: mount: Make use of devpath_to_name()
      commands: mmc_extcsd: Make use of devpath_to_name()
      drivers: of: Make use of devpath_to_name()
      ARM: dts: rdu2: Remove obsolete 'pic' node in uart4
      ARM: dts: rdu2: Add nodes for RAVE SP EEPROM
      watchdog: rave-sp-wdt: Remove bogus leftover code
      watchdog: rave-sp-wdt: Explicitly access EEPROM for bootsource
      ARM: dts: rdu2: Specify "boot-source" NVMEM cell
      ARM: dts: rdu2: Add node for backlight device
      nvmem: Introduce nvmem_cell_get_and_read()
      ARM: rdu2: Fetch MAC address info from RAVE SP EEPROM
      mtd: mtd_dataflash: Don't print bogus command values for READs
      common: clock: Sample time before poller_call()
      ARM: babbage: Make PMIC initialization shareable
      ARM: i.MX: Add support for ZII RDU1 board
      ARM: dts: rdu1: Add nodes for RAVE SP EEPROM
      ARM: dts: rdu1: Specify "boot-source" NVMEM cell
      ARM: dts: rdu1: Add node for backlight device
      nvmem: rave-sp-eeprom: Remove VLA usage
      nvmem: rave-sp-eeprom: Add support for "zii,eeprom-name"
      ARM: dts: rdu1: Make use of "zii,eeprom-name"
      ARM: dts: rdu2: Make use of "zii,eeprom-name"
      ARM: Mark SP as being clobbered in arm_setup_stack()
      serial: lpuart: Avoid division by zero when requested baudrate is

Antony Pavlov (6):
      filetype: add ELF type
      MIPS: dts: drop skeleton.dtsi
      MIPS: dts: fix dtc unit_address_vs_reg warning
      lib: Add shared copies of some GCC library routines
      MIPS: Use generic GCC library routines from lib/
      MIPS: don't include generated header files into MIPS asm files

Christoph Fritz (2):
      ARM: dts: advantech-rom-7421: add hog pinctrl node
      mmc_extcsd command: Add cmd option to set bkops-enable

Heinrich Toews (1):
      nand-bb: mtd_del_bb: fix missing pointer reset

Lucas Stach (3):
      video: backlight: add slew time parameter
      scripts: imx-image: fix build with OpenSSL 1.1.x
      ARM: mmu: fix cache flushing when replacing a section with a PTE

Nikita Yushchenko (1):
      usb: imx: implement support for limiting host to full speed

Oleksij Rempel (8):
      ARM: i.MX6SX SDB: drop deprecated DT overwrites
      MIPS: ath79: provide driver for Atheros ART partition
      MIPS: dts: tl_wdr4300: add Atheros ART partition
      MIPS: dts: dpt-module: add Atheros ART partition
      add basic ELF parser
      MIPS: bootm: add ELF handler
      arm: arria10: enable errata 794072 and 845369
      net: designware: make sure DMA is disabled on kernel start.

Peter Mamonov (1):
      fs: fix memory access via /dev/mem for MIPS64

Roland Hieber (10):
      doc: boards: imx: order table of contents alphabetically
      doc: boards: Amazon Kindle 4/5: apply some more formatting
      doc: boards: Amazon Kindle 3: apply more formatting
      doc: boards: element14 WaRP7: fix header level and nested list
      doc: boards: Garz+Fricke Vincell: fix header level, capitalization an=
d punctuation
      doc: boards: Ka-Ro TX6: use official spelling of Ka-Ro
      doc: boards: Phytec phyCORE-i.MX31: fix formatting, style
      doc: boards: Synertronixx SCB9328: use official uppercase spelling
      doc: boards: Wandboard: fix formatting and punctuation
      TODO: remove unused file

Sascha Hauer (49):
      ARM: bootm: Add option boot using ATAGs
      commands: oftree: kill oftree -f
      Documentation: explain new way to boot using ATAGs
      ARM: bootm: drop usage of data->oftree
      ppc: bootm: rename variables
      ppc: bootm: remove unnecessary parameter
      ppc: bootm: Drop usage of data->oftree
      bootm: Drop data->oftree
      bootm: Split bootm_load_devicetree into two functions
      ARM: i.MX: ocotp: Provide missing .format_mac for i.MX8MQ
      pbl: Provide C macro to test if we are compiling the pbl
      scripts: imx-image: Add i.MX8MQ support
      ARM: i.MX8: Add i.MX8mq EVK support
      ARM: dts: use stdout-path property
      console: Update description for global.linux.bootargs.console
      ARM: dts: remove @0 from environment nodes
      ARM: dts: imx6q-var-custom: remove some accidently pasted text
      dtc: Disable some warnings
      console: add missing newline conversion for putc_ll
      console: remove duplicate newline conversion
      console_simple: Remove duplicated newline conversion
      console_simple: Fix newline conversion
      console_simple: add newline conversion for putc_ll case
      dts: update to v4.18-rc1
      ARM: i.MX53: Make clock tree setup better readable
      bbu: reserve upper 16 bits for handler specific flags
      ARM: i.MX: bbu: remove handler specific flags variable
      ARM: i.MX: bbu: reimplement IMX_INTERNAL_FLAG_KEEP_DOSPART flag
      ARM: i.MX: bbu: support partitions starting at i.MX header
      clk: imx: remove unused clk_gate2_inverted
      mtd: gpmi-nand: Make sure clock is disabled during rate change
      Merge branch 'for-next/arm'
      Merge branch 'for-next/bootm'
      Merge branch 'for-next/console'
      Merge branch 'for-next/doc'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/dts-warnings'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx8mq'
      Merge branch 'for-next/kill-oftree-f'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/riscv'
      Merge branch 'for-next/vfxxx'
      cmdlinepart: Allow empty string
      ARM: MMU: fix arch_remap_range() across section boundaries
      ARM: i.MX: fix compilation with BBU disabled
      scripts/dtc: Reenable fdtget
      Release v2018.08.0

Uwe Kleine-K=F6nig (4):
      mvebu: create bbu handler for kwb images and use it on cubox
      scripts: gitignore +=3D omap3-usb-loader
      usb: gadget: allow to actually enable sparse fastboot support
      ARM: phytec-som-am335x: make autoenable actually usable
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
