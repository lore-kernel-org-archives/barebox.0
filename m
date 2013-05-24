Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ufla6-0006ZQ-OZ
 for barebox@lists.infradead.org; Fri, 24 May 2013 06:34:29 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UflZj-0004Ev-L9
 for barebox@lists.infradead.org; Fri, 24 May 2013 08:34:03 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UflZj-0006L7-K5
 for barebox@lists.infradead.org; Fri, 24 May 2013 08:34:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 May 2013 08:33:59 +0200
Message-Id: <1369377242-23493-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] imx-image support
To: barebox@lists.infradead.org


This series adds a imx-image and a imx-usb-loader tool. The imx-image
tool can be used to generate the i.MX images for the internal boot mode.
Advantage over generating them with gcc/ld is that we can use the more
advanced features of the image format, like the register polling
functions. Also I think the process is easier to understand.

The second tool is a USB upload tool for i.MX SoCs. It's based on work
by Eric Nelson, but heavily updated. This tool can directly upload and
execute the imx-images. It is known to work on i.MX35,51,53,6.

Last not least the babbage board is converted to use the imx-image
tool as an example how to use this stuff.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      ARM: Makefile: Make sure to clean boarddirs
      scripts: Add imx-usb-loader tool
      ARM: i.MX51 babbage: switch to imx-image

 arch/arm/Makefile                                  |  201 +--
 arch/arm/boards/freescale-mx51-pdk/Makefile        |    4 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |    7 +-
 arch/arm/boards/freescale-mx51-pdk/dcd-data.h      |   60 -
 .../boards/freescale-mx51-pdk/flash-header.imxcfg  |   59 +
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |   29 -
 arch/arm/mach-imx/Kconfig                          |   22 +
 scripts/Makefile                                   |    1 +
 scripts/Makefile.lib                               |   25 +
 scripts/imx/.gitignore                             |    2 +
 scripts/imx/Makefile                               |   10 +
 scripts/imx/README                                 |   89 ++
 scripts/imx/imx-image.c                            |  742 ++++++++++
 scripts/imx/imx-usb-loader.c                       | 1427 ++++++++++++++++++++
 14 files changed, 2488 insertions(+), 190 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/dcd-data.h
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/flash_header.c
 create mode 100644 scripts/imx/.gitignore
 create mode 100644 scripts/imx/Makefile
 create mode 100644 scripts/imx/README
 create mode 100644 scripts/imx/imx-image.c
 create mode 100644 scripts/imx/imx-usb-loader.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
