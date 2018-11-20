Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gP1cw-0004MS-Sf
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 08:43:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Nov 2018 09:40:57 +0100
Message-Id: <20181120084100.8737-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/3] ARM: images: Use piggydata
To: Barebox List <barebox@lists.infradead.org>

This series simplifies the generation of multi PBL images. Instead of
appending the compressed binary to the decompressor we link the
compressed binary directly into the PBL image. This has been done for
the single PBL case forever and unlike what I thought when creating
multi image support this is possible and actually easier with multi
PBL images aswell.

Sascha Hauer (3):
  scripts: imx-image: Add support for max_load_size option
  ARM: i.MX: Add max_load_size option to boards that will need it
  ARM: images: use piggydata

 .../cm-fx6/flash-header-mx6-cm-fx6.imxcfg     |   1 +
 .../flash-header-imx8mq-evk.imxcfg            |   1 +
 .../flash-header-technexion-wandboard.imxcfg  |   1 +
 .../zii-imx6q-rdu2/flash-header-rdu2.imxcfg   |   1 +
 arch/arm/cpu/sections.c                       |   1 -
 arch/arm/cpu/uncompress.c                     |  18 +-
 arch/arm/include/asm/sections.h               |   1 -
 arch/arm/lib/pbl.lds.S                        |   6 +-
 arch/arm/mach-imx/include/mach/imx-header.h   |   1 +
 arch/arm/mach-imx/xload-common.c              |  21 +-
 images/.gitignore                             |   2 -
 images/Makefile                               |  41 +-
 images/Makefile.am33xx                        | 120 ++--
 images/Makefile.at91                          |   8 +-
 images/Makefile.bcm283x                       |   8 +-
 images/Makefile.imx                           | 617 +++++++++---------
 images/Makefile.mvebu                         |  88 +--
 images/Makefile.mxs                           |  20 +-
 images/Makefile.omap3                         |   6 +-
 images/Makefile.rockchip                      |   8 +-
 images/Makefile.socfpga                       |  38 +-
 images/Makefile.tegra                         |  68 +-
 images/Makefile.vexpress                      |   8 +-
 images/piggy.S                                |   6 +
 scripts/imx/imx-image.c                       |  10 +-
 scripts/imx/imx.c                             |  13 +
 26 files changed, 549 insertions(+), 564 deletions(-)
 create mode 100644 images/piggy.S

-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
