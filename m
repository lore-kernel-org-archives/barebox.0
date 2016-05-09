Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1azfTm-0007Za-AR
 for barebox@lists.infradead.org; Mon, 09 May 2016 07:19:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1azfTQ-0003eB-Pd
 for barebox@lists.infradead.org; Mon, 09 May 2016 09:19:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1azfTQ-0002k6-JI
 for barebox@lists.infradead.org; Mon, 09 May 2016 09:19:24 +0200
Date: Mon, 9 May 2016 09:19:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160509071924.GS19714@pengutronix.de>
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
Subject: v2016.05.0
To: Barebox List <barebox@lists.infradead.org>


Hi All,

barebox-2016.05.0 is out.

Many changes in this release are mtd related. We have a new API for
accessing mtd devices based on physical erase blocks (PEBs). The API has
been the UBI IO layer, but is useful for other users aswell and has been
extracted from UBI.
With the help of this API the i.MX6 Nand update handler now does robust
updates: When updating barebox on Nand there is no moment anymore in
which the system is not bootable.
There are many other changes aswell, see below.

Sascha

----------------------------------------------------------------
Alexander Stein (15):
      ARM i.MX35: Read reset source from CCM
      mtd: cfi-flash: Set MTD's writebufsize
      mtd: ubi: Set max_write_size to actual value read from flash
      rbtree: Update to u-boot v2016.03
      printk: Add printk_once
      Add list_sort from u-boot v2016.03
      printk: Add pr_cont
      compiler*.h: include/linux/compiler*.h with Linux 4.5
      module.h: Add THIS_MODULE
      ARM: Add atomic.h from u-boot v2016.03
      Move GFP_NOFS to barebox-wrapper
      barebox-wrapper: Implement kfree and vfree as static inline functions
      barebox-wrapper: Add kcalloc and __vmalloc
      ubifs: update implementation from u-boot v2016.03
      scripts: imx-image: Fix image size in flash header for i.MX35

Andreas Geisenhainer (1):
      documentation: i2c_read() does not expect any "DATA".

Andrey Smirnov (20):
      i.MX6: dts: Include local .dtsi's last
      clk-imx6: Call clk_enable on mmdc_ch0_axi_podf
      fec_imx: Deallocate clocks when probe fails
      fec_imx: Deallocate I/O resources if probe fails
      fec_imx: Free phy_reset GPIO if when probe fails
      fec_imx: Use FEC_ECNTRL_RESET instead of a magic number
      fec_imx: Implement reset timeout
      fec_imx: Deallocate DMA buffers when probe fails
      fec_imx: Unregister MDIO when probe fails
      i.MX: Add revision detection for i.MX6D/Q Plus
      ARM: Add errata 845369 workaround
      i.MX6: Apply errata 845369 workaround
      L2x0: i.MX6: Replace magic numbers with constants
      i.MX6: Apply PL310 errata base on PL310's revision
      i.MX6: PL310: Adjust settings for performance
      common: Add EPROBE_DEFER to strerror
      rtc: abracon: Check obtained time for validity
      ds1307: Fix a bug in probe()
      ds1307: Configure ds1341 for lowest power mode
      sata-imx: Fix a typo

Antony Pavlov (1):
      common: add dependency !SANDBOX on imd target tool

Jason Cobham (1):
      ARM: i.MX53: ccxmx53: Fix memory detection.

Lucas Stach (1):
      ARM: tegra: set up stack before calling maincluster entry

Markus Pargmann (3):
      fs: Add for_each_fs_device_safe()
      fs: umount based on device path and mount path
      ubiformat: Cleanly umount and detach the ubi before formating

Miquel Raynal (1):
      i2c_probe: fix wrong start and stop addresses

Renaud Barbier (1):
      lib: declared buffer is too small to hold string

