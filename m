Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOITm-0005jy-Ko
 for barebox@lists.infradead.org; Wed, 08 May 2019 09:03:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 May 2019 11:02:57 +0200
Message-Id: <20190508090307.17729-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/10] Layerscape patches
To: Barebox List <barebox@lists.infradead.org>

This series contains some Layerscape patches, more specifically for the
TQMLS1046a board.

Sascha Hauer (10):
  mci: imx-esdhc-pbl: ls1046a: Set better divider values
  ARM: Layerscape: TQMLS1046a: Set cpo_sample value
  ddr: fsl: move fsl_ddr_set_memctl_regs prototype to include/
  ARM: Layerscape: TQMLS1046a: Use static DDR settings
  ARM: Layerscape: TQMLS1046a: Update device tree files from tq
    repository
  ARM: Layerscape: TQMLS1046a: Unify SD and eMMC images
  ARM: Layerscape: TQMLS1046a: Fix pinmux setup for i2c4
  filetype: Detect Layerscape PBL images
  net: fsl-fman: Sync rx buffers for device initially
  ARM: Layerscape: defconfig: Enable more features

 arch/arm/boards/tqmls1046a/board.c            |  6 ++
 arch/arm/boards/tqmls1046a/lowlevel.c         | 84 +++++++++++++++----
 .../tqmls1046a_rcw_emmc_3333_5559.cfg         | 84 -------------------
 .../tqmls1046a_rcw_sd_3333_5559.cfg           | 14 ++--
 arch/arm/configs/layerscape_defconfig         |  8 +-
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts     | 67 ++++++++++-----
 arch/arm/dts/fsl-tqmls1046a.dtsi              |  4 +-
 common/filetype.c                             |  4 +
 drivers/ddr/fsl/fsl_ddr.h                     |  2 -
 drivers/mci/imx-esdhc-pbl.c                   |  2 +-
 drivers/net/fsl-fman.c                        |  2 +
 images/Makefile.layerscape                    |  7 +-
 include/filetype.h                            |  1 +
 include/soc/fsl/fsl_ddr_sdram.h               |  1 +
 14 files changed, 145 insertions(+), 141 deletions(-)
 delete mode 100644 arch/arm/boards/tqmls1046a/tqmls1046a_rcw_emmc_3333_5559.cfg

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
