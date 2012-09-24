Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6BI-0005T7-KX
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 10:46:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TG6BG-0006fy-Kt
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 12:46:26 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TG6BG-0006E2-Jl
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 12:46:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 12:46:09 +0200
Message-Id: <1348483583-12586-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX register cleanups
To: barebox@lists.infradead.org

The following replaces the register base defines from IMX_ to SoC
specific variants. The new names/base address defines are from the
Kernel.

Sascha

----------------------------------------------------------------
Sascha Hauer (14):
      ARM i.MX31: give register base addresses a proper MX31_ prefix
      ARM i.MX35: give register base addresses a proper MX35_ prefix
      ARM i.MX21: give register base addresses a proper MX21_ prefix
      ARM i.MX1: give register base addresses a proper MX1_ prefix
      ARM i.MX27: give register base addresses a proper MX27_ prefix
      ARM i.MX25: give register base addresses a proper MX25_ prefix
      ARM i.MX/MXS: Allow to include imx*-regs.h directly
      ARM i.MX51: Use defines rather than hardcoded addresses
      ARM i.MX: Add header file for WEIM cs setup
      ARM i.MX1: Add function to setup chipselect
      ARM i.MX21: Add function to setup chipselect
      ARM i.MX31: Add function to setup chipselect
      ARM i.MX35: Add function to setup chipselect
      ARM i.MX25: Add function to setup chipselect

 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   32 +--
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |   32 +--
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    5 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |    4 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |  100 ++++-----
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |   24 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   20 +-
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |   26 +--
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   88 ++++----
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |    6 +-
 arch/arm/boards/guf-cupid/board.c                  |   80 +++----
 arch/arm/boards/guf-cupid/lowlevel.c               |   28 +--
 arch/arm/boards/guf-neso/board.c                   |   12 +-
 arch/arm/boards/guf-neso/lowlevel.c                |    4 +-
 arch/arm/boards/imx21ads/imx21ads.c                |   33 ++-
 arch/arm/boards/imx21ads/lowlevel_init.S           |    4 +-
 arch/arm/boards/imx27ads/imx27ads.c                |    5 +-
 arch/arm/boards/karo-tx25/board.c                  |    6 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |   14 +-
 arch/arm/boards/pcm037/lowlevel_init.S             |   42 ++--
 arch/arm/boards/pcm037/pcm037.c                    |   66 +++---
 arch/arm/boards/pcm038/lowlevel.c                  |    4 +-
 arch/arm/boards/pcm038/pcm038.c                    |    1 +
 arch/arm/boards/pcm038/pcm970.c                    |   17 +-
 arch/arm/boards/pcm043/lowlevel.c                  |   26 +--
 arch/arm/boards/pcm043/pcm043.c                    |   83 ++++---
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |    4 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |   20 +-
 arch/arm/boards/scb9328/scb9328.c                  |   19 +-
 arch/arm/mach-imx/external-nand-boot.c             |    2 +-
 arch/arm/mach-imx/imx1.c                           |   19 +-
 arch/arm/mach-imx/imx21.c                          |   24 +-
 arch/arm/mach-imx/imx25.c                          |   29 ++-
 arch/arm/mach-imx/imx27.c                          |   27 ++-
 arch/arm/mach-imx/imx31.c                          |   20 +-
 arch/arm/mach-imx/imx35.c                          |   23 +-
 arch/arm/mach-imx/imx51.c                          |   10 +-
 arch/arm/mach-imx/include/mach/devices-imx1.h      |    4 +-
 arch/arm/mach-imx/include/mach/devices-imx21.h     |    8 +-
 arch/arm/mach-imx/include/mach/devices-imx25.h     |   55 ++++-
 arch/arm/mach-imx/include/mach/devices-imx27.h     |   28 +--
 arch/arm/mach-imx/include/mach/devices-imx31.h     |   34 ++-
 arch/arm/mach-imx/include/mach/devices-imx35.h     |   34 ++-
 arch/arm/mach-imx/include/mach/imx1-regs.h         |  131 +++++------
 arch/arm/mach-imx/include/mach/imx21-regs.h        |  173 +++++++++------
 arch/arm/mach-imx/include/mach/imx25-regs.h        |  132 ++++++-----
 arch/arm/mach-imx/include/mach/imx27-regs.h        |  229 ++++++++++++--------
 arch/arm/mach-imx/include/mach/imx31-regs.h        |  217 ++++++++++---------
 arch/arm/mach-imx/include/mach/imx35-regs.h        |  170 ++++++++++-----
 arch/arm/mach-imx/include/mach/weim.h              |   20 ++
 arch/arm/mach-imx/speed-imx25.c                    |   22 +-
 arch/arm/mach-imx/speed-imx31.c                    |    8 +-
 arch/arm/mach-imx/speed-imx35.c                    |   30 +--
 arch/arm/mach-mxs/include/mach/imx23-regs.h        |    7 -
 arch/arm/mach-mxs/include/mach/imx28-regs.h        |    7 -
 55 files changed, 1282 insertions(+), 986 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/weim.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
