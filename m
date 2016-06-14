Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCiWW-0005JJ-9k
 for barebox@lists.infradead.org; Tue, 14 Jun 2016 07:12:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1bCiWA-0005mV-PQ
 for barebox@lists.infradead.org; Tue, 14 Jun 2016 09:12:10 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1bCiWA-0000CQ-H5
 for barebox@lists.infradead.org; Tue, 14 Jun 2016 09:12:10 +0200
Date: Tue, 14 Jun 2016 09:12:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160614071210.GR31666@pengutronix.de>
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
Subject: v2016.06.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

barebox-2016.06.0 is out. Most stuff this time is in the category fixes
and cleanups which is a good thing. There are some patches in this
release that make functions that have the same name as in the standard
C library have the same semantic. Most prominent example is asprintf
which now behaves like libc asprintf. Since the previous behaviour of
asprintf was very useful (returning the pointer to the allocated string
is just so natural) we now have the same function in basprintf. This is
done to make it easier to generate code that can be used under barebox
and also in userspace.
As usual see below for a complete list of patches for this release.

Sascha

----------------------------------------------------------------
Alexander Shiyan (1):
      ATA: platform_ide: Fix resource allocation

Alexander Stein (1):
      reset_source: export reset_source_set_priority

Andrey Smirnov (10):
      PCI: imx6: Simplify imx6_pcie_remove()
      OF: Port of_match_device() and of_device_get_match_data()
      PCI: imx6: Add proper i.MX6+ reset sequence
      PCI: imx6: Rename imx6_pcie_start_link() to imx6_pcie_establish_link()
      PCI: imx6: Move imx6_pcie_reset_phy() near other PHY handling functio=
ns
      commands: mmc_extcsd: Fix incorrect usage of sprintf
      ATA: Implement a hook for 'devinfo'
      PCI: imx6: Move PHY reset into imx6_pcie_establish_link()
      PCI: imx6: Remove broken Gen2 workaround
      PCI: imx6: Add DT bindings to configure PHY Tx driver settings

Antony Pavlov (2):
      imd: make it work on big-endian machines
      MIPS: dts: add generated files to clean rule

Boris Brezillon (1):
      of: fix of_tree_for_each_node_from() macro

Christian Hemp (1):
      ARM: phytec-som-imx6: add phyCORE-i.MX6 Quad 2GiB RAM

Du Huanpeng (4):
      NULL: keep NULL definition in stddef.h only
      wchar_t: wchar_t should go to stddef.h
      menu: add vi like key support
      whole tree: remove trailing whitespaces

Fabio Estevam (1):
      PCI: imx6: Simplify a trivial if-return sequence

Jan Remmet (1):
      imx6qdl-phytec-pfla02.dtsi: add i2c eeprom

Juergen Borleis (4):
      PPC: fix size optimisation
      PPC: clean compiler warning
      PPC/MPC5XXX/reginfo: fix a bunch of compiler warnings
      PPC/MPC5200: enable a useful command by default

Lucas Stach (4):
      globalvar: add missing static inline stubs
      nvvar: add missing static inline stubs
      common: select dependencies for defaultenv-2
      state: select CRC32

