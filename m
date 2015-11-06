Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZueA8-000217-Hg
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 10:22:31 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BC5F9A0041E
 for <barebox@lists.infradead.org>; Fri,  6 Nov 2015 11:22:26 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Fri, 6 Nov 2015 11:21:48 +0100
Message-Id: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1994724025400521831=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/10] Rework towards phytec-som-imx6 and new variants
To: barebox@lists.infradead.org

--===============1994724025400521831==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: quoted-printable

Hi,

the patchstack first refactors the phyCARD-i.MX6 and phyFLEX-i.MX6 to a com=
mon
phytec-som-imx6. Then some phyFLEX-i.MX6 variants and the new phyCORE-i.MX6=
 are
added plus some environment updates and one image rename patch.

Mit freundlichen Gr=C3=BC=C3=9Fen / Kind regards,
        Stefan Christ


Christian Hemp (3):
  ARM: phytec-som-imx6: update environment
  ARM: imx6q: Add support for Phytec phyCORE-i.MX6 SOM
  ARM: imx6dl: Add support for Phytec phyCORE-i.MX6 SOM

Stefan Christ (7):
  ARM: imx6: phycard: use numeric suffix in device tree
  boards: Add phytec-som-imx6
  ARM: phytec-som-imx6: set loadaddr to start of DDR memory.
  ARM: pfla02: append suffix 1bank
  ARM: imx6q: pfla02: Add support for 512MiB RAM on one bank
  ARM: imx6dl: pfla02: Add support for 128MB and 256MB RAM
  ARM: imx6q: pfla02: add phyFLEX-i.MX6 DualLite 1GiB on one bank

 arch/arm/boards/Makefile                           |   3 +-
 arch/arm/boards/phytec-phycard-imx6/Makefile       |   3 -
 arch/arm/boards/phytec-phycard-imx6/board.c        |  52 ----
 .../defaultenv-phycard-imx6/boot/nand              |   7 -
 .../defaultenv-phycard-imx6/boot/sd-ext3           |   6 -
 .../defaultenv-phycard-imx6/nv/boot.default        |   1 -
 .../defaultenv-phycard-imx6/nv/hostname            |   1 -
 arch/arm/boards/phytec-phycard-imx6/lowlevel.c     |  69 ------
 arch/arm/boards/phytec-phyflex-imx6/Makefile       |   3 -
 .../defaultenv-phyflex-imx6/boot/sd-ext3           |   6 -
 .../defaultenv-phyflex-imx6/nv/boot.default        |   1 -
 .../defaultenv-phyflex-imx6/nv/hostname            |   1 -
 arch/arm/boards/phytec-som-imx6/Makefile           |   4 +
 .../board.c                                        |  82 ++++---
 .../defaultenv-physom-imx6-mira}/init/automount    |   2 +-
 .../defaultenv-physom-imx6/boot/mmc                |   5 +
 .../defaultenv-physom-imx6}/boot/nand              |   1 -
 .../defaultenv-physom-imx6/boot/spi                |   5 +
 .../defaultenv-physom-imx6}/init/automount         |   0
 .../defaultenv-physom-imx6/init/bootsource         |  15 ++
 .../flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg  |   0
 .../flash-header-phytec-pcaaxl3-1gib.imxcfg        |   0
 .../flash-header-phytec-pcaaxl3-2gib.imxcfg        |   0
 .../flash-header-phytec-pcaaxl3.h                  |   2 +-
 .../flash-header-phytec-pcm058-1gib.imxcfg         |   8 +
 .../phytec-som-imx6/flash-header-phytec-pcm058.h   | 102 ++++++++
 .../flash-header-phytec-pcm058dl-256mb.imxcfg      |   8 +
 .../phytec-som-imx6/flash-header-phytec-pcm058dl.h |  98 ++++++++
 .../flash-header-phytec-pfla02-1gib-1bank.imxcfg   |   0
 .../flash-header-phytec-pfla02-1gib.imxcfg         |   0
 .../flash-header-phytec-pfla02-2gib.imxcfg         |   0
 .../flash-header-phytec-pfla02-4gib.imxcfg         |   0
 .../flash-header-phytec-pfla02-512mb-1bank.imxcfg  |   8 +
 .../flash-header-phytec-pfla02.h                   |   2 +-
 .../flash-header-phytec-pfla02dl-1gib-1bank.imxcfg |   8 +
 .../flash-header-phytec-pfla02dl-1gib.imxcfg       |   0
 .../flash-header-phytec-pfla02dl.h                 |   2 +-
 .../flash-header-phytec-pfla02s-128mb-1bank.imxcfg |   8 +
 .../flash-header-phytec-pfla02s-256mb-1bank.imxcfg |   8 +
 ...flash-header-phytec-pfla02s-512mb-1bank.imxcfg} |   0
 .../lowlevel.c                                     |  30 ++-
 arch/arm/configs/imx=5Fv7=5Fdefconfig                  |   3 +-
 arch/arm/dts/Makefile                              |  11 +-
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts    |  61 +++++
 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi             |   2 +-
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts     |  50 ++++
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts     |  72 ++++++
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi       | 266 +++++++++++++++++=
++++
 arch/arm/mach-imx/Kconfig                          |  11 +-
 images/Makefile.imx                                | 109 ++++++---
 50 files changed, 892 insertions(+), 244 deletions(-)
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/Makefile
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/board.c
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-=
imx6/boot/nand
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-=
imx6/boot/sd-ext3
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-=
imx6/nv/boot.default
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-=
imx6/nv/hostname
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/lowlevel.c
 delete mode 100644 arch/arm/boards/phytec-phyflex-imx6/Makefile
 delete mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-=
