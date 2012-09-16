Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDAeN-0006HA-07
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 08:56:23 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TDAeL-0001Xj-PJ
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 10:56:21 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TDAeL-0007iA-OH
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 10:56:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Sep 2012 10:56:19 +0200
Message-Id: <1347785781-13201-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Karo TX53 support
To: barebox@lists.infradead.org

This adds support for the Karo TX53 board. Currently all we have is
an early development board which has other SDRAM than the ones sold,
so this will need updates for the boards actually sold.

Sascha


----------------------------------------------------------------
Sascha Hauer (2):
      ARM i.MX: Add Ka-Ro TX53 board support
      ARM i.MX TX53: Add defconfig

 arch/arm/Makefile                                |    1 +
 arch/arm/boards/karo-tx53/Makefile               |    2 +
 arch/arm/boards/karo-tx53/board.c                |  240 ++++++++++++++++++++++
 arch/arm/boards/karo-tx53/config.h               |   24 +++
 arch/arm/boards/karo-tx53/env/init/bootargs-base |    8 +
 arch/arm/boards/karo-tx53/env/init/hostname      |    8 +
 arch/arm/boards/karo-tx53/flash_header.c         |  147 +++++++++++++
 arch/arm/configs/tx53stk5_defconfig              |   76 +++++++
 arch/arm/mach-imx/Kconfig                        |    8 +
 9 files changed, 514 insertions(+)
 create mode 100644 arch/arm/boards/karo-tx53/Makefile
 create mode 100644 arch/arm/boards/karo-tx53/board.c
 create mode 100644 arch/arm/boards/karo-tx53/config.h
 create mode 100644 arch/arm/boards/karo-tx53/env/init/bootargs-base
 create mode 100644 arch/arm/boards/karo-tx53/env/init/hostname
 create mode 100644 arch/arm/boards/karo-tx53/flash_header.c
 create mode 100644 arch/arm/configs/tx53stk5_defconfig


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
