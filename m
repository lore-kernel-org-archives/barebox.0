Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1Cyo-0003pt-FA
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 10:04:38 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1V1CyS-00059b-D4
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 12:04:12 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1V1CyS-0002a4-BQ
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 12:04:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 12:04:02 +0200
Message-Id: <1374487450-13800-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mtd nand sync with kernel
To: barebox@lists.infradead.org

The following updates the barebox NAND support to Linux-3.11-rc1.

I gave up on using separate files for the nand write support as it
turned out to be hard to keep it in sync with the kernel.

The patches were tested with the i.MX NAND driver and the MXS nand
driver. I hope there are no regressions but due to the size of the
patch this is hard to make sure, so please test.

Sascha

----------------------------------------------------------------
Sascha Hauer (8):
      mtd: nand: write BBM to OOB even with flash-based BBT
      mtd: rename MTD_OOB_* to MTD_OPS_*
      mtd: sync bbm.h with Linux Kernel
      string: introduce memchr_inv
      mtd: rename mtd_read_oob
      mtd: introduce ecc strength
      mtd: introduce mtd_read_oob and mtd_write_oob
      mtd: nand: update to v3.11-rc1

 arch/arm/boards/nhk8815/setup.c        |    2 -
 drivers/mtd/core.c                     |   21 +
 drivers/mtd/devices/docg3.c            |   26 +-
 drivers/mtd/mtdoob.c                   |    8 +-
 drivers/mtd/mtdraw.c                   |   10 +-
 drivers/mtd/nand/Kconfig               |   29 +-
 drivers/mtd/nand/Makefile              |    5 +-
 drivers/mtd/nand/atmel_nand.c          |   15 +-
 drivers/mtd/nand/nand.h                |    3 +-
 drivers/mtd/nand/nand_base.c           | 3035 +++++++++++++++++++++++++-------
 drivers/mtd/nand/nand_bbt.c            | 1053 ++++++-----
 drivers/mtd/nand/nand_bch.c            |  243 +++
 drivers/mtd/nand/nand_hwecc.c          |  103 --
 drivers/mtd/nand/nand_hwecc_syndrome.c |  225 ---
 drivers/mtd/nand/nand_ids.c            |  266 ++-
 drivers/mtd/nand/nand_imx.c            |   23 +-
 drivers/mtd/nand/nand_mxs.c            |   20 +-
 drivers/mtd/nand/nand_omap_gpmc.c      |   18 +-
 drivers/mtd/nand/nand_s3c24xx.c        |    2 +
 drivers/mtd/nand/nand_swecc.c          |   94 -
 drivers/mtd/nand/nand_write.c          |  747 --------
 drivers/mtd/nand/nomadik_nand.c        |    1 +
 include/asm-generic/errno.h            |    4 +-
 include/linux/mtd/bbm.h                |  128 +-
 include/linux/mtd/mtd-abi.h            |   19 +
 include/linux/mtd/mtd.h                |   66 +-
 include/linux/mtd/nand.h               |  645 ++++---
 include/linux/string.h                 |    2 +
 lib/string.c                           |   59 +
 29 files changed, 4110 insertions(+), 2762 deletions(-)
 create mode 100644 drivers/mtd/nand/nand_bch.c
 delete mode 100644 drivers/mtd/nand/nand_hwecc.c
 delete mode 100644 drivers/mtd/nand/nand_hwecc_syndrome.c
 delete mode 100644 drivers/mtd/nand/nand_swecc.c
 delete mode 100644 drivers/mtd/nand/nand_write.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
