Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZMy4B-0007jz-Rv
 for barebox@lists.infradead.org; Wed, 05 Aug 2015 12:45:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1ZMwCi-0005g4-Gn
 for barebox@lists.infradead.org; Wed, 05 Aug 2015 12:45:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1ZMy3m-0002Yu-Ld
 for barebox@lists.infradead.org; Wed, 05 Aug 2015 14:44:42 +0200
Date: Wed, 5 Aug 2015 14:44:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150805124442.GI18700@pengutronix.de>
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
Subject: v2015.08.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have a release for August. Some new features include framebuffer
backlight support, bootspec entries can now generate a suitable root=
kernel commandline option automatically, ubi device names are now
predictable. Also the state framework has received some updates.
As usual, detailed list of patches below.

Sascha

----------------------------------------------------------------
Alexander Smirnov (1):
      read_file_2(): drop unnecessary 'else'

Antony Pavlov (7):
      fs/tftp: handle incoming packets in the separate tftp_recv() function
      tftp_recv(): according to RFC1350 minimal tftp packet length is 4 bytes
      tftp_recv(): handle opcode field in a more natural way
      dns: handle incoming packets in the separate dns_recv() function
      treewide: fix 'new blank line at EOF' formatting error
      sandbox: asm/byteorder.h: fix guard macro name
      net: eth_send: Allow to use multiple network interfaces at once

Herve Codina (1):
      mach-clps711: call shutdown_barebox instead of arch_shutdown in reset_cpu

Juergen Borleis (6):
      Documentation: add some info about the reset reason framework
      Documentation: add some info about the reset variants
      Documentation: fix spelling
      Documentation: be more precise about the topic
      arch/BCM47xx: remove bogus copy'n'paste comment
      Devicetree/PPC: fix devicetree's fixup

Lucas Stach (11):
      usb: gadget: pxa27x: depend on right symbol
      MCI: pxa: depend on right symbol
      ARM: socfpga: add default ARCH_TEXT_BASE
      ARM: pxa: move lubbock TEXTBASE to Kconfig
      ARM: tegra: jump to maincluster earlier
      commands: digest: fix harmless warning
      parameter: always build MAC dev param functions
      video: backlight-pwm: depend on GPIOLIB
      net: enc28j60: fix set mac function signature
      ARM: imx: guf-neso: only try to enable USB if USB_ULPI is configured
      pinctrl: imx-iomux-v2: correct names in EXPORT_SYMBOL macros

Marc Kleine-Budde (8):
      state: uint8: use %u as format string
      state: uint8: add range check for uint8
      crypto: digest: provide static inline no-ops if digest is disabled
      parameter: allow setting of string parameters of zero length
      xfuncs: import xstrndup() from busybox
      state: struct variable_type::import: remove const from node argument
      state: add support for fixed length strings
      state: fixup: only export default value during fixup if set

Michael Grzeschik (1):
      xload: fix use after free

Philippe Leduc (1):
      digest: digest doesn't return an error if the signature length is incorrect

