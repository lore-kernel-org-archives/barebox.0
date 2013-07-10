Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwu0a-0003u9-V6
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 13:00:39 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Uwu0F-0006Ad-06
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 15:00:15 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Uwu0D-0003MQ-Rq
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 15:00:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 15:00:09 +0200
Message-Id: <1373461212-19036-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] TQ tqma6x board support
To: barebox@lists.infradead.org

This adds board support for the i.MX6s/q based tqma6x. The module
comes in a i.MX6q and a i.MX6s variant, but both fit onto the same
MBa6x baseboard. The different dtsi files needed for the different
SoC variants make the devicetree files a bit complicated. Anyway,
the multiimage support makes it at least possible to generate both
images for the two SoCs from the same config.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      ARM: dts: Add i.MX6dl dtsi and pinfunc file
      ARM: dts: Add more pinctrl groups for i.MX6q
      ARM: i.MX6: TQ tqma6x initial board support

 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/tqma6x/Makefile                    |    5 +
 arch/arm/boards/tqma6x/board.c                     |  154 +++
 arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg |   99 ++
 arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg  |  104 ++
 arch/arm/boards/tqma6x/lowlevel.c                  |   88 ++
 arch/arm/configs/imx_v7_defconfig                  |    1 +
 arch/arm/dts/Makefile                              |    5 +-
 arch/arm/dts/imx6dl-mba6x.dts                      |   67 ++
 arch/arm/dts/imx6dl-pinfunc.h                      | 1085 ++++++++++++++++++++
 arch/arm/dts/imx6dl-tqma6s.dtsi                    |   99 ++
 arch/arm/dts/imx6dl.dtsi                           |  438 ++++++++
 arch/arm/dts/imx6q-mba6x.dts                       |   71 ++
 arch/arm/dts/imx6q-tqma6q.dtsi                     |  132 +++
 arch/arm/dts/imx6q-tqma6x.dts                      |  320 ++++++
 arch/arm/dts/imx6q.dtsi                            |   47 +
 arch/arm/dts/imx6qdl-mba6x.dtsi                    |  190 ++++
 arch/arm/dts/imx6qdl-tqma6x.dtsi                   |  162 +++
 arch/arm/mach-imx/Kconfig                          |    5 +
 images/Makefile.imx                                |   12 +
 20 files changed, 3084 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/tqma6x/Makefile
 create mode 100644 arch/arm/boards/tqma6x/board.c
 create mode 100644 arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg
 create mode 100644 arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg
 create mode 100644 arch/arm/boards/tqma6x/lowlevel.c
 create mode 100644 arch/arm/dts/imx6dl-mba6x.dts
 create mode 100644 arch/arm/dts/imx6dl-pinfunc.h
 create mode 100644 arch/arm/dts/imx6dl-tqma6s.dtsi
 create mode 100644 arch/arm/dts/imx6dl.dtsi
 create mode 100644 arch/arm/dts/imx6q-mba6x.dts
 create mode 100644 arch/arm/dts/imx6q-tqma6q.dtsi
 create mode 100644 arch/arm/dts/imx6q-tqma6x.dts
 create mode 100644 arch/arm/dts/imx6qdl-mba6x.dtsi
 create mode 100644 arch/arm/dts/imx6qdl-tqma6x.dtsi

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
