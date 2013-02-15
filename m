Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6GI4-0001Sk-0W
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 08:05:05 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1U6GI0-0007K9-4U
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 09:05:00 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1U6GI0-0007zr-3S
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 09:05:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Feb 2013 09:04:53 +0100
Message-Id: <1360915499-1659-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] integrate CFI Flash driver into mtd
To: barebox@lists.infradead.org

This is some general mtd cleanup and the integration of the CFI
Flash driver into mtd. Background is that current ubiformat
implementation relies on the mtd API.

First the mtd_read/write and friends we currently have are renamed
to libmtd_*, because they implement the functions from libmtd.
Then our internal mtd_read/write functions are renamed to mtd_op_*
because they implement the file_operations. Then we finally have
our namespace clean and can implement mtd_read/write as global
(kernel compatible) functions.
We currently miss the mtd_(un)lock functions needed for CFI
flash.
With this in place the final patch integrates the CFI driver into
mtd.

Sascha

----------------------------------------------------------------
Sascha Hauer (6):
      libmtd: rename functions from mtd_* to libmtd_*
      mtd: rename mtd file operations callback functions
      mtd: Add mtd_* functions
      mtd: Use mtd_* functions where appropriate
      mtd: implement mtd_lock and mtd_unlock
      nor flash: integrate into mtd

 arch/arm/configs/edb93xx_defconfig                |    1 +
 arch/arm/configs/eukrea_cpuimx27_defconfig        |    1 +
 arch/arm/configs/freescale_mx51_babbage_defconfig |    1 +
 arch/arm/configs/mmccpu_defconfig                 |    1 +
 arch/arm/configs/mx21ads_defconfig                |    1 +
 arch/arm/configs/mx27ads_defconfig                |    1 +
 arch/arm/configs/netx_nxdb500_defconfig           |    1 +
 arch/arm/configs/pcm027_defconfig                 |    1 +
 arch/arm/configs/pm9263_defconfig                 |    1 +
 arch/arm/configs/scb9328_defconfig                |    1 +
 arch/blackfin/configs/ipe337_defconfig            |    1 +
 arch/nios2/configs/generic_defconfig              |    1 +
 arch/ppc/configs/pcm030_defconfig                 |    1 +
 commands/ubiformat.c                              |    8 +-
 drivers/Kconfig                                   |    1 -
 drivers/Makefile                                  |    1 -
 drivers/mtd/Kconfig                               |    1 +
 drivers/mtd/Makefile                              |    1 +
 drivers/mtd/core.c                                |  111 +++++++++++++++++----
 drivers/mtd/mtdraw.c                              |    2 +-
 drivers/mtd/nand/nand_bbt.c                       |    4 +-
 drivers/{ => mtd}/nor/Kconfig                     |    6 +-
 drivers/{ => mtd}/nor/Makefile                    |    0
 drivers/{ => mtd}/nor/cfi_flash.c                 |   82 ++++-----------
 drivers/{ => mtd}/nor/cfi_flash.h                 |    1 -
 drivers/{ => mtd}/nor/cfi_flash_amd.c             |    0
 drivers/{ => mtd}/nor/cfi_flash_intel.c           |    0
 drivers/mtd/ubi/io.c                              |    8 +-
 include/linux/mtd/mtd.h                           |    9 ++
 include/mtd/libmtd.h                              |    8 +-
 lib/libmtd.c                                      |   14 +--
 lib/libscan.c                                     |    2 +-
 32 files changed, 157 insertions(+), 115 deletions(-)
 rename drivers/{ => mtd}/nor/Kconfig (96%)
 rename drivers/{ => mtd}/nor/Makefile (100%)
 rename drivers/{ => mtd}/nor/cfi_flash.c (93%)
 rename drivers/{ => mtd}/nor/cfi_flash.h (99%)
 rename drivers/{ => mtd}/nor/cfi_flash_amd.c (100%)
 rename drivers/{ => mtd}/nor/cfi_flash_intel.c (100%)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
