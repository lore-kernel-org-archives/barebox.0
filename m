Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9Sz7-0006e9-Id
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 10:42:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1g9Syv-0003FO-Oi
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 12:41:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1g9Syv-00044w-GZ
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 12:41:45 +0200
Date: Mon, 8 Oct 2018 12:41:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181008104145.kjsxjcxctm72pdwl@pengutronix.de>
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
Subject: v2018.10.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

barebox-2018.10.0 is out. The most important thing this time is that
several issues with the new dentry cache implementation are fixed with
this release, so users of v2018.09.0 are recommended to upgrade to
either this one or v2018.09.1 which I also released.
Other than that we have a huge UBI update from Teresa. This comes as
individual patches directly from the Kernel which means our list of
patches contains authors who never contributed to barebox directly.

Sascha


----------------------------------------------------------------
Aleksander Morgado (3):
      i2c_write: document master send mode
      i2c_read: implement support for master receive mode
      ratp: fix sending data that won't fit in a single RATP packet

Andrew F. Davis (1):
      UBI: Fix typos

Andrey Smirnov (48):
      ARM: cache-l2x0: Make use of IS_ALIGNED and ALIGN_DOWN
      include/common: Make use of ALIGN and ALIGN_DOWN
      net: Do not route traffic to interfaces that are not up
      ARM: mmu64: Don't flush freshly invalidated region
      log2: Use fls_long() in __roundup_pow_of_two()
      USB: host: hub: Make sure to remove dangling pointers
      USB: host: hub: Adjust device speed after every port reset
      clk: clk-sccg-pll: Remove leftover debug output
      Revert "i.MX: Add provisions to boot from IRAM"
      ARM: i.MX: bbu: Remove unused define
      filetype: Add arch/ to include path
      filetype: Add code to detect i.MX image v1
      filetype: Add code to detect i.MX image v2
      ARM: i.MX: bbu: Move inner-image type check
      ARM: i.MX: bbu: Drop IMX_INTERNAL_FLAG_NAND
      ARM: i.MX: bbu: Consolidate various update helpers
      ARM: i.MX: bbu: Simplify imx53_bbu_internal_nand_register_handler()
      ARM: i.MX: bbu: Constify all 'devicefile' arguments
      ARM: i.MX: bbu: Detect which platforms need v2 i.MX header
      ARM: i.MX: bbu: Alias imx5*_bbu_internal_mmc_register_handler()
      ARM: i.MX: bbu: Alias imx5*_bbu_internal_spi_i2c_register_handler()
      ARM: i.MX: bbu: Move protect code into a separate routine
      ARM: i.MX: bbu: Adjust FLASH_HEADER_OFFSET_MMC for i.MX8MQ
      ARM: i.MX: bbu: Add support for SPI/I2C on VFxxx
      ARM: i.MX: zii-vf610-dev-rev-b/c: Add support for BBU on SPI-NOR
      ARM: i.MX: bbu: Add support for MMC on i.MX8MQ
      ARM: nxp-imx8mq-evk: Add eMMC BBU configuration
      libfile: Introduce pwrite_full()
      ARM: i.MX: bbu: Use pwrite_full() instead of pwrite()
      bbu: Remove logical negation in barebox_update_handler_exists()
      block: Do not ignore error in blk->ops->write()
      bbu: Report update failures explicitly
      mfd: rave-sp: Remove unused defines
      mfd: rave-sp: Fix incorrectly specified checksum type
      mfd: rave-sp: Add mapping for legacy EEPROM command
      mfd: rave-sp: Add legacy watchdog ping command translation
      mfd: rave-sp: Emulate CMD_GET_STATUS on device that don't support it
      driver: Adopt DMA mask concept from Linux
      net: fec_imx: Specify that DMA is 32-bit only
      mci: imx-esdhc: Specify that DMA is 32-bit only
      net: fec_imx: Return EFAULT when DMA mapping fails
      mci: imx-esdhc: Return EFAULT when DMA mapping fails
      ARM: freescale-mx51-babbage: Add USBH1 PHY reset sequence
      dts: imx51-babbage: Add USBH1 iomux configuration
      ARM: imx51-zii-rdu1: Add USBH1,2 iomux configuration
      ARM: vf610dev: Change "Zodiac" to "ZII"
      scripts: imx: Add support for signed HDMI firmware
      ARM: i.MX: xload: Add support for signed HDMI firmware

Antony Pavlov (2):
      MIPS: fix PCI quirk infrastructure build
      pci_of_match_device: don't crash on MIPS Malta

Ard Biesheuvel (1):
      log2: make order_base_2() behave correctly on const input value zero

Bastian Stender (2):
      ARM: imx: add fusemap entries for i.MX6SDL silicon revision >=3D1.4
      HAB: fuse recommended OCOTP_DIR_BT_DIS

Ben Dooks (1):
      ubi: pr_err() strings should end with newlines

