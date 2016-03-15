Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxF-0005Gg-VL
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1afmwr-0008WV-Dm
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 12:15:37 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86_2)
 (envelope-from <sha@pengutronix.de>) id 1afmwq-0006KF-V6
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 12:15:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:18 +0100
Message-Id: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Introduce mtd-peb API
To: Barebox List <barebox@lists.infradead.org>

The following series introduces and makes use of the mtd-peb API.

Raw Nand devices are best handled in a eraseblock oriented way. Also
these devices need a proper bad block handling. The regular mtd API
is stream oriented (at least for read/write). Using these functions
includes unhandy use of 64bit arithmetics and handling erasing blocks
and bad blocks requires us to align the offset back to block boundaries.

The UBI IO layer already has a nice API to handle Nand blockwise. This
series strips the API out of the UBI code and makes it available for other
users. It's names the mtd-peb API (peb for Physical Erase Block). UBI
and ubiformat are converted to this API in this series. Another user
will be the i.MX internal nand update code which is converted in another
series.

Since UBI and ubiformat now share more code this series makes the image
a little smaller. Hurray, it's been some time since this last happened.

Sascha

----------------------------------------------------------------
Sascha Hauer (16):
      mtd: Add support for marking blocks as good
      mtd: nand: Add option to print bbt in nand command
      mtd: mtdpart: Add oob_read function
      mtd: Introduce function to get mtd type string
      mtd: rename mtd_all_ff -> mtd_buf_all_ff
      mtd: Introduce mtd_check_pattern
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

 commands/Kconfig             |   1 -
 commands/nand.c              |  79 +++++--
 commands/ubiformat.c         | 191 +++++++--------
 drivers/mtd/Kconfig          |   9 +
 drivers/mtd/Makefile         |   2 +-
 drivers/mtd/core.c           |  67 +++++-
 drivers/mtd/mtdconcat.c      |  24 ++
 drivers/mtd/nand/nand_base.c |  61 ++++-
 drivers/mtd/partition.c      |  38 +++
 drivers/mtd/peb.c            | 537 +++++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/ubi/Kconfig      |  13 ++
 drivers/mtd/ubi/attach.c     |   2 +-
 drivers/mtd/ubi/debug.h      |  51 +---
 drivers/mtd/ubi/io.c         | 415 ++-------------------------------
 drivers/mtd/ubi/misc.c       |  19 --
 drivers/mtd/ubi/ubi.h        |   2 -
 drivers/mtd/ubi/wl.c         |   5 -
 fs/devfs-core.c              |   1 +
 include/linux/mtd/mtd-abi.h  |   1 +
 include/linux/mtd/mtd.h      |   6 +-
 include/linux/mtd/nand.h     |   2 +
 include/mtd/libmtd.h         | 149 ------------
 include/mtd/libscan.h        |   3 +-
 include/mtd/libubigen.h      |   4 +-
 include/mtd/mtd-peb.h        |  21 ++
 lib/Kconfig                  |   3 -
 lib/Makefile                 |   1 -
 lib/libmtd.c                 | 368 -----------------------------
 lib/libscan.c                |  30 +--
 lib/libubigen.c              |  23 +-
 30 files changed, 994 insertions(+), 1134 deletions(-)
 create mode 100644 drivers/mtd/peb.c
 delete mode 100644 include/mtd/libmtd.h
 create mode 100644 include/mtd/mtd-peb.h
 delete mode 100644 lib/libmtd.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
