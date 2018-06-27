Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x229.google.com ([2607:f8b0:400e:c01::229])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXysx-0000GO-Q5
 for barebox@lists.infradead.org; Wed, 27 Jun 2018 01:04:43 +0000
Received: by mail-pl0-x229.google.com with SMTP id k1-v6so177741plt.2
 for <barebox@lists.infradead.org>; Tue, 26 Jun 2018 18:04:28 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Jun 2018 18:04:02 -0700
Message-Id: <20180627010412.20646-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 00/10] ZII RDU1 support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This is a patchset containing the code to add initial support for ZII
RDU1 board to Barebox.

Changes since [v2]:

  - Even better way (incorporating feedback from Lucas) of dealing
    with dataflash BBU quirks

  - Patches 1 and 2 are technically unrelated, but they were fixes for
    bugs I found while working on v3, so they are thrown in for
    convenience

  - More missing newlines added (hopefully I got them all this time)

Changes since [v1]:

  - Removed usage of compatible property for PMIC initialization

  - Less invasive (IMHO), way of dealing with dataflash BBU quirks is proposed

  - Missing newline in board.c

[v2] http://lists.infradead.org/pipermail/barebox/2018-June/033800.html

[v1] http://lists.infradead.org/pipermail/barebox/2018-June/033764.html
     http://lists.infradead.org/pipermail/barebox/2018-June/033765.html


Andrey Smirnov (10):
  mtd: mtd_dataflash: Don't print bogus command values for READs
  common: clock: Sample time before poller_call()
  ARM: babbage: Make PMIC initialization shareable
  bbu: Make bbu_find_handler_by_device() public
  ARM: i.MX: bbu: Make imx_bbu_internal_v1_update() public
  ARM: i.MX: Move i.MX header definitions to mach-imx
  filtype: Add code to detect i.MX image v1
  ARM: i.MX: bbu: Allow plain i.MX v1 images as a special case
  ARM: i.MX: bbu: Make struct imx_internal_bbu_handler public
  ARM: i.MX: Add support for ZII RDU1 board

 arch/arm/boards/Makefile                      |   3 +-
 .../boards/freescale-mx51-babbage/Makefile    |   5 +-
 .../arm/boards/freescale-mx51-babbage/board.c | 112 +---------------
 .../arm/boards/freescale-mx51-babbage/power.c | 120 ++++++++++++++++++
 arch/arm/boards/zii-imx51-rdu1/Makefile       |   2 +
 arch/arm/boards/zii-imx51-rdu1/board.c        |  94 ++++++++++++++
 .../flash-header-imx51-zii-rdu1.imxcfg        |  60 +++++++++
 arch/arm/boards/zii-imx51-rdu1/lowlevel.c     |  46 +++++++
 arch/arm/configs/imx_v7_defconfig             |   1 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx51-zii-rdu1.dts               |  52 ++++++++
 arch/arm/mach-imx/Kconfig                     |  18 ++-
 arch/arm/mach-imx/imx-bbu-internal.c          |  44 ++++---
 arch/arm/mach-imx/include/mach/bbu.h          |  21 +++
 arch/arm/mach-imx/include/mach/imx-header.h   | 118 +++++++++++++++++
 arch/arm/mach-imx/include/mach/imx5.h         |   2 +
 common/bbu.c                                  |   2 +-
 common/clock.c                                |   4 +-
 common/filetype.c                             |   8 ++
 drivers/mtd/devices/mtd_dataflash.c           |   6 +-
 images/Makefile.imx                           |   5 +
 include/bbu.h                                 |   2 +
 include/filetype.h                            |   1 +
 scripts/imx/imx.h                             | 114 +----------------
 24 files changed, 587 insertions(+), 254 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx51-babbage/power.c
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/Makefile
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/board.c
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/lowlevel.c
 create mode 100644 arch/arm/dts/imx51-zii-rdu1.dts
 create mode 100644 arch/arm/mach-imx/include/mach/imx-header.h

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
