Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAaM-000170-D5
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:27 +0000
Received: by mail-wi0-f169.google.com with SMTP id hi2so4840808wib.0
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:11:04 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:51 +0200
Message-Id: <1403554262-12777-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 00/11] Convert MVEBU SoCs to DT and PBL_MULTI_IMAGE
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This patch set converts Kirkwood and Armada 370/XP to DT and provides
PBL_MULTI_IMAGE support as we already have for Dove.

Patch 1 resorts pbl entries in arch/arm/dts/Makefile back to alphabetical
order.

Patch 2 reworks mvebu pbl image Makefile to ease integration of other SoCs.

Patches 3 and 4 convert Kirkwood and Armada 370/XP SoC init to DT probing.

Patches 5-9 convert existing Kirkwood and Armada 370/XP boards to
PBL_MULTI_IMAGES.

Patch 10 then reworks MVEBU related Kconfig to allow multiple board selection
per-SoC.

Patch 11 removes now redundant dtb Makefile targets.

The patches are based on today's next with previously sent cleanup patches
applied. They have been tested on Guruplug (Kirkwood) and Mirabox (Armada 370).

A branch based on *unstable* next with cleanup applied is available at:
https://github.com/shesselba/barebox-dove.git mvebu/soc

Sebastian Hesselbarth (11):
  ARM: dts: sort pbl entries by alphabet
  ARM: mvebu: sort pbl image target by board
  ARM: mvebu: convert Kirkwood devices to be probed from DT
  ARM: mvebu: convert Armada 370/XP devices to be probed from DT
  ARM: mvebu: convert Globalscale Guruplug to PBL_MULTI_IMAGES
  ARM: mvebu: convert USI Topkick to PBL_MULTI_IMAGES
  ARM: mvebu: convert Globalscale Mirabox to PBL_MULTI_IMAGES
  ARM: mvebu: convert Marvell Armada XP GP to PBL_MULTI_IMAGES
  ARM: mvebu: convert PlatHome Openblocks AX3-4 to PBL_MULTI_IMAGES
  ARM: mvebu: convert to multiple board selection
  ARM: mvebu: remove dtb Makefile entries

 arch/arm/Kconfig                                   |  1 +
 arch/arm/Makefile                                  |  6 --
 arch/arm/boards/Makefile                           |  6 ++
 arch/arm/boards/globalscale-guruplug/Makefile      |  1 +
 arch/arm/boards/globalscale-guruplug/lowlevel.c    | 35 +++++++++++
 arch/arm/boards/globalscale-mirabox/Makefile       |  1 +
 arch/arm/boards/globalscale-mirabox/kwbimage.cfg   |  2 +-
 arch/arm/boards/globalscale-mirabox/lowlevel.c     | 35 +++++++++++
 arch/arm/boards/marvell-armada-xp-gp/Makefile      |  1 +
 arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg  |  2 +-
 arch/arm/boards/marvell-armada-xp-gp/lowlevel.c    | 34 ++++++++++
 arch/arm/boards/plathome-openblocks-ax3/Makefile   |  1 +
 .../boards/plathome-openblocks-ax3/kwbimage.cfg    |  2 +-
 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c | 35 +++++++++++
 arch/arm/boards/usi-topkick/Makefile               |  1 +
 arch/arm/boards/usi-topkick/lowlevel.c             | 34 ++++++++++
 arch/arm/dts/Makefile                              | 32 +++++-----
 arch/arm/dts/armada-370-mirabox-bb.dts             | 25 ++++++++
 arch/arm/dts/armada-xp-gp-bb.dts                   | 12 ++++
 arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts     | 26 ++++++++
 arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts  | 14 +++++
 arch/arm/dts/kirkwood-topkick-bb.dts               | 14 +++++
 arch/arm/mach-mvebu/Kconfig                        | 21 -------
 arch/arm/mach-mvebu/armada-370-xp.c                | 66 +-------------------
 arch/arm/mach-mvebu/kirkwood.c                     | 46 --------------
 images/Makefile.mvebu                              | 72 +++++++++++++++++++---
 26 files changed, 363 insertions(+), 162 deletions(-)
 create mode 100644 arch/arm/boards/globalscale-guruplug/lowlevel.c
 create mode 100644 arch/arm/boards/globalscale-mirabox/lowlevel.c
 create mode 100644 arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
 create mode 100644 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
 create mode 100644 arch/arm/boards/usi-topkick/lowlevel.c
 create mode 100644 arch/arm/dts/armada-370-mirabox-bb.dts
 create mode 100644 arch/arm/dts/armada-xp-gp-bb.dts
 create mode 100644 arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
 create mode 100644 arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts
 create mode 100644 arch/arm/dts/kirkwood-topkick-bb.dts

---
Cc: barebox@lists.infradead.org
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
