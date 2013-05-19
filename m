Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x232.google.com ([2a00:1450:4013:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ue8HV-0005pa-H5
 for barebox@lists.infradead.org; Sun, 19 May 2013 18:24:31 +0000
Received: by mail-ea0-f178.google.com with SMTP id q16so3620425ead.9
 for <barebox@lists.infradead.org>; Sun, 19 May 2013 11:24:05 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 19 May 2013 20:23:44 +0200
Message-Id: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 00/11] arm: mvebu: SoC consolidation
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

After power-up, Marvell EBU SoCs are common enough to justify common
init code. All SoCs start up with internal registers mapped at 0xd0000000
and Linux wants them remapped to 0xf1000000 which gives ~512M contiguous
address space. As internal registers base address is remapped from within
internal registers itself, we do this remap as soon as possible.

This patch set consolidates lowlevel init for all MVEBU SoCs which is
currently performed on every board supported. Also common console UART
is created. Then Dove, Armada 370/XP, and Kirkwood are moved to use
common init functions, and finally all board specific init is removed
to its bare minimum.

The patch set has been tested on CuBox (Dove), Guruplug (Kirkwood),
Mirabox and OpenBlocks AX3 (Armada 370) by either me or Thomas Petazzoni.

Sebastian Hesselbarth (11):
  arm: mvebu: add more visible SoC separators to Kconfig
  arm: mvebu: introduce common lowlevel and early init
  arm: mvebu: introduce common console UART config
  arm: mvebu: convert Dove to common init
  arm: mvebu: convert Armada 370/XP to common init
  arm: mvebu: convert Kirkwood to common init
  arm: mvebu: convert SolidRun CuBox to common init
  arm: mvebu: convert Globalscale Mirabox to common init
  arm: mvebu: convert PlatHome OpenBlocks AX3 to common init
  arm: mvebu: convert Marvell Armada XP GP board to common init
  arm: mvebu: convert Globalscale Guruplug to common init

 arch/arm/boards/globalscale-guruplug/Makefile      |    3 +-
 .../board.c}                                       |   12 +--
 .../globalscale-guruplug/globalscale-guruplug.c    |   26 -----
 arch/arm/boards/globalscale-guruplug/lowlevel.c    |   26 -----
 arch/arm/boards/globalscale-mirabox/Makefile       |    3 +-
 .../lowlevel.c => globalscale-mirabox/board.c}     |   13 +--
 .../globalscale-mirabox/globalscale-mirabox.c      |   26 -----
 arch/arm/boards/marvell-armada-xp-gp/Makefile      |    3 +-
 arch/arm/boards/marvell-armada-xp-gp/board.c       |   17 ++++
 arch/arm/boards/plathome-openblocks-ax3/Makefile   |    3 +-
 arch/arm/boards/plathome-openblocks-ax3/board.c    |   17 ++++
 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c |   25 -----
 arch/arm/boards/solidrun-cubox/Makefile            |    3 +-
 .../lowlevel.c => solidrun-cubox/board.c}          |   14 +--
 arch/arm/mach-mvebu/Kconfig                        |   30 ++++++
 arch/arm/mach-mvebu/Makefile                       |    2 +
 arch/arm/mach-mvebu/armada-370-xp.c                |  103 ++++++++------------
 arch/arm/mach-mvebu/common.c                       |   57 +++++++++++
 arch/arm/mach-mvebu/dove.c                         |   56 ++++-------
 .../mach-mvebu/include/mach/armada-370-xp-regs.h   |   47 +++++++++
 .../include/mach/common.h}                         |   16 ++-
 arch/arm/mach-mvebu/include/mach/debug_ll.h        |   23 +++--
 arch/arm/mach-mvebu/include/mach/dove-regs.h       |   21 ++--
 arch/arm/mach-mvebu/include/mach/kirkwood-regs.h   |   45 ++++++---
 .../include/mach/lowlevel.h}                       |   16 ++-
 arch/arm/mach-mvebu/kirkwood.c                     |   44 ++++-----
 .../globalscale-mirabox => mach-mvebu}/lowlevel.c  |    6 +-
 27 files changed, 335 insertions(+), 322 deletions(-)
 rename arch/arm/boards/{solidrun-cubox/solidrun-cubox.c => globalscale-guruplug/board.c} (67%)
 delete mode 100644 arch/arm/boards/globalscale-guruplug/globalscale-guruplug.c
 delete mode 100644 arch/arm/boards/globalscale-guruplug/lowlevel.c
 rename arch/arm/boards/{solidrun-cubox/lowlevel.c => globalscale-mirabox/board.c} (66%)
 delete mode 100644 arch/arm/boards/globalscale-mirabox/globalscale-mirabox.c
 create mode 100644 arch/arm/boards/marvell-armada-xp-gp/board.c
 create mode 100644 arch/arm/boards/plathome-openblocks-ax3/board.c
 delete mode 100644 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
 rename arch/arm/boards/{marvell-armada-xp-gp/lowlevel.c => solidrun-cubox/board.c} (64%)
 create mode 100644 arch/arm/mach-mvebu/common.c
 create mode 100644 arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
 rename arch/arm/{boards/marvell-armada-xp-gp/marvell-armada-xp-gp.c => mach-mvebu/include/mach/common.h} (65%)
 rename arch/arm/{boards/plathome-openblocks-ax3/plathome-openblocks-ax3.c => mach-mvebu/include/mach/lowlevel.h} (64%)
 rename arch/arm/{boards/globalscale-mirabox => mach-mvebu}/lowlevel.c (80%)
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
