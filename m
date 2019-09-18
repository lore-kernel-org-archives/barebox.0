Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnC-0001qD-KK
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:05 +0200
Message-Id: <20190918075421.20456-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/16] ARM: mxs: full multi image support
To: Barebox List <barebox@lists.infradead.org>

This series makes all i.MX23/28 boards multi image safe and consequently
merges the different board specific config files into a imx23_defconfig
and a imx28_defconfig. Compiling i.MX23 together with i.MX28 is not yet
possible though as distinguishing between both is still done with many
defines.

Sascha

Sascha Hauer (16):
  ARM: start: Allow to pass machine type as boarddata
  ARM: tx28: Pass and check machine type
  ARM: tx28: Make locally used function static
  ARM: duckbill: Check machine type in initcalls
  ARM: Freescale mx28evk: Check machine type in initcalls
  ARM: i.MX23 olinuxino: Check machine type in initcalls
  ARM: Crytalfonts cfa10036: Check machine type in initcalls
  ARM: i.MX23 Chumby: Check machine type in initcalls
  ARM: Freescale i.MX23 evk: Check machine type in initcalls
  ARM: mxs: cfa10036: Switch to multi image support
  ARM: mxs: imx23-evk: Switch to multi image support
  ARM: mxs: chumby: Switch to multi image support
  ARM: mxs: Move HAVE_PBL_MULTI_IMAGES up to ARCH
  ARM: mxs: Allow to compile all boards for a SoC together
  ARM: add common i.MX28 defconfig file
  ARM: add common i.MX23 defconfig file

 arch/arm/Kconfig                              |  1 +
 .../arm/boards/chumby_falconwing/falconwing.c |  7 ++
 arch/arm/boards/chumby_falconwing/lowlevel.c  |  5 +-
 .../boards/crystalfontz-cfa10036/cfa10036.c   |  7 ++
 .../boards/crystalfontz-cfa10036/lowlevel.c   |  5 +-
 arch/arm/boards/duckbill/board.c              |  6 ++
 arch/arm/boards/freescale-mx23-evk/lowlevel.c |  5 +-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c |  7 ++
 arch/arm/boards/freescale-mx28-evk/board.c    |  3 +
 .../boards/imx233-olinuxino/imx23-olinuxino.c |  8 ++
 arch/arm/boards/imx233-olinuxino/lowlevel.c   |  3 +-
 arch/arm/boards/karo-tx28/lowlevel.c          |  3 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c         |  7 +-
 arch/arm/boards/karo-tx28/tx28.c              |  4 +
 arch/arm/configs/cfa10036_defconfig           | 38 --------
 arch/arm/configs/chumbyone_defconfig          | 46 ---------
 arch/arm/configs/freescale-mx23-evk_defconfig | 28 ------
 arch/arm/configs/freescale-mx28-evk_defconfig | 89 ------------------
 ...33-olinuxino_defconfig => imx23_defconfig} | 54 ++++++-----
 .../{duckbill_defconfig => imx28_defconfig}   | 20 ++++
 arch/arm/configs/tx28stk5_defconfig           | 94 -------------------
 arch/arm/cpu/start.c                          | 14 ++-
 arch/arm/mach-mxs/Kconfig                     | 14 ---
 images/Makefile.mxs                           | 12 +++
 24 files changed, 138 insertions(+), 342 deletions(-)
 delete mode 100644 arch/arm/configs/cfa10036_defconfig
 delete mode 100644 arch/arm/configs/chumbyone_defconfig
 delete mode 100644 arch/arm/configs/freescale-mx23-evk_defconfig
 delete mode 100644 arch/arm/configs/freescale-mx28-evk_defconfig
 rename arch/arm/configs/{imx233-olinuxino_defconfig => imx23_defconfig} (72%)
 rename arch/arm/configs/{duckbill_defconfig => imx28_defconfig} (82%)
 delete mode 100644 arch/arm/configs/tx28stk5_defconfig

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
