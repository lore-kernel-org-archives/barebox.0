Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og117.obsmtp.com ([64.18.0.149])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfaRg-0004rP-O9
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 18:08:46 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon,  3 Dec 2012 18:08:16 +0000
Message-Id: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 00/18] UBIFS support
To: barebox@lists.infradead.org

This patchset adds UBIFS support to Barebox. It includes the core UBIFS
support and more recent patches found in the U-boot git tree.
It has been tested on a PPC system  by mounting a NOR flash UBI volume,
copying the kernel to memory and booting it.

Bernhard Walle (1):
  UBIFS: Improve error message when reading superblock failed

Lars Poeschel (1):
  ubifs bad superblock bug

Renaud Barbier (15):
  fs/fs.c: check that fsdev->cdev->dev is not NULL
  UBIFS: preparation
  UBIFS: header files (1/2)
  UBIFS: header files (2/2)
  UBIFS: file operations
  UBIFS: initialization
  UBIFS: journal
  UBIFS: I/O subsystem
  UBIFS: LEB support
  UBIFS: master node
  UBIFS: recovery
  UBIFS: tree node cache
  UBIFS: superblock
  UBIFS: scan
  UBIFS: configuration and build directives

Stefan Roese (1):
  ubifs: Fix memory leak in ubifs_finddir

 fs/Kconfig             |    4 +
 fs/Makefile            |    1 +
 fs/fs.c                |    3 +-
 fs/ubifs/Makefile      |    9 +
 fs/ubifs/budget.c      |  113 ++
 fs/ubifs/crc16.c       |   60 ++
 fs/ubifs/crc16.h       |   29 +
 fs/ubifs/debug.c       |  156 +++
 fs/ubifs/debug.h       |  392 +++++++
 fs/ubifs/io.c          |  316 ++++++
 fs/ubifs/key.h         |  557 ++++++++++
 fs/ubifs/log.c         |  104 ++
 fs/ubifs/lprops.c      |  842 +++++++++++++++
 fs/ubifs/lpt.c         | 1105 +++++++++++++++++++
 fs/ubifs/lpt_commit.c  |  171 +++
 fs/ubifs/master.c      |  341 ++++++
 fs/ubifs/misc.h        |  311 ++++++
 fs/ubifs/orphan.c      |  316 ++++++
 fs/ubifs/recovery.c    | 1225 +++++++++++++++++++++
 fs/ubifs/replay.c      | 1070 +++++++++++++++++++
 fs/ubifs/sb.c          |  346 ++++++
 fs/ubifs/scan.c        |  362 +++++++
 fs/ubifs/super.c       | 1202 +++++++++++++++++++++
 fs/ubifs/tnc.c         | 2767 ++++++++++++++++++++++++++++++++++++++++++++++++
 fs/ubifs/tnc_misc.c    |  435 ++++++++
 fs/ubifs/ubifs-media.h |  775 ++++++++++++++
 fs/ubifs/ubifs.c       |  943 +++++++++++++++++
 fs/ubifs/ubifs.h       | 2159 +++++++++++++++++++++++++++++++++++++
 include/linux/bitops.h |   32 +
 include/linux/types.h  |    2 +
 30 files changed, 16147 insertions(+), 1 deletions(-)
 create mode 100644 fs/ubifs/Makefile
 create mode 100644 fs/ubifs/budget.c
 create mode 100644 fs/ubifs/crc16.c
 create mode 100644 fs/ubifs/crc16.h
 create mode 100644 fs/ubifs/debug.c
 create mode 100644 fs/ubifs/debug.h
 create mode 100644 fs/ubifs/io.c
 create mode 100644 fs/ubifs/key.h
 create mode 100644 fs/ubifs/log.c
 create mode 100644 fs/ubifs/lprops.c
 create mode 100644 fs/ubifs/lpt.c
 create mode 100644 fs/ubifs/lpt_commit.c
 create mode 100644 fs/ubifs/master.c
 create mode 100644 fs/ubifs/misc.h
 create mode 100644 fs/ubifs/orphan.c
 create mode 100644 fs/ubifs/recovery.c
 create mode 100644 fs/ubifs/replay.c
 create mode 100644 fs/ubifs/sb.c
 create mode 100644 fs/ubifs/scan.c
 create mode 100644 fs/ubifs/super.c
 create mode 100644 fs/ubifs/tnc.c
 create mode 100644 fs/ubifs/tnc_misc.c
 create mode 100644 fs/ubifs/ubifs-media.h
 create mode 100644 fs/ubifs/ubifs.c
 create mode 100644 fs/ubifs/ubifs.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
