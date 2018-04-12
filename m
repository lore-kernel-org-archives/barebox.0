Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Wgg-0007wl-Ul
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:30:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:30:01 +0200
Message-Id: <20180412073017.6750-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/16] ARM: i.MX: phyCORE/phyFLEX i.MX6 updates
To: Barebox List <barebox@lists.infradead.org>

Some more patches from the Phytec barebox git repository only lacking
the final hit to the send button.

Sascha

Christian Hemp (4):
  ARM: i.MX: phytec-som-imx: Remove kernel and oftree partiton in NAND
  ARM: dts: imx6qdl: phycore: Sync muxing with kernel
  ARM: i.MX: phytec-som-imx6: phycore: Set BUCK mode to SYNC
  ARM: i.MX: phytec-som-imx6: add phyCORE-i.MX6 QuadPlus with 1GiB RAM

Matthias Rabe (3):
  ARM: i.MX: phytec-som-imx: env: automount emmc if available
  ARM: i.MX: phytec-som-imx: env: add boot script for emmc
  ARM: i.MX: phytec-som-imx: env: add android boot options

Stefan Christ (2):
  ARM: i.MX: phytec-som-imx6: add boot device emmc
  ARM: i.MX: phytec-som-imx6: add phyCORE-i.MX6 Solo with 1GiB RAM

Stefan Riedmueller (6):
  ARM: dts: phyCORE-imx6: Add SPINOR env node
  ARM: dts: imx6: phyboard-mira: Add usb support
  ARM: dts: imx6: phyboard-mira: Enable usb host and usb otg port
  ARM: dts: imx6: phyboard-mira: Remove unecessary iomuxc subnode
  ARM: dts: phycore-imx6: Use generic jedec spi nor compatible
  ARM: i.MX: phytec-som-imx6: Change kernel boot image to zImage

michael grassmann (1):
  ARM: i.MX: phyFLEX: Change Ram Timing for i.MX6 DualLite\Solo (400
    MHz)

 arch/arm/boards/phytec-som-imx6/board.c            |  55 ++++-
 .../defaultenv-physom-imx6-phycore/boot/emmc       |   5 +
 .../defaultenv-physom-imx6/boot/emmc               |  10 +
 .../defaultenv-physom-imx6/boot/mmc                |   7 +-
 .../defaultenv-physom-imx6/boot/nand               |  11 +-
 .../defaultenv-physom-imx6/init/automount          |   5 +
 .../flash-header-phytec-pcm058dl-1gib-32bit.imxcfg |   8 +
 .../flash-header-phytec-pcm058qp-1gib.imxcfg       |   8 +
 .../phytec-som-imx6/flash-header-phytec-pcm058qp.h | 112 +++++++++
 .../flash-header-phytec-pfla02dl-1gib-1bank.imxcfg |   2 +-
 .../flash-header-phytec-pfla02dl-1gib.imxcfg       |   2 +-
 .../phytec-som-imx6/flash-header-phytec-pfla02dl.h |   2 +-
 .../flash-header-phytec-pfla02s-128mb-1bank.imxcfg |   2 +-
 .../flash-header-phytec-pfla02s-256mb-1bank.imxcfg |   2 +-
 .../flash-header-phytec-pfla02s-512mb-1bank.imxcfg |   2 +-
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |   2 +
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts    |   8 +
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts    |   8 +
 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi             |  12 +-
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts     |   8 +
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts     |   8 +
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi            |  12 +-
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi       | 252 ++++++++++++---------
 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts    |  69 ++++++
 images/Makefile.imx                                |  10 +
 26 files changed, 488 insertions(+), 135 deletions(-)
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/boot/emmc
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h
 create mode 100644 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts

-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
