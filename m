Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UejKd-0005MZ-6B
 for barebox@lists.infradead.org; Tue, 21 May 2013 09:58:13 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UejKG-0006um-OD
 for barebox@lists.infradead.org; Tue, 21 May 2013 11:57:48 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UejKG-0002lN-FG
 for barebox@lists.infradead.org; Tue, 21 May 2013 11:57:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 May 2013 11:57:37 +0200
Message-Id: <1369130267-8094-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] move the first i.MX board over to devicetree
To: barebox@lists.infradead.org


It's time to begin switching the first i.MX board over to devicetree.

The following is based on the serveral devicetree related series
I recently sent. It switches the i.MX51 babbage board over to devicetree.

Sascha

----------------------------------------------------------------
Sascha Hauer (10):
      ARM: i.MX: remove unused .mac_addr_base in iim
      ARM: i.MX: iim: Add devicetree probe support
      ARM: i.MX51: Add devicetree files
      ARM: i.MX51: Add IIM devicetree node
      ARM: i.MX51: Fixup fec pads in dts
      ARM: i.MX51: skip devices register when devicetree is present
      ARM: i.MX51 babbage: Add spi-cs-high property to pmic
      ARM: i.MX51 babbage: provide MAC adress in devicetree
      ARM: i.MX51 babbage: Add phy reset gpio to dts
      ARM: i.MX51 babbage: switch to devicetree

 Documentation/devicetree/bindings/README           |   6 +
 .../devicetree/bindings/misc/fsl,imx-iim.txt       |  20 +
 arch/arm/boards/freescale-mx51-pdk/board.c         |  93 ---
 arch/arm/configs/freescale_mx51_babbage_defconfig  |  16 +-
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx51-babbage.dts                     | 307 ++++++++
 arch/arm/dts/imx51-pinfunc.h                       | 773 +++++++++++++++++++++
 arch/arm/dts/imx51.dtsi                            | 719 +++++++++++++++++++
 arch/arm/mach-imx/iim.c                            |  64 +-
 arch/arm/mach-imx/imx25.c                          |   6 +-
 arch/arm/mach-imx/imx51.c                          |   3 +
 arch/arm/mach-imx/include/mach/iim.h               |   4 -
 12 files changed, 1902 insertions(+), 110 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/README
 create mode 100644 Documentation/devicetree/bindings/misc/fsl,imx-iim.txt
 create mode 100644 arch/arm/dts/imx51-babbage.dts
 create mode 100644 arch/arm/dts/imx51-pinfunc.h
 create mode 100644 arch/arm/dts/imx51.dtsi

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
