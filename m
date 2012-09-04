Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8z5U-0007VD-Ii
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 19:47:06 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B8415DC57B0
 for <barebox@lists.infradead.org>; Tue,  4 Sep 2012 21:52:22 +0200 (CEST)
Date: Tue, 4 Sep 2012 21:47:20 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120904194720.GB32603@game.jcrosoft.org>
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
Subject: [PATCH 00/18 v5] fs: add symlink and readlink support
To: barebox@lists.infradead.org

HI,

	v5:
	fix rmdir
	fix test -L

	v4:
	 drop the mounted path added to absolute symlink

	v3:
	 - fix support
	   mkdir mymount
	   mount -t ramfs none mymount/
	   ln /env/boot/net /mymount/link

	 - addres comments

	v2:
	 addres comments

please pull
The following changes since commit 5b1583d994c0e63b4588a75b631011e2bf41bab8:

  nhk8815: fix nand IO_DATA end resource (2012-09-03 11:06:49 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/fs-symlink

for you to fetch changes up to b65e60792376bb209adfa128e1783cf67af9f13b:

  defautenv: add support of symlink (2012-09-05 03:22:14 +0800)

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
Jean-Christophe PLAGNIOL-VILLARD (19):
      fs: add readlink support
      fs: fix rmdir with symlink
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
 commands/Kconfig       |   10 ++++++++
 commands/Makefile      |    2 ++
 commands/dirname.c     |   24 +++++++++++++++---
 commands/ln.c          |   51 ++++++++++++++++++++++++++++++++++++++
 commands/ls.c          |   31 +++++++++++++++--------
 commands/readlink.c    |   80 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 commands/test.c        |   11 +++++++--
 common/Makefile        |    2 +-
 common/environment.c   |  150 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------------
 fs/fs.c                |  229 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++------
 fs/nfs.c               |   86 ++++++++++++++++++++++++++++++++++++++++++---------------------
 fs/ramfs.c             |   61 ++++++++++++++++++++++++++++++++++++++++-----
 include/envfs.h        |   15 +++++++++--
 include/fs.h           |   12 +++++++++
 include/libbb.h        |    2 +-
 lib/recursive_action.c |    7 +++++-
 scripts/bareboxenv.c   |    2 +-
 18 files changed, 676 insertions(+), 100 deletions(-)
 create mode 100644 commands/ln.c
 create mode 100644 commands/readlink.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
