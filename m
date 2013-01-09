Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TstQm-0002oQ-LZ
 for barebox@lists.infradead.org; Wed, 09 Jan 2013 11:02:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Jan 2013 12:02:42 +0100
Message-Id: <1357729366-2686-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add am33xx/beaglebone network support
To: barebox@lists.infradead.org

The following adds a cpsw network driver and also support for it
on the beaglebone board.

Sascha

----------------------------------------------------------------
Jan Luebbe (1):
      drivers: net: add driver for TI CPSW

Sascha Hauer (3):
      ARM am33xx: Add cpws convenience functions
      ARM beaglebone: Add network support
      ARM beaglebone: update defconfig for networking

 arch/arm/boards/beaglebone/board.c               |   28 +
 arch/arm/configs/am335x_beaglebone_defconfig     |   17 +
 arch/arm/mach-omap/am33xx_generic.c              |   27 +
 arch/arm/mach-omap/include/mach/am33xx-devices.h |    7 +
 arch/arm/mach-omap/include/mach/cpsw.h           |   29 +
 drivers/net/Kconfig                              |    4 +
 drivers/net/Makefile                             |    1 +
 drivers/net/cpsw.c                               | 1070 ++++++++++++++++++++++
 8 files changed, 1183 insertions(+)
 create mode 100644 arch/arm/mach-omap/include/mach/cpsw.h
 create mode 100644 drivers/net/cpsw.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
