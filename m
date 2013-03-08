Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDw5p-00015D-F3
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 12:08:10 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UDw5l-00014w-Tq
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 13:08:05 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UDw5l-0004hw-Sc
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 13:08:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Mar 2013 13:08:01 +0100
Message-Id: <1362744484-17844-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add DataModul Realq7 board support
To: barebox@lists.infradead.org

This adds support for the DataModul Realq7 board. This is
a i.MX6 based board with a q7 form factor.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      ARM i.MX6: Add mmdc calibration support
      Add DMO RealQ7 board support
      Add DMO RealQ7 defconfig

 arch/arm/Makefile                                |   1 +
 arch/arm/boards/dmo-mx6-realq7/Makefile          |   2 +
 arch/arm/boards/dmo-mx6-realq7/board.c           | 404 +++++++++++
 arch/arm/boards/dmo-mx6-realq7/config.h          |   4 +
 arch/arm/boards/dmo-mx6-realq7/env/init/hostname |   8 +
 arch/arm/boards/dmo-mx6-realq7/flash_header.c    |  40 ++
 arch/arm/boards/dmo-mx6-realq7/lowlevel.c        | 146 ++++
 arch/arm/configs/dmo-realq7_defconfig            |  91 +++
 arch/arm/mach-imx/Kconfig                        |   6 +
 arch/arm/mach-imx/Makefile                       |   3 +-
 arch/arm/mach-imx/imx6-mmdc.c                    | 839 +++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx6.h    |  20 +
 arch/arm/mach-imx/include/mach/imx6-mmdc.h       |   7 +
 13 files changed, 1570 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/Makefile
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/board.c
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/config.h
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/env/init/hostname
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/flash_header.c
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/lowlevel.c
 create mode 100644 arch/arm/configs/dmo-realq7_defconfig
 create mode 100644 arch/arm/mach-imx/imx6-mmdc.c
 create mode 100644 arch/arm/mach-imx/include/mach/imx6-mmdc.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
