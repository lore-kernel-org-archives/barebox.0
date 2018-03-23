Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ezIIz-0002e2-Ke
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 08:44:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1ezIIk-0006L6-TN
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 09:43:54 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.90_1)
 (envelope-from <mgr@pengutronix.de>) id 1ezIIk-0006r8-KU
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 09:43:54 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 23 Mar 2018 09:43:48 +0100
Message-Id: <20180323084352.20931-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 0/4] i.MX53/TX53: rework to dts, fix and add samsung variant
To: barebox@lists.infradead.org

This series fixes the imx-usb-loader based boot of the revxx30.
It also reworks the whole platform to dts and adds the new
samsung based xx30 platform.

Juergen reworked the interpreter logic description on the way.
Don't know if we should send this seperatly. For now it is
included in this series, as the new samsung based platform
was not tested without.

Juergen Borleis (1):
  i.MX/DCD compiler and interpreter: logic is different

Michael Grzeschik (3):
  i.MX53/TX53: cfg revxx30: don't disable usb clks, so imx-usb-loader
    works
  i.MX53/TX53: rework to dts based boot
  i.MX53/TX53: add new samsung based xx30 variant

 Documentation/boards/imx.rst                       |  57 ++++++
 arch/arm/Makefile                                  |   2 -
 .../element14-warp7/flash-header-mx7-warp.imxcfg   |   4 +-
 .../flash-header-mx7-sabresd.imxcfg                |   4 +-
 .../flash-header-vf610-twr.imxcfg                  |  10 +-
 arch/arm/boards/karo-tx53/board.c                  | 222 +++------------------
 .../flash-header-tx53-revxx30-samsung.imxcfg       | 177 ++++++++++++++++
 .../karo-tx53/flash-header-tx53-revxx30.imxcfg     |  14 +-
 arch/arm/boards/karo-tx53/lowlevel.c               |  61 +++++-
 arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg |  24 +--
 .../karo-tx6x/flash-header-tx6dl-512m.imxcfg       |  14 +-
 .../boards/karo-tx6x/flash-header-tx6q-1g.imxcfg   |  18 +-
 .../boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg  |  18 +-
 .../kindle-mx50/flash-header-kindle-lpddr1.imxcfg  |   6 +-
 .../kindle-mx50/flash-header-kindle-lpddr2.imxcfg  |   6 +-
 .../flash-header-phytec-phycore-imx7.imxcfg        |   4 +-
 .../flash-header-zii-vf610-dev.imxcfg              |  22 +-
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx53-tx53-1011.dts                   |  13 ++
 arch/arm/dts/imx53-tx53-xx30.dts                   |  13 ++
 arch/arm/mach-imx/Kconfig                          |  25 +--
 images/Makefile.imx                                |  15 ++
 scripts/imx/README                                 |  30 +--
 scripts/imx/imx-usb-loader.c                       |  24 +--
 scripts/imx/imx.c                                  |  16 +-
 scripts/imx/imx.h                                  |   8 +-
 27 files changed, 463 insertions(+), 346 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg
 create mode 100644 arch/arm/dts/imx53-tx53-1011.dts
 create mode 100644 arch/arm/dts/imx53-tx53-xx30.dts

-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
