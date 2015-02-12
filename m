Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpY2-0003lb-8A
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1YLpXf-0000x9-PR
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 09:54:35 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1YLpXf-0005Gg-OU
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 09:54:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:17 +0100
Message-Id: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: mtd partition handling updates
To: Barebox List <barebox@lists.infradead.org>

This series updates the mtd partition handling in barebox. It used
to be too simple to create conflicting or inconsistent partitions on
mtd devices. mtd partitions can be changed from board code, from the
device tree, using addpart/delpart and with this series also with
the newly created 'partitions' parameter for mtd devices. The
informations are now kept in a consistent state, with each changed
partition the partitions parameter is updated and when starting
the kernel partitions in the device tree are also updated to the
current partitioning.
What's still missing is a way to store the partitioning somewhere
in the environment, perhaps in a nonvolatile variable.

Sascha


The following changes since commit d7dc46d5d6f2c80d1719ef877df728457790ac45:

  defaultenv: ignore barebox_zero_env (2015-02-11 08:34:29 +0100)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git 

for you to fetch changes up to cd7feae00b43eeddcaeb229f861d0ddac93f91e2:

  defaultenv-2: mtdparts-add: Use new partition parameter (2015-02-12 09:33:44 +0100)

----------------------------------------------------------------
Sascha Hauer (17):
      of: Add for_each_child_of_node_safe
      mtd: core: add error checks
      mtd: partitions: Use xstrdup
      mtd: partitions: Add error check
      mtd: Add partitions to list
      mtd: nand: remove automatically created bb devices
      move cmdline partition parsing code to separate file
      cmdlinepart: Change SIZE_REMAINING to loff_t
      cmdlinepart: make argument types safer
      cmdlinepart: add function to parse a cmdline partition string
      cmndlinepart: skip devname if partstr already contains it
      mtd: forbid conflicting mtd partitions
      mtd: Use flags parameter in mtd_add_partition
      mtd: Add a partitions parameter to mtd devices
      mtd: fixup device tree partitions
      defaultenv-2: mtdparts-add: remove unused variable
      defaultenv-2: mtdparts-add: Use new partition parameter

 commands/partition.c                          | 104 +------------
 defaultenv/defaultenv-2-base/bin/mtdparts-add |  15 +-
 drivers/mtd/core.c                            | 213 +++++++++++++++++++++++++-
 drivers/mtd/nand/nand-bb.c                    |  16 +-
 drivers/mtd/partition.c                       |  14 +-
 include/cmdlinepart.h                         |  14 ++
 include/linux/mtd/mtd.h                       |   5 +
 include/nand.h                                |   7 +-
 include/of.h                                  |   2 +
 lib/Makefile                                  |   1 +
 lib/cmdlinepart.c                             | 124 +++++++++++++++
 11 files changed, 393 insertions(+), 122 deletions(-)
 create mode 100644 include/cmdlinepart.h
 create mode 100644 lib/cmdlinepart.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