Sascha Hauer (75):
      mtd: Add support for marking blocks as good
      mtd: nand: Add option to print bbt in nand command
      mtd: mtdpart: Add oob_read function
      mtd: Introduce function to get mtd type string
      mtd: rename mtd_all_ff -> mtd_buf_all_ff
      mtd: Introduce mtd_check_pattern
      mtd: nand-imx: Fix v1 controller ECC code
      mtd: nand-imx: Fix correct_data return value for v2/v3 controllers
      mtd: nand-imx: remove dead code
      mtd: nand-imx: remove/replace debug print
      mtd: remove unused debug defines
      mtd: nand-imx: fix raw read/write
      imd: use struct imd_header * as argument
      imd: string returned from imd_string_data should be const
      scripts: Add scripts/include/ to include path for target programs
      imd: rename imd_search_validate to imd_get
      imd: export functions
      imd: Add function to read parameters
      ARM: pbl-multi: Fix SDRAM at end of address space
      ARM: start: Fix wrong format specifier
      ARM: Do not use last 64KiB of address space for barebox
      ARM: Rework vector table setup
      ARM: i.MX6: esdctl: Fix memsize calculation for 4GiB/cs
      ARM: i.MX6: esdctl: Fix CS0_end for 4GiB/cs
      ARM: i.MX: remove unused imx-flash-header.h
      ARM: i.MX: xload-esdhc: Add GPL header
      ARM: i.MX: xload-esdhc: Fix typo successul -> successful
      ARM: i.MX: xload-esdhc: Add debug messages
      ARM: i.MX: xload-esdhc: Find entry in image
      mtd: Introduce mtd-peb API
      ubiformat: Use mtd-peb API
      remove now unused libmtd
      mtd: ubi: Use mtd_all_ff/mtd_check_pattern
      mtd: ubi: Use mtd_peb_check_all_ff
      mtd: ubi: Use mtd_peb_torture
      mtd: ubi: Use mtd_peb_read
      mtd: ubi: Use mtd_peb_write
      mtd: ubi: Use mtd_peb_erase
      mtd: ubi: Make debug options configurable
      commands: Create nand_bitflip command
      bbu: print and evaluate image Metadata
      ARM: i.MX27: Fix gpt compatible for latest device trees
      commands: nandtest: Fix wrong format specifier
      mtd: doc3: Fix wrong format specifier
      PPC: discard unused functions
      PPC: atomic: remove non existing header include
      decompressors: Use malloc/free wrappers
      mtd: ubi: rename cdev.c to barebox.c
      mtd: ubi: make ubi_detach_mtd_dev ubi internal
      mtd: ubi: umount mounted volumes before detaching a ubi device
      mtd: ubi: Add function to get ubi number from mtd device
      commands: ubidetach: Allow mtd devices as argument
      bbu: Allow to refresh/repair images
      mtd: nand: export nand_check_erased_buf
      imx-bbu-nand-fcb: factor out layout functions
      imx-bbu-nand-fcb: Use mtd-peb API to write firmware
      imx-bbu-nand-fcb: factor out a fcb write function
      imx-bbu-nand-fcb: erase on demand
      imx-bbu-nand-fcb: Only write FCBs/DBBTs when necessary
      imx-bbu-nand-fcb: When writing firmware return new bad blocks
      imx-bbu-nand-fcb: Print error when writing blocks fails
      imx-bbu-nand-fcb: Make robust against power cuts
      imx-bbu-nand-fcb: Print error message when out of pebs
      Merge branch 'for-next/arm'
      Merge branch 'for-next/imd'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx-bbu-nand-fcb'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd-imx-nand'
      Merge branch 'for-next/rtc'
      Merge branch 'for-next/ubiformat'
      Merge branch 'for-next/ubifs'
      fix erasing/protecting flashes with unspecified size
      filetype: Fix booting ARM Linux Kernels with CONFIG_EFI enabled
      Release v2016.05.0

