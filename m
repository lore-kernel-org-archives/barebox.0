Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agUkY-0002Gi-9P
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 10:01:55 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id EE6D327A6FD
 for <barebox@lists.infradead.org>; Thu, 17 Mar 2016 11:01:04 +0100 (CET)
From: Alexander Stein <alexander.stein@systec-electronic.com>
Date: Thu, 17 Mar 2016 11:00:16 +0100
Message-Id: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: [PATCH 00/13] ubifs update
To: barebox@lists.infradead.org
Cc: Daniel Krueger <daniel.krueger@systec-electronic.com>, Alexander Stein <alexander.stein@systec-electronic.com>

Hi,

this patch set updates ubifs to the u-boot v2016.03 one. This most importantly
uses write buffer size (defined by flash itself) for recovering. This is done
(and required!) by Linux since commit 2765df7da ("UBIFS: use max_write_size
 during recovery") which is included in v2.6.39-rc1. Failing to do so results
in false error detection and mount failure.

Some comments on the patches itself. Most of them are to add defines or
functions required by new ubifs code. They all include more detailed
information.

Patch 1,2:
* Required to pass write buffer size to ubifs

Patch 9 ("ARM: Add atomic.h from u-boot v2016.03"):
* The most troublesome as it only adds support for arm. I've yet to find out
  if atomic_t is _really_ required in ubifs, but I'm not so far into that code
  to decide it. Maybe there are better possibilities to support all
  architectures.

The patches are based on current origin/master a0fa6e1d2b6ac5
("Merge branch 'for-next/squashfs'") including a single patch for our custom
hardware. They are compiled tested using git test-sequence. The final barebox
successfully mounts the damaged ubifs while the previous one doesn't.
I'm keen to get feedback.

Best regards,
Alexander

Alexander Stein (13):
  mtd: cfi-flash: Set MTD's writebufsize
  mtd: ubi: Set max_write_size to actual value read from flash
  rbtree: Update to u-boot v2016.03
  printk: Add printk_once
  Add list_sort from u-boot v2016.03
  printk: Add pr_cont
  compiler*.h: include/linux/compiler*.h with Linux 4.5
  module.h: Add THIS_MODULE
  ARM: Add atomic.h from u-boot v2016.03
  Move GFP_NOFS to barebox-wrapper
  barebox-wrapper: Implement kfree and vfree as static inline functions
  barebox-wrapper: Add kcalloc and __vmalloc
  ubifs: update implementation from u-boot v2016.03

 arch/arm/include/asm/atomic.h           |  111 ++
 arch/arm/include/asm/proc-armv/system.h |  224 +++
 drivers/mtd/nor/cfi_flash.c             |    1 +
 drivers/mtd/ubi/build.c                 |    2 +-
 drivers/mtd/ubi/ubi-barebox.h           |    2 -
 fs/ubifs/Makefile                       |    2 +-
 fs/ubifs/budget.c                       |  660 ++++++-
 fs/ubifs/debug.c                        | 3133 ++++++++++++++++++++++++++++++-
 fs/ubifs/debug.h                        |  577 +++---
 fs/ubifs/gc.c                           |  976 ++++++++++
 fs/ubifs/io.c                           |  929 ++++++++-
 fs/ubifs/key.h                          |   68 +-
 fs/ubifs/log.c                          |  671 ++++++-
 fs/ubifs/lprops.c                       |  537 +++++-
 fs/ubifs/lpt.c                          | 1275 ++++++++++++-
 fs/ubifs/lpt_commit.c                   | 1904 ++++++++++++++++++-
 fs/ubifs/master.c                       |  102 +-
 fs/ubifs/misc.h                         |  164 +-
 fs/ubifs/orphan.c                       |  672 ++++++-
 fs/ubifs/recovery.c                     |  755 +++++---
 fs/ubifs/replay.c                       |  603 +++---
 fs/ubifs/sb.c                           |  558 +++++-
 fs/ubifs/scan.c                         |  116 +-
 fs/ubifs/super.c                        | 2360 ++++++++++++++++++++---
 fs/ubifs/tnc.c                          |  756 +++++++-
 fs/ubifs/tnc_misc.c                     |  127 +-
 fs/ubifs/ubifs-media.h                  |   62 +-
 fs/ubifs/ubifs.c                        |  828 +++++++-
 fs/ubifs/ubifs.h                        |  966 ++++++++--
 include/asm-generic/atomic-long.h       |  260 +++
 include/linux/barebox-wrapper.h         |   16 +-
 include/linux/compiler-gcc.h            |   35 +-
 include/linux/compiler-intel.h          |    1 +
 include/linux/compiler.h                |  171 +-
 include/linux/fs.h                      |   21 +-
 include/linux/list_sort.h               |   11 +
 include/linux/rbtree.h                  |  155 +-
 include/linux/rbtree_augmented.h        |  220 +++
 include/module.h                        |    1 +
 include/printk.h                        |   11 +
 lib/Makefile                            |    1 +
 lib/list_sort.c                         |  296 +++
 lib/rbtree.c                            |  695 ++++---
 43 files changed, 18643 insertions(+), 2392 deletions(-)
 create mode 100644 arch/arm/include/asm/atomic.h
 create mode 100644 arch/arm/include/asm/proc-armv/system.h
 create mode 100644 fs/ubifs/gc.c
 create mode 100644 include/asm-generic/atomic-long.h
 create mode 100644 include/linux/list_sort.h
 create mode 100644 include/linux/rbtree_augmented.h
 create mode 100644 lib/list_sort.c

-- 
2.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
