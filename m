Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wm2Mj-00079f-CX
 for barebox@lists.infradead.org; Sun, 18 May 2014 14:47:06 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Sun, 18 May 2014 16:46:26 +0200
Message-Id: <1400424390-24736-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 0/4] some mini2440 updates
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Hi,

Some updates for the mini2440. This is based on next, is that ok?
That's mostly relavant for the defconfig but dm9k.c has a small conflict as
well.

Michael

Michael Olbrich (4):
  ARM: mini2440: switch to env2
  ARM: mini2440: update defconfig
  ARM Samsung: fix booting from NAND with pbl
  net: dm9k: only read on packet for each call to dm9k_eth_rx()

 arch/arm/boards/friendlyarm-mini2440/env/boot/nand |  9 ++++
 arch/arm/boards/friendlyarm-mini2440/env/config    | 54 ----------------------
 .../boards/friendlyarm-mini2440/env/config-board   | 16 +++++++
 .../friendlyarm-mini2440/env/init/mtdparts-nand    | 11 +++++
 arch/arm/configs/friendlyarm_mini2440_defconfig    | 34 +++++++-------
 arch/arm/mach-samsung/Kconfig                      |  1 +
 arch/arm/mach-samsung/lowlevel-s3c24x0.S           |  5 +-
 drivers/net/dm9k.c                                 |  6 ++-
 8 files changed, 60 insertions(+), 76 deletions(-)
 create mode 100644 arch/arm/boards/friendlyarm-mini2440/env/boot/nand
 delete mode 100644 arch/arm/boards/friendlyarm-mini2440/env/config
 create mode 100644 arch/arm/boards/friendlyarm-mini2440/env/config-board
 create mode 100644 arch/arm/boards/friendlyarm-mini2440/env/init/mtdparts-nand

-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
