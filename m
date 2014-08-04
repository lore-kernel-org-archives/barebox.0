Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XENfm-0005t8-Gl
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 19:11:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XENf6-0008HE-KX
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 21:11:12 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1XENf6-0003Ld-Ia
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 21:11:12 +0200
Date: Mon, 4 Aug 2014 21:11:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140804191112.GN23235@pengutronix.de>
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
Subject: v2014.08.0
To: barebox@lists.infradead.org

We have an August release.

Most notable this time is our new Documentation. The final step
missing is to upload it to the website. We hope to get that done
soon.

I'm on holiday for this month. I'll still read my mails, but expect
some delays in reviewing and applying patches.

Sascha

----------------------------------------------------------------
Alexander Aring (1):
      common: resource: print conflicts as warning

Alexander Shiyan (4):
      ARM: clps711x: Prepare common init function to DT support
      ARM: clps711x: Remove unused UART bit definitions
      ARM: clep7212: Make partition names more generic
      ARM: PCM038: Switch to devicetree probe

Antony Pavlov (31):
      ARM: versatile: drop redundant <mach/gpio.h>
      i2c: versatile: add devicetree support
      ARM: versatile: switch to devicetree support
      ARM: versatilepb_defconfig: enable devicetree support
      gpio: add Malta CBUS FPGA I2C driver
      MIPS: add <asm/gpio.h> header file
      MIPS: malta: enable gpiolib
      MIPS: dts: qemu-malta.dts: enable CBUS FPGA I2C gpio driver
      i2c: i2c_gpio: add devicetree support
      MIPS: dts: qemu-malta.dts: use i2c-gpio for accessing CBUS FPGA I2C b=
us
      MIPS: qemu-malta_defconfig: enable gpio & i2c stuff
      MIPS: mach-ath79: drop extra 'select HAVE_CLK'
      gpio: add jz4740-gpio driver for Ingenic MIPS SoCs
      MIPS: XBurst: use gpiolib
      MIPS: dts: jz4755.dtsi: add gpio
      MIPS: ritmix-rzx50_defconfig: enable gpio stuff
      mii-tool: make the 'No MII transceiver present!' message more clear
      net.h: add ETH_ALEN constant; fix whitespaces
      net: add ENC28J60 support
      Documentation: add mips boards files
      linux/ioport.h: include missed <linux/list.h>
      MIPS: add dma_alloc_coherent()
      PCI: initial commit
      commands: add 'lspci' command
      net: add RealTek RTL-8139 PCI Ethernet driver
      MIPS: add PCI support for GT64120-based Malta board
      MIPS: qemu-malta_defconfig: enable PCI & network stuff
      rtc.h: drop unused U-Boot stuff; fix whitespace
      pci: pci_alloc_bus(): use xzalloc() instead of kzalloc()
      Documentation: add uemd mb7707 barebox mini-howto
      scripts/checkpatch.pl: don't search for Doxyfile when checking top_of=
_kernel_tree()

Bo Shen (1):
      ARM: at91: clock: fix the pllb checking

Christian Hemp (1):
      imx6: add new chip revisions

Holger Schurig (16):
      sandbox: add bit manipulation stuff
      doc: .gitignore generated files
      doc: make "System setup" an appendix
      doc: start (almost) all headlines with a capital
      doc: only include own download chapter
      doc: filesystemtype -> filesystem type
      doc: mention "make xconfig"
      doc: add colon after NOTE and HINT
      doc: add hint on how to calculate in hush
      doc: remove board type from barebox prompt examples
      doc: reformat overly long lines
      doc: move variables near device parameters
      doc: link back from variables to device parameters
      lzo: properly check for overruns
      lz4: ensure length does not wrap
      lz4: fix another possible overrun

Jan Luebbe (6):
      commands: ls: add ll as an alias for ls -l
      ARM: AM335x: beaglebone: remove obsolete config
      ARM: AM335x: beaglebone: add simple script to change usb current limit
      ubiformat: avoid macros in help text
      automount: fix description typo
      ARM: AM335x: Beaglebone: enable ethernet

Lucas Stach (8):
      arm: add errata workarounds
      arm: imx6: add cpu lowlevel init function
      arm: imx6: use imx6 specific cpu init function
      arm: tegra: enable ARM errata workarounds
      scripts: tegra: add gitignore
      arm: imx6: move imx6_init_lowlevel to single initcall
      arm: imx6: rename hummingboard directory to microsom
      mmu: flush ttb in map_io_sections

Pavel Machek (1):
      tftp: more helpful help text

Robert P. J. Day (18):
      Fix misspellings of "persistant" -> "persistent" in various places
      sdma.h: Typo, "interupt" -> "interrupt"
      Documentation/boards/: Numerous grammar/typo/rendering fixes.
      Documentation: Clean up sandbox.rst, use definition list.
      Documentation: Minor editing changes to filesystems content.
      Documentation: device tree bindings.
      Documentation: Fix glossary entry, "FTD" -> "FDT"
      Makefile: Add missing closing quote for "make help"
      Documentation: User manual, "barebox" section
      Documentation: Numerous typoes/fixes in first few chapters of user ma=
