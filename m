Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RwtKy-0008Rk-8y
 for barebox@lists.infradead.org; Mon, 13 Feb 2012 10:40:48 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RwtKm-0001b2-TW
 for barebox@lists.infradead.org; Mon, 13 Feb 2012 11:40:36 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RwtKm-0005wz-SK
 for barebox@lists.infradead.org; Mon, 13 Feb 2012 11:40:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Feb 2012 11:40:33 +0100
Message-Id: <1329129636-22269-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add TQ tqma53 support
To: barebox@lists.infradead.org


The following series adds support for the TQ tqma53 module with a
Freescale i.MX53 SoC. To do this mach-types has to be updated and
also we need a possibility to run the i.MX53 at 800MHz.

Sascha Hauer (3):
      ARM: update mach-types
      ARM i.MX5: Allow to pass cpu clock to lowlevel init
      initial tqm53 support

 arch/arm/Makefile                           |    1 +
 arch/arm/boards/freescale-mx53-loco/board.c |    2 +-
 arch/arm/boards/freescale-mx53-smd/board.c  |    2 +-
 arch/arm/boards/tqma53/Makefile             |    2 +
 arch/arm/boards/tqma53/board.c              |  272 +++++++++++++++++++++++++++
 arch/arm/boards/tqma53/config.h             |    4 +
 arch/arm/boards/tqma53/env/config           |   43 +++++
 arch/arm/boards/tqma53/flash_header.c       |  109 +++++++++++
 arch/arm/configs/tqma53_defconfig           |   64 +++++++
 arch/arm/mach-imx/Kconfig                   |   11 +
 arch/arm/mach-imx/imx53.c                   |    9 +-
 arch/arm/mach-imx/include/mach/imx5.h       |    2 +-
 arch/arm/tools/mach-types                   |   62 ++++++-
 13 files changed, 577 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/boards/tqma53/Makefile
 create mode 100644 arch/arm/boards/tqma53/board.c
 create mode 100644 arch/arm/boards/tqma53/config.h
 create mode 100644 arch/arm/boards/tqma53/env/config
 create mode 100644 arch/arm/boards/tqma53/flash_header.c
 create mode 100644 arch/arm/configs/tqma53_defconfig

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
