Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCSP7-0002ZF-H0
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 10:13:58 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UCSP5-0002Si-UT
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 11:13:55 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UCSP5-0004ci-TA
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 11:13:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 11:13:44 +0100
Message-Id: <1362392034-1908-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] nand bad block erase and i.MX bbt tool
To: barebox@lists.infradead.org

This series contains some NAND related updates.

First an option is introduced to allow erasing bad blocks. While
this is a dangerous operation it is needed during development or
when some foreign flash driver has touched the NAND. The option
is hidden behind a Kconfig option and must be enabled explicitly
with a device parameter.

Second the BBT (bad block table) type is exposed via a device
parameter. This is useful to get information about the bbt.

Last not least the i.MX NAND driver no longer silently creates
a BBT on 2k NAND flashes. This does not work properly because
the Controller uses a non standard NAND layout and will not
detect the factory bad block markers properly on a virgin
NAND flash. We work around this by adding a command which creates
a BBT on demand using the correct information. Whether this
command needs to be executed can be detected with the bbt device
parameter.

Sascha

The following changes since commit 94e71b843f6456abacc2fe76a5c375a461fabdf7:

  libubi: Use global mtd_all_ff function (2013-03-04 10:54:46 +0100)

are available in the git repository at:

  none 

for you to fetch changes up to c3afd8676888d93d831bd4a8e71f1560ee5616c4:

  mtd: nand: Add command to generate a flash BBT (2013-03-04 11:06:23 +0100)

----------------------------------------------------------------
Sascha Hauer (10):
      mtd: nand: register nand flashes with nand specific function
      mtd: Add parameter to allow erasing bad blocks
      mtd nand: introduce bbm.h
      nand command: use loff_t for block offset
      nand command: use enumeration for command instead of bitmask
      nand command: check for <dev> directly after option parsing
      mtd: nand: replace NAND_USE_FLASH_BBT with NAND_BBT_USE_FLASH
      mtd nand i.MX: remove unused code
      mtd: nand: Add bbt parameter
      mtd: nand: Add command to generate a flash BBT

 commands/nand.c                   |   48 ++++----
 drivers/mtd/core.c                |    6 +-
 drivers/mtd/mtdraw.c              |    6 +-
 drivers/mtd/nand/Kconfig          |   14 +++
 drivers/mtd/nand/Makefile         |    1 +
 drivers/mtd/nand/atmel_nand.c     |    4 +-
 drivers/mtd/nand/nand_base.c      |   50 +++++++++
 drivers/mtd/nand/nand_bbt.c       |    4 +-
 drivers/mtd/nand/nand_imx.c       |   30 +++--
 drivers/mtd/nand/nand_imx_bbm.c   |  220 +++++++++++++++++++++++++++++++++++++
 drivers/mtd/nand/nand_mxs.c       |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c |    2 +-
 drivers/mtd/nand/nand_s3c24xx.c   |    4 +-
 drivers/mtd/nand/nand_write.c     |    5 +-
 drivers/mtd/nand/nomadik_nand.c   |    2 +-
 include/linux/mtd/bbm.h           |   92 ++++++++++++++++
 include/linux/mtd/mtd.h           |    3 +
 include/linux/mtd/nand.h          |   86 ++-------------
 18 files changed, 456 insertions(+), 123 deletions(-)
 create mode 100644 drivers/mtd/nand/nand_imx_bbm.c
 create mode 100644 include/linux/mtd/bbm.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
