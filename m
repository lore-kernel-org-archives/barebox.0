Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tisct-00051Z-1l
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 20:09:56 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Tiscr-0003R2-C1
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 21:09:53 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Tiscr-0000p4-Aw
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 21:09:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Dec 2012 21:09:41 +0100
Message-Id: <1355342991-549-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX31/pcm037 fixes and updates
To: barebox@lists.infradead.org

The following are fixes and updates for i.MX31, more specifically
to the pcm037 board which is the only i.MX31 board in the tree.
The first four patches are for master, they fix some recently
introduced regressions. The remaining patches are some updates
like switching to the new environment and add MMC support.

Sascha

----------------------------------------------------------------
Sascha Hauer (10):
      ARM i.MX31: Fix gpio device names
      ARM i.MX31 pcm037: Force internal phy
      ARM i.MX31 pcm037: make board bootable again
      ARM i.MX31 pcm037: remove unused defines
      ARM i.MX31 pcm037: rewrite lowlevel init code in C
      ARM i.MX31 pcm037: Switch to new environment
      ARM i.MX31: sync iomux with kernel
      ARM i.MX31 pcm037: add more iomux pins
      ARM i.MX31: Add mmc register convenience functions
      ARM i.MX31 pcm037: add mmc support

 arch/arm/boards/pcm037/Makefile                |    4 +-
 arch/arm/boards/pcm037/env/boot/nand-ubi       |   10 +
 arch/arm/boards/pcm037/env/config              |   52 -----
 arch/arm/boards/pcm037/env/init/config-board   |    7 +
 arch/arm/boards/pcm037/env/init/mtdparts-nand  |   11 ++
 arch/arm/boards/pcm037/env/init/mtdparts-nor   |   11 ++
 arch/arm/boards/pcm037/lowlevel.c              |  162 +++++++++++++++
 arch/arm/boards/pcm037/lowlevel_init.S         |  168 ----------------
 arch/arm/boards/pcm037/pcm037.c                |   67 +++++--
 arch/arm/configs/pcm037_defconfig              |   32 ++-
 arch/arm/mach-imx/Kconfig                      |    1 +
 arch/arm/mach-imx/imx31.c                      |    6 +-
 arch/arm/mach-imx/include/mach/devices-imx31.h |   10 +
 arch/arm/mach-imx/include/mach/iomux-mx31.h    |  253 ++++++++++++++++++++----
 arch/arm/mach-imx/iomux-v2.c                   |   12 +-
 15 files changed, 518 insertions(+), 288 deletions(-)
 create mode 100644 arch/arm/boards/pcm037/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/pcm037/env/config
 create mode 100644 arch/arm/boards/pcm037/env/init/config-board
 create mode 100644 arch/arm/boards/pcm037/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/pcm037/env/init/mtdparts-nor
 create mode 100644 arch/arm/boards/pcm037/lowlevel.c
 delete mode 100644 arch/arm/boards/pcm037/lowlevel_init.S

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
