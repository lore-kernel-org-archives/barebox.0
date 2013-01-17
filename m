Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tvlut-0001sL-VF
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 09:37:48 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Tvlus-0000aC-Jm
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 10:37:46 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Tvlus-000256-Ik
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 10:37:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Jan 2013 10:37:40 +0100
Message-Id: <1358415464-4657-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Ka-Ro TX25 updates
To: barebox@lists.infradead.org

Some updates for the Ka-Ro TX25. First two patches are fixes, the remaining
update to the new environment.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      ARM Ka-Ro TX25: fix running in SDRAM test
      ARM Ka-Ro TX25: fix compilation with external NAND boot enabled
      ARM Ka-Ro TX25: Increase NAND partitions
      ARM Ka-Ro Tx25: Switch to new environment

 arch/arm/boards/karo-tx25/board.c                |    5 ++-
 arch/arm/boards/karo-tx25/env/bin/init_board     |    6 ---
 arch/arm/boards/karo-tx25/env/boot/nand-ubi      |   10 +++++
 arch/arm/boards/karo-tx25/env/config             |   48 ----------------------
 arch/arm/boards/karo-tx25/env/init/config-board  |    7 ++++
 arch/arm/boards/karo-tx25/env/init/mtdparts-nand |   11 +++++
 arch/arm/boards/karo-tx25/lowlevel.c             |    5 +--
 arch/arm/configs/tx25stk5_defconfig              |   42 ++++++++++++++-----
 arch/arm/mach-imx/Kconfig                        |    1 +
 9 files changed, 66 insertions(+), 69 deletions(-)
 delete mode 100644 arch/arm/boards/karo-tx25/env/bin/init_board
 create mode 100644 arch/arm/boards/karo-tx25/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/karo-tx25/env/config
 create mode 100644 arch/arm/boards/karo-tx25/env/init/config-board
 create mode 100644 arch/arm/boards/karo-tx25/env/init/mtdparts-nand

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