Sascha Hauer (69):
      ARM: i.MX: esdctl: Fix wrong driver name
      include: Move ep93xx eth platform_data to include/platform_data
      include: Move smc91111 eth platform_data to include/platform_data
      include: Move designware eth platform_data to include/platform_data
      include: Move davinci emac platform_data to include/platform_data
      include: Move fec eth platform_data to include/platform_data
      include: Move ns16550 serial platform_data to include/platform_data
      include: Move dm9000 eth platform_data to include/platform_data
      include: Move smc911x eth platform_data to include/platform_data
      include: Move ide platform_data to include/platform_data
      include: move run_command prototype to command.h
      include/common.h: remove unused struct memarea_info
      include: move shell prototypes to shell.h
      include: move crc specific stuff to crc.h
      libfile: move open_and_lseek() to libfile
      show_progress: print spaces with %*s
      string: Fix (v)asprintf prototypes
      move make_directory declaration to libfile.h
      move unlink_recursive declaration to libfile.h
      fs: move libc function prototypes to their correct locations
      stdio: rename getc to getchar
      stdio: replace fprintf(stderr,...) with eprintf
      stdio: Replace FILE functions with filedescriptor functions
      stdio: Whitespace cleanup
      ARM: bootm: Let get_kernel_addresses() determine SDRAM region itself
      ARM: bootm: Move mem_free calculation into get_kernel_addresses()
      of: preserve /memreserve/ entries
      commands: ubiformat: Pass around context data
      commands: ubiformat: create separate function for ubiformat
      ARM: Bootm: FIT image handler depends on CONFIG_FITIMAGE
      move FLEXIBLE_BOOTARGS from commands/ to common/
      commands: ubiformat: move code to common/
      usb: fastboot: Use C API for ubiformat
      usb: fastboot: drop CONFIG_COMMAND_SUPPORT dependency
      ubiformat: use default values for ubi_ver and image_seq
      ARM: dts: Fix partition names
      ARM: GuF Vincell: run code for LT variant aswell
      ARM: i.MX: increase barebox partition sizes
      scripts: imx: support set_bits/clear_bits
      scripts: imx-usb-loader: make debug output more useful
      scripts: imx-usb-loader: support set_bits/clear_bits
      ARM: i.MX: karo-tx6: Add support for the 2GiB i.MX6q+ board variant
      drivers/of: Always compile of_path.c with OF support
      state: Fix Kconfig dependencies
      scripts: Add big endian conversion macros to endian.h
      Kconfig: Make GLOBALVAR visible
      Kconfig: Make ENV_HANDLING visible
      Kconfig: Create Kconfig symbol for NVVAR
      globalvar: Allow to remove globalvars
      string: Introduce strtobool
      getenv_bool: use strtobool
      parameter: Use strtobool
      bootm: Optionally add a root=3D option to Kernel command line
      blspec: push appendroot handling to bootm
      net: phy: Add fixed link support
      Merge branch 'for-next/arm'
      Merge branch 'for-next/bootm'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx6-phytec'
      Merge branch 'for-next/include-cleanup'
      Merge branch 'for-next/include-pdata'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/pci'
      Merge branch 'for-next/ubiformat'
      usb: fastboot: Fix oem exec support
      of: Add missing include
      console: Fix initial value of baudrate parameter
      Release v2016.06.0

Stefan Christ (15):
      ARM: imx_v7_defconfig: enable NANDTEST command
      ARM: imx_v7_defconfig: add command mmc_extcsd
      ARM: imx6q: add support for phyBOARD-SUBRA-i.MX6 Quad
      ARM: dts: imx6: phyboards: reduce clock speed for usdhc3
      ARM: dts: pfla02: use long enough reset for ethernet phy
      ARM: phytec-som-imx6: add barebox partitions for MMC
      ARM: phytec-som-imx6: fix bootsource for phyCORE-i.MX6
      ARM: phytec-som-imx6: add phyCORE-i.MX6 DualLite
      ARM: phytec-som-imx6: update RAM calibration for phycore-imx6dl
      ARM: phytec-som-imx6: rename environment folder
      ARM: phytec-som-imx6: adapt main update handler for eMMC
      ARM: phytec-som-imx6: add NOR for phycore-imx6 emmc
      ARM: phytec-som-imx6: add automount for first partition on eMMC
      mci: imx-esdhc: implement reset quirks for i.MX6 DualLite/Solo
      imx-bbu-nand-fcb: add missing newline character

Teresa Remmet (3):
      mtd: nand: omap_gpmc: Remove BCH4 support
      mtd: nand: omap_gpmc: Fix bitflips in empty page
      ARM: board: phytec-som-am335x: RAM timings for phycore-r2 1GB

Ulrich =D6lmann (1):
      images: Makefile.socfpga: fix typo

Uwe Kleine-K=F6nig (3):
      pinctrl: mxs: add raw value from device tree to debug output
      mci: mxs: add support for dt aliases to name devices
      serial_auart: make dt aware

grodriguez (1):
      Fix genphy_restart_aneg() for Micrel's ksz9031.


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