Boris Brezillon (18):
      UBI: fastmap: use ubi_find_volume() instead of open coding it
      UBI: fix add_fastmap() to use the vid_hdr passed in argument
      UBI: fastmap: avoid multiple be32_to_cpu() when unneccesary
      UBI: fastmap: scrub PEB when bitflips are detected in a free PEB EC h=
eader
      UBI: factorize code used to manipulate volumes at attach time
      UBI: factorize destroy_av() and ubi_remove_av() code
      UBI: fastmap: use ubi_rb_for_each_entry() in unmap_peb()
      UBI: fastmap: use ubi_io_{read, write}_data() instead of ubi_io_{read=
, write}()
      UBI: provide helpers to allocate and free aeb elements
      UBI: move the global ech and vidh variables into struct ubi_attach_in=
fo
      UBI: simplify recover_peb() code
      UBI: simplify LEB write and atomic LEB change code
      UBI: add an helper to check lnum validity
      UBI: provide an helper to check whether a LEB is mapped or not
      UBI: provide an helper to query LEB information
      UBI: hide EBA internals
      UBI: introduce the VID buffer concept
      ubi: fastmap: Fix add_vol() return value test in ubi_attach_fastmap()

Cl=E9ment Leger (1):
      ratp: select CMDLINE_EDITING

Colin Ian King (3):
      ubi: fix swapped arguments to call to ubi_alloc_aeb
      ubi: fastmap: fix spelling mistake: "invalidiate" -> "invalidate"
      ubi: fastmap: Clean up the initialization of pointer p

Dan Carpenter (1):
      UBI: Clean up return in ubi_remove_volume()

Geert Uytterhoeven (1):
      UBI: Fix crash in try_recover_peb()

Heiko Schocher (1):
      UBI: Set free_count to zero before walking through erase list

Iosif Harutyunov (1):
      ubi: Fix race condition between ubi device creation and udev

Ladislav Michl (2):
      spi: atmel_spi: fix duplicate const warning
      state: backend_bucket_circular: fix for non power of 2 writesize

Linus Torvalds (1):
      give up on gcc ilog2() constant optimizations

Lionel Debieve (1):
      mtd: ubi: Update ubi-media.h to dual license

Lucas Stach (2):
      bootsource: handle SPI-NOR in the same way as SPI-EEPROM
      arm: crypto: fix SHA256 shipped assembler code

Marc Kleine-Budde (5):
      i.MX habv4: properly indent defines and enums
      i.MX habv4: convert habv4_get_status() and habv4_display_event() from=
 printf to pr_err()
      i.MX habv4: habv4_get_status(): display warning events, too
      i.MX habv4: habv4_display_event_record(): Add function to decode even=
t record
      scripts imx-image: add support for newer versions of "cst"

Marc Reilly (3):
      ARM: dts: am335x: introduce new "stripped" common.dtsi for PBL use
      ARM: dts: update am335x-bone-common.dtsi to match kernel version
      ARM: dts: change am335x-bone-common.dtsi to include kernel variant di=
rectly

Marcin Niestroj (22):
      crypto: caam - fix RNG init descriptor ret. code checking
      crypto: caam - fix warning in APPEND_MATH_IMM_u64
      crypto: caam - fix writing to JQCR_MS when using service interface
      crypto: caam - handle core endianness !=3D caam endianness
      crypto: caam - add support for iMX6UL
      crypto: caam - fix sparse warnings
      crypto: caam - trivial code clean-up
      crypto: caam - remove unreachable code in report_ccb_status()
      crypto: caam - constify pointer to descriptor buffer
      crypto: caam - avoid double inclusion in desc_constr.h
      crypto: caam - clean-up in caam_init_rng()
      crypto: caam - fix incorrect define
      crypto: caam - constify key data
      crypto: caam - fix endless loop when DECO acquire fails
      crypto: caam - do not use mem and emi_slow clock for imx7x
      crypto: caam - sync desc.h with Linux
      crypto: caam - staticize caam_get_era()
      crypto: caam - allow retrieving 'era' from register
      scripts: imx: add optional argument to hab_blocks command
      ARM: imx: Update default image certificate for CST tool
      scripts: imx: Support encrypted boot with HABv4
      images: imx: Add targets for signed encrypted images

Martin Wilck (1):
      scsi: ilog2: create truly constant version for sparse

Michael Grzeschik (1):
      arm: mach-imx: remove unused header

Oleg.Karfich@wago.com (7):
      nand command: fix null pointer when adding/deleting a bb device
      gpio: pca953x: add oftree support
      net: dhcp: use private extension 224 also in discover requests
      commands: dhcp: add parameter for private data
      net: dhcp: add global variable for retries
      led: add pca955x led support
      led: use max led value in case of led trigger

Oleksij Rempel (1):
      ARM: i.MX28: Add APBH clk support

Peter Mamonov (1):
      scripts/dtc: add fdtget to .gitignore

