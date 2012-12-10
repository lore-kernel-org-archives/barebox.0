Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThyVK-0004cH-0n
 for barebox@lists.infradead.org; Mon, 10 Dec 2012 08:14:26 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 10 Dec 2012 09:14:05 +0100
Message-Id: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 00/10] add ubiformat command
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Hi,

here is the ubiformat series rebased against v2012.12.0. All comments I have
received have been addressed. The command has been tested on a MX35 based
board. Please help testing.

Regards,

   Wolfram Sang

Wolfram Sang (10):
  mtd: move is_power_of_2() to a public place
  ubi: consolidate ubi-media.h
  ubi: bump ubi-media.h to newest version
  devfs & mtd: add MEMERASE ioctl support
  mtd: utils: apply macros for message printouts
  lib: add ubiutils-common
  lib: add libscan
  lib: add libubigen
  lib: add barebox version of libmtd
  commands: add ubiformat

 commands/Kconfig              |    9 +
 commands/Makefile             |    1 +
 commands/ubi.c                |    2 +-
 commands/ubiformat.c          |  794 +++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/core.c            |   68 ++--
 drivers/mtd/ubi/ubi-barebox.h |    5 +-
 drivers/mtd/ubi/ubi-media.h   |  369 -------------------
 drivers/mtd/ubi/ubi.h         |    3 +-
 fs/devfs-core.c               |    3 +-
 include/mtd/libmtd.h          |  154 ++++++++
 include/mtd/libscan.h         |  105 ++++++
 include/mtd/libubigen.h       |  186 ++++++++++
 include/mtd/ubi-media.h       |  378 ++++++++++++++++++++
 include/mtd/ubiutils-common.h |   26 ++
 include/mtd/utils.h           |   52 +++
 include/ubi-media.h           |  370 -------------------
 lib/Kconfig                   |   12 +
 lib/Makefile                  |    4 +
 lib/libmtd.c                  |  371 +++++++++++++++++++
 lib/libscan.c                 |  223 ++++++++++++
 lib/libubigen.c               |  316 ++++++++++++++++
 lib/ubiutils-common.c         |  122 +++++++
 22 files changed, 2794 insertions(+), 779 deletions(-)
 create mode 100644 commands/ubiformat.c
 delete mode 100644 drivers/mtd/ubi/ubi-media.h
 create mode 100644 include/mtd/libmtd.h
 create mode 100644 include/mtd/libscan.h
 create mode 100644 include/mtd/libubigen.h
 create mode 100644 include/mtd/ubi-media.h
 create mode 100644 include/mtd/ubiutils-common.h
 create mode 100644 include/mtd/utils.h
 delete mode 100644 include/ubi-media.h
 create mode 100644 lib/libmtd.c
 create mode 100644 lib/libscan.c
 create mode 100644 lib/libubigen.c
 create mode 100644 lib/ubiutils-common.c

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
