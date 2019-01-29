Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJe-000503-2W
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:15 +0000
Received: by mail-pg1-x52c.google.com with SMTP id j10so8373065pga.1
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:13 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:30 -0800
Message-Id: <20190129065549.29161-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 00/19] 32-bit lseek and /dev/mem fixes/improvements
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This series is a result of my attempt to fix a regression in lseek()
on 32-bit platforms. The regression manifested in lseek() unable to
seek past ~4GiB mark caused and was caused by usage of IS_ERR_VALUE()
(see commit messages for more detailed explanation).

Feedback is welcome!

Thanks,
Andrey Smirnov

Changes since [v1]:

    - /dev/mem is split into /dev/mem and /dev/highmem on 64-bit
      platforms

    - .lseek() hooks are converted to return error code or 0 on
      success

    - A number of .lseek() related simplifcations that were done as a
      percursor to the change above added to the series

    - Added a fix for a bugs discovered when testing corener cases of
      accessing /dev/mem (/dev/highmem)

[v1] http://lists.infradead.org/pipermail/barebox/2019-January/036756.html

Andrey Smirnov (19):
  commands: Move mem_parse_options() to lib/misc.c
  commands: Get rid of mem_rw_buf
  commands: Move /dev/mem driver to drivers/misc
  nvmem: Do not use DEVFS_IS_CHARACTER_DEV
  common: firmware: Don't use FILE_SIZE_STREAM directly
  devfs: Fix incorrect error check for cdev->ops->lseek()
  fs: Update FILE position in lseek()
  fs: Drop trivial .lseek() implementaitons in FS drivers
  devfs: Drop dev_lseek_default()
  fs: devfs: Change .lseek callbacks to return 'int'
  fs: Do not use IS_ERR_VALUE() to validate offset in lseek()
  fs: Simplify new position calculation in lseek()
  fs: Share code between mem_write()/mem_read()
  fs: Avoid division in mem_copy()
  fs: Report actual data processed by mem_copy()
  fs: Introduce mem_read_nofail()
  commands: md: Do not use memmap()
  drivers: mem: Create file to access second half of 64-bit memory
  libfile: Fix incorrect lseek check in open_and_lseek()

 arch/arm/mach-mxs/ocotp.c     |   1 -
 arch/sandbox/board/hostfile.c |   1 -
 commands/Kconfig              |  17 ++---
 commands/Makefile             |   1 -
 commands/md.c                 |  18 ++---
 commands/mem.c                | 123 ----------------------------------
 commands/memcmp.c             |  16 ++---
 commands/memcpy.c             |  10 +--
 commands/memset.c             |   2 -
 commands/stddev.c             |   4 --
 common/block.c                |   1 -
 common/firmware.c             |   2 +-
 common/ratp/md.c              |   9 +--
 drivers/base/regmap/regmap.c  |   1 -
 drivers/eeprom/at24.c         |   1 -
 drivers/eeprom/at25.c         |   1 -
 drivers/hw_random/core.c      |   1 -
 drivers/mfd/act8846.c         |   1 -
 drivers/mfd/lp3972.c          |   1 -
 drivers/mfd/mc34704.c         |   1 -
 drivers/mfd/mc9sdz60.c        |   1 -
 drivers/mfd/stmpe-i2c.c       |   1 -
 drivers/mfd/twl-core.c        |   1 -
 drivers/misc/Kconfig          |   3 +
 drivers/misc/Makefile         |   1 +
 drivers/misc/mem.c            |  61 +++++++++++++++++
 drivers/misc/sram.c           |   1 -
 drivers/mtd/core.c            |   1 -
 drivers/mtd/mtdoob.c          |   1 -
 drivers/mtd/mtdraw.c          |   1 -
 drivers/mtd/nand/nand-bb.c    |   5 +-
 drivers/mtd/ubi/barebox.c     |   4 +-
 drivers/net/e1000/eeprom.c    |   2 -
 drivers/net/ksz8864rmn.c      |   1 -
 drivers/net/phy/mdio_bus.c    |   1 -
 drivers/nvmem/core.c          |   2 -
 drivers/video/fb.c            |   1 -
 drivers/w1/slaves/w1_ds2431.c |   1 -
 drivers/w1/slaves/w1_ds2433.c |   1 -
 fs/bpkfs.c                    |   4 +-
 fs/cramfs/cramfs.c            |   7 --
 fs/devfs-core.c               | 110 +++++++++++++++++++++---------
 fs/devfs.c                    |  14 ++--
 fs/efi.c                      |   6 +-
 fs/efivarfs.c                 |   8 ---
 fs/ext4/ext_barebox.c         |   8 ---
 fs/fat/fat.c                  |   5 +-
 fs/fs.c                       |  33 ++++-----
 fs/nfs.c                      |   5 +-
 fs/omap4_usbbootfs.c          |   7 --
 fs/pstore/fs.c                |   4 +-
 fs/ramfs.c                    |   7 --
 fs/ratpfs.c                   |   9 ---
 fs/smhfs.c                    |  10 ++-
 fs/squashfs/squashfs.c        |   8 ---
 fs/tftp.c                     |  27 +++++---
 fs/ubifs/ubifs.c              |   8 ---
 fs/uimagefs.c                 |   4 +-
 include/driver.h              |   9 +--
 include/fs.h                  |   2 +-
 lib/libfile.c                 |   3 +-
 lib/misc.c                    |  42 ++++++++++++
 62 files changed, 283 insertions(+), 359 deletions(-)
 delete mode 100644 commands/mem.c
 create mode 100644 drivers/misc/mem.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
