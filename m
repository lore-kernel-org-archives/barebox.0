Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bMUj4-00065p-BM
 for barebox@lists.infradead.org; Mon, 11 Jul 2016 06:29:55 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1bMUii-0001JJ-D2
 for barebox@lists.infradead.org; Mon, 11 Jul 2016 08:29:32 +0200
Received: from sha by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1bMUii-0006Gl-6B
 for barebox@lists.infradead.org; Mon, 11 Jul 2016 08:29:32 +0200
Date: Mon, 11 Jul 2016 08:29:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160711062932.GW20657@pengutronix.de>
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
Subject: v2016.07.0
To: Barebox List <barebox@lists.infradead.org>


Hi All,

We have a Relase for July.

Most notable this time is a huge UBI update which brings us all UBI
patches from Linux-3.17 to a recent Kernel to barebox, thanks Teresa.
Antony found the current repo for the device tree rebasing tree, so our
dts files are now up to date with Linux-4.7-rc2 again.
Another important change is the change of the Kernel/initrd/devicetree
addresses for ARM. We now follow the Kernels recommendation where to put
these files, at least when we have enough memory to do so. This fixes
booting on some Boards which have CONFIG_DEBUG_RODATA set in their Kernel
config.
As usual, a full list of changes follow.

Sascha

----------------------------------------------------------------
Alexander Aring (1):
      ifup: fix handling when ip env is not given

Alexander Shiyan (4):
      ARM: imx51: Remove stale comment
      ARM: clps711x: Simplify clock initialization
      MCI: imx-esdhc: Allow to use 1-bit bus width in board files
      pinctrl: iomux-v3: Cleaning SION patch before applying

Andrey Smirnov (26):
      commands: Add 'hwmon' command
      syscon: Do not return NULL when driver is not selected
      syscon: Decrease driver registration priority
      aiodev: Add TEMPMON driver
      e1000: Split driver into multiple files
      e1000: Include <net.h> in e1000.h
      e1000: Convert E1000_*_REG macros to functions
      e1000: Fix a bug in e1000_detect_gig_phy
      e1000: Remove unnecessary variable
      e1000: Do not read same register twice
      e1000: Remove unneeded i210 specific register code
      e1000: Consolidate register offset fixups
      e1000: Remove 'use_eewr' parameter
      e1000: Remove 'page_size'
      e1000: Simplify EEPROM init for e1000_80003es2lan
      e1000: Simplify EEPROM init for e1000_igb
      e1000: Consolidate SPI EEPROM init code
      e1000: Consolidate Microwire EEPROM init code
      e1000: Fix a bug in e1000_probe()
      e1000: Remove unnecessary intialization
      e1000: Refactor Flash/EEPROM reading code
      e1000: Properly release SW_FW_SYNC semaphore bits
      e1000: Add EEPROM access locking for i210
      e1000: Add a "poll register" function
      e1000: Expose i210's iNVM as a cdev
      e1000: Expose i210's external flash as MTD

Antony Pavlov (6):
      clk: ar933x: fix copyright header
      MIPS: ath79: dts: sync clk stuff with linux v4.7-rc2
      MIPS: ath79: dts: sync uart stuff with linux v4.7-rc2
      MIPS: ath79: dts: sync spi stuff with linux v4.7-rc2
      MIPS: ath79: dts: tplink-mr3020.dts: sync with linux v4.7-rc2
      MIPS: ath79: dts: use ar9331.dtsi from linux v4.7-rc2

Artem Bityutskiy (2):
      UBI: clean-up printing helpers
      UBI: do propagate positive error codes up

Brian Norris (6):
      UBI: fix missing brace control flow
      UBI: account for bitflips in both the VID header and data
      UBI: fix out of bounds write
      UBI: initialize LEB number variable
      UBI: align comment for readability
      UBI: fix use of "VID" vs. "EC" in header self-check

Enrico Jorns (1):
      vsprintf: fix handling of strp arg in asprintf

Ezequiel Garc=EDa (1):
      UBI: Fastmap: Fix PEB array type

J. Tang (1):
      ppc: fix USPRG0 define

Lucas Stach (9):
      ARM: mba53: include barebox TQMa53 overlay DT
      fs: squashfs: use correct format specifier
      aiodev: imx_thermal: remove empty include
      aiodev: imx_thermal: depend on MACH_IMX6
      defaultenv-2: select BOOTM
      mtd: fix mtdraw_erase stub signature
      imx-bbu-nand-fcb: don't drop error return code
      imx-bbu-nand-fcb: avoid double free of dbbt_entries
      ubifs: check return pointer properly

Richard Genoud (1):
      UBI: add missing kmem_cache_free() in process_pool_aeb error path

