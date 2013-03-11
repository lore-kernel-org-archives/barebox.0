Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEy1Q-0005jE-GE
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 08:23:53 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UEy1O-0004mK-Mq
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:23:50 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UEy1O-0000dY-Lc
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:23:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2013 09:23:45 +0100
Message-Id: <1362990229-1425-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH v2] DMO Realq7 support
To: barebox@lists.infradead.org

changes since v1:

- use phy_register_fixup_for_uid instead of fec pdata callback
- Use regular readl/writel instead of custom functions
- update defaultenv
- use lwl-y for mmdc calibration support
- use barebox_image_size

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      net: phy: micrel: Update id table from kernel
      ARM i.MX6: Add mmdc calibration support
      Add DMO RealQ7 board support
      Add DMO RealQ7 defconfig

 arch/arm/Makefile                                 |   1 +
 arch/arm/boards/delphi-poc20/env/boot/mmc         |  10 +
 arch/arm/boards/dmo-mx6-realq7/Makefile           |   2 +
 arch/arm/boards/dmo-mx6-realq7/board.c            | 406 ++++++++++
 arch/arm/boards/dmo-mx6-realq7/config.h           |   4 +
 arch/arm/boards/dmo-mx6-realq7/env/boot/mmc       |  10 +
 arch/arm/boards/dmo-mx6-realq7/env/config-board   |   7 +
 arch/arm/boards/dmo-mx6-realq7/env/init/automount |  14 +
 arch/arm/boards/dmo-mx6-realq7/flash_header.c     |  40 +
 arch/arm/boards/dmo-mx6-realq7/lowlevel.c         | 155 ++++
 arch/arm/configs/dmo-realq7_defconfig             |  91 +++
 arch/arm/mach-imx/Kconfig                         |   6 +
 arch/arm/mach-imx/Makefile                        |   1 +
 arch/arm/mach-imx/imx6-mmdc.c                     | 868 ++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx6.h     |  20 +
 arch/arm/mach-imx/include/mach/imx6-mmdc.h        |   7 +
 include/linux/micrel_phy.h                        |   9 +-
 17 files changed, 1650 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/delphi-poc20/env/boot/mmc
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/Makefile
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/board.c
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/config.h
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/env/boot/mmc
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/env/config-board
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/env/init/automount
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/flash_header.c
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/lowlevel.c
 create mode 100644 arch/arm/configs/dmo-realq7_defconfig
 create mode 100644 arch/arm/mach-imx/imx6-mmdc.c
 create mode 100644 arch/arm/mach-imx/include/mach/imx6-mmdc.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
