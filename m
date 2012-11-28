Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TdeQM-0002zY-ET
 for barebox@lists.infradead.org; Wed, 28 Nov 2012 09:59:22 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TdeQL-00030y-2B
 for barebox@lists.infradead.org; Wed, 28 Nov 2012 10:59:21 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TdeQL-00041L-12
 for barebox@lists.infradead.org; Wed, 28 Nov 2012 10:59:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Nov 2012 10:59:16 +0100
Message-Id: <1354096760-14409-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add Garz+Fricke Vincell board support
To: barebox@lists.infradead.org

This adds support for the i.MX53 based Garz+Fricke Vincell board.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      ARM i.MX5: move pll setup defines to header file
      ARM i.MX: add esdctl-v4 support
      ARM i.MX: Add Garz+Fricke Vincell Board support
      ARM i.MX esdctl: Use defines from exisiting header file

 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/freescale-mx53-loco/board.c        |    2 +-
 arch/arm/boards/guf-vincell/Makefile               |    3 +
 arch/arm/boards/guf-vincell/board.c                |  323 +++++++++
 arch/arm/boards/guf-vincell/config.h               |   24 +
 arch/arm/boards/guf-vincell/env/boot/nand-ubi      |   10 +
 arch/arm/boards/guf-vincell/env/init/bootargs-base |    8 +
 arch/arm/boards/guf-vincell/env/init/hostname      |    8 +
 arch/arm/boards/guf-vincell/env/init/mtdparts-nand |   11 +
 arch/arm/boards/guf-vincell/flash_header.c         |   41 ++
 arch/arm/boards/guf-vincell/lowlevel.c             |  164 +++++
 arch/arm/configs/vincell_defconfig                 |   81 +++
 arch/arm/mach-imx/Kconfig                          |    9 +
 arch/arm/mach-imx/Makefile                         |    4 +-
 arch/arm/mach-imx/esdctl-v4.c                      |  710 ++++++++++++++++++++
 arch/arm/mach-imx/esdctl.c                         |   28 +-
 arch/arm/mach-imx/imx-bbu-internal.c               |    2 +-
 arch/arm/mach-imx/imx51.c                          |    7 -
 arch/arm/mach-imx/imx53.c                          |   18 +-
 arch/arm/mach-imx/include/mach/esdctl-v4.h         |  520 ++++++++++++++
 arch/arm/mach-imx/include/mach/imx5.h              |   10 +-
 drivers/mfd/mc34704.c                              |    2 +-
 22 files changed, 1942 insertions(+), 44 deletions(-)
 create mode 100644 arch/arm/boards/guf-vincell/Makefile
 create mode 100644 arch/arm/boards/guf-vincell/board.c
 create mode 100644 arch/arm/boards/guf-vincell/config.h
 create mode 100644 arch/arm/boards/guf-vincell/env/boot/nand-ubi
 create mode 100644 arch/arm/boards/guf-vincell/env/init/bootargs-base
 create mode 100644 arch/arm/boards/guf-vincell/env/init/hostname
 create mode 100644 arch/arm/boards/guf-vincell/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/guf-vincell/flash_header.c
 create mode 100644 arch/arm/boards/guf-vincell/lowlevel.c
 create mode 100644 arch/arm/configs/vincell_defconfig
 create mode 100644 arch/arm/mach-imx/esdctl-v4.c
 create mode 100644 arch/arm/mach-imx/include/mach/esdctl-v4.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
