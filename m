Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6gz9-0005cF-1m
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 13:07:39 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1V6gyk-0004Jc-0j
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 15:07:10 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1V6gyj-0002m5-Vf
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 15:07:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Aug 2013 15:07:00 +0200
Message-Id: <1375794428-29577-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] UBIFS support
To: barebox@lists.infradead.org

The following adds UBIFS support to barebox. The code has been taken from
U-Boot rather than the Kernel since it was easier to adopt.

Sascha

----------------------------------------------------------------
Sascha Hauer (7):
      mtd: ubi: add ubi info functions
      filetype: Add ubifs detection
      mtd: ubi: Add support for opening a volume by cdev
      move print_hex_dump function to include/common.h
      extend barebox wrapper header
      Add deflate_decompress function
      fs: Add ubifs support

 common/filetype.c               |    2 +
 drivers/mtd/ubi/cdev.c          |    6 +
 drivers/mtd/ubi/kapi.c          |   93 ++
 drivers/mtd/ubi/ubi-barebox.h   |    8 -
 drivers/mtd/ubi/ubi.h           |    2 +
 fs/Kconfig                      |    1 +
 fs/Makefile                     |    1 +
 fs/ubifs/Kconfig                |   17 +
 fs/ubifs/Makefile               |    4 +
 fs/ubifs/budget.c               |  113 ++
 fs/ubifs/crc16.c                |   60 +
 fs/ubifs/crc16.h                |   29 +
 fs/ubifs/debug.c                |  156 +++
 fs/ubifs/debug.h                |  392 ++++++
 fs/ubifs/io.c                   |  316 +++++
 fs/ubifs/key.h                  |  557 ++++++++
 fs/ubifs/log.c                  |  104 ++
 fs/ubifs/lprops.c               |  842 ++++++++++++
 fs/ubifs/lpt.c                  | 1105 ++++++++++++++++
 fs/ubifs/lpt_commit.c           |  171 +++
 fs/ubifs/master.c               |  341 +++++
 fs/ubifs/misc.h                 |  311 +++++
 fs/ubifs/orphan.c               |  318 +++++
 fs/ubifs/recovery.c             | 1225 +++++++++++++++++
 fs/ubifs/replay.c               | 1070 +++++++++++++++
 fs/ubifs/sb.c                   |  346 +++++
 fs/ubifs/scan.c                 |  362 +++++
 fs/ubifs/super.c                |  907 +++++++++++++
 fs/ubifs/tnc.c                  | 2767 +++++++++++++++++++++++++++++++++++++++
 fs/ubifs/tnc_misc.c             |  435 ++++++
 fs/ubifs/ubifs-media.h          |  775 +++++++++++
 fs/ubifs/ubifs.c                |  654 +++++++++
 fs/ubifs/ubifs.h                | 2151 ++++++++++++++++++++++++++++++
 include/common.h                |    8 +
 include/filetype.h              |    1 +
 include/linux/barebox-wrapper.h |   32 +
 include/linux/mtd/ubi.h         |    1 +
 include/linux/zlib.h            |    4 +
 lib/decompress_inflate.c        |   39 +
 39 files changed, 15718 insertions(+), 8 deletions(-)
 create mode 100644 fs/ubifs/Kconfig
 create mode 100644 fs/ubifs/Makefile
 create mode 100644 fs/ubifs/budget.c
 create mode 100644 fs/ubifs/crc16.c
 create mode 100644 fs/ubifs/crc16.h
 create mode 100644 fs/ubifs/debug.c
 create mode 100644 fs/ubifs/debug.h
 create mode 100644 fs/ubifs/io.c
 create mode 100644 fs/ubifs/key.h
 create mode 100644 fs/ubifs/log.c
 create mode 100644 fs/ubifs/lprops.c
 create mode 100644 fs/ubifs/lpt.c
 create mode 100644 fs/ubifs/lpt_commit.c
 create mode 100644 fs/ubifs/master.c
 create mode 100644 fs/ubifs/misc.h
 create mode 100644 fs/ubifs/orphan.c
 create mode 100644 fs/ubifs/recovery.c
 create mode 100644 fs/ubifs/replay.c
 create mode 100644 fs/ubifs/sb.c
 create mode 100644 fs/ubifs/scan.c
 create mode 100644 fs/ubifs/super.c
 create mode 100644 fs/ubifs/tnc.c
 create mode 100644 fs/ubifs/tnc_misc.c
 create mode 100644 fs/ubifs/ubifs-media.h
 create mode 100644 fs/ubifs/ubifs.c
 create mode 100644 fs/ubifs/ubifs.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
