Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7LHe-0005z1-Tn
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 14:05:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2018 16:03:49 +0200
Message-Id: <20181002140403.3735-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/14] UBIFS update
To: Barebox List <barebox@lists.infradead.org>

This series updates the UBIFS codebase to Linux-4.19-rc6. Several
preparatory patches first update some fs code and Linux wrappers to
better integrate the new UBIFS code.

Before the new UBIFS code is added I removed much of the stuff from
UBIFS that is not needed for our readonly implementation, like lpt,
garbage collector and ltab. This hopefully reduces the code one has
to look at when UBIFS is updated again.

Also I ran a "unifdef -D__BAREBOX__ -m fs/ubifs/*" over the code since
the ifdeffery turns the UBIFS code into unreadable garbage. If one is
interested in the differences between the barebox and Linux codebase
it is easy enough to copy the files from Linux-4.19-rc6 over to barebox
and see the diff. while updating the code I turned annotated every
removed function with:

/*
 * removed in barebox
void some_ubifs_function(void)
 */

When copying an updated version over it a git diff usually gives the
right hint that the function should be removed in barebox.

Sascha

Sascha Hauer (14):
  Add linux/slab.h
  Add kmemdup
  Add more mutex no-ops
  fs: let dir_emit_dots return int
  fs: Add fscrypt no-op headers
  fs: Add SB_* flags
  fs: implement file_inode
  fs: implement iget_locked and iget_failed
  fs: implement clear_nlink and set_nlink
  fs: ubifs: remove not needed code
  compiler: Update to v4.19-rc6
  vsprintf: implement %pV
  ubifs: Update to v4.18-rc6
  fs: ubifs: optionally allow to mount UBIFS images with encrypted files

 fs/fs.c                         |   41 +
 fs/ubifs/Makefile               |    8 +-
 fs/ubifs/budget.c               |  729 --------
 fs/ubifs/debug.c                | 2812 +++----------------------------
 fs/ubifs/debug.h                |  110 +-
 fs/ubifs/dir.c                  |  298 +++-
 fs/ubifs/gc.c                   |  976 -----------
 fs/ubifs/io.c                   |  853 +---------
 fs/ubifs/key.h                  |   53 +-
 fs/ubifs/log.c                  |  678 +-------
 fs/ubifs/lprops.c               | 1313 ---------------
 fs/ubifs/lpt.c                  | 2282 -------------------------
 fs/ubifs/lpt_commit.c           | 2073 ++---------------------
 fs/ubifs/master.c               |   69 +-
 fs/ubifs/misc.c                 |   69 +
 fs/ubifs/misc.h                 |   78 +-
 fs/ubifs/orphan.c               |  946 -----------
 fs/ubifs/recovery.c             |  523 +-----
 fs/ubifs/replay.c               |  198 +--
 fs/ubifs/sb.c                   |  530 +-----
 fs/ubifs/scan.c                 |   19 +-
 fs/ubifs/super.c                | 1642 ++----------------
 fs/ubifs/tnc.c                  | 1460 ++++------------
 fs/ubifs/tnc_misc.c             |   70 +-
 fs/ubifs/ubifs-media.h          |   54 +-
 fs/ubifs/ubifs.c                |   44 +-
 fs/ubifs/ubifs.h                |  334 ++--
 include/linux/barebox-wrapper.h |   13 +-
 include/linux/compiler-clang.h  |   42 +-
 include/linux/compiler-gcc.h    |  211 +--
 include/linux/compiler-intel.h  |   14 +-
 include/linux/compiler.h        |  440 ++---
 include/linux/compiler_types.h  |  285 ++++
 include/linux/fs.h              |   31 +-
 include/linux/fscrypt.h         |  173 ++
 include/linux/fscrypt_notsupp.h |  205 +++
 include/linux/mutex.h           |    3 +
 include/linux/slab.h            |  104 ++
 include/linux/string.h          |    7 +
 include/linux/types.h           |    3 +
 include/printk.h                |    5 +
 include/string.h                |    1 -
 lib/vsprintf.c                  |   15 +
 43 files changed, 2886 insertions(+), 16928 deletions(-)
 delete mode 100644 fs/ubifs/budget.c
 delete mode 100644 fs/ubifs/gc.c
 delete mode 100644 fs/ubifs/lprops.c
 delete mode 100644 fs/ubifs/lpt.c
 create mode 100644 fs/ubifs/misc.c
 delete mode 100644 fs/ubifs/orphan.c
 create mode 100644 include/linux/compiler_types.h
 create mode 100644 include/linux/fscrypt.h
 create mode 100644 include/linux/fscrypt_notsupp.h
 create mode 100644 include/linux/slab.h

-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
