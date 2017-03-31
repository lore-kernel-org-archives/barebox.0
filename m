Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpC4-0005GT-8i
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:33:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1ctpBe-0002ct-KU
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:33:26 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.88)
 (envelope-from <sha@pengutronix.de>) id 1ctpBe-0005mt-2C
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:33:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:09 +0200
Message-Id: <20170331053323.17821-1-s.hauer@pengutronix.de>
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
Subject: OF partitions rework
To: Barebox List <barebox@lists.infradead.org>

This series reworks some aspects of device tree partitions.

- device tree partitions can be > 4GiB. So far we assumed
  #address-cells and #size-cells are both 1. Parse the
  cell size properly to support bigger partitions
- support the new device tree partition binding which collects
  the device tree partitions under a "partitions" node with
  compatible = "fixed-partitions"
- Add the counterpart of of_find_path(): of_find_node_by_devpath()
  converts a barebox device path back to a device node. This function
  will be used by the state framework in a later series.

----------------------------------------------------------------
Sascha Hauer (14):
      of: Add of_property_write_string()
      treewide: Use of_property_write_string() where appropriate
      of: partition: Move of_mtd_fixup to drivers/of/
      mtd: of: Make used partition binding configurable
      of: partition: support 64bit partition sizes
      mtd: partition: set cdev->offset to the actual offset
      cdev: Collect partitions on list
      of: partition: Make partition fixup independent from mtd devices
      fs: devfs-core: remove unused code
      fs: devfs-core: replace DEVFS_PARTITION_FIXED flag with pointer to the master cdev
      of: partition: only create partition node when partitions exist
      of: partitions: flag partitions from a partition table
      of: partition: Register the of partition fixup for of partition users
      of: of_path: add of_find_node_by_devpath()

 arch/arm/boards/highbank/init.c |   6 +-
 arch/arm/cpu/psci.c             |   6 +-
 arch/sandbox/board/hostfile.c   |   6 +-
 common/memory.c                 |   2 +-
 common/oftree.c                 |   2 +-
 common/partitions.c             |   2 +
 common/state/state.c            |   5 +-
 drivers/base/driver.c           |   2 +-
 drivers/eeprom/at24.c           |   1 +
 drivers/eeprom/at25.c           |   2 +
 drivers/mci/mci-core.c          |   4 +-
 drivers/mtd/core.c              |  65 +--------------
 drivers/mtd/partition.c         |   3 +
 drivers/of/base.c               |  24 +++++-
 drivers/of/of_path.c            | 107 +++++++++++++++++++++++++
 drivers/of/partition.c          | 170 +++++++++++++++++++++++++++++++++++++++-
 drivers/video/simplefb.c        |  12 +--
 fs/devfs-core.c                 |  82 +++----------------
 include/driver.h                |   4 +-
 include/linux/mtd/mtd.h         |   1 +
 include/of.h                    |  15 ++++
 21 files changed, 355 insertions(+), 166 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
