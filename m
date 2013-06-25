Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrPRA-0000Hy-0E
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 09:21:35 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UrPQj-0006H0-18
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 11:20:53 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UrPQi-0001bh-Vz
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 11:20:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Jun 2013 11:20:40 +0200
Message-Id: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] barebox multi image support
To: barebox@lists.infradead.org

This series adds support for generating multiple images from a single
barebox binary. This helps when for example boards come with different
SDRAM setups. Instead of having a config for each SDRAM setup we only
have a single configuration, but generate multiple images from it.

The basic idea behind this is using a PBL. As of now the PBL on ARM
has a single entrypoint: barebox_arm_entry. With multi image support
instead we have many entrypoints in the PBL. The correct one will
be chosen by the linker when generating a particular image. The PBLs
can also contain a devicetree which is passed to the regular barebox
image. This opens up the way to a true multi board barebox.

Additionally each PBL/barebox combination can be encapsulated into a
SoC specific image so that the different requirements for the boards
booting a image can be met.

This series adds the make infrastructure and converts a few boards
over to use it.

Sascha

----------------------------------------------------------------
Sascha Hauer (12):
      ARM: split barebox_arm_head in two separate functions
      ARM: pbl: move linker script to lib
      ARM: build dtbs unconditionally
      ARM: Add image end section
      imx-image: fix path to imx-image binary
      Add multi images support
      ARM: i.MX: Add multi images support Makefile
      ARM: i.MX27 pcm038: switch to multi image
      ARM: i.MX53 loco: Switch to imximage
      ARM: i.MX53 loco: Switch to multi image support
      ARM: dmo realq7: switch to multi image support
      ARM: i.MX51 babbage: switch to multi image support

 Makefile                                           |   8 ++
 arch/arm/Makefile                                  |   2 +-
 arch/arm/boards/dmo-mx6-realq7/lowlevel.c          |  12 +-
 arch/arm/boards/freescale-mx51-pdk/lowlevel.c      |  14 ++-
 arch/arm/boards/freescale-mx53-loco/Makefile       |   4 +-
 arch/arm/boards/freescale-mx53-loco/board.c        |   8 +-
 arch/arm/boards/freescale-mx53-loco/dcd-data.h     |  54 ---------
 .../boards/freescale-mx53-loco/flash-header.imxcfg |  54 +++++++++
 arch/arm/boards/freescale-mx53-loco/flash_header.c |  52 ---------
 arch/arm/boards/freescale-mx53-loco/lowlevel.c     |  14 ++-
 arch/arm/boards/pcm038/lowlevel.c                  |   4 +-
 arch/arm/cpu/Makefile                              |   4 +-
 arch/arm/cpu/start-images.c                        |  49 ++++++++
 arch/arm/cpu/uncompress.c                          | 108 ++++++++++++++++++
 arch/arm/dts/Makefile                              |   4 +
 arch/arm/include/asm/barebox-arm-head.h            |  14 ++-
 arch/arm/include/asm/barebox-arm.h                 |   4 +
 arch/arm/{pbl/zbarebox.lds.S => lib/pbl.lds.S}     |   9 +-
 arch/arm/lib/runtime-offset.S                      |   3 +
 arch/arm/mach-imx/Kconfig                          |   7 +-
 arch/arm/pbl/Makefile                              |   5 +-
 images/Makefile                                    | 124 +++++++++++++++++++++
 images/Makefile.imx                                |  36 ++++++
 include/asm-generic/sections.h                     |   1 +
 pbl/Kconfig                                        |  16 +++
 scripts/Makefile.lib                               |   2 +-
 26 files changed, 481 insertions(+), 131 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx53-loco/dcd-data.h
 create mode 100644 arch/arm/boards/freescale-mx53-loco/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx53-loco/flash_header.c
 create mode 100644 arch/arm/cpu/start-images.c
 create mode 100644 arch/arm/cpu/uncompress.c
 rename arch/arm/{pbl/zbarebox.lds.S => lib/pbl.lds.S} (93%)
 create mode 100644 images/Makefile
 create mode 100644 images/Makefile.imx

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