Uwe Kleine-K=F6nig (1):
      defaultenv-2: add automount for nfs

 Documentation/user/updating.rst                    |    8 +
 Makefile                                           |    2 +-
 .../ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg |    2 +-
 arch/arm/boards/ccxmx53/lowlevel.c                 |   41 +-
 arch/arm/boards/efika-mx-smartbook/board.c         |    1 -
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    1 -
 arch/arm/boards/freescale-mx25-3ds/3stack.c        |    1 -
 arch/arm/boards/freescale-mx51-babbage/board.c     |    1 -
 arch/arm/boards/freescale-mx53-qsb/board.c         |    1 -
 arch/arm/boards/karo-tx53/board.c                  |    1 -
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    2 -
 arch/arm/configs/tx51stk5_defconfig                |    2 -
 arch/arm/cpu/entry.c                               |    3 +-
 arch/arm/cpu/mmu.c                                 |  164 +-
 arch/arm/cpu/start.c                               |    2 +-
 arch/arm/cpu/uncompress.c                          |    2 +-
 arch/arm/dts/imx53-ccxmx53.dts                     |    1 +
 arch/arm/dts/imx53-ccxmx53.dtsi                    |    5 +-
 arch/arm/dts/imx6dl-cm-fx6.dts                     |    2 +-
 arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts           |    2 +-
 arch/arm/dts/imx6dl-eltec-hipercam.dts             |    2 +-
 arch/arm/dts/imx6dl-nitrogen6x.dts                 |    2 +-
 arch/arm/dts/imx6dl-phytec-pfla02.dtsi             |    2 +-
 arch/arm/dts/imx6dl-sabrelite.dts                  |    2 +-
 arch/arm/dts/imx6dl-tqma6s.dtsi                    |    2 +-
 arch/arm/dts/imx6s-phytec-pfla02.dtsi              |    2 +-
 arch/arm/dts/imx6s-riotboard.dts                   |    2 +-
 arch/arm/include/asm/atomic.h                      |  111 +
 arch/arm/include/asm/barebox-arm.h                 |    2 +-
 arch/arm/include/asm/cache-l2x0.h                  |    8 +
 arch/arm/include/asm/errata.h                      |    9 +
 arch/arm/include/asm/proc-armv/system.h            |  224 ++
 arch/arm/lib/barebox.lds.S                         |    1 +
 arch/arm/mach-imx/Kconfig                          |   52 -
 arch/arm/mach-imx/clk-imx35.c                      |   20 +
 arch/arm/mach-imx/clk-imx6.c                       |    1 +
 arch/arm/mach-imx/cpu_init.c                       |    1 +
 arch/arm/mach-imx/esdctl.c                         |    6 +-
 arch/arm/mach-imx/imx-bbu-internal.c               |    1 -
 arch/arm/mach-imx/imx6-mmdc.c                      |    2 +-
 arch/arm/mach-imx/imx6.c                           |   37 +-
 arch/arm/mach-imx/include/mach/barebox.lds.h       |   32 -
 arch/arm/mach-imx/include/mach/imx-flash-header.h  |  182 --
 arch/arm/mach-imx/xload-esdhc.c                    |   24 +-
 arch/arm/mach-omap/am33xx_bbu_nand.c               |    2 +-
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c            |    2 +-
 arch/arm/mach-tegra/include/mach/lowlevel.h        |    7 +-
 arch/ppc/Makefile                                  |    1 +
 arch/ppc/include/asm/atomic.h                      |    2 -
 commands/Kconfig                                   |   18 +-
 commands/Makefile                                  |    1 +
 commands/barebox-update.c                          |   26 +-
 commands/flash.c                                   |    2 +-
 commands/i2c.c                                     |    4 +-
 commands/nand-bitflip.c                            |  117 +
 commands/nand.c                                    |   79 +-
 commands/ubi.c                                     |   30 +-
 commands/ubiformat.c                               |  215 +-
 commands/umount.c                                  |    2 +-
 common/Kconfig                                     |    1 +
 common/bbu.c                                       |   90 +-
 common/environment.c                               |    3 +-
 common/filetype.c                                  |    5 +-
 common/imd.c                                       |  124 +-
 common/imx-bbu-nand-fcb.c                          |  968 +++++-
 common/misc.c                                      |    1 +
 defaultenv/defaultenv-2-base/init/automount        |    8 +-
 drivers/ata/sata-imx.c                             |    2 +-
 drivers/mtd/Kconfig                                |    9 +
 drivers/mtd/Makefile                               |    2 +-
 drivers/mtd/core.c                                 |   67 +-
 drivers/mtd/mtdconcat.c                            |   24 +
 drivers/mtd/nand/nand_base.c                       |   63 +-
 drivers/mtd/nand/nand_imx.c                        |  241 +-
 drivers/mtd/nor/cfi_flash.c                        |    1 +
 drivers/mtd/partition.c                            |   38 +
 drivers/mtd/peb.c                                  |  658 ++++
 drivers/mtd/ubi/Kconfig                            |   13 +
 drivers/mtd/ubi/Makefile                           |    2 +-
 drivers/mtd/ubi/attach.c                           |    2 +-
 drivers/mtd/ubi/{cdev.c =3D> barebox.c}              |   57 +
 drivers/mtd/ubi/build.c                            |    2 +-
 drivers/mtd/ubi/debug.h                            |   51 +-
 drivers/mtd/ubi/io.c                               |  415 +--
 drivers/mtd/ubi/misc.c                             |   19 -
 drivers/mtd/ubi/ubi-barebox.h                      |    2 -
 drivers/mtd/ubi/ubi.h                              |    3 +-
 drivers/mtd/ubi/wl.c                               |    5 -
 drivers/net/fec_imx.c                              |   59 +-
 drivers/rtc/rtc-abracon.c                          |    4 +-
 drivers/rtc/rtc-ds1307.c                           |   22 +-
 drivers/usb/gadget/dfu.c                           |    4 +-
 drivers/usb/gadget/f_fastboot.c                    |    2 +-
 fs/devfs-core.c                                    |    1 +
 fs/fs.c                                            |   52 +-
 fs/ubifs/Makefile                                  |    2 +-
 fs/ubifs/budget.c                                  |  660 ++++-
 fs/ubifs/debug.c                                   | 3133 ++++++++++++++++=
