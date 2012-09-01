Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7muf-0006DO-NE
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 12:34:59 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C43CADC6ABB
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 14:40:08 +0200 (CEST)
Date: Sat, 1 Sep 2012 14:35:11 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120901123511.GA19233@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/18 v2] fs: add symlink and readlink support
To: barebox@lists.infradead.org

HI,

	v2:
	 addres comments

please pull
The following changes since commit b77300ac6c6bbbc7eac774ff0076c7c05d39735f:

  command/mount: add autodetection support (2012-08-21 18:53:00 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/fs-symlink

for you to fetch changes up to 4c04f687dc845afc9797d58885ab746f92ff7170:

  defautenv: add support of symlink (2012-09-01 20:26:18 +0800)

----------------------------------------------------------------
fs: add symlink and readlink support

This patch series introduce the support of symlink and readlink at

1) vfs level

2) libc API
 - symlink
 - readlink

3) commands
 - ln
 - readlink

3) filesystem
 - ramfs
 - nfs
 - envfs

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (18):
      fs: add readlink support
      fs: rename stat to lstat as we implement lstat
      fs: add symlink support
      fs: implement stat
      fs: open: add symlink support
      fs: introduce get_mounted_path to get the path where a file is mounted
      ramfs: add symlink and readlink support
      nfs: add readlink support
      test: add -L support to test if it's a symbolic link
      command: add readlink support
      command: add ln support
      ls: add symlink support to -l
      dirname: add -V option to return only path related to the mountpoint
      recursive_action: add ACTION_FOLLOWLINKS support
      envfs: introduce version major and minor
      envfs: add support of variable inode size
      envfs: add support of symlink
      defautenv: add support of symlink

 MAKEALL                |    1 +
 commands/Kconfig       |   10 +++
 commands/Makefile      |    2 +
 commands/dirname.c     |   24 ++++++-
 commands/ln.c          |   51 +++++++++++++++
 commands/ls.c          |   31 ++++++---
 commands/readlink.c    |   80 +++++++++++++++++++++++
 commands/test.c        |   11 +++-
 common/Makefile        |    2 +-
 common/environment.c   |  150 +++++++++++++++++++++++++++++++-----------
 fs/fs.c                |  234 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--
 fs/nfs.c               |   86 ++++++++++++++++--------
 fs/ramfs.c             |   57 ++++++++++++++--
 include/envfs.h        |   15 ++++-
 include/fs.h           |   12 ++++
 include/libbb.h        |    2 +-
 lib/recursive_action.c |    7 +-
 scripts/bareboxenv.c   |    2 +-
 18 files changed, 678 insertions(+), 99 deletions(-)
 create mode 100644 commands/ln.c
 create mode 100644 commands/readlink.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