Sascha Hauer (96):
      ARM: dts: Karo tx6: increase barebox partition to 4MB
      mtd: partition: implement write_oob
      filetype: Add filetype for MXS bootstream
      ARM: i.MX6: bbu nand: Move to common place
      imx-bbu-nand-fcb: Fix debug messages
      imx-bbu-nand-fcb: Use barebox partition instead of whole device
      imx-bbu-nand-fcb: make available for i.MX28 aswell
      imx-bbu-nand-fcb: Let DBBT start at page 1
      imx-bbu-nand-fcb: Erase whole partition
      imx-bbu-nand-fcb: Split space for firmware in two equal regions
      video: stmfb: Add device tree support
      video: Add backlight support
      ARM: MXS: ocotp: Register a separate device
      video: Add PWM backlight support
      ARM: i.MX28: Add PWM clk support
      PWM: Allow multiple PWMs per device node
      PWM: Add MXS PWM support
      mtd: m25p80: Whitespace cleanup
      blspec: Add missing prototype for blspec_scan_device
      blspec: Automatically attach UBI devices
      dts: update to v4.1-rc4
      dts: update to v4.1-rc5
      dts: update to v4.1-rc6
      dts: update to v4.1-rc7
      dts: update to v4.1-rc8
      device parameters: sort alphabetically
      Add globalvar_add_simple_string function
      cdev: Add partuuid string to struct cdev
      fs: Add device parameter for Linux root= option
      fs: ubifs: Implement Linux rootarg
      fs: nfs: Implement Linux rootarg
      blspec: Automatically append rootarg
      mtd: cfi-flash: We can print longlongs
      mtd: cfi-flash: save indention level
      mtd: cfi-flash: statically initialize instead of memset
      mtd: cfi-flash: replace ifdef with IS_ENABLED
      mtd: cfi-flash: remove unnecessary ifdefs
      mtd: cfi-flash: make flash_detect_width more readable
      mtd: cfi-flash: return 0 for success
      mtd: cfi-flash: turn some messages into vdbg
      mtd: cfi-flash: use unaligned accessor functions
      mtd: cfi-flash: Coding style cleanup
      mtd: cfi-flash: remove dead code
      ARM: OMAP: remove unused CONFIG_OMAP3_CLOCK_CONFIG option
      mtd: Add mtd concat support
      mtd: cfi-flash: Add mtd concat support
      commands: detect: use device_detect_by_name
      driver: detect: detect parent devices aswell
      blspec: Use device_detect_by_name
      ubi: Use preditable device names
      mtd: detect ubi devices automatically
      ubi: Lower 'already attached' message to debug level
      commands: mount: detect the device to be mounted
      ubi: Update documentation
      net: Make set_ethaddr argument const
      net: eth: Do not rely on CONFIG_PARAMETER to be enabled
      serial: ns16550: Fix reading clock-frequency property
      net: smc911x: Add device tree support
      image_renderer: Use read_file_2
      mtd: Make devname argument to add_mtd_device const
      mtd: m25p80: make flash_name const
      bbu: Add a standard file-to-device-copy handler
      ARM: AM335x: replace specific barebox update handler with generic one
      ARM: OMAP3: Change DSS divider to the one U-Boot uses
      ARM: OMAP: Add omap3 USB loader tool
      bus: omap-gpmc: fix wrong bit setting
      of: export of_platform_device_create
      bus: omap-gpmc: Add Generic device support
      ARM: add a machine number mechanism for boarddata
      ARM: beagleboard: Move to multiimage support
      net: Move library functions to net/lib.c
      ppc: replace extern inline with static inline
      blackfin: replace extern inline with static inline
      treewide: replace __inline__ with inline
      ARM: beagleboard: register update handlers for NAND
      usb: musb: Use proper timeout loop
      Merge branch 'for-next/am335x'
      Merge branch 'for-next/bbu'
      Merge branch 'for-next/blspec'
      Merge branch 'for-next/cfi-flash'
      Merge branch 'for-next/doc'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx-bbu-nand-fcb'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/mxs'
      Merge branch 'for-next/net'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/pwm'
      Merge branch 'for-next/state'
      Merge branch 'for-next/blspec'
      Build with -fno-delete-null-pointer-checks
      ARM: omap: xload: Fix func uninitialized warning
      Makefile: Use cc-option for -fno-delete-null-pointer-checks
      drop <stddef.h> includes
      Release v2015.08.0

Teresa Remmet (3):
      boards: phytec-som-am335x: Get ready for EMMC boot
      ARM: dts: am33xx-strip: Keep devices we can boot from
      ARM: dts: am33xx-strip: Strip more unused nodes

