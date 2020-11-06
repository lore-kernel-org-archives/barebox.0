Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xK-000542-MJ
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:34 +0100
Message-Id: <20201106133900.2656-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 00/26] Update nand layer to Linux-5.9
To: Barebox List <barebox@lists.infradead.org>

Our nand layer in barebox is quite old and a lot has happened since the
last update. nand_base.c alone has over 300 new commits on the Kernel.
Doing an incremental update is hopeless, so here is an update with most
things done in a single patch. I have split out some patches which do
the more mechanical stuff like replacing struct mtd_info context
pointers with struct nand_chip or moving many function hooks from struct
nand_info to a struct nand_legacy.  Still the update patch is huge and I
apologize for that.

With this series updating single drivers to their recent kernel
counterparts should be easy. I've done that with the denali driver which
is also part of this series.

A big downside of this series is that the NAND layer gets way bigger in
binary size. On many boards this doesn't hurt much, but for some others
it really does. With this series it won't be possible anymore to build a
48k MLO binary for the beagleboard. As much as I dislike this I think we
do not have much choice here as there is much movement in the nand/mtd
Kernel layers and we don't have the manpower to maintain our own version
of it. With the advent of exec_op in Linux it became even impossible to
port newer drivers to barebox, so I think we have to swallow this pill.

Sascha

