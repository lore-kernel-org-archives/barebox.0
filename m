Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bjnEF-0008Bw-Ec
 for barebox@lists.infradead.org; Tue, 13 Sep 2016 12:54:25 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1bjnDt-0007Ry-0m
 for barebox@lists.infradead.org; Tue, 13 Sep 2016 14:54:01 +0200
Received: from sha by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1bjnDs-0000y3-Qh
 for barebox@lists.infradead.org; Tue, 13 Sep 2016 14:54:00 +0200
Date: Tue, 13 Sep 2016 14:54:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160913125400.4onu6xa3ektvsii5@pengutronix.de>
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
Subject: v2016.09.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have a September release, a little delayed this time, but still
before october begins.
The biggest user visible change with this release is that nv variables
are now saved automatically on shutdown/reset/boot whenever they
changed, so it's no longer necessary to do this manually (The
environment itself must still be saved manually though). The same
happens with state, it is saved automatically now also.
See a full list of patches below.

Sascha

----------------------------------------------------------------
Alexander Kurz (10):
      scripts: imx: const function arguments
      scripts: imx-usb-loader: const function args
      scripts: imx-usb-loader: remove useless code
      scripts: imx-usb-loader: remove useless variable
      scripts: imx-usb-loader: structured protocol access
      scripts: imx-usb-loader: split off topic-code into functions
      mtd: spi-nor: add new variants
      mc13xxx: make driver-provided SPI frequency overridable
      ARM i.MX31: add SPI support
      ARM i.MX31: Add i2c register convenience functions

Alexander Shiyan (4):
      ARM: clps711x: clep7212: Increase the wait state for chip select 3
      ARM: clps711x: Sync CLK susbsystem with kernel
      ARM: clps711x: clep7212: Register board env during runtime
      defaultenv: Unblank cursor at startup

Andrey Smirnov (7):
      imx_thermal: Remove leftover debug output
      mfd: syscon: Decouple syscon interface from platform devices
      mfd: syscon: Don't check xzalloc return for NULL
      mfd: syscon: Use IOMEM instead of explicit cast
      i.MX: ocotp: Register regmap against orignal device
      of_unflatten_dtb(): Check return value with IS_ERR
      i.MX: scripts: Fix a bug in imx-image

Antony Pavlov (5):
      Documentation: tplink-mr3020: fix 'Could not lex literal_block as "c"=
' warning
      Documentation: barebox: fix 'Could not lex literal_block as "c"' warn=
ing
      Documentation: variables: fix error in "code-block" directive
      Documentation: usb: fix sphinx warning
      Documentation: aarch64-qemu-virt: fix sphinx issues

Lucas Stach (6):
      ARM: imx: add QP as supported i.MX6 variant
      ARM: nitrogen6x: use upstream DTs
      ARM: nitrogen6x: use imx6q_barebox_entry
      ARM: nitrogen6x: disable address mirroring
      ARM: add support for Nitrogen6MAX QP variant
      ARM: nitrogen: rename to nitrogen6

Renaud Barbier (1):
      bbu: parameters are inverted in error message

Sascha Hauer (50):
      net: usb: use minimum timeout when polling for new packets
      net: eth: open correct edev in eth_check_open
      net: introduce for_each_netdev iterator
      net: eth: add name to struct eth_device
      net: Pass network device to net_answer_arp()
      fs: Check for correct open mode
      printk: Fix pr_cont
      nv: Do not save nv variables while loading
      nv: Save nv variables on shutdown
      nv: Add option to explicitly save nv variables
      nv: Allow to set/remove multiple variables with one command
      nv: Use dev_remove_param to delete nv variable
      state: Save on shutdown
      blspec: remove unused blspec_boot_devicename
      blspec: Remove once/default handling
      blspec: remove unused function prototype
      boot: Call blspec_scan_directory() only on strings containing an abso=
lute path
      lib: Add Kconfig symbol for FNMATCH
      nv: Allow wildcards when removing NV vars
      getopt: Add support for '--' to stop option parsing
      include: Move bulk of boot.h to bootm.h
      blpec: rename struct lspec -> bootentries
      blspec: factor out a struct bootentry
      bootentries: Add title/description
      blspec: separate bootentries from blspec entries
      blspec: Make blspec_boot static
      bootentries: Move menu display string allocation to bootentries_alloc=
