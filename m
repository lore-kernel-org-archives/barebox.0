Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlZ-0004g0-58
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:54:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:04 +0200
Message-Id: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] convert MXS to common clk
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

The following series converts the MXS subarchitecture to the common clk
stuff. Tested on i.MX28, but not yet on i.MX23.

Sascha

The following changes since commit 7c3603a199873319cbff82fe07a887ccf3452b9b:

  partitions: dos: fix memory leak in nt disk signature (2013-06-19 22:59:55 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git pu/mxs-clk

for you to fetch changes up to 76eedb251df34bbd18c326984722f5cdfde3e730:

  ARM: MXS: remove old clock support (2013-06-20 08:49:57 +0200)

----------------------------------------------------------------
Sascha Hauer (17):
      clk: divider: Add onebased divider support
      clk: gate: Add inverted gate support
      clk: add prototype for clk_is_enabled
      ARM: MXS: Add MXS specific clk types
      ARM: MXS: add clk drivers
      ARM: MXS: remove board specific clock setups
      mci: mxs: Use dev_*
      net: fec: Use clk API unconditionally
      mci: mxs: use common clk API
      mtd: gpmi-nand: switch to clk support
      serial: auart: Use clk support
      serial: stm: Use clk support
      spi: mxs: Use clk support
      ARM: MXS: octotp: switch to clk support
      ARM: MXS: remove imx_enable_enetclk
      video: stm: switch to clk support
      ARM: MXS: remove old clock support

 arch/arm/Kconfig                                   |   2 +
 arch/arm/boards/chumby_falconwing/falconwing.c     |   3 -
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |   5 -
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |   3 -
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |   9 -
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |   6 -
 arch/arm/boards/karo-tx28/tx28-stk5.c              |   6 -
 arch/arm/mach-mxs/Makefile                         |   5 +-
 arch/arm/mach-mxs/imx.c                            |  16 -
 arch/arm/mach-mxs/imx_lcd_clk.c                    | 150 -------
 arch/arm/mach-mxs/include/mach/clock-imx23.h       |  30 --
 arch/arm/mach-mxs/include/mach/clock-imx28.h       |  33 --
 arch/arm/mach-mxs/include/mach/clock.h             |   7 -
 arch/arm/mach-mxs/ocotp.c                          |  13 +-
 arch/arm/mach-mxs/soc-imx23.c                      |   9 +
 arch/arm/mach-mxs/soc-imx28.c                      |   9 +
 arch/arm/mach-mxs/speed-imx23.c                    | 315 ---------------
 arch/arm/mach-mxs/speed-imx28.c                    | 432 ---------------------
 drivers/clk/Makefile                               |   2 +
 drivers/clk/clk-divider.c                          |  44 ++-
 drivers/clk/clk-gate.c                             |  37 +-
 drivers/clk/clk.c                                  |   2 +-
 drivers/clk/mxs/Makefile                           |   5 +
 drivers/clk/mxs/clk-div.c                          | 112 ++++++
 drivers/clk/mxs/clk-frac.c                         | 136 +++++++
 drivers/clk/mxs/clk-imx23.c                        | 156 ++++++++
 drivers/clk/mxs/clk-imx28.c                        | 195 ++++++++++
 drivers/clk/mxs/clk-lcdif.c                        |  75 ++++
 drivers/clk/mxs/clk-pll.c                          | 117 ++++++
 drivers/clk/mxs/clk-ref.c                          | 152 ++++++++
 drivers/clk/mxs/clk.h                              |  52 +++
 drivers/mci/mxs.c                                  |  93 ++---
 drivers/mtd/nand/nand_mxs.c                        |  11 +-
 drivers/net/fec_imx.c                              |  31 +-
 drivers/serial/serial_auart.c                      |   8 +-
 drivers/serial/stm-serial.c                        |   8 +-
 drivers/spi/mxs_spi.c                              |   6 +-
 drivers/video/stm.c                                |   9 +-
 include/linux/clk.h                                |  18 +
 39 files changed, 1198 insertions(+), 1124 deletions(-)
 delete mode 100644 arch/arm/mach-mxs/imx_lcd_clk.c
 delete mode 100644 arch/arm/mach-mxs/include/mach/clock-imx23.h
 delete mode 100644 arch/arm/mach-mxs/include/mach/clock-imx28.h
 delete mode 100644 arch/arm/mach-mxs/speed-imx23.c
 delete mode 100644 arch/arm/mach-mxs/speed-imx28.c
 create mode 100644 drivers/clk/mxs/Makefile
 create mode 100644 drivers/clk/mxs/clk-div.c
 create mode 100644 drivers/clk/mxs/clk-frac.c
 create mode 100644 drivers/clk/mxs/clk-imx23.c
 create mode 100644 drivers/clk/mxs/clk-imx28.c
 create mode 100644 drivers/clk/mxs/clk-lcdif.c
 create mode 100644 drivers/clk/mxs/clk-pll.c
 create mode 100644 drivers/clk/mxs/clk-ref.c
 create mode 100644 drivers/clk/mxs/clk.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
