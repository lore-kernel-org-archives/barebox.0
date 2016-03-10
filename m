Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adxW8-0001BL-QX
 for barebox@lists.infradead.org; Thu, 10 Mar 2016 10:08:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1adxVn-0008Sy-4u
 for barebox@lists.infradead.org; Thu, 10 Mar 2016 11:08:07 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1adxVm-0001IZ-Tr
 for barebox@lists.infradead.org; Thu, 10 Mar 2016 11:08:06 +0100
Date: Thu, 10 Mar 2016 11:08:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160310100806.GM30994@pengutronix.de>
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
Subject: v2016.03.0
To: Barebox List <barebox@lists.infradead.org>

barebox-2016.03.0 is out. It has been delayed by a few days because of
the recently found bootm uImage issues. ARM uImage users should switch to
this release as chances are good that with earlier releases the kernel
overwrites the dtb and ends up non bootable. Beginning with this release
we support U-Boot FIT images, basically to be able to support booting
signed images. Another thing worth noting is RATP support which is now
available to machine control barebox over serial lines. Users using
send/expect sequences to control barebox should have a look.
As usual, detailed list of patches below.

Have Fun!
 Sascha


----------------------------------------------------------------
Alexander Kurz (1):
      arm/cpu/lowlevel: fix: possible processor mode change

Andrey Gusakov (2):
      include/linux/phy.h: Add MII_ADDR_C45
      net: Port bitbanged MDIO code from Linux kernel

Andrey Smirnov (7):
      miitool: Fix PHY argument handling
      mdio_bus: Change dev_info to dev_dbg
      mdio_bus: Add mdiobus_get_bus() function
      miitool: Don't print negative parent IDs
      mdio_bus: Change PHY's naming scheme
      miitool: Add code to register a PHY
      spi-nor: Port erase timeout fix from Linux

Antony Pavlov (2):
      drivers: video: fb: make locally used fb_set_shadowfb() static
      drivers: video: drop unused of_get_display_timing()

Daniel Schultz (2):
      arm: am33xx: Move function to read from Master OSC
      arm: am33xx: Master Osc clock speed handling

Harald Welte (1):
      bootm: Free allocated fdt buffer in error path

Jan Luebbe (4):
      fs: Add RATP fs support
      include pyserial trunk
      host side for barebox remote control
      bootm: add initial FIT support

Juergen Borleis (1):
      nfs: forward filesystem options to the kernel command line

Lucas Stach (12):
      ARM: tegra: clean up lowlevel entry
      ramoops: allow to build without OFTREE support
      ratp-console: select CRC16 and POLLER, depend on CONSOLE_FULL
      bootm: restore load DT message for plain oftree files
      bootm: parse initrd and oftree into correct struct members
      arm: bootm: unify kernel load address calculation
      arm: bootm: be more clever about kernel spacing
      efi: fix memory leak in error path
      net: efi: correct function signature of set_ethaddr
      fs: efi: avoid comparison with uninitialized variable
      bbu: use correct printf format specifier for size_t
      ratp: use proper defines for BAREBOX_CMD

Peter Mamonov (2):
      input: usb keyboard: fix BACKSPACE
      input: usb keyboard: fix CTRL+ combinations

Philipp Zabel (7):
      ARM: cm-fx6: set proper hostname
      net: phy: micrel: Staticise ksz8873mll_read_status()
      net: phy: micrel: use BIT macro
      net: phy: micrel: Be more const correct
      net: phy: micrel: Center FLP timing at 16ms
      net: phy: micrel: Add workaround for bad autoneg
      Documentation: usb: fix otg mode parameter description

