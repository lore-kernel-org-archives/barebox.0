Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avMLh-0001GC-NM
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 10:05:40 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id EABCCA0033E
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 12:05:35 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 27 Apr 2016 12:04:34 +0200
Message-Id: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH for next 00/15] New Phytec i.MX6 Patches
To: barebox@lists.infradead.org

Hi,

a new round of barebox patches for the i.MX6 Phytec boards. New variants, two
fixes for phyBOARD-SUBRA/ALCOR and phyFLEX-i.MX6 and industrial/automotive RAM
calibration values for phyCORE-i.MX6 Solo/DualLite.

These patches are based on the next branch and the current changes in patches

    ARM: i.MX: increase barebox partition sizes
    ARM: dts: Fix partition names

are already integrated.

Kind reagards,
	Stefan Christ


Christian Hemp (1):
  ARM: phytec-som-imx6: add phyCORE-i.MX6 Quad 2GiB RAM

Jan Remmet (1):
  imx6qdl-phytec-pfla02.dtsi: add i2c eeprom

Stefan Christ (13):
  ARM: imx_v7_defconfig: enable NANDTEST command
  ARM: imx_v7_defconfig: add command mmc_extcsd
  ARM: imx6q: add support for phyBOARD-SUBRA-i.MX6 Quad
  ARM: dts: imx6: phyboards: reduce clock speed for usdhc3
  ARM: dts: pfla02: use long enough reset for ethernet phy
  ARM: phytec-som-imx6: add barebox partitions for MMC
  ARM: phytec-som-imx6: add boot device emmc and automount
  ARM: phytec-som-imx6: fix bootsource for phyCORE-i.MX6
  ARM: phytec-som-imx6: add phyCORE-i.MX6 DualLite
  ARM: phytec-som-imx6: update RAM calibration for phycore-imx6dl
  ARM: phytec-som-imx6: rename environment folder
  ARM: phytec-som-imx6: adapt main update handler for eMMC
  ARM: phytec-som-imx6: add NOR for phycore-imx6 emmc

 arch/arm/boards/phytec-som-imx6/Makefile           |  2 +-
 arch/arm/boards/phytec-som-imx6/board.c            | 17 +++--
 .../defaultenv-physom-imx6-mira/init/automount     | 14 -----
 .../defaultenv-physom-imx6-phycore/boot/emmc       |  5 ++
 .../defaultenv-physom-imx6-phycore/init/automount  | 17 +++++
 .../defaultenv-physom-imx6-phycore/init/bootsource | 19 ++++++
 .../flash-header-phytec-pcm058-2gib.imxcfg         |  8 +++
 .../flash-header-phytec-pcm058dl-1gib.imxcfg       |  8 +++
 .../phytec-som-imx6/flash-header-phytec-pcm058dl.h | 24 ++++----
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |  3 +
 arch/arm/configs/imx_v7_defconfig                  |  2 +
 arch/arm/dts/Makefile                              |  4 +-
 arch/arm/dts/imx6dl-phytec-phyboard-subra.dts      | 17 +----
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts    | 72 ++++++++++++++++++++++
 arch/arm/dts/imx6q-phytec-phyboard-alcor.dts       |  1 +
 arch/arm/dts/imx6q-phytec-phyboard-subra.dts       | 20 ++++++
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts     | 21 +++++++
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi            | 13 ++++
 arch/arm/dts/imx6qdl-phytec-phyboard-subra.dtsi    | 30 +++++++++
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi       |  1 +
 images/Makefile.imx                                | 15 +++++
 21 files changed, 265 insertions(+), 48 deletions(-)
 delete mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/boot/emmc
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/bootsource
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
 create mode 100644 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
 create mode 100644 arch/arm/dts/imx6q-phytec-phyboard-subra.dts
 create mode 100644 arch/arm/dts/imx6qdl-phytec-phyboard-subra.dtsi

-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
