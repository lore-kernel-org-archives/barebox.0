Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZWgEU-0003Uj-EL
 for barebox@lists.infradead.org; Tue, 01 Sep 2015 07:43:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1ZWgE8-0007pV-Us
 for barebox@lists.infradead.org; Tue, 01 Sep 2015 09:43:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1ZWgE8-0003L5-Ga
 for barebox@lists.infradead.org; Tue, 01 Sep 2015 09:43:32 +0200
Date: Tue, 1 Sep 2015 09:43:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150901074332.GF18700@pengutronix.de>
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
Subject: v2015.09.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have a release for September. Most notable this time is our new
framebuffer console support which can be used on any framebuffer
supported by barebox. It's really worth checking out.
Also Michael was working on EFI support, it's now enough to use
barebox as a grub replacement on his Laptop. I'm looking forward
to see this combined with the new logo which is also integrated
into the barebox tree now.
For all patches that went into this release see below.

Sascha

Alexander Smirnov (3):
      common: move DDR_SPD to common/Kconfig
      ddr_spd: add routine for printing DDR2 SPD contents in human-readable format
      commands: add spd_decode command

Alexey Galakhov (1):
      build: update compiler*.h to newest versions

Antony Pavlov (8):
      import lib/fonts framework from linux kernel
      lib/fonts: add "MINI4x6" font
      video: implement framebuffer console
      net_udp_bind(): use uint16_t type for source port
      fs/tftp.c: drop unused server_port variable
      fs/nfs.c: use uint16_t for port numbers
      fs/nfs.c: use SUNRPC_PORT remote port by default
      mtd: nand_base: replace ifdef with IS_ENABLE

Daniel Schultz (3):
      ARM: AM335x: dts: Fix wrong GPMC size mapping for omaps
      ARM: am335x: Changed timer
      commands: Add dhrystone

Herve Codina (4):
      exitcall: Add exitcall infrastructure
      exitcall: move device_shutdown to exitcall infrastructure
      exitcall: move arch_shutdown to exitcall infrastructure
      exitcall: move board_shutdown to exitcall infrastructure

Jan Luebbe (6):
      i2c: only register enabled child nodes
      spi: only register enabled child nodes
      of/base: fix typo
      state: handle write-protection in the raw backend
      state: fix missing newline in error message
      watchdog: add davinci watchdog driver

Jan Remmet (1):
      ARM: am33xx: netboot use ramfs

Juergen Borleis (6):
      PPC/PCM030: remove nowhere used definitions
      PPC/PCM030: fix reference clock
      PPC/PCM030: enable USB/OHCI pin support
      PPC/MPC52xx: unify header file name for clock API
      PPC/MPC5200: re-use the IMX I2C master driver for MPC5200
      PPC/PCM030: provide EEPROM support to read factory settings

Lucas Stach (5):
      usb: gadget: serial: only call into CONSOLE_FULL code if it's there
      ARM: pxa: move mainstone TEXTBASE to Kconfig
      ARM: rockchip: depend on OFTREE
      ARM: don't allow Thumb2 on AT91
      ARM: imx53: vincell: guard board initcall

Michael Grzeschik (1):
      ARM: OMAP: AM33xx: add uart1 pinmux setup

Michael Olbrich (16):
      xfuncs: add xasprintf() and xvasprintf()
      xfuncs: add wrapper for wchar strdup functions
      efi: improve malloc pool allocation
      efi: add support for initrd loading
      efi: add helper to get the GPT partition UUID for a device
      efi: export device_path_from_handle()
      efi: add helper functions to write EFI variables
      efi: write volatile EFI variables used by systemd
      efi: use xasprintf() when appropriate
      efi: use xstrdup_* when appropriate
      fs: efi: use xstrdup_* when appropriate
      fs: efivars: use xstrdup_* when appropriate
      fs: efivars: add more error checking
      fs: efivars: read the attributes on the second get_variable()
      efi: use an EFI variable to save the environment
      efi: enable blspec in the defconfig

Philipp Zabel (2):
      ARM: imx6: do not include arm/imx6q.dtsi from barebox imx6q.dtsi
      ARM: imx6: rename SPI NOR device to /dev/spinor0