()
      bootentries: Move struct bootentries to include/boot.h
      boot: Use struct bootentries to pass around data
      boot: Move code to common/
      boot: add single quotes when printing boot target names
      boot command: Explicitly complain when boot target list is empty
      blspec: Turn message back to debug level
      boot: Print a message when a boot target string does not lead to a bo=
ot target
      dts: update to v4.7-rc6
      dts: update to v4.7
      Merge branch 'for-next/boot'
      Merge branch 'for-next/clps711x'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/net'
      Merge branch 'for-next/nv'
      Merge branch 'for-next/syscon'
      Merge branch 'for-next/video-backlight'
      ARM: vector_table: Fix creation of second level page table
      video: backlight: fix the value of 'brightness_max'
      commands: usbgadget: Fix -d option help text
      blspec: Handle nfs:// pathes from boot
      Release v2016.09.0

Steffen Trumtrar (1):
      scripts: socfpga_get_sequencer: convert potential CRLF to LF

Teresa Remmet (1):
      ARM: phytec-som-am335x: Remove kernel and oftree partiton in NAND

Ulrich =D6lmann (3):
      ARM: dts: i.MX6: update RIoTboard device tree
      commands: ubiupdatevol: store return value of read() in a signed int
      commands: ubiupdatevol: confirm success with return value 0

Uwe Kleine-K=F6nig (2):
      ARM: i.MX: pcm043: add a flash-header.imxcfg
      xstrdup: don't panic on xstrdup(NULL)

Vicente Bergas (1):
      fix ARMv8 interference with ARMv7

iw3gtf@arcor.de (4):
      video/backlight-pwm: fixed a loop index going out of range.
      video/backlight-pwm: fix the value of 'brightness_max'.
      video/backlight-pwm: code readability improvement.
      video/backlight-pwm: properly handle the case of an empty 'brightness=
