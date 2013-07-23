Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1ZpV-0005W0-T3
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 10:28:30 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1V1Zp8-0002aj-FY
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 12:28:06 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1V1Zp6-0004vt-J5
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 12:28:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jul 2013 12:27:58 +0200
Message-Id: <1374575282-9592-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] update UBI support
To: barebox@lists.infradead.org

This adds the UBI layer from Linux-3.10. Since the changes in the
UBI layer are huge I chose to remove the old UBI support first and
do a fresh start. This brings us fastmap support which for the
first time makes UBI a performant alternative to using the NAND
flash naked.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      UBI: Add ubidetach command
      ubiattach command: Properly check return values
      UBI: remove old ubi support
      UBI: reimport UBI from Linux v3.10

 commands/Kconfig                |    6 +-
 commands/ubi.c                  |   39 +-
 drivers/mtd/Makefile            |    2 +-
 drivers/mtd/ubi/Kconfig         |   82 +-
 drivers/mtd/ubi/Makefile        |    6 +-
 drivers/mtd/ubi/attach.c        | 1728 +++++++++++++++++++++++++++++++++++++++
 drivers/mtd/ubi/build.c         |  828 +++++--------------
 drivers/mtd/ubi/cdev.c          |   26 +-
 drivers/mtd/ubi/crc32defs.h     |   32 -
 drivers/mtd/ubi/debug.c         |  223 ++---
 drivers/mtd/ubi/debug.h         |  178 ++--
 drivers/mtd/ubi/eba.c           |  485 ++++++-----
 drivers/mtd/ubi/fastmap.c       | 1514 ++++++++++++++++++++++++++++++++++
 drivers/mtd/ubi/io.c            |  815 ++++++++++--------
 drivers/mtd/ubi/kapi.c          |  177 ++--
 drivers/mtd/ubi/misc.c          |   64 +-
 drivers/mtd/ubi/scan.c          | 1359 ------------------------------
 drivers/mtd/ubi/scan.h          |  162 ----
 drivers/mtd/ubi/ubi-barebox.h   |  135 +--
 drivers/mtd/ubi/ubi.h           |  632 ++++++++++----
 drivers/mtd/ubi/upd.c           |  101 +--
 drivers/mtd/ubi/vmt.c           |  509 +++---------
 drivers/mtd/ubi/vtbl.c          |  365 +++++----
 drivers/mtd/ubi/wl.c            | 1677 +++++++++++++++++++++----------------
 include/linux/barebox-wrapper.h |    6 +
 include/linux/kernel.h          |   12 +
 include/linux/mtd/mtd.h         |    5 +
 include/linux/mtd/ubi.h         |  105 ++-
 include/mtd/ubi-media.h         |  157 +++-
 include/mtd/ubi-user.h          |  312 ++++---
 include/stdlib.h                |   10 +-
 lib/random.c                    |    4 +-
 32 files changed, 7010 insertions(+), 4746 deletions(-)
 create mode 100644 drivers/mtd/ubi/attach.c
 delete mode 100644 drivers/mtd/ubi/crc32defs.h
 create mode 100644 drivers/mtd/ubi/fastmap.c
 delete mode 100644 drivers/mtd/ubi/scan.c
 delete mode 100644 drivers/mtd/ubi/scan.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
