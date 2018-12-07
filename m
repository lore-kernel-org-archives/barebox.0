Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAeN-000186-KG
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:34:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1gVAeC-0006y2-2v
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 08:34:04 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1gVAeB-0002Fz-QD
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 08:34:03 +0100
Date: Fri, 7 Dec 2018 08:34:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181207073403.c5d5uc6wk2lkqnds@pengutronix.de>
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
Subject: v2018.12.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

I just released v2018.12.0.

Most notable this time is that we finally have Raspberry Pi 3 support.
It took a while to get the patches into shape, but now they are there.
Other than that we have several AT91 patches which add a SoC specific
prefix to the several SoC specific defines. This will allow to include
multiple SoC headers and thus will make the way free for building multi
SoC AT91 images.

See below for a detailed list of changes for this release.

Have Fun!
Sascha

----------------------------------------------------------------
Ahmad Fatoum (1):
      ARM: at91: Add initial support for the EVB-KSZ9477 eval board

Andrey Smirnov (58):
      rave-sp: backlight: Specify parent device correctly
      tlsf_malloc: dummy_malloc: Share code for calloc()
      dummy_malloc: Make use of PTR_ALIGN
      dummy_malloc: Check if sbrk() fails
      tlsf_malloc: Set errno to ENOMEM on failure
      libfile: Error out if out of memory in read_file_2()
      miitool: Fix inconsistent spacing
      ARM: Do not expose ARMv8 functions on ARMv7
      clocksource: Add ARM global timer support
      VFxxx: Select CLOCKSOURCE_ARM_GLOBAL_TIMER
      i.MX: Move GPT driver to drivers/clocksource
      clocksource: Introduce ARCH_HAS_IMX_GPT
      of: Demote "Bad cell count for" to debug
      aiodev: Don't try to use DT node name as aiodev->name
      aiodev: imx_thermal: Give aiodev a more descriptive name
      aiodev: qoriq_thermal: Give aiodev a more descriptive name
      drivers: Introduce dev_set_name()
      base: Don't use shared buffer for results of dev_id()
      drivers: base: Convert device_d name to be dynamically allocated
      linux: string: Port kbasename()
      of: Port latest of_device_make_bus_id() implementation
      mdio_bus: Fix documentation for mdio_bus_match()
      include: linux: phy: Add missing PHY_INTERFACE_* constants
      include: linux: ethtool: Add missing *_UNKNOWN constants
      net: phy: Check phy_mask in get_phy_device()
      mdio_bus: Allow for non PHY-devices on MDIO buses
      net: phy: Add basic driver for MV88E6XXX switches from Marvell
      net: phy: mv88e6xxx: Port EEPROM support code
      net: phy: mv88e6xxx: Add support for MAC ports
      partitions: efi: Constify force_gpt
      ARM: rdu2: Add switch EEPROM alias
      ARM: rdu1: Add switch EEPROM alias
      ARM: vf610-zii-dev-rev-c: Add switch EEPROM alias
      ARM: vf610-zii-cfu1: Add switch EEPROM alias
      ARM: vf610-zii-ssmb-spu3: Add switch EEPROM alias
      ARM: imx7d-zii-rpu2: Add switch EEPROM alias
      ARM: rdu2: Add switch EEPROM alias
      ARM: rdu1: Add switch EEPROM alias
      ARM: vf610-zii-dev-rev-c: Add switch EEPROM alias
      ARM: vf610-zii-cfu1: Add switch EEPROM alias
      ARM: vf610-zii-ssmb-spu3: Add switch EEPROM alias
      ARM: imx7d-zii-rpu2: Add switch EEPROM alias
      gpio: VF610: Propagate error code of gpiochip_add() up
      linux/ctype.h: Port _tolower()
      lib: Port kstrtox.c from Linux kernel
      commands: gpio: Move argument parsing into a shared function
      commands: gpio: Use kstrtoint() instead of simple_strtoul()
      gpiolib: Introduce gpio_find_by_label()
      commands: gpio: Allow GPIOs to be specified by label
      VF610: zii-vf610-dev: Drop switch reset GPIO configuration
      drivers: base: Simplify generic_memmap_ro()
      drivers: base: Drop dev_get_mem_region_by_name()
      drivers: base: Simplify dev_request_mem_region_err_null()
      ARM: rdu2: Replace board code with gpio-hog nodes
      lib: Port CRC8 implementation from Linux kernel
      nvmem: Port Linux driver for Microwire 93XX46 EEPROM chips
      ARM: rdu1: Add an alias for Microwire EEPROM
      ARM: rdu1: Implement RDU1 config loading