-levels' in the device tree.

 Documentation/boards/aarch64-qemu-virt.rst         |   7 +-
 Documentation/boards/mips/tplink-mr3020.rst        |  12 +-
 Documentation/user/barebox.rst                     |  60 ++-
 Documentation/user/usb.rst                         |   4 +-
 Documentation/user/variables.rst                   |   1 +
 Makefile                                           |   2 +-
 arch/arm/Makefile                                  |   3 +-
 arch/arm/boards/Makefile                           |   2 +-
 arch/arm/boards/archosg9/archos_features.c         |   3 +-
 .../1066mhz_4x128mx16.imxcfg                       |   0
 .../1066mhz_4x256mx16.imxcfg                       |   0
 .../1066mhz_4x512mx16-qp.imxcfg                    |  67 ++++
 .../800mhz_4x128mx16.imxcfg                        |   0
 .../800mhz_4x256mx16.imxcfg                        |   0
 .../Makefile                                       |   0
 .../board.c                                        |  15 +-
 .../flash-header-nitrogen6dl-1g.imxcfg             |   0
 .../flash-header-nitrogen6dl-2g.imxcfg             |   0
 .../flash-header-nitrogen6q-1g.imxcfg              |   0
 .../flash-header-nitrogen6q-2g.imxcfg              |   0
 .../flash-header-nitrogen6qp-max.imxcfg            |  10 +
 .../lowlevel.c                                     |  24 +-
 .../ram-base.imxcfg                                |   4 +-
 arch/arm/boards/clep7212/Makefile                  |   1 +
 arch/arm/boards/clep7212/clep7212.c                |   5 +-
 .../clep7212/{env =3D> defaultenv-clep7212}/boot/nor |   2 +-
 .../{env =3D> defaultenv-clep7212}/init/mtdparts-nor |   0
 .../nv/autoboot_timeout                            |   0
 .../clep7212/defaultenv-clep7212/nv/boot.default   |   1 +
 .../defaultenv-clep7212/nv/linux.bootargs.console  |   1 +
 .../defaultenv-clep7212/nv/linux.bootargs.debug    |   1 +
 arch/arm/boards/clep7212/env/init/bootsource       |   9 -
 .../boards/clep7212/env/nv/linux.bootargs.console  |   1 -
 arch/arm/boards/embest-riotboard/board.c           |   2 +-
 arch/arm/boards/highbank/init.c                    |   2 +-
 .../phytec-phycore-imx35/flash-header.imxcfg       |  37 ++
 .../defaultenv-physom-am335x/boot/nand             |   6 +-
 arch/arm/configs/clps711x_defconfig                |  29 +-
 arch/arm/configs/imx_v7_defconfig                  |   2 +-
 arch/arm/cpu/dtb.c                                 |   2 +-
 arch/arm/cpu/mmu.c                                 |   2 +-
 arch/arm/dts/Makefile                              |   2 +-
 arch/arm/dts/am335x-phytec-phycard-som.dtsi        |  12 +-
 arch/arm/dts/am335x-phytec-phycore-som.dtsi        |  12 +-
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi        |  12 +-
 arch/arm/dts/imx6dl-nitrogen6x.dts                 |   8 +-
 arch/arm/dts/imx6q-nitrogen6x.dts                  |  12 +-
 arch/arm/dts/imx6qdl-nitrogen6_max.dtsi            |  69 ++++
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi               |   2 -
 arch/arm/dts/imx6qp-nitrogen6_max.dts              |  44 +++
 arch/arm/dts/imx6s-riotboard.dts                   | 355 +-----------------
 arch/arm/lib/bootm.c                               |   3 +-
 arch/arm/mach-clps711x/Kconfig                     |   1 +
 arch/arm/mach-clps711x/clock.c                     |  70 ++--
 arch/arm/mach-clps711x/devices.c                   |   4 -
 arch/arm/mach-imx/Kconfig                          |   4 +-
 arch/arm/mach-imx/imx.c                            |   2 +
 arch/arm/mach-imx/include/mach/devices-imx31.h     |  21 +-
 arch/arm/mach-imx/ocotp.c                          |   2 +-
 arch/arm/mach-omap/omap_generic.c                  |   2 +-
 arch/blackfin/lib/blackfin_linux.c                 |   1 +
 arch/efi/efi/efi-image.c                           |   1 +
 arch/mips/boot/dtb.c                               |   2 +-
 arch/mips/lib/bootm.c                              |   1 +
 arch/nios2/lib/bootm.c                             |   1 +
 arch/openrisc/lib/dtb.c                            |   2 +-
 arch/ppc/lib/ppclinux.c                            |   1 +
 commands/Kconfig                                   |   1 +
 commands/boot.c                                    | 415 ++---------------=
----
 commands/bootm.c                                   |   2 +-
 commands/nv.c                                      |  43 ++-
 commands/ubi.c                                     |   8 +-
 commands/usbgadget.c                               |   2 +-
 common/Kconfig                                     |   5 +
 common/Makefile                                    |   1 +
 common/bbu.c                                       |   4 +-
 common/blspec.c                                    | 343 +++++++----------
 common/boot.c                                      | 340 +++++++++++++++++
 common/bootm.c                                     |   9 +-
 common/environment.c                               |   4 +
 common/globalvar.c                                 | 134 ++++++-
 common/image-fit.c                                 |   2 +-
 common/state/state.c                               |  15 +
 common/state/state.h                               |   1 +
 defaultenv/defaultenv-1/bin/init                   |   2 +-
 defaultenv/defaultenv-2-base/bin/init              |   1 +
 drivers/aiodev/imx_thermal.c                       |   2 -
 drivers/mfd/mc13xxx.c                              |   3 +-
 drivers/mfd/syscon.c                               |  83 +++--
 drivers/mtd/spi-nor/spi-nor.c                      |   5 +
 drivers/net/usb/usbnet.c                           |   2 +-
 drivers/spi/Kconfig                                |   2 +-
 drivers/spi/imx_spi.c                              |  15 +-
 drivers/usb/gadget/f_fastboot.c                    |   2 +-
 drivers/video/backlight-pwm.c                      |  33 +-
 dts/include/dt-bindings/input/linux-event-codes.h  |  32 ++
 dts/src/arm/armada-385-linksys.dtsi                |   4 +-
 dts/src/arm/sun4i-a10.dtsi                         |  21 +-
 dts/src/arm/sun5i-a10s.dtsi                        |  11 +-
 dts/src/arm/sun5i-r8-chip.dts                      |   2 +-
 dts/src/arm/sun7i-a20.dtsi                         |  13 +-
 dts/src/arm/tegra30-beaver.dts                     |   3 +-
 fs/fs.c                                            |  12 +-
 images/Makefile.imx                                |  29 +-
 include/blspec.h                                   |  91 +----
 include/boot.h                                     | 139 ++-----
 include/bootm.h                                    | 125 +++++++
 include/globalvar.h                                |   3 +
 include/image-fit.h                                |   2 +-
 include/net.h                                      |  10 +
 include/printk.h                                   |   2 +-
 include/spi/imx-spi.h                              |   7 +
 lib/Kconfig                                        |   3 +
 lib/Makefile                                       |   2 +-
 lib/getopt.c                                       |   5 +
 lib/xfuncs.c                                       |   7 +-
 net/eth.c                                          |  28 +-
 net/net.c                                          |   5 +-
 scripts/imx/imx-image.c                            |  11 +-
 scripts/imx/imx-usb-loader.c                       | 377 +++++++++--------=