Richard Weinberger (38):
      UBI: Improve comment on work_sem
      UBI: ubi_eba_read_leb: Remove in vain variable assignment
      UBI: wl: Rename cancel flag to shutdown
      UBI: Fix trivial typo in __schedule_ubi_work
      UBI: Fastmap: Calc fastmap size correctly
      UBI: vtbl: Use ubi_eba_atomic_leb_change()
      UBI: Fix double free after do_sync_erase()
      UBI: Fix invalid vfree()
      UBI: Fastmap: Care about the protection queue
      UBI: Split __wl_get_peb()
      UBI: Fastmap: Make ubi_refill_pools() fair
      UBI: Fastmap: Don't allocate new ubi_wl_entry objects
      UBI: Fastmap: Fix memory leaks while closing the WL sub-system
      UBI: Fastmap: Notify user in case of an ubi_update_fastmap() failure
      UBI: Fastmap: Wrap fastmap specific function in a ifdef
      UBI: Fastmap: Fix fastmap usage in ubi_volume_notify()
      UBI: Fastmap: Fix race in ubi_eba_atomic_leb_change()
      UBI: Fastmap: Remove bogus ubi_assert()
      UBI: Fastmap: Remove eba_orphans logic
      UBI: Fastmap: Switch to ro mode if invalidate_fastmap() fails
      UBI: Fastmap: Make WL pool size 50% of user pool size
      UBI: Fastmap: Fix leb_count unbalance
      UBI: Fastmap: Set used_ebs only for static volumes
      UBI: Fastmap: Prepare for variable sized fastmaps
      UBI: Fastmap: Rework fastmap error paths
      UBI: Fix stale pointers in ubi->lookuptbl
      UBI: Move fastmap specific functions out of wl.c
      UBI: Add accessor functions for WL data structures
      UBI: Fastmap: Wire up WL accessor functions
      UBI: Fastmap: Introduce ubi_fastmap_init()
      UBI: Fastmap: Introduce may_reserve_for_fm()
      UBI: Fastmap: Remove is_fm_block()
      UBI: Fastmap: Fall back to scanning mode after ECC error
      UBI: Validate data_size
      UBI: Fastmap: Simplify expression
      UBI: Fix typo in comment
      UBI: Fix debug message
      ubi: Fix out of bounds write in volume update code

Ronald Zachariah (1):
      fs: ext4: fix symlink read function

Sascha Hauer (53):
      mtd: nand: nand_mxs: Factor out BCH setup function
      mtd: nand: Pass page argument to read_subpage hook
      mtd: nand: Enable subpage reads
      mtd: nand: nand_mxs: Add subpage read support
      bootm: Move bootm options to common/Kconfig
      bootm: Add missing BOOTM_FORCE_SIGNED_IMAGES option
      bootm: fit: Print error when image is not hashed
      bootm: fit: Print error when image is not signed
      bootm: set bootm_verify_mode to correct value
      bootm: Add verify mode "available"
      bootm: Move magicvar descriptions to common/bootm.c
      bootm: make verbosity controllable via global variable
      ARM: i.MX: IIM: Add functions to access fuses field wise
      ARM: i.MX: IIM: Add function to enable permanent write
      ARM: i.MX: HABv3: Set to production mode
      drivers: Introduce AIODEV subsystem
      aiodev: Add basic LM75 temperature driver
      ubiformat: Ignore bitflip errors
      ubiformat: Fix formatting devices with unreadable areas
      ARM: i.MX: iim: Remove debug printk
      of: base: Match simple-mfd devices
      dts: update to v4.5-rc6
      dts: update to v4.5-rc7
      dts: update to v4.5
      dts: update to v4.6-rc1
      dts: update to v4.6-rc3
      dts: update to v4.6-rc4
      dts: update to v4.6-rc5
      dts: update to v4.6-rc6
      dts: update to v4.6-rc7
      dts: update to v4.6
      dts: update to v4.7-rc1
      dts: update to v4.7-rc2
      Merge branch 'for-next/aiodev'
      Merge branch 'for-next/arm'
      Merge branch 'for-next/bootm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/e1000'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/mxs'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/ubi'
      Merge branch 'for-next/ubiformat'
      ARM: start: Fix arm_mem_barebox_image for !CONFIG_RELOCATABLE
      mtd: nand: gpmi: Use subpage reads only on suitable NAND chips
      net: dm9k: Fix buswidth setting for platform data probe
      eeprom: at24: fix discarding const qualifier
      boot command: Make verbose/dryrun options work again
      ARM: bootm: Fix compiler warning
      Release v2016.07.0

Sebastian Siewior (3):
      mtd: ubi: fixup error correction in do_sync_erase()
      mtd: ubi: don't leak e if schedule_erase() fails
      mtd: ubi: wl: avoid erasing a PEB which is empty

Stefan M=FCller-Klieser (1):
      ARM: bootm: recalculate decompression space

Tanya Brokhman (2):
      UBI: Extend UBI layer debug/messaging capabilities
      UBI: extend UBI layer debug/messaging capabilities - cosmetics

Teresa Remmet (2):
      net: phy: micrel: KSZ9081/KSZ8091: Disable broadcast mode
      mtd: UBI: Remove ubi_free_fastmap

Trent Piepho (5):
      rtc: ds1307: Add ds1308 to driver's ID list
      socfpga: correct start vector when not using extra barebox header
      socfpga: Stop putting 512 byte header on SocFPGA images
      rtc: ds1307: Add support for configuring external clock pin
      mci: Fix version numbers again

Uwe Kleine-K=F6nig (5):
      partitions: dos: add partuuid string for logical partitions
      ARM: mxs: add parameter to mx28_mem_init to allow custom memory config
      eeprom: at25: check return value of devfs_create
      eeprom: at24: check return value of devfs_create and fix error path
      eeprom: at24: make device name setup more robust

Yegor Yefremov (1):
      crypto: add CRC32 digest

shengyong (8):
      UBI: Fastmap: Use max() to get the larger value
      UBI: Fastmap: Remove unnecessary `\'
      UBI: Fastmap: Rename variables to make them meaningful
      UBI: Init vol->reserved_pebs by assignment
      UBI: Fastmap: Do not add vol if it already exists
      UBI: add a helper function for updatting on-flash layout volumes
      UBI: Remove unnecessary `\'
      UBI: return ENOSPC if no enough space available


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
