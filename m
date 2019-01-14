Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gixlv-0000Iz-QL
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 08:39:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1gixlr-0004Yu-UD
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 09:38:59 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1gixlr-0005C6-MW
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 09:38:59 +0100
Date: Mon, 14 Jan 2019 09:38:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190114083859.vonzltvsq7vfadb7@pengutronix.de>
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
Subject: v2019.01.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

I just released barebox-v2019.01.0.

With this release the image generation mechanism for multiimage ARM
images has changed. Instead of concatenating the decompressor with the
compressed image we now link the compressed image into the compressor
binary. This shouldn't cause any user visible changes, but be prepared.

Other than that we now have Phytec-phyCORE-i.MX6-ull support and the
usual set of smaller changes.

Have Fun
 Sascha

---------------------------------------------------------------------------

Ahmad Fatoum (3):
      lib: bootstrap: fix instance of possibly mismatched pointer sizes
      common/parser.c: s/%d/%zu/ when printing size_t
      documentation: document eMMC boot{0,1}-partitions binding

Alexander Shiyan (1):
      Fix email address

Alexis Ballier (1):
      mtd: spi-nor: Add support for sst25wf020a

Andrey Smirnov (4):
      rtc: ds1307: Set DS1341_BIT_DOSF in the right register
      aiodev: mc13xxx: Mark mc13xxx_adc_do_conversion() static
      net/e1000: Mark e1000_igb_get_flash_size() static
      net/e1000: Mark e1000_register_invm() static

Antony Pavlov (6):
      kconfig: include common Kconfig files from top-level Kconfig
      checkpatch.pl: add ability to ignore various messages
      checkpatch.pl: check for common memset parameter issues against state=
ments
      checkpatch.pl: use SPDX tag
      checkpatch.pl: check for #if 0/#if 1
      globalvar: fix crash if CONFIG_NVVAR is not set

Chris Fiege (1):
      Add Raspberry Pi Zero W Board

Christian Hemp (1):
      nvmem: ocotp: Add support for second mac address fuses on imx6ul

Enrico Jorns (1):
      ARM: socfpga: achilles: enable watchdog1

Fabian Godehardt (1):
      ARM: dts: phyCORE-i.MX 6UL/ULL: Enable USB OTG on port 1

Jan Remmet (1):
      phytec-som-imx6: ksz8081_phy_fixup: Don't override B-CAST_OFF strap-in

Jules Maselbas (2):
      Kconfig: Add clocksource menu
      clocksource: Add dw_apb_timer driver

Leif Middelschulte (1):
      ubimkvol: add support for `volume_id` parameter

Lucas Stach (12):
      video: ipuv3: use closest fractional divider
      video: ipuv3: use non-fractional clock for parallel display
      ARM: mmu64: include dma.h
      ARM: nxp-imx8mq-evk: add missing prototype for nxp_imx8mq_evk_ddr_cfg=
_phy
      ARM: ptrace: add mssing show_regs prototype in aarch64 path
      ARM: interrupts64: add missing prototypes
      ARM: add prototype for mmu_early_disable
      ARM64: backtrace: fix missing prototypes
      ARM: imx: select OFDEVICE for VF610
      of: remove non-existent of_match_ptr
      ARM: at91: add architecture dependecy to KSZ9477_EVB board
      scripts: imx-image: fix build with OpenSSL < 1.1.0

Matthias Schiffer (1):
      mtd: return EOPNOTSUPP when attempting to erase an MTD_NO_ERASE device

Michael Grzeschik (1):
      ARM: i.MX5 clock: add clock provider support

Michael Schuhmacher (1):
      e1000/flash: Increased erase timeout

Oleksij Rempel (17):
      ddr_spd: remove unused array
      of: partition: set ret for error cases
      video/ssd1307fb: fix potential memory leak on error
      clk: imx: cpu: avoid use after free on error
      net: e1000: fix "Uninitialized variable: phy_data" warning
      pinctrl: tegra30: fix "Possible null pointer dereference: group" warn=
ing
      fs: closedir: remove uninitialized variable ret
      fs: fix possible null pointer dereference of base.
      mfd: da9063: fix wrong NULL pointer test
      usb: at91_udc: remove useless NULL check
      mtd: atmel_nand: remove erroneous case
      usb: musb: fix possible out of bounds access
      lib: lodepng: remove useless test
      defaultenv-2: add bnet script to second stage barebox over net
      drivers: net: convert drivers to spdx
      drivers: net: phy: convert drivers to spdx
      drivers: net: usb: convert drivers to spdx