--
 scripts/imx/imx.h                                  |   7 +-
 scripts/socfpga_get_sequencer                      |   2 +
 122 files changed, 1715 insertions(+), 1680 deletions(-)
 rename arch/arm/boards/{boundarydevices-nitrogen6x =3D> boundarydevices-ni=
trogen6}/1066mhz_4x128mx16.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x =3D> boundarydevices-ni=
trogen6}/1066mhz_4x256mx16.imxcfg (100%)
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6/1066mhz_4x512=
mx16-qp.imxcfg
 rename arch/arm/boards/{boundarydevices-nitrogen6x =3D> boundarydevices-ni=
trogen6}/800mhz_4x128mx16.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x =3D> boundarydevices-ni=
trogen6}/800mhz_4x256mx16.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x =3D> boundarydevices-ni=
trogen6}/Makefile (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x =3D> boundarydevices-ni=
trogen6}/board.c (74%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x =3D> boundarydevices-ni=
trogen6}/flash-header-nitrogen6dl-1g.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x =3D> boundarydevices-ni=
trogen6}/flash-header-nitrogen6dl-2g.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x =3D> boundarydevices-ni=
trogen6}/flash-header-nitrogen6q-1g.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x =3D> boundarydevices-ni=
trogen6}/flash-header-nitrogen6q-2g.imxcfg (100%)
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6/flash-header-=
nitrogen6qp-max.imxcfg
 rename arch/arm/boards/{boundarydevices-nitrogen6x =3D> boundarydevices-ni=
trogen6}/lowlevel.c (68%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x =3D> boundarydevices-ni=
trogen6}/ram-base.imxcfg (95%)
 rename arch/arm/boards/clep7212/{env =3D> defaultenv-clep7212}/boot/nor (6=
3%)
 rename arch/arm/boards/clep7212/{env =3D> defaultenv-clep7212}/init/mtdpar=
ts-nor (100%)
 rename arch/arm/boards/clep7212/{env =3D> defaultenv-clep7212}/nv/autoboot=
_timeout (100%)
 create mode 100644 arch/arm/boards/clep7212/defaultenv-clep7212/nv/boot.de=
fault
 create mode 100644 arch/arm/boards/clep7212/defaultenv-clep7212/nv/linux.b=
ootargs.console
 create mode 100644 arch/arm/boards/clep7212/defaultenv-clep7212/nv/linux.b=
ootargs.debug
 delete mode 100644 arch/arm/boards/clep7212/env/init/bootsource
 delete mode 100644 arch/arm/boards/clep7212/env/nv/linux.bootargs.console
 create mode 100644 arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg
 create mode 100644 arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
 create mode 100644 arch/arm/dts/imx6qp-nitrogen6_max.dts
 create mode 100644 common/boot.c
 create mode 100644 include/bootm.h

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