Cl=E9ment Leger (2):
      phy: call adjust_link in attach if using fixed-link
      Display barebox instead of kernel in build message

Enrico Joerns (1):
      ARM: rpi: add revision IDs for Pi 3 Model B and Pi Zero

Enrico Jorns (1):
      nand: denali: remove undefined GFP_DMA flag

Ian Abbott (1):
      net: designware: look for a child device node for MDIO bus

Ladislav Michl (7):
      blspec: do not depend on BLOCK
      mtd: atmel_nand: replace printk with dev_info
      mtd: nand: add accessors, macros for in-memory BBT
      mtd: nand: don't break long print messages
      usb: gadget: set maxpacket_limit
      Documentation: USB gadget: document usbgadget.fastboot_bbu variable
      usbgadget: autostart: add DFU support

Lucas Stach (20):
      ARM: pass architecture flag for SMCC also to PBL compilation unit
      ARM: import opcode helpers from Linux kernel
      ARM: safely switch from HYP to SVC mode if required
      ARM: allow secure monitor code to be built without PSCI
      ARM: rdu2: config PMIC SW1AB and SW1C rails to 1.375
      ARM: rdu2: configure the USB port as OTG
      ARM: rdu2: program e1000 iNVM
      ARM: rdu2: fix warnings in Barebox internal DT
      ARM: add file for HYP mode related setup
      ARM: don't try to install secure monitor when entered in HYP mode
      ARM: default to starting kernel in HYP mode when entered in HYP
      ARM: install HYP vectors at PBL and Barebox entry
      ARM: rpi: add raspberry pi 3 support
      ARM: rpi: autosize malloc area
      commands: mem: truncate mem device size to fit the loff_t file size
      net: only use ethaddrs registered with device node on that device
      scripts: imx-image: fix first instruction in i.MX8MQ header
      ARM: nxp-imx8mq-evk: remove SDRAM reservation for ATF
      ARM: nxp-imx8mq-evk: add barebox and env partitions
      serdev: select POLLER

Marcin Niestroj (2):
      net: dhcp: fix option 54
      ARM: i.MX: Add liteboard support

Marco Felsch (6):
      i2c: introduce device_i2c_driver() macro
      rtc: ds1307: Add ds3231 to driver's ID list
      gpiolib: fix of_gpio_hog error handling
      gpiolib: fix of_hog_gpio gpio label assignment
      gpio: tree-wide don't probe devices during core_initcall
      pinctrl: tree-wide probe devices during core_initcall

Matthias Schiffer (2):
      clk: fix NULL deref without OF node in debug message
      FIT: support hash-1/signature-1 nodes in signature check

Oleksij Rempel (2):
      ratp: fix compile warnings
      ratp: fix compile warnings

Rouven Czerwinski (1):
      multiple/raspberry-pi: fix clkdevs for raspberry pi

