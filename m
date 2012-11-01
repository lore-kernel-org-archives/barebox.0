Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTpd3-0007HC-Bb
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 07:55:57 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TTpd0-0001IN-WC
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 08:55:50 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TTpd0-0006ZY-V9
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 08:55:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 08:55:42 +0100
Message-Id: <1351756548-24640-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] panda and beagle update
To: barebox@lists.infradead.org

The following puts some efforts into the OMAP3/4 beagle and panda
boards. The boards are switched to the new environment, MMU is enabled,
Thumb2 and compilation of OMAP3 boards with PBL enabled is fixed.

----------------------------------------------------------------
Sascha Hauer (6):
      ARM OMAP4: Turn puts into debug
      ARM OMAP4 panda: switch to new environment
      ARM OMAP4 panda xload: Enable MMU and Thumb2 support
      ARM OMAP3 beagle: switch to new environment
      ARM OMAP3 boards: Call omap3_core_init only from SRAM
      ARM OMAP3: Put reset() into its own section

 arch/arm/boards/beagle/board.c                   |    3 +-
 arch/arm/boards/beagle/env/boot/mmc              |   10 +++++
 arch/arm/boards/beagle/env/init/bootargs-base    |    8 ++++
 arch/arm/boards/beagle/env/init/hostname         |    8 ++++
 arch/arm/boards/beagle/env/network/eth0-discover |    5 +++
 arch/arm/boards/omap343xdsp/board.c              |    3 +-
 arch/arm/boards/panda/env/boot/mmc               |   10 +++++
 arch/arm/boards/panda/env/config                 |   40 ------------------
 arch/arm/boards/panda/env/init/bootargs-base     |    8 ++++
 arch/arm/boards/panda/env/init/hostname          |    8 ++++
 arch/arm/boards/panda/env/network/eth0-discover  |    5 +++
 arch/arm/boards/phycard-a-l1/pca-a-l1.c          |    3 +-
 arch/arm/configs/omap3530_beagle_defconfig       |   49 ++++++++++++++++------
 arch/arm/configs/panda_defconfig                 |   34 +++++++++++----
 arch/arm/configs/panda_xload_defconfig           |    5 +--
 arch/arm/mach-omap/Kconfig                       |    2 +
 arch/arm/mach-omap/omap3_core.S                  |    1 +
 arch/arm/mach-omap/omap4_clock.c                 |    2 +-
 18 files changed, 137 insertions(+), 67 deletions(-)
 create mode 100644 arch/arm/boards/beagle/env/boot/mmc
 create mode 100644 arch/arm/boards/beagle/env/init/bootargs-base
 create mode 100644 arch/arm/boards/beagle/env/init/hostname
 create mode 100644 arch/arm/boards/beagle/env/network/eth0-discover
 create mode 100644 arch/arm/boards/panda/env/boot/mmc
 delete mode 100644 arch/arm/boards/panda/env/config
 create mode 100644 arch/arm/boards/panda/env/init/bootargs-base
 create mode 100644 arch/arm/boards/panda/env/init/hostname
 create mode 100644 arch/arm/boards/panda/env/network/eth0-discover

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