Wadim Egorov (3):
      image: am335x: Generate SPI MLO images
      images: Add file size check for PBLX files
      ARM: OMAP: Add max file size for PBLX images

 .../devicetree/bindings/barebox/barebox,state.rst  |  19 +-
 Documentation/filesystems/nfs.rst                  |  13 +
 Documentation/user/booting-linux.rst               |   7 +
 Documentation/user/reset-reason.rst                |  47 ++
 Documentation/user/system-reset.rst                |  64 ++
 Documentation/user/ubi.rst                         |  44 +-
 Documentation/user/user-manual.rst                 |   2 +
 Makefile                                           |   4 +-
 arch/arm/boards/beagle/Makefile                    |   1 +
 arch/arm/boards/beagle/board.c                     |  20 +
 .../beagle/{env => defaultenv-beagle}/boot/mmc     |   0
 .../{env => defaultenv-beagle}/boot/nand-ubi       |   0
 .../{env => defaultenv-beagle}/boot/nand-ubi-dt    |   0
 .../{env => defaultenv-beagle}/init/mtdparts-nand  |   0
 .../network/eth0-discover                          |   0
 arch/arm/boards/beagle/lowlevel.c                  |  39 +-
 arch/arm/boards/guf-neso/board.c                   |   9 +-
 arch/arm/boards/phytec-som-am335x/board.c          |   5 +-
 arch/arm/configs/am335x_mlo_defconfig              |   1 +
 arch/arm/configs/lubbock_defconfig                 |   1 -
 arch/arm/configs/omap3530_beagle_defconfig         |  81 +-
 arch/arm/configs/omap3530_beagle_xload_defconfig   |  17 +-
 arch/arm/configs/phytec-phycard-omap3_defconfig    |   1 -
 arch/arm/configs/socfpga_defconfig                 |  70 +-
 arch/arm/cpu/start.c                               |  43 +-
 arch/arm/dts/am33xx-strip.dtsi                     |   5 +-
 arch/arm/dts/imx6dl-tx6u-801x.dts                  |   4 +-
 arch/arm/include/asm/barebox-arm.h                 |  27 +-
 arch/arm/mach-clps711x/reset.c                     |   2 +-
 arch/arm/mach-imx/Kconfig                          |   9 -
 arch/arm/mach-imx/Makefile                         |   1 -
 arch/arm/mach-imx/include/mach/bbu.h               |   9 -
 arch/arm/mach-mxs/include/mach/imx28-regs.h        |   1 +
 arch/arm/mach-mxs/ocotp.c                          |   9 +-
 arch/arm/mach-omap/Kconfig                         |  37 +-
 arch/arm/mach-omap/Makefile                        |   6 +-
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c            |  56 --
 arch/arm/mach-omap/include/mach/bbu.h              |   5 +-
 arch/arm/mach-omap/include/mach/omap3-clock.h      |   2 +-
 arch/arm/mach-omap/include/mach/omap3-generic.h    |   2 +
 arch/arm/mach-omap/omap3_generic.c                 |   5 -
 arch/arm/mach-omap/omap3_xload_usb.c               | 185 +++++
 arch/arm/mach-omap/xload.c                         |  14 +-
 arch/arm/mach-pxa/Kconfig                          |   1 +
 arch/arm/mach-socfpga/Kconfig                      |   4 +
 arch/arm/mach-tegra/include/mach/lowlevel.h        |  15 +-
 arch/arm/mach-tegra/tegra_avp_init.c               |   3 -
 arch/blackfin/include/asm/io.h                     |   8 +-
 arch/blackfin/include/asm/processor.h              |   6 +-
 arch/blackfin/include/asm/swab.h                   |   8 +-
 arch/mips/mach-bcm47xx/reset.c                     |   5 -
 arch/ppc/include/asm/atomic.h                      |   8 +-
 arch/ppc/include/asm/bitops.h                      |  20 +-
 arch/ppc/include/asm/io.h                          |  20 +-
 arch/ppc/include/asm/swab.h                        |   8 +-
 arch/ppc/mach-mpc5xxx/cpu.c                        |  12 +-
 arch/sandbox/include/asm/byteorder.h               |   6 +-
 commands/automount.c                               |   1 -
 commands/detect.c                                  |   5 +-
 commands/digest.c                                  |   7 +-
 commands/export.c                                  |   1 -
 commands/false.c                                   |   1 -
 commands/help.c                                    |   1 -
 commands/mount.c                                   |   2 +
 commands/net.c                                     |   1 -
 commands/readline.c                                |   1 -
 commands/timeout.c                                 |   1 -
 commands/trigger.c                                 |   1 -
 commands/true.c                                    |   1 -
 commands/ubi.c                                     |   1 -
 commands/version.c                                 |   1 -
 common/Kconfig                                     |  18 +
 common/Makefile                                    |   1 +
 common/bbu.c                                       | 113 +++
 common/blspec.c                                    |  88 +-
 common/complete.c                                  |   1 -
 common/filetype.c                                  |   3 +
 .../imx6-bbu-nand.c => common/imx-bbu-nand-fcb.c   | 248 ++++--
 common/kallsyms.c                                  |   1 -
 common/parser.c                                    |   1 -
 common/partitions.c                                |   1 +
 common/partitions/dos.c                            |   4 +
 common/partitions/parser.h                         |   1 +
 common/state.c                                     | 204 ++++-
 common/tlsf.c                                      |   1 -
 drivers/base/driver.c                              |  25 +-
 drivers/bus/omap-gpmc.c                            | 144 +++-
 drivers/clk/mxs/clk-imx28.c                        |   1 +
 drivers/mci/Kconfig                                |   2 +-
 drivers/mtd/Kconfig                                |  10 +
 drivers/mtd/Makefile                               |   1 +
 drivers/mtd/core.c                                 |  42 +-
 drivers/mtd/devices/m25p80.c                       |  33 +-
 drivers/mtd/mtd.h                                  |   2 +-
 drivers/mtd/mtdconcat.c                            | 765 +++++++++++++++++
 drivers/mtd/mtdoob.c                               |   2 +-
 drivers/mtd/mtdraw.c                               |   2 +-
 drivers/mtd/nor/cfi_flash.c                        | 747 +++++++++--------
 drivers/mtd/nor/cfi_flash.h                        | 138 ++-
 drivers/mtd/nor/cfi_flash_amd.c                    |  41 +-
 drivers/mtd/nor/cfi_flash_intel.c                  | 107 ++-
 drivers/mtd/partition.c                            |  13 +
 drivers/mtd/ubi/build.c                            |   9 +-
 drivers/mtd/ubi/cdev.c                             |   4 +-
 drivers/mtd/ubi/kapi.c                             |   1 +
 drivers/net/altera_tse.c                           |   2 +-
 drivers/net/ar231x.c                               |   2 +-
 drivers/net/arc_emac.c                             |   2 +-
 drivers/net/at91_ether.c                           |   2 +-
 drivers/net/cpsw.c                                 |   2 +-
 drivers/net/cs8900.c                               |   2 +-
 drivers/net/davinci_emac.c                         |   2 +-
 drivers/net/designware.c                           |   2 +-
 drivers/net/dm9k.c                                 |   2 +-
 drivers/net/enc28j60.c                             |   2 +-
 drivers/net/ep93xx.c                               |   2 +-
 drivers/net/ethoc.c                                |   2 +-
 drivers/net/fec_imx.c                              |   2 +-
 drivers/net/fec_mpc5200.c                          |   2 +-
 drivers/net/gianfar.c                              |   2 +-
 drivers/net/ks8851_mll.c                           |   2 +-
 drivers/net/macb.c                                 |   2 +-
 drivers/net/mvneta.c                               |   2 +-
 drivers/net/netx_eth.c                             |   2 +-
 drivers/net/orion-gbe.c                            |   2 +-
 drivers/net/rtl8139.c                              |   2 +-
 drivers/net/rtl8169.c                              |   2 +-
 drivers/net/smc91111.c                             |   2 +-
 drivers/net/smc911x.c                              |   8 +-
 drivers/net/tap.c                                  |   2 +-
 drivers/net/usb/asix.c                             |   2 +-
 drivers/net/usb/smsc95xx.c                         |   2 +-
 drivers/net/xgmac.c                                |   2 +-
 drivers/of/platform.c                              |   2 +-
 drivers/pinctrl/imx-iomux-v2.c                     |   6 +-
 drivers/pwm/Kconfig                                |   6 +
 drivers/pwm/Makefile                               |   1 +
 drivers/pwm/core.c                                 |   7 +-
 drivers/pwm/pwm-mxs.c                              | 174 ++++
 drivers/serial/serial_ns16550.c                    |   9 +-
 drivers/usb/gadget/Kconfig                         |   2 +-
 drivers/usb/musb/musb_core.c                       |  13 +-
 drivers/video/Kconfig                              |  12 +
 drivers/video/Makefile                             |   2 +
 drivers/video/backlight-pwm.c                      | 199 +++++
 drivers/video/backlight.c                          |  90 ++
 drivers/video/stm.c                                |  52 +-
 dts/Bindings/clock/silabs,si5351.txt               |   4 +-
 dts/Bindings/input/touchscreen/tsc2005.txt         |   4 +-
 dts/Bindings/mtd/{m25p80.txt => jedec,spi-nor.txt} |   6 +-
 dts/Bindings/net/cdns-emac.txt                     |   3 +-
 dts/Bindings/usb/renesas_usbhs.txt                 |   6 +-
 dts/src/arm/am335x-bone-common.dtsi                |  19 +
 dts/src/arm/am335x-boneblack.dts                   |   4 -
 dts/src/arm/am335x-evmsk.dts                       |   2 +-
 dts/src/arm/am35xx-clocks.dtsi                     |  14 +-
 dts/src/arm/armada-375.dtsi                        |   2 +-
 dts/src/arm/armada-38x.dtsi                        |   2 +-
 dts/src/arm/armada-39x.dtsi                        |   2 +-
 dts/src/arm/armada-xp-linksys-mamba.dts            |   5 +
 dts/src/arm/dm816x.dtsi                            |   4 +-
 dts/src/arm/dove-cubox.dts                         |   1 +
 dts/src/arm/exynos4412-trats2.dts                  |   2 +-
 dts/src/arm/exynos5420-peach-pit.dts               |   1 +
 dts/src/arm/exynos5800-peach-pi.dts                |   1 +
 dts/src/arm/imx27.dtsi                             |   2 +-
 dts/src/arm/omap3-devkit8000.dts                   |   2 +
 dts/src/arm/omap3-n900.dts                         |   4 +-
 dts/src/arm/tegra124.dtsi                          |   8 +-
 dts/src/arm/vexpress-v2p-ca15_a7.dts               |   1 +
 dts/src/arm/vexpress-v2p-ca9.dts                   |  11 +-
 dts/src/arm/zynq-7000.dtsi                         |   4 +-
 dts/src/arm64/arm/juno-motherboard.dtsi            |  31 +-
 dts/src/arm64/mediatek/mt8173-evb.dts              |   3 +-
 fs/cramfs/cramfs.c                                 |   1 -
 fs/ext4/ext4_common.c                              |   1 -
 fs/fat/fat.c                                       |   1 -
 fs/fs.c                                            |  37 +
 fs/nfs.c                                           |  24 +
 fs/ramfs.c                                         |   1 -
 fs/tftp.c                                          |  47 +-
 fs/ubifs/ubifs.c                                   |  23 +
 images/Makefile                                    |   3 +
 images/Makefile.am33xx                             |  28 +
 images/Makefile.omap3                              |  19 +
 include/bbu.h                                      |  23 +
 include/blspec.h                                   |   1 +
 include/digest.h                                   |  11 +
 include/driver.h                                   |   3 +
 include/filetype.h                                 |   1 +
 include/fs.h                                       |   4 +
 include/globalvar.h                                |  19 +
 include/linux/bitops.h                             |   4 +-
 include/linux/mtd/concat.h                         |  34 +
 include/linux/mtd/mtd.h                            |   2 +-
 include/linux/mtd/ubi.h                            |   1 +
 include/net.h                                      |   4 +-
 include/of.h                                       |   2 +
 include/pwm.h                                      |   2 +
 include/tlsf.h                                     |   2 -
 include/video/backlight.h                          |  20 +
 include/xfuncs.h                                   |   1 +
 lib/fnmatch.c                                      |   1 -
 lib/gui/image_renderer.c                           |   8 +-
 lib/libfile.c                                      |   4 +-
 lib/lzo/lzo1x_decompress_safe.c                    |   1 -
 lib/parameter.c                                    |  14 +-
 lib/random.c                                       |   1 -
 lib/strtox.c                                       |   1 -
 lib/xfuncs.c                                       |  22 +
 net/Makefile                                       |   1 +
 net/dns.c                                          |  13 +-
 net/eth.c                                          |  29 +-
 net/lib.c                                          | 109 +++
 net/net.c                                          |  81 +-
 net/nfs.c                                          |   1 -
 scripts/Makefile                                   |   3 +
 scripts/omap3-usb-loader.c                         | 921 +++++++++++++++++++++
 218 files changed, 4892 insertions(+), 1212 deletions(-)
 create mode 100644 Documentation/user/reset-reason.rst
 create mode 100644 Documentation/user/system-reset.rst
 rename arch/arm/boards/beagle/{env => defaultenv-beagle}/boot/mmc (100%)
 rename arch/arm/boards/beagle/{env => defaultenv-beagle}/boot/nand-ubi (100%)
 rename arch/arm/boards/beagle/{env => defaultenv-beagle}/boot/nand-ubi-dt (100%)
 rename arch/arm/boards/beagle/{env => defaultenv-beagle}/init/mtdparts-nand (100%)
 rename arch/arm/boards/beagle/{env => defaultenv-beagle}/network/eth0-discover (100%)
 create mode 100644 arch/arm/mach-omap/omap3_xload_usb.c
 rename arch/arm/mach-imx/imx6-bbu-nand.c => common/imx-bbu-nand-fcb.c (69%)
 create mode 100644 drivers/mtd/mtdconcat.c
 create mode 100644 drivers/pwm/pwm-mxs.c
 create mode 100644 drivers/video/backlight-pwm.c
 create mode 100644 drivers/video/backlight.c
 rename dts/Bindings/mtd/{m25p80.txt => jedec,spi-nor.txt} (85%)
 create mode 100644 images/Makefile.omap3
 create mode 100644 include/linux/mtd/concat.h
 create mode 100644 include/video/backlight.h
 create mode 100644 net/lib.c
 create mode 100644 scripts/omap3-usb-loader.c
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
