Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TdS5Q-00072b-6p
 for barebox@lists.infradead.org; Tue, 27 Nov 2012 20:48:56 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TdS5O-0004gM-JC
 for barebox@lists.infradead.org; Tue, 27 Nov 2012 21:48:54 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TdS5O-0000xV-I5
 for barebox@lists.infradead.org; Tue, 27 Nov 2012 21:48:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Nov 2012 21:48:45 +0100
Message-Id: <1354049328-3534-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX sdram controller driver support
To: barebox@lists.infradead.org

This adds a driver which reads back the SDRAM controller
configured values and registers the memory found with barebox.
This makes board code a bit easier.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      ARM i.MX: Add driver to get sdram base and size
      ARM i.MX: register esdctl controller device
      ARM i.MX boards: use esdctl code to detect sdram size

 arch/arm/boards/ccxmx51/ccxmx51.c                 |    9 -
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    8 -
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   14 -
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    8 -
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |    8 -
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |   18 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    9 -
 arch/arm/boards/freescale-mx51-pdk/board.c        |    8 -
 arch/arm/boards/freescale-mx53-loco/board.c       |    9 -
 arch/arm/boards/freescale-mx53-smd/board.c        |    9 -
 arch/arm/boards/guf-cupid/board.c                 |    8 -
 arch/arm/boards/guf-neso/board.c                  |    8 -
 arch/arm/boards/imx27ads/imx27ads.c               |    8 -
 arch/arm/boards/karo-tx25/board.c                 |   14 +-
 arch/arm/boards/karo-tx51/tx51.c                  |    8 -
 arch/arm/boards/karo-tx53/board.c                 |   11 -
 arch/arm/boards/pcm037/pcm037.c                   |   11 -
 arch/arm/boards/pcm038/pcm038.c                   |   14 +-
 arch/arm/boards/pcm043/pcm043.c                   |    8 -
 arch/arm/boards/phycard-i.MX27/pca100.c           |    8 -
 arch/arm/boards/scb9328/scb9328.c                 |    8 -
 arch/arm/boards/tqma53/board.c                    |   11 -
 arch/arm/mach-imx/Makefile                        |    3 +-
 arch/arm/mach-imx/esdctl.c                        |  348 +++++++++++++++++++++
 arch/arm/mach-imx/imx1.c                          |    3 +
 arch/arm/mach-imx/imx25.c                         |    1 +
 arch/arm/mach-imx/imx27.c                         |    1 +
 arch/arm/mach-imx/imx31.c                         |    1 +
 arch/arm/mach-imx/imx35.c                         |    1 +
 arch/arm/mach-imx/imx51.c                         |    1 +
 arch/arm/mach-imx/imx53.c                         |    1 +
 arch/arm/mach-imx/include/mach/esdctl.h           |    1 +
 arch/arm/mach-imx/include/mach/imx1-regs.h        |    3 +
 33 files changed, 372 insertions(+), 209 deletions(-)
 create mode 100644 arch/arm/mach-imx/esdctl.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