Sascha Hauer (85):
      video: stm: remove unnecessary info function
      video: stm: copy platform_data to driver data
      video: stm: code buswidth in platform data as decimal
      video: stm: use uncached memory
      video: stm: read interface width from device tree
      video: stm: read bits-per-pixel from device tree
      video: stm: honor display_flags
      video: Add generic fixup handler to reserve fb memory
      video: stm: reserve framebuffer memory for Linux
      socfpga_mkimage: Fix/clarify error message
      dts: update to v4.1
      dts: update to v4.2-rc1
      ARM: i.MX: Add i.MX5 debug functions
      of: base: implement of_get_next_child
      of: import of_graph functions
      of_graph: add of_graph_port_is_available
      ARM: i.MX51 Efikasb: Disable backlight earlier
      ARM: i.MX51 Efikasb: make more space for barebox
      ARM: i.MX51 Efikasb: update device tree
      video: Add Video Pipeline (VPL) support
      video: Add MTL017 LVDS encoder support
      video: Add missing prototype for display_timings_release
      video: ipuv3: remove unused variable
      video: ipuv3: Replace ipu_output with VPL
      video: ipuv3: match ipu_di_signal_cfg's clk_pol with its description
      video: Add simple-panel support
      graphic_utils: Add a common namespace to functions
      gui: Fix typo in function name
      regulator: Factor out functions to work with regulator_internal
      regulator: Add support for regulator-boot-on device tree property
      remove old barebox logo
      graphics_utils: Add function to invert an area
      graphics_utils: Export get_pixel
      graphics_utils: add function to create pixel from rgb triplet
      scripts: imx-image: Do not pad image
      scripts: imx-image: Make in-place capable
      ARM: i.MX6: Add i.MX6 entry function
      ARM: i.MX6: remove unnecessary includes
      ARM: i.MX6: add function to get bootsource in pbl
      memsize: Compile for PBL aswell
      ARM: i.MX: compile boot.c for pbl aswell
      ARM: i.MX6: create cpu_is() functions for use in PBL
      images: i.MX: Create target for SRAM images
      spi: i.MX: move register defines to include/
      fonts: Add 7x14 font
      fb: Add fb_enable/disable functions
      fb: sdl: create graphics window on enabling
      graphics_utils: Let fb_open allocate the screen
      Add new barebox logo to the tree
      sandbox: Update defconfig
      mtd: of: put master offset into partition name
      console: When deactivating a console, flush it first
      net: make eth_register_ethaddr work on registered network devices
      ARM: i.MX: Add SPI xload code
      ARM: i.MX6: Add DDR setup code from U-Boot
      Limit data_abort_mask to !PBL
      net: phy: at803x: Use genphy_config_init
      ARM: i.MX: xload: implement esdhc xload for i.MX6
      PBL: console: Make independent of DEBUG_LL
      ARM: i.MX: make early UART functions independent of DEBUG_LL
      ARM: initial cm-fx6 support
      ARM: imx6-mmdc: Fix cs0_end calculation
      ARM: i.MX6 cm-fx6: Fix Chip density for DDR_64BIT_2GB case
      ARM: i.MX6 cm-fx6: Fix area for get_ram_size
      ata: sata-imx: Add delay to prevent link timeout
      mtd: cfi-flash: Fix info
      mtd: concat: initialize *retlen
      Merge branch 'for-next/am335x'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/exitcall'
      Merge branch 'for-next/fbcon'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/logo'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/net'
      Merge branch 'for-next/ppc'
      Merge branch 'for-next/spd'
      Merge branch 'for-next/video'
      Merge branch 'for-next/vincell'
      Merge branch 'for-next/vpl'
      completion: fix device parameter completion
      dhrystone: Fix documentation
      ARM: do not ignore data aborts initially
      Release v2015.09.0

Stefan Christ (2):
      ARM: i.MX6: clarify usage of /dev/imx-ocotp
      ARM: [phyFLEX,phyCARD]-i.MX6: rename define in flash-headers

Steffen Trumtrar (1):
      ARM: vincell: move to DT probing

Teresa Remmet (7):
      ARM: dts: am335x-phytec boards: Fixup spi flash node name
      ARM: dts: phyFLEX-AM335x-som: Disable eeprom on default
      ARM: phytec-som-am335x: Add support for 1024MiB RAM on one chip
      ARM: dts: Add support for all phyCORE-AM335x options
      ARM: dts: Add support for all phyFLEX-AM335x options
      mtd: core: Check partitions for empty string
      ARM: dts: beaglebone: Strip MLO device tree

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
