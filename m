Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uws0d-0000Kf-3Y
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 10:52:35 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Uws0H-0007zB-0p
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:52:09 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Uws0G-0007Ab-W2
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:52:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 12:51:59 +0200
Message-Id: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Allow configuration from the devicetree
To: barebox@lists.infradead.org

Currently even the devicetree enabled boards need C code to
configure where to store the environment. The following series
makes this configurable via devicetree to further reduce the
need of C code for boards.

As I often point out that the devicetree is for hardware description
rather than for configuration, the configuration is done in the
node explicitly intended for configuration: /chosen.

We add a hierarchy /chosen/barebox/ in the devicetree on which
of_platform_populate is called. This allows us to do the configuration
as regular drivers and to reuse a lot of infrastructure. Implementing
this as drivers also has the advantage that the known mechanisms can
be used to consistently change the behaviour of different boards
without breaking old boards.

Sascha

----------------------------------------------------------------
Sascha Hauer (9):
      devfs: let devfs_add_partition return the new partition
      of: export of_default_bus_match_table
      of: partitions: factor out function to parse a single partition
      cdev: introduce partition names
      cdev: allow to open a struct cdev
      cdev: add device_find_partition
      mci: set partnames of eMMC boot partitions
      Add configurability via devicetree
      ARM: i.MX Datamodul edmqx6: configure environment from devicetree

 Documentation/devicetree/bindings/barebox.txt      |  10 ++
 .../bindings/barebox/barebox,environment.txt       |  24 +++
 .../bindings/barebox/barebox,partition.txt         |  42 +++++
 arch/arm/boards/dmo-mx6-realq7/board.c             |  16 --
 arch/arm/configs/dmo-realq7_defconfig              |   1 +
 arch/arm/dts/imx6q-dmo-realq7.dts                  |  24 +++
 arch/x86/boards/x86_generic/generic_pc.c           |   6 +-
 commands/partition.c                               |  11 +-
 common/environment.c                               |  10 +-
 common/partitions.c                                |  12 +-
 drivers/mci/mci-core.c                             |  12 +-
 drivers/of/Kconfig                                 |   9 +
 drivers/of/Makefile                                |   1 +
 drivers/of/barebox.c                               | 191 +++++++++++++++++++++
 drivers/of/of_path.c                               | 155 +++++++++++++++++
 drivers/of/partition.c                             |  58 ++++---
 fs/devfs-core.c                                    |  60 +++++--
 include/driver.h                                   |  14 +-
 include/of.h                                       |  14 ++
 19 files changed, 600 insertions(+), 70 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/barebox.txt
 create mode 100644 Documentation/devicetree/bindings/barebox/barebox,environment.txt
 create mode 100644 Documentation/devicetree/bindings/barebox/barebox,partition.txt
 create mode 100644 drivers/of/barebox.c
 create mode 100644 drivers/of/of_path.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
