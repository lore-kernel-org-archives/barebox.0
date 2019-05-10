Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyua-0008Og-T6
 for barebox@lists.infradead.org; Fri, 10 May 2019 06:21:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 May 2019 08:21:21 +0200
Message-Id: <20190510062135.11534-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/14] More Layerscape patches
To: Barebox List <barebox@lists.infradead.org>

This contains some more features for the Layerscape support, like
boot source detection and QSPI booting support. TQMLS1046a board support
is improved a lot.

Sascha

Sascha Hauer (14):
  bbu: In bbu_register_std_file_update detect device before accessing it
  esdhc-xload: invalidate icache before jumping to image
  ARM: Layerscape: ls1046a: Add bootsource detection support
  ARM: Layerscape: pblimage: Drop pbl end command
  ARM: Layerscape: Add QSPI boot support
  ARM: Layerscape: ls1046a: Add automatic bootsource detection xload
    function
  ARM: Layerscape: ls1046a: Add bbu handlers
  ARM: Layerscape: TQMLS1046a: configure qspi divider
  ARM: Layerscape: TQMLS1046a: Sync qspi RCW from TQ U-Boot
  ARM: Layerscape: TQMLS1046a: print life signs when debugging
  ARM: Layerscape: TQMLS1046a: unify pbi files
  ARM: Layerscape: TQMLS1046a: Support booting from QSPI
  ARM: Layerscape: TQMLS1046a: Add environment and update handlers
  ARM: Layerscape: Add device tree compatible to image metadata

 arch/arm/boards/ls1046ardb/lowlevel.c         |  3 +
 arch/arm/boards/tqmls1046a/board.c            | 27 +++++++++
 arch/arm/boards/tqmls1046a/lowlevel.c         | 11 +++-
 ...mls1046a_pbi_sd.cfg => tqmls1046a_pbi.cfg} |  2 +
 .../boards/tqmls1046a/tqmls1046a_pbi_qspi.cfg | 33 -----------
 .../tqmls1046a_rcw_qspi_3333_5559.cfg         |  8 +--
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts     | 56 +++++++++++++++++++
 arch/arm/mach-layerscape/Makefile             |  2 +
 arch/arm/mach-layerscape/boot.c               | 39 +++++++++++++
 arch/arm/mach-layerscape/include/mach/bbu.h   | 22 ++++++++
 .../mach-layerscape/include/mach/layerscape.h |  2 +
 arch/arm/mach-layerscape/include/mach/xload.h |  4 ++
 arch/arm/mach-layerscape/xload-qspi.c         | 37 ++++++++++++
 arch/arm/mach-layerscape/xload.c              | 24 ++++++++
 common/bbu.c                                  |  2 +
 drivers/mci/imx-esdhc-pbl.c                   |  3 +
 images/Makefile.layerscape                    | 14 +++--
 scripts/pblimage.c                            | 36 ++++++------
 18 files changed, 262 insertions(+), 63 deletions(-)
 rename arch/arm/boards/tqmls1046a/{tqmls1046a_pbi_sd.cfg => tqmls1046a_pbi.cfg} (94%)
 delete mode 100644 arch/arm/boards/tqmls1046a/tqmls1046a_pbi_qspi.cfg
 create mode 100644 arch/arm/mach-layerscape/boot.c
 create mode 100644 arch/arm/mach-layerscape/include/mach/bbu.h
 create mode 100644 arch/arm/mach-layerscape/xload-qspi.c
 create mode 100644 arch/arm/mach-layerscape/xload.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