+++-
 fs/ubifs/debug.h                                   |  577 ++--
 fs/ubifs/gc.c                                      |  976 ++++++
 fs/ubifs/io.c                                      |  929 +++++-
 fs/ubifs/key.h                                     |   68 +-
 fs/ubifs/log.c                                     |  671 ++++-
 fs/ubifs/lprops.c                                  |  537 +++-
 fs/ubifs/lpt.c                                     | 1275 +++++++-
 fs/ubifs/lpt_commit.c                              | 1904 +++++++++++-
 fs/ubifs/master.c                                  |  102 +-
 fs/ubifs/misc.h                                    |  164 +-
 fs/ubifs/orphan.c                                  |  672 ++++-
 fs/ubifs/recovery.c                                |  755 +++--
 fs/ubifs/replay.c                                  |  603 ++--
 fs/ubifs/sb.c                                      |  558 +++-
 fs/ubifs/scan.c                                    |  116 +-
 fs/ubifs/super.c                                   | 2355 +++++++++++++--
 fs/ubifs/tnc.c                                     |  756 ++++-
 fs/ubifs/tnc_misc.c                                |  127 +-
 fs/ubifs/ubifs-media.h                             |   62 +-
 fs/ubifs/ubifs.c                                   |  828 +++++-
 fs/ubifs/ubifs.h                                   |  968 +++++-
 include/asm-generic/atomic-long.h                  |  260 ++
 include/asm-generic/barebox.lds.h                  |    7 +-
 include/bbu.h                                      |    2 +
 include/fs.h                                       |    3 +
 include/image-metadata.h                           |    6 +
 include/linux/barebox-wrapper.h                    |   16 +-
 include/linux/compiler-gcc.h                       |   35 +-
 include/linux/compiler-intel.h                     |    1 +
 include/linux/compiler.h                           |  171 +-
 include/linux/decompress/mm.h                      |   11 +-
 include/linux/fs.h                                 |   18 +-
 include/linux/list_sort.h                          |   11 +
 include/linux/mtd/mtd-abi.h                        |    1 +
 include/linux/mtd/mtd.h                            |   25 +-
 include/linux/mtd/nand.h                           |    3 +
 include/linux/rbtree.h                             |  155 +-
 include/linux/rbtree_augmented.h                   |  220 ++
 include/module.h                                   |    1 +
 include/mtd/libmtd.h                               |  149 -
 include/mtd/libscan.h                              |    3 +-
 include/mtd/libubigen.h                            |    4 +-
 include/mtd/mtd-peb.h                              |   24 +
 include/mtd/ubi-user.h                             |    3 +-
 include/printk.h                                   |   11 +
 lib/Kconfig                                        |    3 -
 lib/Makefile                                       |    2 +-
 lib/decompress_inflate.c                           |   19 +-
 lib/decompress_unlz4.c                             |   10 +-
 lib/decompress_unlzo.c                             |   10 +-
 lib/decompress_unxz.c                              |   12 +-
 lib/display_options.c                              |    2 +-
 lib/libmtd.c                                       |  368 ---
 lib/libscan.c                                      |   30 +-
 lib/libubigen.c                                    |   23 +-
 lib/list_sort.c                                    |  296 ++
 lib/rbtree.c                                       |  695 +++--
 lib/xz/xz_dec_bcj.c                                |    2 +-
 lib/xz/xz_dec_lzma2.c                              |   14 +-
 lib/xz/xz_dec_stream.c                             |    6 +-
 lib/xz/xz_private.h                                |    4 +-
 lib/zlib_inflate/infutil.c                         |    8 +-
 scripts/Makefile                                   |    3 +-
 scripts/bareboximd.c                               |    1 +
 scripts/imx/imx.c                                  |    7 +-
 163 files changed, 21639 insertions(+), 4313 deletions(-)
 create mode 100644 arch/arm/include/asm/atomic.h
 create mode 100644 arch/arm/include/asm/proc-armv/system.h
 delete mode 100644 arch/arm/mach-imx/include/mach/barebox.lds.h
 delete mode 100644 arch/arm/mach-imx/include/mach/imx-flash-header.h
 create mode 100644 commands/nand-bitflip.c
 create mode 100644 drivers/mtd/peb.c
 rename drivers/mtd/ubi/{cdev.c =3D> barebox.c} (83%)
 create mode 100644 fs/ubifs/gc.c
 create mode 100644 include/asm-generic/atomic-long.h
 create mode 100644 include/linux/list_sort.h
 create mode 100644 include/linux/rbtree_augmented.h
 delete mode 100644 include/mtd/libmtd.h
 create mode 100644 include/mtd/mtd-peb.h
 delete mode 100644 lib/libmtd.c
 create mode 100644 lib/list_sort.c
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