Sascha Hauer (83):
      ARM: Fix missing prototype warning
      mtd: nand: mxs: make locally used functions static
      video: imx-ipu-v3: Make locally used function static
      ARM: mmu: rename dma_alloc
      of: fix reproducible node name for legacy vs. new partition binding
      bootchooser: put bootchooser after creating a boot entry
      bootchooser: Add reference counting
      dma: Add missing re-inclusion protector
      ARM: mmu: include dma.h
      fs: Make locally used functions static
      ARM: cache: include mmu.h
      ARM: boards: GuF Vincell: Make locally used function static
      ARM: boards: karo-tx6x: Make locally used function static
      ARM: boards: kindle mx50: Make locally used function static
      ARM: boards: kontron-samx6i: Add include file to provide prototype
      ARM: boards: phytec-som-imx6: Make locally used function static
      ARM: legacy Linux support: Make locally used functions static
      drivers: clk: imx5: Make locally used functions static
      usb: ulpi: Make locally used functions static
      ARM: unwind: Provide prototypes for exported functions
      ARM: unwind: Make locally used function static
      ARM: i.MX: Add missing include
      nvmem: i.MX ocotp: Make locally used functions static
      usb: gadget: fsl_udc: Drop using global variable
      usb: host: ehci: rename ehci_priv to ehci_host
      usb: Add usb_unregister_host()
      USB: gadget: prevent unnecessary warning message
      usb: host: ehci: add ehci_unregister()
      usb: host: ehci: do not use dev->priv
      usb: host: ehci-atmel: unregister host on device remove
      usb: imx: unregister ehci controller on device removal
      usb: gadget: fsl_udc: pass controller instance to unregister
      net: macb: no need for coherent memory for receive buffer
      net: macb: remove unused variable
      net: macb: simplify private data allocation
      net: macb: add remove callback
      pinctrl: at91: Do not print registration messages
      net: macb: Add compatible for atmel,sama5d3-gem
      ARM: at91: remove unused AT_DMA_ID_ defines
      ARM: at91: remove unused CONSISTENT_DMA_SIZE defines
      ARM: at91rm9200ek: Use SoC specific defines
      ARM: at91sam926x: Add header for at91sam926x common base addresses
      ARM: at91: remove unused defines
      ARM: at91: drop AT91_NB_USART
      ARM: at91: remove AT91_SDRAM_BASE
      ARM: at91: consolidate phy reset functions
      ARM: at91: remove common matrix header file
      ARM: at91: Add SoC namespace to matrix defines
      ARM: at91: Use SoC specific base addresses where appropriate
      ARM: at91rm9200: Add SoC namespace to memory controller defines
      ARM: at91: remove unused header file
      ARM: at91rm9200 timer: remove unused include
      ARM: at91rm9200 timer: Make system timer defines SoC specific
      ARM: at91: remove mach/io.h
      ARM: at91sam926x use writel rather than pmc accessor function
      ARM: at91rm9200ek: use plain readl/writel for pmc accesses
      ARM: at91: drop at91_pmc_write()/at91_pmc_read()
      ARM: at91: make at91sam926x_board_init board specific
      ARM: at91: separate restart handler registration into SoC specific co=
de
      ARM: at91: remove unused defines
      dts: update to v4.19-rc8
      dts: update to v4.20-rc1
      Merge branch 'for-next/at91'
      Merge branch 'for-next/driver'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/gpio'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/malloc'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/missing-prototypes'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/net'
      Merge branch 'for-next/net-switch-mv88e6xxx'
      Merge branch 'for-next/rpi3'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/state'
      Merge branch 'for-next/usb'
      bootm: Print which file cannot be opened
      ARM: i.MX: When SRSR shows wdog then lookup reset source in wdog
      commands: mem: Fix compiler warning
      net: cpsw: support "phy-handle" and deprecate "phy_id"
      mount command: Fix "mount /dev/<devname>"
      Release v2018.12.0

Steffen Trumtrar (5):
      ARM: socfpga: add lowlevel header with common code
      ARM: socfpga: sockit: convert to lowlevel helper
      ARM: socfgpa: de0-nano-soc: convert to lowlevel helpers
      ARM: socfpga: socdk: convert to lowlevel helpers
      ARM: socfpga: socrates: convert to lowlevel helpers

Teresa Remmet (1):
      arm: mach-omap: xload: Enable network interface

Ulrich =D6lmann (7):
      state: backend_bucket_circular: fix memory leak
      common: state: fix typo
      state: backend_bucket_circular: remove unused variables
      common: state: use of_property_write_string() where appropriate
      state: fix documentation of state_new_from_node()
      of: base: fix typo
      state: fix indentation

perachet7@gmail.com (1):
      ARM: clk: rk3188: don't set same clk rate twice
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
