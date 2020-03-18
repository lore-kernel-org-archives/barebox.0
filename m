Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jETAL-0001y0-UW
 for barebox@lists.infradead.org; Wed, 18 Mar 2020 07:31:04 +0000
Date: Wed, 18 Mar 2020 08:30:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200318073058.GV3335@pengutronix.de>
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
Subject: v2020.03.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

I just released barebox v2020.03.0. Nothing really outstanding, just the
usual flow of patches. Update and have fun!

Sascha

----------------------------------------------------------------
Ahmad Fatoum (36):
      PWM: pxa: remove unused struct members
      PWM: pxa: make MMIO writes always little endian
      regmap: forward declare structs used in header
      video: backlight-pwm: remove duplicate assignment to object
      led: pwm: don't test if pointer is smaller than zero
      led: pwm: fail if required max-brightness option is missing
      led: pwm: support active-low property
      PWM: core: constify chip->ops pointer
      sandbox: fix signed integer overflow
      sandbox: hostfile: fix UB-inducing shift
      clocksource: rename driver for ARMv8 Timer to ARM architected timer
      driver: bail out, don't crash, if drv->name is not set
      watchdog: dw_wdt: populate driver_d.name
      mci: stm32_sdmmc2: don't ignore reset_control_get errors
      net: designware: socfpga: fix possible invalid pointer deref
      watchdog: dw_wdt: inform user on missing reset control line
      watchdog: dw_wdt: remove duplicated error message
      i2c: tegra: correct error message
      ARM: stm32mp: dk2: barebox_set_model to shorter name
      mci: stm32_sdmmc2: add High-Speed (26 & 52 MHz) support
      mci: core: populate mci_ios.timing member
      commands: boot: refactor boot entry creation to use iterators
      commands: boot: create boot entries on demand
      gpiolib: use correct format specifier for ptrdiff_t
      scripts: define ALIGN(x) in scripts' <linux/kernel.h>
      scripts: imd: remove duplicate macro definitions
      ARM: dts: stm32mp: align barebox dtsi name with upstream
      regmap: make internal.h a self-contained header
      regmap: add support for regmap_init_mmio_clk
      mfd: syscon: use regmap-mmio as backend
      mfd: syscon: clock peripheral if specified in device tree
      net: designware: eqos: stm32: drop no longer needed syscfg-clk
      commands: boot: fixup create boot entries on demand
      Documentation: boards: stm32mp: document eMMC partition layout
      USB: MUSB: PHY: scrap singleton am335x_get_usb_phy()
      USB: MUSB: defer driver probes where necessary

Christian Eggers (14):
      nvmem: ocotp: Support for i.MX6ULL/ULZ
      pinctrl: imx-v3: Support for imx6ull-iomuxc-snvs
      param: Make enum param_tristate always visible
      watchdog: Fix error path
      state: remove param member from struct state_string
      mci: remove param_probe member from struct mci
      state: remove param member from state_uint32, state_enum32, state_mac
      globalvar: Allow NULL pointers to be returned by dev_add_param()
      parameter: Return NULL instead of ENOSYS if CONFIG_PARAMETER is disab=
led
      eeprom: at25: Allow page sizes greater than 16 bit
      gadget: f_fastboot: Fix memory leak
      common: make CONFIG_BAREBOX_UPDATE visible
      images: Use separate LDFLAGS for PBL
      usb: Add extra delay for device scan

Marco Felsch (1):
      regulator: fixed: take regulator-boot-on into account

Michael Grzeschik (3):
      regulator: pfuze: remove unsued define
      regulator: pfuze: add support to other architectures
      ARM: phyCORE-i.MX8M SOM: add pmic initialisation for power good

Michael Tretter (2):
      Documentation: blspec: update link to Boot Loader Specification
      Documentation: blspec: drop documentation of devicetree-overlay

Peter Mamonov (1):
      pinctrl-single: fix parsing of `pinctrl-single,bits` property

Roland Hieber (7):
      include: add SPDX GPL-2.0-only license tags where applicable
      include: add SPDX GPL-2.0-or-later license tags where applicable
      include: add SPDX GPL-2.0-only license tags for files without licensi=
ng information
      LICENSES: add LGPL-2.1-or-later
      include: add SPDX LGPL-2.1-or-later license tags where applicable
      include: spi: add SPDX GPL-2.0-or-later license tags where applicable
      include: spi: add SPDX GPL-2.0-only license tags for files without li=
censing information

Rouven Czerwinski (5):
      optee: move optee_verify_header() to common
      ARM: import setjmp implementation from U-Boot
      ARM: add optee early loading function
      ARM: mach-imx: test PL310 write access
      user: add documentation for OP-TEE loading

Sascha Hauer (40):
      PCI: layerscape: Allow to share stream_ids per host controller
      dts: update to v5.5-rc7
      dts: update to v5.5
      mtd: nand-imx: do not use blocks reserved for BBT
      mtd: nand-imx: Create BBT automatically when necessary
      mtd: nand-imx: make sure the just created BBT is used
      scripts: imx: Remove unused variable
      mci: imx-esdhc: lower timeout message priority to dev_dbg
      scripts: imx-usb-loader: Accept new header version
      scripts: imx-usb-loader: remove unnecessary check
      scripts: imx-usb-loader: download address is always the header address
      scripts: imx-usb-loader: dladdr is unused, remove it
      usb: gadget: fsl_udc: remove unnessary argument
      clk-conf.h: Add missing re-inclusion protection
      clk-conf.h: Add static inline wrapper for of_clk_set_defaults()
      driver: Call of_clk_set_defaults for each probed device
      i2c_probe command: Use kstrtoint
      dts: update to v5.6-rc1
      Merge branch 'for-next/clk-conf'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imdcrc'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx-nand'
      Merge branch 'for-next/layerscape'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mmc'
      Merge branch 'for-next/optee'
      Merge branch 'for-next/parameter'
      Merge branch 'for-next/pwm'
      Merge branch 'for-next/spdx'
      ARM: i.MX: scb9328: Add missing machine protection
      clk: i.MX1: make locally used function static
      ARM: i.MX Phytec phycard i.MX27: get fdt in common init function
      ARM: i.MX Phytec phycard i.MX27: replace __naked with noinline
      ARM: i.MX Phytec phycore i.MX27: replace __naked with noinline
      ARM: i.MX: external NAND boot: remove unnecessary arguments from imx*=
_nand_load_image
      ARM: i.MX: external NAND boot: Leave icache disabled
      ARM: i.MX: external NAND boot: Fix passing boarddata
      Merge branch 'for-master/imx-external-nand'
      Release v2020.03.0

Sim=E9on Marijon (1):
      pinctrl-single: Handle "pinctrl-single,function-mask" dt property

Steffen Trumtrar (4):
      imd: replace magicvalue with sizeof(struct)
      imd: add support for checksum generation/verification
      commands: bbu: add support for imd checksum
      fs: jffs2: add initial support for reading jffs2

Uwe Kleine-K=F6nig (8):
      imx25: drop global over-current setting for USB
      gpiolib: reorder functions
      gpiolib: introduce helper functions working on gpio_info structs
      Documentation/sandbox: Add hint how to end a sandboxed barebox
      ubsan: use a big if block in Kconfig
      commands/test: Bail out on incomplete command line options
      commands/test: Improve option parsing to handle "]" less special
      commands/test: Implement -b and -c to test for character and block de=
vices

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
