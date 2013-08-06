Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6hXi-0006Wk-Kb
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 13:43:19 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1V6hXM-00063o-7e
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 15:42:56 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1V6hXM-0006Dn-6Q
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 15:42:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Aug 2013 15:42:50 +0200
Message-Id: <1375796574-8759-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] DFI FS700-FS60 board support
To: barebox@lists.infradead.org

The DFI FS700-FS60 is a i.MX6 based q7 module. This comes in different
variants with i.MX6 quad, dual or solo processors. This series adds support
for this as part of the i.MX multiimage config.

Also this contains some updates to the i.MX barebox update handlers and
unifies the pinmux defines for i.MX6q/i.MX6dl like done in the kernel.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      ARM: i.MX: bbu-internal: factor out a prereq function
      ARM: i.MX: bbu-internal: optionally use DCD data from image
      ARM: dts: imx: share pad macro names between imx6q and imx6dl
      ARM: i.MX6: Add dfi fs700 m60 i.MX6 Q7 board support

 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/dfi-fs700-m60/Makefile             |    5 +
 arch/arm/boards/dfi-fs700-m60/board.c              |   80 +
 .../dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg |  128 ++
 .../dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg |   63 +
 arch/arm/boards/dfi-fs700-m60/lowlevel.c           |  102 +
 arch/arm/configs/imx_v7_defconfig                  |    1 +
 arch/arm/dts/Makefile                              |    3 +
 arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts           |   23 +
 arch/arm/dts/imx6dl-mba6x.dts                      |   30 +-
 arch/arm/dts/imx6dl-pinfunc.h                      | 2138 ++++++++++----------
 arch/arm/dts/imx6dl-tqma6s.dtsi                    |   84 +-
 arch/arm/dts/imx6dl.dtsi                           |  356 +---
 arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts            |   23 +
 arch/arm/dts/imx6q-dmo-realq7.dts                  |   24 +-
 arch/arm/dts/imx6q-gk802.dts                       |   12 +-
 arch/arm/dts/imx6q-mba6x.dts                       |   28 +-
 arch/arm/dts/imx6q-phytec-pfla02.dtsi              |    8 +-
 arch/arm/dts/imx6q-pinfunc.h                       | 2050 +++++++++----------
 arch/arm/dts/imx6q-sabrelite.dts                   |   16 +-
 arch/arm/dts/imx6q-sabresd.dts                     |   12 +-
 arch/arm/dts/imx6q-tqma6q.dtsi                     |  140 +-
 arch/arm/dts/imx6q-tqma6x.dts                      |   34 +-
 arch/arm/dts/imx6q.dtsi                            |  301 +--
 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi            |  115 ++
 arch/arm/dts/imx6qdl.dtsi                          |  303 +++
 arch/arm/mach-imx/Kconfig                          |    5 +
 arch/arm/mach-imx/imx-bbu-internal.c               |  104 +-
 images/Makefile.imx                                |   12 +
 29 files changed, 3225 insertions(+), 2976 deletions(-)
 create mode 100644 arch/arm/boards/dfi-fs700-m60/Makefile
 create mode 100644 arch/arm/boards/dfi-fs700-m60/board.c
 create mode 100644 arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg
 create mode 100644 arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
 create mode 100644 arch/arm/boards/dfi-fs700-m60/lowlevel.c
 create mode 100644 arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts
 create mode 100644 arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts
 create mode 100644 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
