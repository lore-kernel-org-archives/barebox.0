Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aoPuH-0002qA-23
 for barebox@lists.infradead.org; Fri, 08 Apr 2016 06:28:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aoPtv-00019I-2G
 for barebox@lists.infradead.org; Fri, 08 Apr 2016 08:28:15 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1aoPtu-0008HA-RB
 for barebox@lists.infradead.org; Fri, 08 Apr 2016 08:28:14 +0200
Date: Fri, 8 Apr 2016 08:28:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160408062814.GK9102@pengutronix.de>
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
Subject: v2016.04.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

I just released v2016.04.0. This time we have better cache support on Mips,
support for more Karo i.MX6 board variants, CAAM crypto engine support
for i.MX6 and a very annoying bug fixed in the EFI code. See below for a
more detailed list of patches.

Sascha

----------------------------------------------------------------
Aleksey Kuleshov (7):
      usb_kbd: remove unused fields
      usb_kbd: check for registering error
      usb_kbd: style fixes
      usb_kbd: use async polling instead of regular polling
      usb_kbd: lock is useless since pollers are atomic
      ehci-hcd: remove useless timeout
      ehci-hcd: preserve DTC in QH for interrupt transactions

Alexander Kurz (4):
      net ep93xx mii: do not supress MII preamble transmission
      EP93xx eth: allow passing of phy config via platform data
      edb9302 eth: provide proper phy config
      Kconfig: avoid tabs in help text

Antony Pavlov (21):
      fs: ext4: make locally used ext4fs_get_indir_block() static
      fs: fat: fix copy-paste typo
      commands: magicvar: make locally used magicvar_find() static
      MIPS: dts: ar9331.dtsi: fix whitespace
      MIPS: ath79: pbl: import AR9331 CP0 init routine from U-Boot_mod
      MIPS: ath79: pbl: import hornet_1_1_war routine from U-Boot_mod
      MIPS: tplink-mr3020: pbl: use more lowlevel init code from U-Boot_mod
      MIPS: black-swift: pbl: use more lowlevel init code from U-Boot_mod
      MIPS: probe_scache(): use MIPS_CONF_M linux kernel macro
      MIPS: pbl: import cache init code from U-Boot v2016.01-212-ga3ab2ae
      MIPS: black-swift: pbl: init cache
      MIPS: tplink-mr3020: pbl: init cache
      MIPS: add initial R4000-style cache support
      MIPS: flush cache on shutdown
      MIPS: tplink-mr3020_defconfig: use cached memory region
      MIPS: black-swift_defconfig: use cached memory region
      MIPS: ath79: pbl: add pbl_ar9331_mdio_gpio_enable macro
      MIPS: black-swift: enable GPIO LED
      MIPS: black-swift: enable GPIO key
      MIPS: black-swift_defconfig: enable gpio-related stuff
      MIPS: tplink-mr3020: fix "WPS" and "3G" LEDs

Arnd Beuscher (1):
      ARM: board: phytec-som-am335x: RAM timings for phyCORE-AM335x-R2

Harald Welte (2):
      eeprom/at25: parse partitions from device tree
      Print error message if of_state_fixup() fails

Jan Remmet (1):
      ARM: dts: am335x-phytec: eeprom name

Lucas Stach (2):
      ARM: tegra: beaver: add missing serial alias
      ARM: tegra: use dynamic malloc area size

Marc Kleine-Budde (2):
      i.MX habv3: sort hab status codes numerically
      i.MX habv3: add some more status codes

Markus Pargmann (5):
      bbu: Add barebox_update search by device
      bbu: Add function to check if an update handler exists
      fastboot: Fix usage of ubiformat for UBI image transfers
      Documentation: Update USB fastboot section
      fastboot: Add a ARM Barebox filetype handler

Michael Olbrich (1):
      efi: let the generic relocate code handle all relocations

Peter Mamonov (2):
      MIPS: implement dma_sync_* functions
      MIPS: dtb: register only one memory bank

Philipp Zabel (1):
      process_escape_sequence: add support for \u

