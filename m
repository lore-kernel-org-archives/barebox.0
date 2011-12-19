Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RcdpI-0006QR-4l
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 14:04:25 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 19 Dec 2011 15:04:01 +0100
Message-Id: <1324303449-30045-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH V3 0/8] mtd framework rework
To: barebox@lists.infradead.org

This patchset aims at reworking the mtd support :
 - add a mtd core
 - concentrate MTD core functions (MTD_WRITE)
 - split mtd core character device (/dev/mtd<N>) from other
   character devices (/dev/mtdoob<N>).
 - add a data+oob character device (/dev/mtdraw<N>)

Since V1, Sascha comments should have been taken into
account, and the patchset was rebased against next tree
(commit "mtd nand: fix oob compile time option").

As there were some quirks on the rebase, I'd like a
quick validation from you, Sascha, if everything still works
as it's supposed to, especially the *_READ_OOB thingy.

Robert Jarzmik (8):
  drivers/mtd: move nand.c into core.c
  drivers/mtd: cosmetic changes
  drivers/mtd: transfer NAND notions to MTD core
  drivers/mtd: recover NAND default device name "nand"
  drivers/mtd: fix core multiple MTD registrations
  drivers/mtd: add mtd core hooks
  drivers/mtd: split mtd mtdoob devices
  drivers/mtd: add the mtdraw device (data+oob)

 drivers/mtd/Kconfig                    |   17 ++
 drivers/mtd/Makefile                   |    7 +-
 drivers/mtd/core.c                     |  241 +++++++++++++++++++++++++
 drivers/mtd/mtd.h                      |   42 +++++
 drivers/mtd/mtdoob.c                   |  100 +++++++++++
 drivers/mtd/mtdraw.c                   |  303 ++++++++++++++++++++++++++++++++
 drivers/mtd/nand/Kconfig               |   11 --
 drivers/mtd/nand/Makefile              |    4 +-
 drivers/mtd/nand/atmel_nand.c          |    2 +-
 drivers/mtd/nand/diskonchip.c          |    2 +-
 drivers/mtd/nand/nand-bb.c             |    6 +-
 drivers/mtd/nand/nand.c                |  290 ------------------------------
 drivers/mtd/nand/nand_base.c           |   14 +-
 drivers/mtd/nand/nand_bbt.c            |    2 +-
 drivers/mtd/nand/nand_hwecc.c          |    4 +-
 drivers/mtd/nand/nand_hwecc_syndrome.c |    6 +-
 drivers/mtd/nand/nand_imx.c            |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c      |    2 +-
 drivers/mtd/nand/nand_s3c2410.c        |    2 +-
 drivers/mtd/nand/nand_swecc.c          |    4 +-
 drivers/mtd/nand/nomadik_nand.c        |    2 +-
 include/linux/mtd/mtd.h                |    3 +-
 22 files changed, 735 insertions(+), 331 deletions(-)
 create mode 100644 drivers/mtd/core.c
 create mode 100644 drivers/mtd/mtd.h
 create mode 100644 drivers/mtd/mtdoob.c
 create mode 100644 drivers/mtd/mtdraw.c
 delete mode 100644 drivers/mtd/nand/nand.c

-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