Sascha Hauer (110):
      hush: fix indentation
      poller: Fix async poller
      keymap: Fix braces
      keymap: remove exotic and nonprintable keys
      keymap: Add keypad keys
      keymap: Add apostrophe, backslash and home
      keymap: Add keymap for keys with shift pressed
      input: Add input core
      input: usb keyboard: convert to input framework
      input: imx-keypad: Use dev_* functions
      input: move matrix_keypad_build_keymap() to C file
      input: imx-keypad: convert to input framework
      input: Add device tree parsing support for matrix keymap
      input: imx-keypad: Add device tree support
      input: gpio-keys: Use KEY_* keycodes
      vsprintf: Add support for %pa
      Convert users of PRINTF_CONVERSION_RESOURCE to %pa
      input: gpio-keys: convert to input framework
      Add Reliable Asynchronous Transfer Protocol
      barebox remote control
      pyserial: decrease timeouts
      defaultenv2: Add automount for RATPFS
      barebox remote control: Documentation
      ARM: zImage: add missing free() in appended device tree code
      bootm: Do not call uimage_close twice
      bootm: introduce bootm_get_os_size
      bootm: use names instead of numbers for image parts
      ARM: bootm: Use kernel handler to start barebox image
      bootm: Push dryrun to handlers
      bootm: move initrd code together
      bootm: move oftree code together
      bootm: Initialize bootm_data defaults in single place
      crypto: add digest_alloc_by_algo()
      crypto: add RSA support
      bootm: make verifying/hashing configurable
      bootm: Add option to force booting signed images
      nios2: Add missing typedef for umode_t
      x86: Add missing typedef for umode_t
      scripts: Add common header files for tools
      scripts/include: Add ARRAY_SIZE
      scripts: Add scripts/include to host compiler includes
      scripts: imx: Use Kernel includes
      scripts: mxs: Use Kernel includes
      ARM: i.MX: Add HABv3 Kconfig variables
      imx: hab: rename driver dir to hab/
      hab: Add HABv3 status report function
      scripts: imx-usb-loader: Make readonly arguments const
      scripts: imx-usb-loader: Move definitions up
      scripts: imx-image: Allow dcd offset 0x0
      scripts: imx-usb-loader: fully read images into memory
      scripts: imx-usb-loader: Move load_file up
      scripts: imx: Consolidate flash headers in imx tools
      scripts: imx-image: Add context struct to config parsers
      scripts: imx-image: move write_mem to context data
      scripts: imx-image: move check to context data
      scripts: imx: move config file parser to separate file
      scripts: imx: make libusb variables global
      scripts: imx-usb-loader: Add -s and -i options
      scripts: imx: Drop double check
      scripts: imx-image: move more variables to context data
      scripts: imx-image: pass config data to add_header_*
      scripts: imx-image: Support adding a Super Root Key to the image
      scripts: imx: Create CSF files from imx config file
      scripts: imx: Allow to create signed images
      scripts: imx: Generate signed images with imx-image
      scripts: imx-usb-loader: Use dcd len to invalidate dcd data
      scripts: imx-image: Factor out a read_file function
      scripts: imx-image: Allow to create HAB signed images suitable for US=
B upload
      ARM: i.MX53: CCXMX53: Move device tree out of dts/
      dts: update to v4.4-rc5
      dts: update to v4.4-rc6
      dts: update to v4.4-rc7
      dts: update to v4.4-rc8
      dts: update to v4.4
      dts: update to v4.5-rc1
      Make: i.MX: Allow to pass config file to cmd_imx_image
      images: imx: Add targets for signed images and signed usb images
      scripts: imx-usb-loader: Do not zero out boot_data_ptr
      imx: hab: Make hab status functions SoC specific
      Add initial regmap support
      mfd: mc13xxx: Switch to regmap support
      ARM: i.MX: iim: Switch to regmap support
      ARM: i.MX: ocotp: Fix fusebox size
      ARM: i.MX: ocotp: Explicitly access control register
      ARM: i.MX: ocotp: make priv the first argument of functions
      ARM: i.MX: ocotp: Fix error bit handling
      ARM: i.MX: ocotp: Switch to regmap support
      i.MX habv4: Fix RVT address for newer SoCs
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/fit'
      Merge branch 'for-next/hab'
      Merge branch 'for-next/input'
      Merge branch 'for-next/linux-headers'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/net'
      Merge branch 'for-next/ratp'
      Merge branch 'for-next/regmap'
      driver: Fix unregister device after device probe failure
      bootm: Fix resource_size_t format specifier
      blspec: Do not crash on config files without newline on last line
      blspec: ignore lines beginning with '#'
      scripts: make __init__.py nonempty
      commands: of_dump: Add description for -n option
      regmap: Add missing prototype for regmap_exit()
      regulator: fixed: Init gpio properly
      bootm: Fix booting uImages
      ARM: i.MX53-qsb: Fix gpio button polarity
      USB: imx-usb-phy: Fix uninitialized use of variable
      Release v2016.03.0

Stefan Christ (3):
      ARM: i.MX6: add function cpu_is_mx6s()
      ARM: imx: clocksource: add new DT compatible
      ARM: imx6: physom: fix phyflex workaround on Dual and Solo

Steffen Trumtrar (2):
      bitops: Fix shift overflow in GENMASK macros
      ARM: i.MX25: fixup broken DryIce GPR

Ulrich =D6lmann (1):
      docs: fix typos

Uwe Kleine-K=F6nig (2):
      Add initial support for Netgear ReadyNAS 104
      kwboot: do a filetype check before sending the image

Yegor Yefremov (17):
      fs: move struct timespec to include/linux/time.h
      fs: introduce include/linux/fs.h
      fs: move PAGE_CACHE definitions to include/linux/pagemap.h
      fs: ubifs: remove redundant macro defines
      fs: use linux/fs.h for file system related definitions
      fs: move pgoff_t definition to include/linux/types.h
      fs: ubifs: move dcache related definitions to include/linux/dcache.h
      fs: ubifs: move vfsmount definition to include/linux/mount.h
      fs: ubifs: move path definition to include/linux/path.h
      fs: ubifs: move file and file_system_type definitions to linux/fs.h
      Introduce include/linux/sched.h
      Introduce include/linux/spinlock.h
      Introduce include/linux/mutex.h
      Introduce include/linux/wait.h
      Introduce include/linux/rwsem.h
      fs: import magic.h from Linux kernel
      dcache: add missing linux/list.h include



-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