imx6/boot/sd-ext3
 delete mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-=
imx6/nv/boot.default
 delete mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-=
imx6/nv/hostname
 create mode 100644 arch/arm/boards/phytec-som-imx6/Makefile
 rename arch/arm/boards/{phytec-phyflex-imx6 =3D> phytec-som-imx6}/board.c =
(61%)
 rename arch/arm/boards/{phytec-phyflex-imx6/defaultenv-phyflex-imx6 =3D> p=
hytec-som-imx6/defaultenv-physom-imx6-mira}/init/automount (73%)
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/=
boot/mmc
 rename arch/arm/boards/{phytec-phyflex-imx6/defaultenv-phyflex-imx6 =3D> p=
hytec-som-imx6/defaultenv-physom-imx6}/boot/nand (93%)
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/=
boot/spi
 rename arch/arm/boards/{phytec-phycard-imx6/defaultenv-phycard-imx6 =3D> p=
hytec-som-imx6/defaultenv-physom-imx6}/init/automount (100%)
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/=
init/bootsource
 rename arch/arm/boards/{phytec-phycard-imx6 =3D> phytec-som-imx6}/flash-he=
ader-phytec-pcaaxl3-1gib-1bank.imxcfg (100%)
 rename arch/arm/boards/{phytec-phycard-imx6 =3D> phytec-som-imx6}/flash-he=
ader-phytec-pcaaxl3-1gib.imxcfg (100%)
 rename arch/arm/boards/{phytec-phycard-imx6 =3D> phytec-som-imx6}/flash-he=
ader-phytec-pcaaxl3-2gib.imxcfg (100%)
 rename arch/arm/boards/{phytec-phycard-imx6 =3D> phytec-som-imx6}/flash-he=
ader-phytec-pcaaxl3.h (99%)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm=
058-1gib.imxcfg
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm=
058.h
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm=
058dl-256mb.imxcfg
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm=
058dl.h
 rename arch/arm/boards/{phytec-phyflex-imx6 =3D> phytec-som-imx6}/flash-he=
ader-phytec-pfla02-1gib-1bank.imxcfg (100%)
 rename arch/arm/boards/{phytec-phyflex-imx6 =3D> phytec-som-imx6}/flash-he=
ader-phytec-pfla02-1gib.imxcfg (100%)
 rename arch/arm/boards/{phytec-phyflex-imx6 =3D> phytec-som-imx6}/flash-he=
ader-phytec-pfla02-2gib.imxcfg (100%)
 rename arch/arm/boards/{phytec-phyflex-imx6 =3D> phytec-som-imx6}/flash-he=
ader-phytec-pfla02-4gib.imxcfg (100%)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfl=
a02-512mb-1bank.imxcfg
 rename arch/arm/boards/{phytec-phyflex-imx6 =3D> phytec-som-imx6}/flash-he=
ader-phytec-pfla02.h (99%)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfl=
a02dl-1gib-1bank.imxcfg
 rename arch/arm/boards/{phytec-phyflex-imx6 =3D> phytec-som-imx6}/flash-he=
ader-phytec-pfla02dl-1gib.imxcfg (100%)
 rename arch/arm/boards/{phytec-phyflex-imx6 =3D> phytec-som-imx6}/flash-he=
ader-phytec-pfla02dl.h (99%)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfl=
a02s-128mb-1bank.imxcfg
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfl=
a02s-256mb-1bank.imxcfg
 rename arch/arm/boards/{phytec-phyflex-imx6/flash-header-phytec-pfla02s-51=
2mb.imxcfg =3D> phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imx=
cfg} (100%)
 rename arch/arm/boards/{phytec-phyflex-imx6 =3D> phytec-som-imx6}/lowlevel=
.c (56%)
 create mode 100644 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
 create mode 100644 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
 create mode 100644 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
 create mode 100644 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi

--=20
1.9.1



--===============1994724025400521831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1994724025400521831==--
