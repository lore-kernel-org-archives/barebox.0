Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVijP-0001PY-T7
 for barebox@lists.infradead.org; Wed, 20 Jun 2018 19:25:29 +0000
Received: by mail-pl0-x244.google.com with SMTP id w17-v6so299840pll.9
 for <barebox@lists.infradead.org>; Wed, 20 Jun 2018 12:25:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 20 Jun 2018 12:24:26 -0700
Message-Id: <20180620192430.16689-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 0/4] ZII RDU1 support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This is a patchset containing the code to add initial support for ZII
RDU1 board to Barebox.

Changes since [v1]:

  - Removed usage of compatible property for PMIC initialization

  - Less invasive (IMHO), way of dealing with dataflash BBU quirks is proposed

  - Missing newline in board.c

[v1] http://lists.infradead.org/pipermail/barebox/2018-June/033764.html
     http://lists.infradead.org/pipermail/barebox/2018-June/033765.html

Andrey Smirnov (4):
  ARM: babbage: Make PMIC initialization shareable
  bbu: Make bbu_find_handler_by_device() public
  ARM: i.MX: bbu: Make imx_bbu_internal_v1_update() public
  ARM: i.MX: Add support for ZII RDU1 board

 arch/arm/boards/Makefile                      |   3 +-
 .../boards/freescale-mx51-babbage/Makefile    |   5 +-
 .../arm/boards/freescale-mx51-babbage/board.c | 112 +---------------
 .../arm/boards/freescale-mx51-babbage/power.c | 120 ++++++++++++++++++
 arch/arm/boards/zii-imx51-rdu1/Makefile       |   2 +
 arch/arm/boards/zii-imx51-rdu1/board.c        | 100 +++++++++++++++
 .../flash-header-imx51-zii-rdu1.imxcfg        |  60 +++++++++
 arch/arm/boards/zii-imx51-rdu1/lowlevel.c     |  46 +++++++
 arch/arm/configs/imx_v7_defconfig             |   1 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx51-zii-rdu1.dts               |  46 +++++++
 arch/arm/mach-imx/Kconfig                     |  18 ++-
 arch/arm/mach-imx/imx-bbu-internal.c          |   2 +-
 arch/arm/mach-imx/include/mach/bbu.h          |   8 ++
 arch/arm/mach-imx/include/mach/imx5.h         |   2 +
 common/bbu.c                                  |   2 +-
 images/Makefile.imx                           |   5 +
 include/bbu.h                                 |   2 +
 18 files changed, 417 insertions(+), 118 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx51-babbage/power.c
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/Makefile
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/board.c
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/lowlevel.c
 create mode 100644 arch/arm/dts/imx51-zii-rdu1.dts

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
