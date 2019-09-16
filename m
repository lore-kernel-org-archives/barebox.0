Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lPy-0006w4-L3
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 07:27:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Sep 2019 09:27:15 +0200
Message-Id: <20190916072721.12392-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/6] ARM: Merge single PBL code into multi PBL code
To: Barebox List <barebox@lists.infradead.org>

Hi All,

This series merges the single PBL code into the multi PBL code. Some
preparations are needed, but in the end the single PBL code just
vanishes leaving a simpler startup path. The last patch is a rebased
version of Andreys patch he recently sent.

Sascha

Andrey Smirnov (1):
  ARM: aarch64: Re-implement most of barebox_arm_entry() in assembly

Sascha Hauer (5):
  ARM: remove PBL_FORCE_PIGGYDATA_COPY
  ARM: Compile dtbs for lowlevel code
  ARM: drop bultin DTB
  ARM: Merge single pbl with multi pbl
  ARM: remove now unused PBL code

 Makefile                                      |   2 +-
 arch/arm/Kconfig                              |  14 --
 arch/arm/Makefile                             |   8 -
 arch/arm/boards/canon-a1100/lowlevel.c        |   9 +-
 arch/arm/boards/module-mb7707/lowlevel.c      |   8 +-
 arch/arm/boards/versatile/lowlevel.c          |   9 +-
 arch/arm/boards/virt2real/lowlevel.c          |   8 +-
 arch/arm/configs/canon-a1100_defconfig        |   1 -
 arch/arm/configs/module-mb7707_defconfig      |   1 -
 .../arm/configs/versatilepb_arm1176_defconfig |   2 -
 arch/arm/configs/versatilepb_defconfig        |   2 -
 arch/arm/configs/virt2real_defconfig          |   1 -
 arch/arm/cpu/Makefile                         |   7 +-
 arch/arm/cpu/dtb.c                            |   6 -
 arch/arm/cpu/entry.c                          |  23 ++-
 arch/arm/cpu/entry.h                          |  10 +-
 arch/arm/cpu/entry_ll.S                       |  25 +++
 arch/arm/cpu/entry_ll_64.S                    |  23 +++
 arch/arm/cpu/start-pbl.c                      | 109 ----------
 arch/arm/cpu/uncompress.c                     |  17 +-
 arch/arm/dts/Makefile                         | 195 +++++++++---------
 arch/arm/include/asm/common.h                 |   3 +-
 arch/arm/pbl/.gitignore                       |   9 -
 arch/arm/pbl/Makefile                         |  61 ------
 arch/arm/pbl/piggy.comp_copy.S                |   6 -
 arch/arm/pbl/piggy.gzip.S                     |   6 -
 arch/arm/pbl/piggy.lz4.S                      |   6 -
 arch/arm/pbl/piggy.lzo.S                      |   6 -
 arch/arm/pbl/piggy.xzkern.S                   |   6 -
 images/Makefile                               |   7 +
 pbl/Kconfig                                   |   8 -
 scripts/Makefile.lib                          |   4 +-
 32 files changed, 218 insertions(+), 384 deletions(-)
 create mode 100644 arch/arm/cpu/entry_ll.S
 create mode 100644 arch/arm/cpu/entry_ll_64.S
 delete mode 100644 arch/arm/cpu/start-pbl.c
 delete mode 100644 arch/arm/pbl/.gitignore
 delete mode 100644 arch/arm/pbl/Makefile
 delete mode 100644 arch/arm/pbl/piggy.comp_copy.S
 delete mode 100644 arch/arm/pbl/piggy.gzip.S
 delete mode 100644 arch/arm/pbl/piggy.lz4.S
 delete mode 100644 arch/arm/pbl/piggy.lzo.S
 delete mode 100644 arch/arm/pbl/piggy.xzkern.S

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
