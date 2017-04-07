Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cwOJp-0002Fy-0E
 for barebox@lists.infradead.org; Fri, 07 Apr 2017 07:28:31 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1cwOJT-0001jg-Bk
 for barebox@lists.infradead.org; Fri, 07 Apr 2017 09:28:07 +0200
Received: from sha by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1cwOJT-0001Ti-3d
 for barebox@lists.infradead.org; Fri, 07 Apr 2017 09:28:07 +0200
Date: Fri, 7 Apr 2017 09:28:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170407072807.7swhos2g25ikgnzn@pengutronix.de>
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
Subject: v2017.04.0
To: Barebox List <barebox@lists.infradead.org>

Hi all,

We have release for april. The most visible change this time is that
the EFI support is no longer an architecture, but instead a machine
in the X86 architecture. This change will allow us to run under
EFI on other architectures, Arm most likely. Other than that Lucas
has ported the Raspberry Pi over to multimachine and device tree
support, thanks Lucas. Several other changes are all around the tree,
see below.

Sascha

----------------------------------------------------------------
Alexander Kurz (5):
      scripts: imx-usb-loader: implement DCD v2 check command
      ARM: i.MX7: Kconfig: ARCH_IMX7 selects PINCTRL_IMX_IOMUX_V3
      ARM: dts: i.MX7 WaRP7: remove wdog1 pinctrl workaround
      console: console_get_by_name: do not strcmp NULL
      console: fix usbserial re-connect

Andrey Smirnov (19):
      at91: Fix bug/typo in debug_ll.h
      regmap: Implement syscon_node_to_regmap()
      pinctrl: at91: Fix a bug in at91_pinctrl_set_conf()
      pinctrl: at91: Fix a bug in at91_pinctrl_set_state()
      pinctrl: at91: Implement .get_direction hook
      clk: Port two helper functions from Linux
      clk: Make COMMON_CLK_OF_PROVIDER depend on OFTREE
      of: base: Use scoring in DT device matching
      serial: atmel: Check result of clk_get()
      usb: ohci-at91: Check result of clk_get()
      usb: ohci-at91: Convert global variables to private data
      usb: ohci-at91: Check result of clk_enable()
      usb: ehci-atmel: Check result of clk_enable()
      usb: echi-atmel: Convert global variables to private data
      usb: ehci-atmel: Zero ehci_data before using it
      usb: echi-atmel: Check result of ehci_register()
      spi: atmel_spi: Configure CS GPIO as output
      spi: atmel_spi: Use VERSION register instead of CPU type
      clocksource: at91: Move to 'drivers/clocksource'

Bastian Stender (12):
      graphic_utils: implement 8 bpp color depth in gu_set_pixel
      graphic_utils: do not allocate info in fb_open
      2d-primitives: check dimensions in __illuminate
      lib/fonts: add VGA8x8 font
      fbconsole: check cursor position before moving
      fbconsole: implement vt100 cursor shown/hidden
      console: replace set_active by open/close
      console: expose consoles in devfs
      fb: introduce flush for virtual framebuffer
      i2c: mv64xxx: add software delays
      i2c: mv64xxx: simplify mv64xxx_i2c_wait_for_completion
      video: add support for Solomon SSD1307 OLED controller family

Daniel Schultz (1):
      arm: boards: phytec-som-am335x: Remove 1GB RAM type

David Jander (1):
      drivers: clk: clk-imx6.c: Don't gate LDB and IPUs

Enrico Joerns (3):
      ARM: rpi: move model initialisation to rpi-common
      clocksource: bcm2835: use clock-frequency property when available
      mci-bcm2835: enable devicetree probing

Franck Jullien (1):
      openrisc: fix call to restart_handler_register_fn

Jean-Christophe PLAGNIOL-VILLARD (27):
      efi: move block io driver to driver/block
      efi: move clocksource out of arch
      efi: move bus driver to driver/efi
      efi: move debug_ll.h to include/efi
      efi: move startup and payload to common/efi
      x86: move bios bootup code to arch/x86/bios
      efi: move x86 efi boot support to x86 arch
      ARCH: efi: Finally drop it as now we can build efi bootup from x86
      efi: bus: add firmware vendor and resision and tables info
      efi: add minor and major to the bus and display it at boot
      efi-gui: add Timestamp Protocol GUID definition
      efi: add efi handle dump command
      video: add EFI Graphics Output Protocol support
      efi: add serial driver support
      efi: add prototype and definition for creating and closing event
      efi: add prototype and definition for setting timer
      efi: move LoaderTimeInitUSec and LoaderDevicePartUUID to postcore ini=