Sascha Hauer (26):
  mtd: Drop asynchronous erase support
  mtd: nand: remove unused header file
  mtd: nand: drop unused erase_cmd hook
  mtd: nand: drop unused errstat hook
  mtd: nand: Pass struct nand_chip around
  mtd: Add underscore prefix to mtd hooks
  mtd: Use classdev->parent
  mtd: rename class_dev to dev
  mtd: rename master to parent
  lib: Add match_string()
  mtd: nand: move function hooks to struct nand_legacy
  mtd: Add ecc_step_size
  mtd: nand: omap_gpmc: Drop unused variable
  mtd: nand: omap_gpmc: Fix wrong length check
  mtd: nand: omap_gpmc: Add missing bch16 string
  mtd: nand: denali: Drop multichip support
  mtd: nand: marvell: Use nand_to_mtd()
  mtd: nand: gpmi: Use nand_to_mtd()
  mtd: nand: orion: Use nand_to_mtd()
  mtd: nand: Update to Linux-5.9
  mtd: nand: denali: Update to Linux-5.9
  mtd: nand: atmel: Return number of bitflips
  mtd: nand: atmel: drop dead code
  mtd: nand: atmel: Fix pmecc ecc settings
  nand command: Print OOB information
  nand command: Allow offsets with [kM] suffixes

 arch/arm/boards/sama5d3_xplained/init.c |    1 +
 arch/arm/configs/nhk8815_defconfig      |    2 +-
 arch/arm/mach-imx/external-nand-boot.c  |    1 +
 arch/arm/mach-imx/xload-imx-nand.c      |    1 +
 commands/nand-bitflip.c                 |   23 +-
 commands/nand.c                         |    5 +
 drivers/bus/omap-gpmc.c                 |    1 +
 drivers/mtd/Kconfig                     |    2 -
 drivers/mtd/core.c                      |  720 ++-
 drivers/mtd/devices/docg3.c             |   18 +-
 drivers/mtd/devices/m25p80.c            |    2 +-
 drivers/mtd/devices/mtd_dataflash.c     |   12 +-
 drivers/mtd/devices/mtdram.c            |   10 +-
 drivers/mtd/mtdconcat.c                 |   38 +-
 drivers/mtd/mtdoob.c                    |    6 +-
 drivers/mtd/mtdraw.c                    |   11 +-
 drivers/mtd/nand/Kconfig                |   53 +-
 drivers/mtd/nand/Makefile               |   11 +-
 drivers/mtd/nand/atmel_nand.c           |  253 +-
 drivers/mtd/nand/bbt.c                  |  132 +
 drivers/mtd/nand/core.c                 |  275 +
 drivers/mtd/nand/denali.h               |  584 +-
 drivers/mtd/nand/internals.h            |  170 +
 drivers/mtd/nand/nand.h                 |   32 -
 drivers/mtd/nand/nand_amd.c             |   53 +
 drivers/mtd/nand/nand_base.c            | 7706 ++++++++++++++---------
 drivers/mtd/nand/nand_bbt.c             |  450 +-
 drivers/mtd/nand/nand_bch.c             |   90 +-
 drivers/mtd/nand/nand_denali.c          | 2264 +++----
 drivers/mtd/nand/nand_denali_dt.c       |   74 +-
 drivers/mtd/nand/nand_ecc.c             |  573 +-
 drivers/mtd/nand/nand_esmt.c            |   54 +
 drivers/mtd/nand/nand_hynix.c           |  716 +++
 drivers/mtd/nand/nand_ids.c             |  258 +-
 drivers/mtd/nand/nand_imx.c             |  206 +-
 drivers/mtd/nand/nand_jedec.c           |  135 +
 drivers/mtd/nand/nand_legacy.c          |  629 ++
 drivers/mtd/nand/nand_macronix.c        |  334 +
 drivers/mtd/nand/nand_micron.c          |  595 ++
 drivers/mtd/nand/nand_mrvl_nfc.c        |  152 +-
 drivers/mtd/nand/nand_mxs.c             |  172 +-
 drivers/mtd/nand/nand_omap_gpmc.c       |  183 +-
 drivers/mtd/nand/nand_onfi.c            |  326 +
 drivers/mtd/nand/nand_orion.c           |   25 +-
 drivers/mtd/nand/nand_s3c24xx.c         |   62 +-
 drivers/mtd/nand/nand_samsung.c         |  135 +
 drivers/mtd/nand/nand_timings.c         |  574 +-
 drivers/mtd/nand/nand_toshiba.c         |  274 +
 drivers/mtd/nand/nomadik_nand.c         |   28 +-
 drivers/mtd/nor/cfi_flash.c             |   21 +-
 drivers/mtd/partition.c                 |   58 +-
 drivers/mtd/peb.c                       |   43 +-
 drivers/mtd/spi-nor/cadence-quadspi.c   |    2 +-
 drivers/mtd/spi-nor/spi-nor.c           |   16 +-
 drivers/mtd/ubi/build.c                 |    6 +-
 drivers/net/e1000/eeprom.c              |    4 -
 drivers/of/of_mtd.c                     |    3 +
 include/linux/mtd/jedec.h               |   91 +
 include/linux/mtd/mtd-abi.h             |    1 +
 include/linux/mtd/mtd.h                 |  179 +-
 include/linux/mtd/nand.h                | 1357 ++--
 include/linux/mtd/nand_bch.h            |   24 +-
 include/linux/mtd/nand_ecc.h            |   37 +-
 include/linux/mtd/onfi.h                |  178 +
 include/linux/mtd/partitions.h          |  115 +
 include/linux/mtd/rawnand.h             | 1464 +++++
 include/linux/string.h                  |    2 +
 lib/string.c                            |   34 +
 68 files changed, 15197 insertions(+), 6869 deletions(-)
 create mode 100644 drivers/mtd/nand/bbt.c
 create mode 100644 drivers/mtd/nand/core.c
 create mode 100644 drivers/mtd/nand/internals.h
 delete mode 100644 drivers/mtd/nand/nand.h
 create mode 100644 drivers/mtd/nand/nand_amd.c
 create mode 100644 drivers/mtd/nand/nand_esmt.c
 create mode 100644 drivers/mtd/nand/nand_hynix.c
 create mode 100644 drivers/mtd/nand/nand_jedec.c
 create mode 100644 drivers/mtd/nand/nand_legacy.c
 create mode 100644 drivers/mtd/nand/nand_macronix.c
 create mode 100644 drivers/mtd/nand/nand_micron.c
 create mode 100644 drivers/mtd/nand/nand_onfi.c
 create mode 100644 drivers/mtd/nand/nand_samsung.c
 create mode 100644 drivers/mtd/nand/nand_toshiba.c
 create mode 100644 include/linux/mtd/jedec.h
 create mode 100644 include/linux/mtd/onfi.h
 create mode 100644 include/linux/mtd/partitions.h
 create mode 100644 include/linux/mtd/rawnand.h

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
