Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NWqED-00068Q-7Z
	for barebox@lists.infradead.org; Mon, 18 Jan 2010 11:57:09 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 18 Jan 2010 12:56:23 +0100
Message-Id: <1263815791-10839-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 0/8] update i.MX35 3stack and i2c drivers
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Hey,

this is a patch series updating the driver interface of the two i2c
chips (mc13892 and mc9sdz60) needed to boot the i.MX35 3stack board.
They no longer export their i2c interface but export now much cleaner
_reg_read, _reg_write and _set_bits functions.

The next pach adopts the i.MX35 to the new driver interface.

Two cleanup patches follow. Then the environment partition is increased
to hold a splash image. The environemnt itself is updated to support
jffs2 and ubi/ubifs. The last patch updates the defconfig.

Please review and consider to apply.

This patch series (based on v2009.12.0) can be pulled, too.

Cheers, Marc

---

The following changes since commit c68c06cb0e5f9913473ab9cfbf7c48af79582c99:
  Sascha Hauer (1):
        barebox-2009.12.0

are available in the git repository at:

  ssh://git.pengutronix.de/git/mkl/barebox.git for-sha-mx35-3-stack-updates

Marc Kleine-Budde (8):
      mc9sdz60: clean up driver interface
      mc13892: clean up driver interface
      i.MX35 3stack: adopt board to new mc13892 and mc9sdz60 driver interface
      i.MX35 3stack: clean up indention
      i.MX35 3stack: clean up indention of lowlevel_init
      i.MX35 3stack: increase env partition to hold splash image
      i.MX35 3stack: update environemnt to support jffs and ubi/ubifs
      i.MX35 3stack: update of defconfig

 arch/arm/configs/freescale_mx35_3stack_defconfig   |   67 ++--
 board/freescale-mx35-3-stack/3stack.c              |  113 ++++---
 board/freescale-mx35-3-stack/env/bin/_update       |    5 +-
 board/freescale-mx35-3-stack/env/bin/boot          |   50 ++--
 board/freescale-mx35-3-stack/env/bin/init          |   15 +-
 board/freescale-mx35-3-stack/env/bin/update_kernel |    2 +-
 .../env/bin/{update_root => update_rootfs}         |    8 +-
 board/freescale-mx35-3-stack/env/config            |   41 ++-
 board/freescale-mx35-3-stack/lowlevel_init.S       |  340 ++++++++++----------
 drivers/i2c/mc13892.c                              |   91 ++++--
 drivers/i2c/mc9sdz60.c                             |   84 ++++--
 include/i2c/mc13892.h                              |   90 +++++-
 include/i2c/mc9sdz60.h                             |   61 ++++-
 13 files changed, 623 insertions(+), 344 deletions(-)
 rename board/freescale-mx35-3-stack/env/bin/{update_root => update_rootfs} (68%)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