Roland Hieber (4):
      printk: make line continuation not result in stray emergency errors
      memory_display: add padding to simplify counting
      drivers: caam: add RNG software self-test
      i.MX: HABv4: always print HAB status at boot time

Sam Ravnborg (1):
      images: fix force rebuild of piggy.o

Sascha Hauer (71):
      ARM: interrupts: Avoid missing prototypes warning
      ARM: psci: Avoid missing prototypes warning
      gui: lodepng: Avoid missing prototypes warning
      ARM: sm: Make locally used function static
      fs: ubifs: Avoid missing prototype warning
      ARM: start: Add missing include
      ARM: start: Add missing prototype
      ARM: Add missing prototype for arm_mem_ramoops_get()
      ARM: i.MX50: Make locally used function static
      ARM: i.MX27: Add missing prototype for imx27_get_boot_source()
      ARM: i.MX: add missing include
      ARM: i.MX6 usb: Add missing include
      imx-bbu-nand: Make locally used functions static
      clk: imx: Avoid missing prototype warnings
      dma: apbh: make locally used function static
      pinctrl: at91: Add missing include
      video: vpl: make locally used function static
      fs: devfs: Make locally used function static
      nvmem: Add prototype for exported functions
      ARM: stack unwind: Print messages with pr_warning
      driver: Print message with pr_err
      ubiformat: print messages after checking a block is not bad
      clk: straighten some inline wrappers for use without of support
      ARM: start: Add missing prototype
      ARM: samsung: remove unused function
      ARM: samsung: make locally used function static
      ARM: samsung: provide prototype for nand_boot()
      ARM: samsung: Add missing include
      state: remove unused function
      mtd: nand: omap: Add header file for bch decoder
      net: cpsw: Make locally used function static
      usb: musb: Add missing includes
      spi: omap: make locally used functions static
      bus: omap-gpmc: make locally used function static
      ARM: omap: Add missing includes
      Make: Add -Wmissing-prototypes
      ARM: socfpga: generate smaller images when multiple boards are select=
ed
      hush: Add pr_fmt define
      hush: Add extra define for hush debugging
      getopt: Add pr_fmt
      net: dns: Use pr_debug
      ping command: Print which host is pinged
      net: dns: return error codes
      fs: tftp: Make filesize a 64bit type
      ARM: i.MX: GuF Vincell: Use DCD table to setup SDRAM
      ARM: i.MX: GuF Vincell: Make pbl smaller
      scripts: imx-image: Fix typos in comments
      scripts: imx-image: Add support for max_load_size option
      memory_display: Print whole line at once
      memory_display: move prototype to include/printk.h
      Add pr_memory_display
      ARM: i.MX: Add max_load_size option to boards that will need it
      ARM: images: use piggydata
      dts: update to v4.20-rc2
      dts: update to v4.20-rc3
      dts: update to v4.20-rc4
      dts: update to v4.20-rc5
      Merge branch 'for-next/checkpatch'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/missing-prototypes'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/net'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/spdx'
      Merge branch 'for-next/ubimkvol_add_volume_id_parameter'
      of: Add .of suffix to device names from devicetree
      ARM: fix setup_c when runtime offset is !=3D 0
      Images: Add image size to built images
      Release v2019.01.0

Stefan Riedmueller (2):
      ARM: dts: phyCORE-i.MX 6UL: Enable USB host port
      ARM: phytec-som-imx6: Add full featured phyCORE-i.MX 6ULL

Steffen Trumtrar (4):
      ARM: socfpga: select GPIOLIB for non-xload
      ARM: socfpga: update defconfig
      mtd: nand: denali: quiet down driver
      net: designware: socfpga: return error value

Teresa Remmet (1):
      arm: boards: phytec-som-am335x: Fix mac overwrite from state

Thorsten K. Scherer (1):
      imd: fix missing error message

Uwe Kleine-K=F6nig (1):
      imx6ul-phytec-phycore-som: don't use fsl, no-blockmark-swap for the N=
AND

White Ding (1):
      mtd: nand: fix nand_lock/unlock() function

Yao Yuan (1):
      mtd: spi-nor: Add support for sst25wf040b
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