nual.
      Documentation: defaultenv chapter from user manual.
      Documentation: Various tweaks to user manual, device tree chapter.
      Documentation: usb chapter of user manual
      splash.c: Add that .png files are suitable as splash images.
      bootm.c: "-o" option should refer to "DTB", not "DTS"
      Clean up Kconfig and source for a couple device tree commands.
      at91mux: Fix both help info and Kconfig info.
      crc32: Proper name of command is "crc32".

Rolf Evers-Fischer (1):
      boot: fix typo

Sascha Hauer (48):
      ARM: i.MX6 sabresd: Drop board defconfig
      ARM: i.MX6 sabrelite: Drop board defconfig
      ARM: i.MX51 babbage: Drop board defconfig
      ARM: i.MX53 QSB: Drop board defconfig
      ARM: uncompress.c: copy executable to SDRAM if necessary
      ARM: Phytec-phyCORE-imx27: Register board env during runtime
      ARM: i.MX bbu: Add update handler for external NOR boot
      ARM: Phytec-phyCORE-imx27: Register NOR/NAND update handlers
      ARM: Phytec-phyCORE-imx27: Switch to multiimage support
      ARM: dts: i.MX51 babbage: remove unused hoggrp
      dts: update to v3.15-rc6
      dts: update to v3.15-rc7
      dts: update to v3.15-rc8
      dts: update to v3.16-rc1
      remove unused boot-menu-add-entry
      ARM: i.MX: remove console=3D from env files
      dts: update to v3.16-rc2
      commands: addpart: Improve description
      Documentation: remove doxygen documentation
      Documentation: remove remaining documentation
      Documentation: remove devicetree docs
      Documentation: Add new sphinxs docs
      scripts/setupmbr: remove doxygen docs
      string_list: Add string_list_for_each_entry macro
      ls: sort files with -l
      Merge branch 'for-next/arm-errata'
      Merge branch 'for-next/arm-versatile'
      Merge branch 'for-next/clps711x'
      Merge branch 'for-next/doc'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/marvell'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/net'
      kconfig: Fix compiler warning
      ARM: OMAP: Do not show MLO/SPI image options with OMAP_MULTI_BOARDS
      Do not use macros in command help
      Fix crc32 compile error
      Revert "ARM: OMAP: Do not show MLO/SPI image options with OMAP_MULTI_=
BOARDS"
      images: ignore and clean *.mlo/*.mlospi
      ARM: i.MX: esdctl: i.MX53 has esdctl v4, not v3
      fs: ext4: fix "invalid extent block" error
      fs: ext4: use EXT2_BLOCK_SIZE instead of fs->blksz
      fs: ext4: le32_to_cpu() used on a 16-bit field
      images: get rid of remaining imximage-y
      of_partition: devfs_add_partition returns an error pointer
      Release v2014.08.0

Sebastian Hesselbarth (26):
      ARM: mvebu: set model and default hostname for Dove
      ARM: mvebu: set default TEXT_BASE by SoC
      ARM: mvebu: delete unused mach/mvebu.h
      ARM: mvebu: move lowlevel code to lowlevel.c
      clk: mvebu: fix Armada 370 TCLK frequencies
      ARM: mvebu: add 25MHz fixed clock for Armada XP
      clocksource: mvebu: split initialization for Armada 370/XP
      ARM: dts: sort pbl entries by alphabet
      ARM: mvebu: sort pbl image target by board
      ARM: mvebu: convert Kirkwood devices to be probed from DT
      ARM: mvebu: convert Armada 370/XP devices to be probed from DT
      ARM: mvebu: convert Globalscale Guruplug to PBL_MULTI_IMAGES
      ARM: mvebu: convert USI Topkick to PBL_MULTI_IMAGES
      ARM: mvebu: convert Globalscale Mirabox to PBL_MULTI_IMAGES
      ARM: mvebu: convert Marvell Armada XP GP to PBL_MULTI_IMAGES
      ARM: mvebu: convert PlatHome Openblocks AX3-4 to PBL_MULTI_IMAGES
      ARM: mvebu: convert to multiple board selection
      ARM: mvebu: remove dtb Makefile entries
      of: net: respect phy-connection-type property
      net: orion: generate unique port device names
      net: orion-gbe: extend RGMII detection to delayed modes
      net: phy: add support for Marvell PHY drivers
      drivers: of: import PCI bus specific translator
      ARM: mvebu: select PCI specific DT bus translator
      ARM: mvebu: determine SoC id and revision from PCIe nodes
      pinctrl: mvebu: add pinctrl drivers for Dove and Kirkwood

Teresa G=E1mez (1):
      PCM051: Update RAM timings

Wadim Egorov (2):
      barebox: common: added new filetypes
      barebox: common: Add missing filetype description

Zahari Doychev (1):
      drivers/mtd: fix NULL pointer dereference in partition lock/unlock

basti@linux-source.de (1):
      arch/arm/lib/bootm: fix length check of kernel image

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
