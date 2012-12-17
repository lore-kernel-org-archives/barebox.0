Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tkcvk-0003zP-UI
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 15:48:41 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 17 Dec 2012 16:48:22 +0100
Message-Id: <1355759313-23329-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH V3 00/11] ubiformat for barebox
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Another round of ubiformat for barebox. Tested on various MX28 based hardware.
I could create and attach empty UBIs or flashed files successfully. I also
tried flashing /dev/mem and /dev/c64 which failed correctly.

Changes since V1 (V2 was only internal):

* update strtoull_suffix() and size_human_readable()
* use those and get rid of libubiutils completely \o/
* use read_full instead of custom read_all
* dropped all long commandline options and references
* reworked the help to BAREBOX_CMD_HELP_* usage
* dropped FSF addresses all over
* simply quit in dubious situations instead of doing something
* add '-y' to do something in dubious situations :)
* quite some bugfixes
(* verified subpage-size handling, found a bug in nand_mxs driver)

Please test, comment, apply...

Thanks,

   Wolfram


Wolfram Sang (11):
  mtd: drop custom is_power_of_2()
  lib: misc: add 'iB' suffixes to strtoull_suffix
  lib: update size_human_readable to latest version
  ubi: consolidate ubi-media.h
  ubi: bump ubi-media.h to newest version
  devfs & mtd: add MEMERASE ioctl support
  mtd: utils: apply macros for message printouts
  lib: add libscan
  lib: add libubigen
  lib: add barebox version of libmtd
  commands: add ubiformat

 commands/Kconfig              |    8 +
 commands/Makefile             |    1 +
 commands/ubi.c                |    2 +-
 commands/ubiformat.c          |  784 +++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/core.c            |   68 ++--
 drivers/mtd/ubi/ubi-barebox.h |    5 +-
 drivers/mtd/ubi/ubi-media.h   |  369 -------------------
 drivers/mtd/ubi/ubi.h         |    3 +-
 fs/devfs-core.c               |    3 +-
 include/common.h              |    2 +-
 include/mtd/libmtd.h          |  149 ++++++++
 include/mtd/libscan.h         |  101 ++++++
 include/mtd/libubigen.h       |  182 ++++++++++
 include/mtd/ubi-media.h       |  374 ++++++++++++++++++++
 include/mtd/utils.h           |   47 +++
 include/ubi-media.h           |  370 -------------------
 lib/Kconfig                   |    9 +
 lib/Makefile                  |    3 +
 lib/display_options.c         |   47 ++-
 lib/libmtd.c                  |  368 +++++++++++++++++++
 lib/libscan.c                 |  219 ++++++++++++
 lib/libubigen.c               |  312 ++++++++++++++++
 lib/misc.c                    |    5 +-
 23 files changed, 2634 insertions(+), 797 deletions(-)
 create mode 100644 commands/ubiformat.c
 delete mode 100644 drivers/mtd/ubi/ubi-media.h
 create mode 100644 include/mtd/libmtd.h
 create mode 100644 include/mtd/libscan.h
 create mode 100644 include/mtd/libubigen.h
 create mode 100644 include/mtd/ubi-media.h
 create mode 100644 include/mtd/utils.h
 delete mode 100644 include/ubi-media.h
 create mode 100644 lib/libmtd.c
 create mode 100644 lib/libscan.c
 create mode 100644 lib/libubigen.c

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
