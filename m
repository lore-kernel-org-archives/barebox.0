Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9F0W-0001GE-Tf
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 14:23:56 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1W9F0A-0002lZ-0i
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 15:23:26 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1W9F09-0005Rj-Vo
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 15:23:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Jan 2014 15:23:09 +0100
Message-Id: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: i.MX25 devicetree support
To: barebox@lists.infradead.org

This series adds devicetree support for the i.MX25 and
converts the Karo TX25 over to devicetree and multiboard
support.

Sascha
----------------------------------------------------------------
Sascha Hauer (15):
      mci: imx-esdhc: Add i.MX25 compatible entry
      ARM: dts: Add i.MX25 devicetree files
      ARM: dts: i.MX25: Add mmc aliases
      ARM: dts: i.MX25: remove disabled status of usbmisc unit
      ARM: i.MX25: Add missing GPT clock lookups
      ARM: dts: Add i.MX25 Karo TX25 dts
      ARM: dts: i.MX25: Add iram to devicetree
      ARM: dts: Karo TX25: Add pinctrl nodes
      ARM: dts: Karo TX25: Add phy-reset-gpio
      ARM: dts: Karo TX25: add missing nfc properties
      ARM: dts: Karo TX25: add phy supply for fec
      ARM: dts: Karo TX25: add barebox specifics
      ARM: i.MX25: Karo TX25: Switch to devicetree support
      ARM: i.MX: cleanup bootmode selection
      ARM: i.MX: Karo TX25: Switch to multiboard support

 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |  10 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |   4 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |  25 +-
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |   5 +-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   4 +-
 arch/arm/boards/guf-cupid/lowlevel.c               |  21 +-
 arch/arm/boards/guf-neso/lowlevel.c                |  11 +-
 arch/arm/boards/imx21ads/lowlevel_init.S           |   5 +-
 arch/arm/boards/karo-tx25/board.c                  | 132 ++---
 arch/arm/boards/karo-tx25/lowlevel.c               |  23 +-
 arch/arm/boards/pcm037/lowlevel.c                  |  14 +-
 arch/arm/boards/pcm038/lowlevel.c                  |  10 +-
 arch/arm/boards/pcm043/lowlevel.c                  |  25 +-
 arch/arm/boards/phycard-i.MX27/lowlevel.c          |   4 -
 arch/arm/configs/tx25stk5_defconfig                |  35 +-
 arch/arm/dts/Makefile                              |   2 +
 arch/arm/dts/imx25-karo-tx25.dts                   | 143 ++++++
 arch/arm/dts/imx25-pinfunc.h                       | 494 ++++++++++++++++++
 arch/arm/dts/imx25.dtsi                            | 558 +++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |  40 +-
 arch/arm/mach-imx/clk-imx25.c                      |   3 +
 arch/arm/mach-imx/include/mach/imx25-regs.h        |   3 +
 drivers/mci/imx-esdhc.c                            |   2 +
 images/Makefile.imx                                |   5 +
 24 files changed, 1371 insertions(+), 207 deletions(-)
 create mode 100644 arch/arm/dts/imx25-karo-tx25.dts
 create mode 100644 arch/arm/dts/imx25-pinfunc.h
 create mode 100644 arch/arm/dts/imx25.dtsi

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