tcall
      efi: move x86 clocksource init at core initcall level
      clocksource: allow to have multiple device from clock source
      clocksource: move dummy clock source to init_clock
      efi: move x86 clocksource to device/driver
      efi: clocksoure: add EFI event timer
      efi: add veriable to report secure boot support and status
      x86: efi: fix logo support
      video: make enable/disable ops optional
      parameter: fix read only int support
      fix: console: expose consoles in devfs

Lucas Stach (9):
      ARM: rpi: move model detection before console init
      ARM: rpi: convert mailbox interface to regular driver
      ARM: rpi: convert watchdog/reset to regular driver
      ARM: rpi: always build relocatable image
      ARM: rpi: move debug UART base selection to Kconfig
      ARM: rpi: switch to DT probe and multi-image build
      ARM: add AFLAGS for secure monitor files
      ATA: mvebu: select DISK_ATA
      ARM: mvebu: only build kwbootimage support if BOOTM is enabled

Marc Kleine-Budde (3):
      console_countdown: width to of countdown to 4 digits
      console_countdown: add possibility to abort countdown by external com=
mands
      fastboot: abort autoboot timeout when fastboot gadget is activated

Michael Olbrich (2):
      fixup! efi: move x86 efi boot support to x86 arch
      efi: clocksoure: make sure the meassured frequency is valid

Oleksij Rempel (4):
      scripts: imx imx-usb-loader: add usb path support
      scripts: imx imx-usb-loader: warn if device was excluded by path opti=
on
      scripts: imx imx-usb-loader: add support for imx23 and imx28
      scripts: imx/mxs remove mxs-usb-loader

Peter Mamonov (1):
      usb_kbd: release all keys on error / disconnect

Peter Rosin (1):
      at91: serial: pullup RX pins, do not pullup TX pins

Robin van der Gracht (1):
      clk: imx: clk-imx6ul: Use anatop_base pointer for consistency

Sascha Hauer (23):
      ARM: i.MX: iim: Only register actually equipped fuses
      usb: gadget: fastboot: close fd after download
      usb: gadget: print a meaningful error message
      usb: gadget: properly release f_multi_opts
      video: call fb_[en|dis]able instead of fops directly
      bbu: Search for cdev names aswell
      dts: update to v4.10-rc8
      dts: update to v4.11-rc1
      Merge branch 'for-next/at91'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mvebu'
      Merge branch 'for-next/rpi'
      Merge branch 'for-next/usb'
      Merge branch 'for-next/video'
      mtd: fix reading data from page that needs cleanup
      state: bucket_cached: Fix reading pages which need cleanup
      state: bucket_circular: -EUCLEAN means data could be read
      state: backend circular: Fix wrong comment
      nvvar: Fix creation without value
      Release v2017.04.0

Uwe Kleine-K=F6nig (19):
      scripts: kwboot: fix image check for padded images
      scripts/kwboot: new parameter -n to skip a number of NAKs
      mvebu: simplify detection and fixup of MV78230-A0
      mvebu: remove unused function barebox_arm_reset_vector
      mvebu: rework how memory is detected
      arm: imx: don't let MACH_SABRELITE select HAVE_PBL_MULTI_IMAGES
      lseek: ensure errno is set on failure and return -1
      ata: new driver to support the internal sata controller on Armada-XP
      mvebu: armada-370-xp: simplify soc init code flow
      mvebu: dove: simplify soc init code flow
      mvebu: kirkwood: simplify soc init code flow
      mvebu: rn2120: Make available all RAM
      mvebu: get initial position of register window from image header
      filetype: Add image type for boot images used on Armada 370 and XP
      kwbimage_v1: add support to boot a mvebu image
      mvebu: netgear-rn2120: make use of mvebu_get_initial_int_reg_base
      lseek: tighten error checking and allow negative offsets for SEEK_END
      tftp: trivial code simplification
      tftp: implement forward seeking

Yegor Yefremov (2):
      lib: xz: add support for bcj filters
      arm: baltos: define baltos_sram_init() return type as void
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
