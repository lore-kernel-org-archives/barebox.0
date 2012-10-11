Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMCxm-0008Po-BE
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 07:13:47 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TMCxj-0007CZ-IS
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 09:13:43 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TMCxj-0004gp-HV
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 09:13:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Oct 2012 09:13:28 +0200
Message-Id: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Final i.MX register cleanup
To: barebox@lists.infradead.org

This series finally removes all conflicting defines in the
imx register files so that it's possible to include all of
them. The imx-regs.h file is removed so that all users have
to include the individual SoC files now.

----------------------------------------------------------------
Sascha Hauer (13):
      ARM i.MX: Use SoC specific base to access sdram controller registers
      ARM i.MX nand layout: make multisoc safe
      ARM i.MX31: Cleanup remaining unprefixed registers
      ARM i.MX25: Cleanup remaining unprefixed registers
      ARM i.MX35: Cleanup remaining unprefixed registers
      ARM i.MX external nand boot: Use SoC specific base addresses
      ARM i.MX: remove unused improperly prefixed register defines
      ARM i.MX1: Cleanup remaining unprefixed registers
      ARM i.MX21: Cleanup remaining unprefixed registers
      ARM i.MX27: Cleanup remaining unprefixed registers
      ARM i.MX27: move PCCR gate registers to its only user
      ARM i.MX27: remove duplicate ESDCTL registers
      ARM i.MX: get rid of imx-regs.h

 arch/arm/boards/ccxmx51/ccxmx51.c                  |    2 +-
 arch/arm/boards/ccxmx51/ccxmx51js.c                |    2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    2 +-
 arch/arm/boards/eukrea_cpuimx25/flash_header.c     |    2 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |   28 +--
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    9 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |   77 ++++---
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |   22 +-
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |   40 ++--
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   10 +-
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |    8 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   12 +-
 .../boards/freescale-mx35-3-stack/flash_header.c   |    2 +-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   22 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |    2 +-
 arch/arm/boards/freescale-mx53-loco/board.c        |    2 +-
 arch/arm/boards/freescale-mx53-smd/board.c         |    2 +-
 arch/arm/boards/freescale-mx6-arm2/board.c         |    2 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |    2 +-
 arch/arm/boards/guf-cupid/board.c                  |    8 +-
 arch/arm/boards/guf-cupid/lowlevel.c               |   55 ++---
 arch/arm/boards/guf-neso/board.c                   |    8 +-
 arch/arm/boards/guf-neso/lowlevel.c                |   48 +++--
 arch/arm/boards/guf-neso/pll_init.S                |   39 ++--
 arch/arm/boards/imx21ads/imx21ads.c                |    6 +-
 arch/arm/boards/imx21ads/lowlevel_init.S           |   20 +-
 arch/arm/boards/imx27ads/imx27ads.c                |    2 +-
 arch/arm/boards/imx27ads/lowlevel_init.S           |   30 +--
 arch/arm/boards/karo-tx25/board.c                  |    4 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |   18 +-
 arch/arm/boards/karo-tx51/tx51.c                   |    2 +-
 arch/arm/boards/karo-tx53/board.c                  |    2 +-
 arch/arm/boards/pcm037/lowlevel_init.S             |   65 +++---
 arch/arm/boards/pcm037/pcm037.c                    |    4 +-
 arch/arm/boards/pcm038/lowlevel.c                  |   55 +++--
 arch/arm/boards/pcm038/pcm038.c                    |   17 +-
 arch/arm/boards/pcm038/pcm970.c                    |   25 ++-
 arch/arm/boards/pcm038/pll.h                       |   54 ++---
 arch/arm/boards/pcm043/lowlevel.c                  |   41 ++--
 arch/arm/boards/pcm043/pcm043.c                    |    8 +-
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |   70 +++---
 arch/arm/boards/phycard-i.MX27/pca100.c            |    2 +-
 arch/arm/boards/scb9328/lowlevel_init.S            |   31 +--
 arch/arm/boards/scb9328/scb9328.c                  |    6 +-
 arch/arm/boards/tqma53/board.c                     |    2 +-
 arch/arm/mach-imx/clk-imx27.c                      |   63 ++++++
 arch/arm/mach-imx/clk-imx5.c                       |    3 +-
 arch/arm/mach-imx/clk-pllv2.c                      |    1 -
 arch/arm/mach-imx/clk-pllv3.c                      |    1 -
 arch/arm/mach-imx/clocksource.c                    |    1 -
 arch/arm/mach-imx/external-nand-boot.c             |   36 +++-
 arch/arm/mach-imx/gpio.c                           |    1 -
 arch/arm/mach-imx/imx1.c                           |    2 +-
 arch/arm/mach-imx/imx21.c                          |    2 +-
 arch/arm/mach-imx/imx25.c                          |    8 +-
 arch/arm/mach-imx/imx31.c                          |    2 +-
 arch/arm/mach-imx/imx35.c                          |    8 +-
 arch/arm/mach-imx/imx51.c                          |    2 +-
 arch/arm/mach-imx/imx53.c                          |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx31.h     |    2 +-
 arch/arm/mach-imx/include/mach/esdctl.h            |   10 +-
 arch/arm/mach-imx/include/mach/generic.h           |    4 +
 arch/arm/mach-imx/include/mach/imx-regs.h          |   64 ------
 arch/arm/mach-imx/include/mach/imx1-regs.h         |   40 ++--
 arch/arm/mach-imx/include/mach/imx21-regs.h        |  136 ++++++------
 arch/arm/mach-imx/include/mach/imx25-regs.h        |   77 +++----
 arch/arm/mach-imx/include/mach/imx27-regs.h        |  222 +++++---------------
 arch/arm/mach-imx/include/mach/imx31-regs.h        |  138 +++++-------
 arch/arm/mach-imx/include/mach/imx35-regs.h        |   70 +++---
 arch/arm/mach-imx/include/mach/imx51-regs.h        |    4 -
 arch/arm/mach-imx/include/mach/imx53-regs.h        |    4 -
 arch/arm/mach-imx/include/mach/imx6-regs.h         |    6 -
 arch/arm/mach-imx/iomux-v3.c                       |    1 -
 arch/arm/mach-imx/nand.c                           |   58 ++---
 drivers/mtd/nand/nand_imx.c                        |    1 -
 drivers/net/fec_imx.c                              |    1 -
 drivers/serial/serial_imx.c                        |    1 -
 drivers/video/imx-ipu-fb.c                         |    6 +-
 drivers/video/imx.c                                |    1 -
 81 files changed, 878 insertions(+), 974 deletions(-)
 delete mode 100644 arch/arm/mach-imx/include/mach/imx-regs.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
