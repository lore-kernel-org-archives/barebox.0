Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5XI-0004iO-QJ
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:53:42 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TK5XG-0007mi-Rs
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 12:53:38 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TK5XG-00018K-QY
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 12:53:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 12:53:28 +0200
Message-Id: <1349434416-4231-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX SoC work
To: barebox@lists.infradead.org

This is some general i.MX work. The iomuxes are converted to drivers,
the silicon revision and bootsource settings are streamlined.

Sascha

----------------------------------------------------------------
Sascha Hauer (8):
      ARM i.MX27: Use standard IMX_CHIP_REV_* defines
      ARM i.MX: streamline imx_silicon_revision
      ARM i.MX1: move iomux definitions to separate header file
      ARM i.MX boards: Use IMX_GPIO_NR
      ARM i.MX iomux-v1: Add separate header file
      ARM i.MX: Turn iomux-v2 into driver
      ARM i.MX: Turn iomux-v3 into driver
      ARM i.MX: rework bootsource setting

 arch/arm/boards/ccxmx51/ccxmx51.c               |    1 +
 arch/arm/boards/freescale-mx35-3-stack/3stack.c |    1 +
 arch/arm/boards/freescale-mx51-pdk/board.c      |    1 +
 arch/arm/boards/freescale-mx53-loco/board.c     |    1 +
 arch/arm/boards/freescale-mx6-sabrelite/board.c |    2 +-
 arch/arm/boards/karo-tx25/board.c               |   10 +-
 arch/arm/boards/pcm038/pcm038.c                 |    8 +-
 arch/arm/boards/scb9328/scb9328.c               |    1 +
 arch/arm/mach-imx/Makefile                      |    2 +-
 arch/arm/mach-imx/boot.c                        |  178 ++++++++++++++++-------
 arch/arm/mach-imx/clk-imx27.c                   |    5 +-
 arch/arm/mach-imx/imx.c                         |   27 ++++
 arch/arm/mach-imx/imx1.c                        |    3 +
 arch/arm/mach-imx/imx21.c                       |   11 +-
 arch/arm/mach-imx/imx25.c                       |    7 +
 arch/arm/mach-imx/imx27.c                       |   34 ++++-
 arch/arm/mach-imx/imx31.c                       |    1 +
 arch/arm/mach-imx/imx35.c                       |   14 +-
 arch/arm/mach-imx/imx51.c                       |   83 +----------
 arch/arm/mach-imx/imx53.c                       |   16 +-
 arch/arm/mach-imx/imx6.c                        |    1 +
 arch/arm/mach-imx/include/mach/generic.h        |   21 ++-
 arch/arm/mach-imx/include/mach/imx-regs.h       |   55 -------
 arch/arm/mach-imx/include/mach/imx1-regs.h      |  130 -----------------
 arch/arm/mach-imx/include/mach/imx27-regs.h     |   10 --
 arch/arm/mach-imx/include/mach/iomux-mx1.h      |  133 +++++++++++++++++
 arch/arm/mach-imx/include/mach/iomux-mx21.h     |    1 +
 arch/arm/mach-imx/include/mach/iomux-mx27.h     |    1 +
 arch/arm/mach-imx/include/mach/iomux-v1.h       |   48 ++++++
 arch/arm/mach-imx/include/mach/revision.h       |   22 +++
 arch/arm/mach-imx/iomux-v1.c                    |  123 ++++++++++------
 arch/arm/mach-imx/iomux-v2.c                    |   66 +++++++--
 arch/arm/mach-imx/iomux-v3.c                    |   42 +++++-
 33 files changed, 639 insertions(+), 420 deletions(-)
 create mode 100644 arch/arm/mach-imx/imx.c
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx1.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-v1.h
 create mode 100644 arch/arm/mach-imx/include/mach/revision.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
