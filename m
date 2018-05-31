Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fOP8b-0001Cj-Km
 for barebox@lists.infradead.org; Thu, 31 May 2018 15:05:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 31 May 2018 17:04:32 +0200
Message-Id: <20180531150442.16208-1-s.hauer@pengutronix.de>
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
Subject: [PATCH v2 00/10] dentry cache support
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

To still support filesystems with the old API I now introduced a wrapper
layer which binds between the new dentry cache API and old filesystems.
Hopefully this can go away soon once all filesystems are converted.

Changes since v1:

- introduce wrapper layer so we do not have to mark any FS as broken
  anymore
  - change squashfs and cramfs to the new API
  - let tftp return FILESIZE_MAX as inode size as Philipp suggested
  - lots of small changes

Sascha Hauer (10):
  fs: dentry cache implementation
  fs: ramfs: Switch to dentry cache implementation
  fs: devfs: Switch to dentry cache implementation
  fs: ext4: Switch to dentry cache implementation
  fs: ubifs: Switch to dentry cache implementation
  fs: nfs: Switch to dentry cache implementation
  fs: tftp: Switch to dentry cache implementation
  fs: cramfs: Switch to dentry cache implementation
  fs: squashfs: Switch to dentry cache implementation
  block: Adjust cache sizes

 common/block.c         |    4 +-
 fs/Kconfig             |   18 +
 fs/Makefile            |    3 +-
 fs/cramfs/cramfs.c     |  523 +++---
 fs/devfs.c             |  150 +-
 fs/ext4/ext_barebox.c  |  279 +--
 fs/ext4/ext_common.h   |    3 +
 fs/fat/Kconfig         |    1 +
 fs/fs.c                | 3632 ++++++++++++++++++++++++++--------------
 fs/legacy.c            |  315 ++++
 fs/libfs.c             |   97 ++
 fs/nfs.c               |  542 +++---
 fs/pstore/Kconfig      |    1 +
 fs/ramfs.c             |  401 ++---
 fs/squashfs/Makefile   |    2 +
 fs/squashfs/dir.c      |  232 +++
 fs/squashfs/inode.c    |    9 +
 fs/squashfs/namei.c    |   17 +-
 fs/squashfs/squashfs.c |  186 +-
 fs/squashfs/squashfs.h |    9 +-
 fs/squashfs/super.c    |   13 +-
 fs/squashfs/symlink.c  |   82 +
 fs/tftp.c              |   97 +-
 fs/ubifs/Makefile      |    2 +-
 fs/ubifs/dir.c         |  410 +++++
 fs/ubifs/super.c       |  153 +-
 fs/ubifs/ubifs.c       |  341 +---
 fs/ubifs/ubifs.h       |    7 +-
 include/dirent.h       |    3 +
 include/fs.h           |   38 +-
 include/linux/dcache.h |  109 +-
 include/linux/fs.h     |  131 +-
 include/linux/mount.h  |    3 +
 include/linux/namei.h  |   52 +
 include/linux/stat.h   |    2 +
 35 files changed, 4832 insertions(+), 3035 deletions(-)
 create mode 100644 fs/legacy.c
 create mode 100644 fs/libfs.c
 create mode 100644 fs/squashfs/dir.c
 create mode 100644 fs/squashfs/symlink.c
 create mode 100644 fs/ubifs/dir.c
 create mode 100644 include/linux/namei.h

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
