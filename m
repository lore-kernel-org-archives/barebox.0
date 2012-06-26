Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjbqt-0006N2-Lu
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 19:55:13 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Sjbqq-000266-Vc
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 21:55:04 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Sjbqq-0006Im-UB
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 21:55:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Jun 2012 21:54:53 +0200
Message-Id: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] 64bit file support
To: barebox@lists.infradead.org

Hi All,

The following adds 64bit file support for barebox. It has been runtime
tested on a babbage board with a 8G SD card and on a pcm038 board with a
8G USB stick. Compile tested with all defconfigs.

Sascha

----------------------------------------------------------------
Sascha Hauer (10):
      mtd: fix arguments to bad block ioctls
      nand-bb: bb->offset may become a 64bit type
      use loff_t for file offsets
      introduce strtoull_suffix function
      make parse_area_spec arguments loff_t
      make memory display 64bit capable
      make st_size in struct stat 64 bit
      make cdev 64bit capable
      memory commands: Make 64bit capable
      partitions: Make 64bit capable

 arch/arm/mach-imx/iim.c       |    8 +++----
 arch/arm/mach-mxs/ocotp.c     |    4 ++--
 arch/sandbox/board/hostfile.c |    4 ++--
 commands/crc.c                |    4 ++--
 commands/digest.c             |    4 ++--
 commands/flash.c              |    4 ++--
 commands/ls.c                 |    2 +-
 commands/mem.c                |   49 ++++++++++++++++++++---------------------
 common/block.c                |    6 ++---
 common/partitions.c           |   29 ------------------------
 drivers/base/driver.c         |    2 +-
 drivers/eeprom/at25.c         |    8 +++----
 drivers/mfd/lp3972.c          |    2 +-
 drivers/mfd/mc13xxx.c         |    4 ++--
 drivers/mfd/mc34704.c         |    4 ++--
 drivers/mfd/mc34708.c         |    6 +++--
 drivers/mfd/mc9sdz60.c        |    4 ++--
 drivers/mfd/twl-core.c        |    4 ++--
 drivers/mtd/core.c            |   20 ++++++++++-------
 drivers/mtd/mtdoob.c          |    3 ++-
 drivers/mtd/mtdraw.c          |    9 +++++---
 drivers/mtd/nand/nand-bb.c    |   30 ++++++++++++-------------
 drivers/mtd/ubi/cdev.c        |    8 +++----
 drivers/net/miidev.c          |    4 ++--
 drivers/nor/cfi_flash.c       |    8 +++----
 drivers/nor/m25p80.c          |   16 +++++++++-----
 fs/cramfs/cramfs.c            |    2 +-
 fs/devfs-core.c               |   17 +++++++-------
 fs/devfs.c                    |   10 ++++-----
 fs/fat/fat.c                  |    6 ++---
 fs/fs.c                       |   12 +++++-----
 fs/nfs.c                      |    2 +-
 fs/ramfs.c                    |    2 +-
 fs/tftp.c                     |    2 +-
 include/common.h              |    5 +++--
 include/driver.h              |   28 +++++++++++------------
 include/fs.h                  |   12 +++++-----
 include/linux/stat.h          |    2 +-
 include/partition.h           |    2 +-
 lib/misc.c                    |   24 ++++++++++++--------
 lib/vsprintf.c                |    1 +
 41 files changed, 183 insertions(+), 190 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
