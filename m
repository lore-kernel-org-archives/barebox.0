Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyQ4o-00086E-55
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 19:04:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 20:03:23 +0100
Message-Id: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: MXS initialization support
To: barebox@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>

The following adds initialization support for Freescale MXS SoCs.
With this the imfamous Freescale Bootlets can finally be replaced.
The initialization code is based on the corresponding U-Boot code,
thank you Marek for making this possible.

Sascha

----------------------------------------------------------------
Sascha Hauer (13):
      scripts: add mxsimage tool
      scripts: Add mxsboot tool
      scripts: Add mxs-usb-loader tool
      drivers: remove unnecessary mach/imx-regs.h include
      ARM: MXS: remove unnecessary mach/imx-regs.h include
      ARM: Add U-Boot specific io functions
      ARM: mxs: Add lowlevel setup from U-Boot
      ARM: Add get_sp() and get_lr() functions
      ARM: MXS: Add more base address defines
      ARM: MXS: Enable iomux support for pbl
      ARM: MXS: Add multiimage support
      ARM: MXS: Update Karo TX28 board support
      Documentation: Add documentation for booting Freescale MXS SoCs

 Documentation/boards/mxs.rst                       |  119 +
 Documentation/boards/mxs/KaRo-TX28.rst             |   19 +-
 arch/arm/boards/karo-tx28/env/config               |   41 -
 arch/arm/boards/karo-tx28/lowlevel.c               |   58 +-
 arch/arm/configs/tx28stk5_defconfig                |   84 +-
 arch/arm/include/asm/common.h                      |   26 +
 arch/arm/include/asm/io.h                          |   57 +
 arch/arm/mach-mxs/Kconfig                          |    9 +
 arch/arm/mach-mxs/Makefile                         |    2 +
 arch/arm/mach-mxs/clocksource-imx23.c              |    2 +-
 arch/arm/mach-mxs/clocksource-imx28.c              |    2 +-
 arch/arm/mach-mxs/include/mach/imx23-regs.h        |    3 +
 arch/arm/mach-mxs/include/mach/imx28-regs.h        |    3 +
 arch/arm/mach-mxs/include/mach/init.h              |   30 +
 arch/arm/mach-mxs/include/mach/regs-clkctrl-mx23.h |  208 ++
 arch/arm/mach-mxs/include/mach/regs-clkctrl-mx28.h |  283 +++
 arch/arm/mach-mxs/include/mach/regs-common.h       |   69 +
 arch/arm/mach-mxs/include/mach/regs-lradc.h        |  387 +++
 arch/arm/mach-mxs/include/mach/regs-power-mx28.h   |  408 ++++
 arch/arm/mach-mxs/include/mach/regs-rtc.h          |  134 +
 arch/arm/mach-mxs/lradc-init.c                     |   70 +
 arch/arm/mach-mxs/mem-init.c                       |  292 +++
 arch/arm/mach-mxs/ocotp.c                          |    1 -
 arch/arm/mach-mxs/power-init.c                     | 1274 ++++++++++
 arch/arm/mach-mxs/soc-imx23.c                      |    2 +-
 arch/arm/mach-mxs/soc-imx28.c                      |    2 +-
 arch/arm/mach-mxs/usb-imx23.c                      |    2 +-
 arch/arm/mach-mxs/usb-imx28.c                      |    2 +-
 drivers/clk/mxs/clk-imx23.c                        |    2 +-
 drivers/clk/mxs/clk-imx28.c                        |    2 +-
 drivers/mci/mxs.c                                  |    1 -
 drivers/serial/serial_auart.c                      |    1 -
 drivers/serial/stm-serial.c                        |    1 -
 drivers/spi/mxs_spi.c                              |    1 -
 drivers/video/stm.c                                |    1 -
 images/.gitignore                                  |    2 +
 images/Makefile                                    |    3 +-
 images/Makefile.mxs                                |   38 +
 scripts/.gitignore                                 |    1 +
 scripts/Makefile                                   |    5 +
 scripts/mxs-usb-loader.c                           |  236 ++
 scripts/mxsimage.c                                 | 2561 ++++++++++++++++++++
 42 files changed, 6346 insertions(+), 98 deletions(-)
 create mode 100644 Documentation/boards/mxs.rst
 delete mode 100644 arch/arm/boards/karo-tx28/env/config
 create mode 100644 arch/arm/mach-mxs/include/mach/init.h
 create mode 100644 arch/arm/mach-mxs/include/mach/regs-clkctrl-mx23.h
 create mode 100644 arch/arm/mach-mxs/include/mach/regs-clkctrl-mx28.h
 create mode 100644 arch/arm/mach-mxs/include/mach/regs-common.h
 create mode 100644 arch/arm/mach-mxs/include/mach/regs-lradc.h
 create mode 100644 arch/arm/mach-mxs/include/mach/regs-power-mx28.h
 create mode 100644 arch/arm/mach-mxs/include/mach/regs-rtc.h
 create mode 100644 arch/arm/mach-mxs/lradc-init.c
 create mode 100644 arch/arm/mach-mxs/mem-init.c
 create mode 100644 arch/arm/mach-mxs/power-init.c
 create mode 100644 images/Makefile.mxs
 create mode 100644 scripts/mxs-usb-loader.c
 create mode 100644 scripts/mxsimage.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
