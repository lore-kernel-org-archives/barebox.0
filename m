Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRgy6-0001Zq-P9
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 10:16:48 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Fri, 26 Oct 2012 12:16:32 +0200
Message-Id: <1351246602-8859-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [RFC 00/10] ubiformat in barebox
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

So, here is a series which implements 'ubiformat' in barebox. This has the
advantage that you can update UBI without resetting erase counters.

Note: This is an RFC, although it works for me(tm), I still need to do way more
testing. Yet, I want to collect comments on the general approach and if people
are interested in testing, too, this is very much appreciated!

Kind regards,

   Wolfram


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
 commands/ubiformat.c          |  795 +++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/core.c            |   68 ++--
 drivers/mtd/ubi/ubi-barebox.h |    5 +-
 drivers/mtd/ubi/ubi-media.h   |  369 -------------------
 drivers/mtd/ubi/ubi.h         |    3 +-
 fs/devfs-core.c               |    3 +-
 include/mtd/libmtd.h          |  154 ++++++++
 include/mtd/libscan.h         |  105 ++++++
 include/mtd/libubigen.h       |  186 ++++++++++
 include/{ => mtd}/ubi-media.h |   20 +-
 include/mtd/ubiutils-common.h |   26 ++
 include/mtd/utils.h           |   52 +++
 lib/Kconfig                   |   12 +
 lib/Makefile                  |    4 +
 lib/libmtd.c                  |  371 +++++++++++++++++++
 lib/libscan.c                 |  223 ++++++++++++
 lib/libubigen.c               |  316 ++++++++++++++++
 lib/ubiutils-common.c         |  122 +++++++
 21 files changed, 2431 insertions(+), 415 deletions(-)
 create mode 100644 commands/ubiformat.c
 delete mode 100644 drivers/mtd/ubi/ubi-media.h
 create mode 100644 include/mtd/libmtd.h
 create mode 100644 include/mtd/libscan.h
 create mode 100644 include/mtd/libubigen.h
 rename include/{ => mtd}/ubi-media.h (95%)
 create mode 100644 include/mtd/ubiutils-common.h
 create mode 100644 include/mtd/utils.h
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