Rabin Vincent (1):
      ubi: fastmap: Fix slab corruption

Randy Dunlap (1):
      linux/log2.h: fix kernel-doc notation

Richard Weinberger (20):
      UBI: Fastmap: Fix memory leak while attaching
      UBI: Remove alloc_ai() slab name from parameter list
      UBI: Don't read back all data in ubi_eba_copy_leb()
      UBI: Fix static volume checks when Fastmap is used
      ubi: Make recover_peb power cut aware
      ubi: Fix early logging
      ubi: Make volume resize power cut aware
      ubi: Fix scan_fast() comment
      ubi: Introduce vol_ignored()
      ubi: Fix whitespace issue in count_fastmap_pebs()
      ubi: Rework Fastmap attach base code
      ubi: Check whether the Fastmap anchor matches the super block
      ubi: Be more paranoid while seaching for the most recent Fastmap
      ubi: Deal with interrupted erasures in WL
      ubi: Fix races around ubi_refill_pools()
      ubi: Fix Fastmap's update_vol()
      ubi: fastmap: Correctly handle interrupted erasures in EBA
      ubi: fastmap: Check each mapping only once
      ubi: fastmap: Detect EBA mismatches on-the-fly
      ubi: Initialize Fastmap checkmapping correctly

Roland Hieber (19):
      images: MXS: allow generation of unencrypted bootstreams
      ARM: MXS: i.MX28: allow setup of low-voltage SDRAM
      ARM: MXS: allow configuration of EMI clock prescaler
      ARM: MXS: refactor mx2*_power_init source configuration
      ARM: MXS: allow starting from battery input without 4P2 source enabled
      ARM: MXS: make power levels configurable in mx2*_power_init
      ARM: MXS: fix VDDx brownout setup logic
      ARM: MXS: make VDDx brownout setup more understandable
      ARM: MXS: mxs_power_status: use less magic values
      ARM: MXS: mxs_power_status: align output
      Documentation: MXS: general update and improvements
      pinctrl: imx-iomux-v3: fix compiler warning
      ARM: i.MX: Kindle 4/5 is based on Device Tree, select it in Kconfig
      ARM: i.MX: add defconfig for the Kindle i.MX50 boards
      Documentation: i.MX: update Kindle 4/5 board documentation
      scripts: imx-usb-loader: rename imx_device() to imx_device_by_usb_id()
      scripts: imx-usb-loader: fail early if the USB device path does not m=
atch
      scripts: imx-usb-loader: allow use of unknown USB IDs
      scripts: imx-usb-loader: make i.MX6SoloX better to type

Sam Ravnborg (3):
      phylib: add Davicom PHY support
      phylib: add support for reset-gpios
      at91sam9263ek: add PHY, miitool etc. to config

Sascha Hauer (38):
      scripts: mxsimage: Allow unencrypted images
      ARM: i.MX28: Add memory size detection
      ARM: i.MX23: Add memory size detection
      USB: host: hub: rename function argument
      ubi: fastmap: Erase outdated anchor PEBs during attach
      ubi: Fastmap: Fix typo
      ubi: Fix copy/paste error in function documentation
      ARM: i.MX: Reset OTG controller during startup
      ARM: i.MX: make HAB certificate pathes explicitly overwritable
      dts: update to v4.19-rc1
      dts: update to v4.19-rc2
      Merge branch 'for-next/am335x'
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dhcp'
      Merge branch 'for-next/dma-mask'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx-caam'
      Merge branch 'for-next/imx-hab'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mxs'
      Merge branch 'for-next/net'
      Merge branch 'for-next/ubi'
      Merge branch 'for-next/usb'
      fs: devfs: Create device files as character devices
      fs: devfs: fix r/w permissions
      ARM: Multi PBL: Fix image calculation for certain toolchains
      ARM: omap: xload: Fix network boot filename
      net: mdio: Do not warn about invalid PHY address
      ARM: radxa-rock: Fix passing device tree to kernel
      ARM: i.MX27: Fix NAND boot with newer gcc
      fs: ramfs: Free data when file is unlinked
      fs: open: Do not forget to set errno
      fs: stat: Do not forget to set errno
      fs: ubifs: Do not free memory not allocated by ubifs
      ARM: socfpga: Arria10: add missing static
      ARM: socfpga: Arria10: Fix compiler warning
      Release v2018.10.0

Sebastian Siewior (1):
      ubi/upd: Always flush after prepared for an update

Steffen Trumtrar (2):
      drivers: net: designware: select reset controller
      drivers: net: designware: select reset controller

Teresa Remmet (1):
      arm: boards: phytec-som-am335x: Rename kernel image

Uwe Kleine-K=F6nig (1):
      UBI: Fix two typos in comments

Wei Yongjun (1):
      mtd: ubi: wl: Fix error return code in ubi_wl_init()

z00189512 (1):
      UBI: Modify wrong comment in ubi_leb_map function.

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
