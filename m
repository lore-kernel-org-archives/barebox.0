Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIaK1-000299-0m
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 11:07:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aIaJf-0006ke-BK
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 12:07:15 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1aIaJf-0007V3-4Q
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 12:07:15 +0100
Date: Mon, 11 Jan 2016 12:07:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160111110715.GQ13058@pengutronix.de>
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
Subject: v2016.01.0
To: Barebox List <barebox@lists.infradead.org>

I just pushed out the first 2016 release: v2016.01.0

See below for a list of patches that went into this release.

Sascha

----------------------------------------------------------------
Aleksey Kuleshov (1):
      MIPS: import optimized string functions from Linux

Alexander Aring (1):
      memtest: fix missing arguments in help string

Andrey Smirnov (6):
      i2c: Add support for DesignWare controllers
      i2c-imx: Use xzalloc instead of kzalloc
      imx: ocotp: Add code to initialize 'cdev->device_node'
      drivers: bus: Match against id_table first
      drivers: bus: Match against id_table first
      i2c: Port two utility functions from Linux kernel

Antony Pavlov (13):
      MIPS: traps.c: separate registers print stuff to show_regs()
      MIPS: avoid excessive exception
      MIPS: import exception registers restoring macros from linux kernel
      MIPS: allow user to pass incorrect address to md command
      MIPS: black-swift: skip pbl lowlevel init if running from RAM
      MIPS: tplink-mr3020: skip pbl lowlevel init if running from RAM
      i2c: import multiplexed I2C bus core support from linux kernel
      i2c: add pca954x bus multiplexer driver
      net: usb: asix: make rx_fixup ax_skb buffer aligned
      net: usb: asix: fix 'no previous prototype' warning
      environment: support env on at24 eeprom
      net: tap: make locally used functions static
      net: tap: fix whitespaces

Christian Hemp (3):
      ARM: phytec-som-imx6: update environment
      ARM: imx6q: Add support for Phytec phyCORE-i.MX6 SOM
      ARM: imx6dl: Add support for Phytec phyCORE-i.MX6 SOM

Du Huanpeng (4):
      lib: fix coding style
      fbconsole: move font variable into struct font_desc
      lib: readline support ctrl-l to clear screen
      font: fbconsole: add custom font supports

Enrico Jorns (1):
      state: disable load command

Florian Vallee (3):
      imx35: register usb-misc by default
      eukrea-cpuimx35: setup usb through chipidea-imx driver
      eukrea-cpuimx35: update defconfig

Jan Remmet (3):
      bootm: cleanup bootm_open_oftree
      bootm: get file type before bootm_open_os_uimage
      state: make type check error verbose

Lucas Stach (14):
      ARM: imx6: add MMDC arbitration control register define
      ARM: microsom: delete cargo-cult from Makefile
      ARM: microsom: change barebox image name for Hummingboard
      ARM: microsom: import DCD from SolidRun U-Boot
      ARM: microsom: add full set of module variants on Hummingboard
      ARM: microsom: make ETH work on production modules
      ARM: microsom: get MAC address from fuses
      ARM: ventana: remove unneeded clock init in DCD
      net: rtl8169: get rid of DMA_ADDRESS_BROKEN
      ARM: mx6sx-sabresdb: drop unneeded makefile rules
      ARM: mx6sx-sabresdb: set proper hostname
      ARM: ccxmx53: properly guard initcall for multiimage
      MCI: init device_node for MCI mainarea cdev
      reset: fix non GPIO reset

Marc Kleine-Budde (8):
      of_path: of_find_path() factor out device detection logic into separa=
te function
      of_path: add of_find_path_by_node()
      state: make use of of_find_path_by_node() and add return -EPROBE_DEFE=
R if device is not available
      state: use name of device node as name if alias is not available
      crypto: Kconfig: add submenu for crypto related config options
      crypto: add simple keystore
      state: prepare raw backend for hmac support
      state: backend_raw: add hmac support

Markus Pargmann (1):
      defaultenv: boot/net: Boot initramfs from tftp if present

Oleksij Rempel (1):
      MIPS: pbl: add pbl_blt macro

Peter Mamonov (1):
      common: filetype: do not redetect MBR-type devices as a FAT-type