Robert Schwebel (9):
      Documentation: booting linux: improve wording
      Documentation: m25p80: include in documentation
      Documentation: user manual: include documentation for remote-control
      ratp: remove unused ratp_close command
      Documentation: commands: remove autogenerated directory on mrproper
      Documentation: user manual: clarify kconfig+kbuild
      Documentation: filesystems: tftp: bring in line with other filesystem docs
      Documentation: user manual: improve tftp description
      Documentation: networking: improve docs

Sascha Hauer (51):
      mtd: nand-bb: Fix 8k page size nands
      mtd: Fix mtdraw for Nand > 4GiB
      mtd: Make erase_info structs 64bit where necessary
      mtd: Fix mtd_op_read for devices >4GiB
      mtd: Fix mtd_op_erase for devices >4GiB
      mtd: Fix erasing of devices >4GiB
      mtd: mtdoob device: change name to have the chip name first
      mtd: spi-nor: Match jedec,spi-nor
      mtd: spi-nor: Add support for s25fl116k
      ARM: socfpga: terasic sockit: Make locally used sys_mgr_init_table static
      driver: Fix return check of dev_request_mem_region
      driver: Introduce dev_request_mem_resource
      Documentation: fastboot: fastboot erase is implemented
      serial: imx: Support DTE mode
      dts: update to v4.5-rc3
      dts: update to v4.5-rc4
      dts: update to v4.5-rc5
      ARM: socfpga: socdk: Fix typo in Makefile
      ARM: i.MX: karo-tx6: Factor out a common tx6 dtsi file
      ARM: i.MX: karo-tx6: Support eMMC board variants
      ARM: i.MX: karo-tx6: Add support for the i.MX6q 1GiB variant
      ARM: i.MX: karo-tx6: Generalize 801x support
      ARM: i.MX: bbu-internal: detect device before writing to it
      mtd: mtd_[read|write|erase]: check for valid input data
      mtd: nand: default bitflip-reporting threshold to 75% of correction strength
      imx-bbu-nand-fcb: optimize check for bad block loop
      imx-bbu-nand-fcb: Remove double write of first fcb
      driver: replace dev_request_mem_region with dev_request_mem_resource
      ARM: i.MX: karo-tx6: Setup other PMICs
      ARM: i.MX: karo-tx6: disable power button
      ARM: i.MX: karo-tx6: add pr_fmt
      Merge branch 'for-next/am335x'
      Merge branch 'for-next/arm'
      Merge branch 'for-next/bbu'
      Merge branch 'for-next/caam'
      Merge branch 'for-next/crypto'
      Merge branch 'for-next/doc'
      Merge branch 'for-next/driver'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/hab'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/input'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/squashfs'
      ARM: i.MX27: Fix gpt compatible for latest device trees
      commands: nandtest: Fix wrong format specifier
      mtd: doc3: Fix wrong format specifier
      scripts: imx: imx-image: Fix image size for HABv3 images
      Release v2016.04.0

Stefan Christ (1):
      mtd: core: check offset in mtd_block_markbad

Steffen Trumtrar (6):
      include: linux: add circular buffers
      ARM: imx6: add caam clks
      crypto: add i.MX6 CAAM support
      include: linux: add circular buffers
      ARM: imx6: add caam clks
      crypto: add i.MX6 CAAM support

Teresa Remmet (7):
      ARM: am335x_defconfig: Enable watchdog support
      ARM: boards: phytec-som-am335x: New RAM Timings for phyCORE-AM335x-R2
      ARM: dts: beaglebone: Strip clocks in MLO device tree
      ARM: AM335x: Make use of ARM_USE_COMPRESSED_DTB
      common: oftree: Add function to register set status fixup
      commands: Add of_fixup_status
      ARM: am335x_defconfig: Enable the of_fixup_status command

Tim Sander (1):
      Terasic DE0-Nano-SoC: add support

Wadim Egorov (1):
      ARM: am335x_defconfig: Enable NANDTEST command

Yegor Yefremov (5):
      linux/types.h: add sector_t and blkcnt_t types
      linux/fs.h: add types and routines needed for SquashFS
      Documentation/filesystems: add barebox prompt to the shell commands
      Documentation/filesystems: pstore: fix formatting
      fs: add support for SquashFS 4.0

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
