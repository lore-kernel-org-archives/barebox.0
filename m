Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9IHS-0006QD-U1
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:39:59 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q9IHR-0000vN-2p
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 16:39:53 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q9IHR-0007u8-1U
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 16:39:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:39:39 +0200
Message-Id: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: OMAP4 support
To: barebox@lists.infradead.org


The following finally adds omap4 support along with panda and pcm049 board
support. Also included in this series are updates to the beagle board
to make a xloader image suitable for booting from nand and mmc.

Sascha Hauer (12):
      ARM omap: Add omap signGP tool and possibility to build ift images
      mci omap: hsmmc is also found on the omap3
      ARM omap: make sr32 a static inline function
      ARM omap: Add omap4 support
      ARM omap: add xload helper functions
      ARM omap4: panda board support
      add panda defconfigs
      ARM omap4: Add pcm049 board support
      ARM: add pcm049 defconfigs
      ARM omap beagle: Add noshell support for booting from MMC
      ARM omap beagle: update defconfig
      ARM beagle board: add xload defconfig

 arch/arm/Makefile                                |   10 +
 arch/arm/boards/omap/board-beagle.c              |   42 +++
 arch/arm/boards/panda/Makefile                   |    1 +
 arch/arm/boards/panda/board.c                    |  230 ++++++++++++
 arch/arm/boards/panda/config.h                   |    1 +
 arch/arm/boards/panda/env/config                 |   45 +++
 arch/arm/boards/panda/lowlevel.c                 |  121 +++++++
 arch/arm/boards/panda/mux.c                      |  257 +++++++++++++
 arch/arm/boards/pcm049/Makefile                  |    1 +
 arch/arm/boards/pcm049/board.c                   |  200 ++++++++++
 arch/arm/boards/pcm049/config.h                  |    1 +
 arch/arm/boards/pcm049/env/bin/nand_bootstrap    |   31 ++
 arch/arm/boards/pcm049/env/config                |   53 +++
 arch/arm/boards/pcm049/lowlevel.c                |  127 +++++++
 arch/arm/boards/pcm049/mux.c                     |  254 +++++++++++++
 arch/arm/configs/omap3530_beagle_defconfig       |   15 +-
 arch/arm/configs/omap3530_beagle_xload_defconfig |   38 ++
 arch/arm/configs/panda_defconfig                 |   60 +++
 arch/arm/configs/panda_xload_defconfig           |   26 ++
 arch/arm/configs/pcm049_defconfig                |   57 +++
 arch/arm/configs/pcm049_xload_defconfig          |   40 ++
 arch/arm/mach-omap/Kconfig                       |   37 ++-
 arch/arm/mach-omap/Makefile                      |    3 +-
 arch/arm/mach-omap/gpio.c                        |   18 +
 arch/arm/mach-omap/include/mach/omap4-clock.h    |  320 ++++++++++++++++
 arch/arm/mach-omap/include/mach/omap4-mux.h      |  344 ++++++++++++++++++
 arch/arm/mach-omap/include/mach/omap4-silicon.h  |  179 +++++++++
 arch/arm/mach-omap/include/mach/silicon.h        |    3 +
 arch/arm/mach-omap/include/mach/syslib.h         |   23 ++-
 arch/arm/mach-omap/include/mach/xload.h          |   16 +
 arch/arm/mach-omap/omap3_generic.c               |   14 +
 arch/arm/mach-omap/omap4_clock.c                 |  380 +++++++++++++++++++
 arch/arm/mach-omap/omap4_generic.c               |  420 ++++++++++++++++++++++
 arch/arm/mach-omap/syslib.c                      |   20 -
 arch/arm/mach-omap/xload.c                       |   54 +++
 drivers/mci/Kconfig                              |    2 +-
 scripts/Makefile                                 |    1 +
 scripts/omap_signGP.c                            |  313 ++++++++++++++++
 38 files changed, 3731 insertions(+), 26 deletions(-)
 create mode 100644 arch/arm/boards/panda/Makefile
 create mode 100644 arch/arm/boards/panda/board.c
 create mode 100644 arch/arm/boards/panda/config.h
 create mode 100644 arch/arm/boards/panda/env/config
 create mode 100644 arch/arm/boards/panda/lowlevel.c
 create mode 100644 arch/arm/boards/panda/mux.c
 create mode 100644 arch/arm/boards/pcm049/Makefile
 create mode 100644 arch/arm/boards/pcm049/board.c
 create mode 100644 arch/arm/boards/pcm049/config.h
 create mode 100644 arch/arm/boards/pcm049/env/bin/nand_bootstrap
 create mode 100644 arch/arm/boards/pcm049/env/config
 create mode 100644 arch/arm/boards/pcm049/lowlevel.c
 create mode 100644 arch/arm/boards/pcm049/mux.c
 create mode 100644 arch/arm/configs/omap3530_beagle_xload_defconfig
 create mode 100644 arch/arm/configs/panda_defconfig
 create mode 100644 arch/arm/configs/panda_xload_defconfig
 create mode 100644 arch/arm/configs/pcm049_defconfig
 create mode 100644 arch/arm/configs/pcm049_xload_defconfig
 create mode 100644 arch/arm/mach-omap/include/mach/omap4-clock.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap4-mux.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap4-silicon.h
 create mode 100644 arch/arm/mach-omap/include/mach/xload.h
 create mode 100644 arch/arm/mach-omap/omap4_clock.c
 create mode 100644 arch/arm/mach-omap/omap4_generic.c
 create mode 100644 arch/arm/mach-omap/xload.c
 create mode 100644 scripts/omap_signGP.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
