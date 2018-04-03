Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Ggv-00021t-6D
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:32 +0200
Message-Id: <20180403074851.5411-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/19] Add Linux dcache implementation
To: Barebox List <barebox@lists.infradead.org>

This series adds the Linux dcache implementation to barebox.

Until now every filesystem driver resolves the full path to a file for
itself. This leads to code duplication and is error prone since
resolving paths is a complicated task. Also it can narrow down the
lookup performance since barebox only knows ASCII paths and has no way
of caching lookups. Since with this barebox provides a interface to
dentries much like the Linux Kernel does it gets easier to share
filesystem code between barebox and Linux.

With this series we get the Linux dcache implementation. The path
resolving code from fs/namei.c is nearly taken as-is, minus the RCU and
locking code. Dcaching is made simple as of now: We simply cache
everything and never release any dentries. Although we do reference
counting for inodes and dentries it is effectively not used yet.  We
never free anything until a fs is unmounted in which case we free
everything no matter if references are taken or not.

This patch fundamentally changes the way lookups are done in the
filesystem drivers and I found no sane way to maintain a backwards
compatible code path for not yet converted filesystem drivers. This
means *all* filesystems are marked as broken with the introduction of
the dcache implementation.

I won't apply this series for now (except for the preparatory pathces).
The most important filesystems are already converted with this series,
but there are a few missing like FAT and squashfs and some more no so
prominent ones.

Overall I planned this change for longer now and I can say the new code
feels good. The performance is better, links are resolved more correctly
and the individual filesystem implementations get simpler. I'll continue
on this series soon, but it'll need some time to fix the remaining
filesystems (of course, feel free to do some of the work to speed things
up;)

Sascha

Sascha Hauer (19):
  rename file_operations -> cdev_operations
  ubifs: remove dead code
  ubifs: Remove Linux struct definitions we already have
  ubifs: remove dead code
  fs: Add super_operations
  fs: Move mem_write/mem_read to devfs-core
  fs: Cleanup whitespace damage
  fs: Fix finding correct directory for mkdir/rmdir
  glob: do not unnecessarily opendir() a directory
  ls: Do not depend on normalise_path()
  loadenv: Do not depend on normalise_path()
  fs: dcache implementation
  fs: ramfs: Switch to dcache implementation
  fs: devfs: Switch to dcache implementation
  fs: ext4: Switch to dcache implementation
  fs: ubifs: Switch to dcache implementation
  fs: nfs: Switch to dcache implementation
  fs: tftp: Switch to dcache implementation
  block: Adjust cache sizes

 arch/arm/mach-mxs/ocotp.c     |    2 +-
 arch/sandbox/board/hostfile.c |    2 +-
 commands/loadenv.c            |    6 +-
 commands/ls.c                 |    9 +-
 commands/mem.c                |    2 +-
 commands/stddev.c             |    8 +-
 common/block.c                |    6 +-
 common/firmware.c             |    2 +-
 drivers/base/regmap/regmap.c  |    2 +-
 drivers/eeprom/at24.c         |    2 +-
 drivers/eeprom/at25.c         |    2 +-
 drivers/hw_random/core.c      |    2 +-
 drivers/mfd/act8846.c         |    2 +-
 drivers/mfd/lp3972.c          |    2 +-
 drivers/mfd/mc34704.c         |    2 +-
 drivers/mfd/mc9sdz60.c        |    2 +-
 drivers/mfd/stmpe-i2c.c       |    2 +-
 drivers/mfd/twl-core.c        |    2 +-
 drivers/misc/jtag.c           |    2 +-
 drivers/misc/sram.c           |    2 +-
 drivers/mtd/core.c            |    2 +-
 drivers/mtd/mtdoob.c          |    2 +-
 drivers/mtd/mtdraw.c          |    4 +-
 drivers/mtd/nand/nand-bb.c    |    2 +-
 drivers/mtd/ubi/barebox.c     |    4 +-
 drivers/net/e1000/eeprom.c    |    4 +-
 drivers/net/ksz8864rmn.c      |    2 +-
 drivers/net/phy/mdio_bus.c    |    2 +-
 drivers/nvmem/core.c          |    2 +-
 drivers/video/fb.c            |    2 +-
 drivers/w1/slaves/w1_ds2431.c |    2 +-
 drivers/w1/slaves/w1_ds2433.c |    2 +-
 fs/Kconfig                    |    8 +
 fs/Makefile                   |    2 +-
 fs/devfs-core.c               |   70 +-
 fs/devfs.c                    |  150 +-
 fs/ext4/ext_barebox.c         |  280 ++--
 fs/ext4/ext_common.h          |    3 +
 fs/fat/Kconfig                |    1 +
 fs/fs.c                       | 3696 ++++++++++++++++++++++++++---------------
 fs/libfs.c                    |   87 +
 fs/nfs.c                      |  542 +++---
 fs/pstore/Kconfig             |    1 +
 fs/ramfs.c                    |  412 ++---
 fs/squashfs/Kconfig           |    1 +
 fs/tftp.c                     |   96 +-
 fs/ubifs/Makefile             |    2 +-
 fs/ubifs/dir.c                |  410 +++++
 fs/ubifs/super.c              |  157 +-
 fs/ubifs/ubifs.c              |  816 +--------
 fs/ubifs/ubifs.h              |  547 +-----
 include/console.h             |    2 +-
 include/dirent.h              |    3 +
 include/driver.h              |    4 +-
 include/fs.h                  |   25 +-
 include/linux/dcache.h        |  109 +-
 include/linux/fs.h            |  136 +-
 include/linux/mount.h         |    3 +
 include/linux/namei.h         |   52 +
 include/linux/stat.h          |    2 +
 include/mfd/twl-core.h        |    2 +-
 lib/glob.c                    |   15 +-
 62 files changed, 3960 insertions(+), 3765 deletions(-)
 create mode 100644 fs/libfs.c
 create mode 100644 fs/ubifs/dir.c
 create mode 100644 include/linux/namei.h

-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