Sascha Hauer (33):
      ARM: omap: Use correct device to mount on /boot
      graphics_utils: check for valid framebuffer before creating a screen
      fbconsole: register fonts dynamically
      ls: fix exitcode
      loadb: Use local cdev
      loadb: deactivate console before using it for loadb
      console: Set baudrate during registration
      loadb: Allow to specify device to use
      loads: Use putchar rather than console_putc
      i2c: Create for_each_i2c_adapter()
      i2c_probe: Make command easier to work with
      video: pwm-backlight: Honour discrete brightness levels from dt
      reset: Allow dummy reset lines
      reset: Remove unused *_optional functions
      reset: Add gpio reset support
      video: i.MX IPUv3: Set ldb clocks correctly
      spi: i.MX: optimize transfers for ECSPI v2.3
      Merge branch 'for-next/arm'
      Merge branch 'for-next/console'
      Merge branch 'for-next/fb'
      Merge branch 'for-next/i2c'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mmc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/net'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/reset'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/state'
      ARM: dts: Add *.dtb.lzo to clean files
      Release v2016.01.0

Sebastian Hesselbarth (19):
      of: mtd: Import of_get_nand_ecc_{step_size, strength} from Linux
      mtd: nand: Clarify Marvell Orion Kconfig prompt
      arm: pxa: Prepare for NAND clkdev lookup on PXA3xx
      arm: pxa: Add clock for Zylonite NFC
      mtd: nand_mrvl_nfc: Use common clock for core clock
      arm: pxa: Remove pxa_get_nandclk()
      mtd: nand_mrvl_nfc: Clear OOB data with 0xff instead of 0x00
      mtd: nand_mrvl_nfc: Use Auto Read Status on program/erase
      mtd: nand_mrvl_nfc: Protect mrvl_nand_probe_dt
      mtd: nand_mrvl_nfc: Fix num-cs property parsing
      mtd: nand_mrvl_nfc: Get ecc parameters from DT
      mtd: nand_mrvl_nfc: Prepare for different HW ECC strengths
      mtd: nand_mrvl_nfc: Add hwflags to distinguish different HW versions
      mtd: nand_mrvl_nfc: Add support for 4bit BCH HW ECC
      mtd: nand_mrvl_nfc: Add support for 8bit BCH HW ECC
      mtd: nand_mrvl_nfc: Add support for HW BCH ECC
      mtd: nand_mrvl_nfc: Add support for NDCB3 register
      mtd: nand_mrvl_nfc: Add support for Marvell Armada 370/XP
      mtd: nand_mrvl_nfc: Add optimized timings for Samsung K9K8G08U

Sergey Koshechkin (4):
      mk-omap-image: make some locally used functions static
      docproc: drop unused utility
      crypto: crc32: fix warnings: no previous prototype for 'crc32', 'crc3=
2_no_comp', 'file_crc'
      make_directory: fix warning: no previous prototype

Stefan Christ (11):
      ARM: imx6: phycard: use numeric suffix in device tree
      boards: Add phytec-som-imx6
      ARM: phytec-som-imx6: set loadaddr to start of DDR memory.
      ARM: pfla02: append suffix 1bank
      ARM: imx6q: pfla02: Add support for 512MiB RAM on one bank
      ARM: imx6dl: pfla02: Add support for 128MB and 256MB RAM
      ARM: imx6q: pfla02: add phyFLEX-i.MX6 DualLite 1GiB on one bank
      net: fec: set phy reset time to 1ms
      net: fec: implement dtb property phy-reset-duration
      net: fec: fix indentation and whitspaces
      wdog: imx-wd: watchdog cannot be disabled again

Teresa Remmet (1):
      driver: watchdog: Add support for omap_wdt

Trent Piepho (13):
      firmware: socfpga: Add parameter "programmed" to fpgamgr driver
      socfpga: Initialize emac physels to RGMII correctly
      net: designware: Don't hang in reset with powered down phy
      mci: core: bus-width property should override driver default
      mci: dw_mmc: socfpga: Supply bus-width in platform_data
      mci: dw_mmc: Delete devname in platform_data
      mci: dw_mmc: Add support for high speed modes
      i2c: core: Add client I2C address to devinfo
      eeprom: Add support for 24c1025 EEPROM
      eeprom: Support pagesize OF device tree property
      ARM: Remove kernel booting call for thumb2 mode
      ARM: Remove do_execute and thumb2_execute
      of_path: Fix bug with partitions, simply code

Uwe Kleine-K=F6nig (1):
      ARM: don't let the unwinder depend on exception handling

Wjatscheslaw Stoljarski (1):
      readline: Kconfig: fix typo

Yegor Yefremov (1):
      driver: make all dev_request_mem_region_* routines MIPS compatible

Zahari Doychev (1):
      environment: allow saving of symbolic link changes

 =

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
