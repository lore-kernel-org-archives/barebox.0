Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x243.google.com ([2607:f8b0:400e:c03::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4Qn-0008GI-Hk
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:26 +0000
Received: by mail-pa0-x243.google.com with SMTP id cd13so6761070pac.3
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:37 -0700
Message-Id: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/20] Vybrid support in Barebox
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hello all,

This series adds some level of support for Vybrid family of SoCs in
Barebox. The development of this code was mostly being done on VF610
Tower board with some additional verification and testing on a custom
Vyrid base board (which in its core mimics Tower board).

Here's what I belive is supported with this series (every item assumes
VF610 Tower board as target HW):
      - Booting :-)
      - DEBUG_LL
      - Clock tree
      - Serial
      - I2C
      - SD card

I am sure this is not the final version of the patchset and I'll have
iterate on this code a couple of times. Any feedback on the code is
greatly appreciated.

Thank you,
Andrey Smirnov

Andrey Smirnov (20):
  i.MX: Add primitive functions for VF610 family
  i.MX: Add DEBUG_LL hooks for VF610
  i.MX: scripts: Add "vf610" soc to imx-image
  i.MX: Add support for VF610 Tower board
  i.MX: Add pinctrl driver for VF610
  clk: Port clock dependency resolution code
  clk: Port of_clk_set_defautls()
  i.MX: clk: Port imx_clk_gate2_cgr()
  i.MX: clk: Add IMX_PLLV3_USB_VF610 support
  i.MX: clk: Port imx_check_clocks() and imx_obtain_fixed_clock()
  i.MX: Add VF610 clock tree initialization code
  vf610: Give enet_osc explicit "enet_ext" name
  i.MX: Add 'lpuart' serial driver
  i.MX: i2c-imx: Add Vybrid support
  i.MX: esdhc: Do not rely on CPU type for quirks
  i.MX: Kconfig: Enable OCOTP on Vybrid
  i.MX: ocotp: Remove unused #define
  i.MX: ocotp: Account for shadow memory gaps
  i.MX: ocotp: Add Vybrid support
  imx-esdhc: Request "per" clock explicitly

 arch/arm/boards/Makefile                           |    3 +-
 arch/arm/boards/freescale-vf610-twr/Makefile       |    4 +
 arch/arm/boards/freescale-vf610-twr/board.c        |   61 +
 .../flash-header-vf610-twr.imxcfg                  |  277 +++++
 arch/arm/boards/freescale-vf610-twr/lowlevel.c     |   45 +
 arch/arm/dts/Makefile                              |    1 +
 arch/arm/dts/vf610-twr.dts                         |   18 +
 arch/arm/mach-imx/Kconfig                          |   16 +-
 arch/arm/mach-imx/clk-gate2.c                      |   12 +-
 arch/arm/mach-imx/clk-pllv3.c                      |    9 +-
 arch/arm/mach-imx/clk.h                            |   16 +-
 arch/arm/mach-imx/cpu_init.c                       |    5 +
 arch/arm/mach-imx/imx.c                            |    4 +
 arch/arm/mach-imx/include/mach/clock-vf610.h       |  215 ++++
 arch/arm/mach-imx/include/mach/debug_ll.h          |   27 +-
 arch/arm/mach-imx/include/mach/generic.h           |   13 +
 arch/arm/mach-imx/include/mach/imx_cpu_types.h     |    1 +
 arch/arm/mach-imx/include/mach/iomux-vf610.h       |  258 +++++
 arch/arm/mach-imx/include/mach/vf610-regs.h        |  126 ++
 arch/arm/mach-imx/ocotp.c                          |   51 +-
 common/Kconfig                                     |   10 +-
 drivers/clk/Makefile                               |    3 +-
 drivers/clk/clk-conf.c                             |  144 +++
 drivers/clk/clk.c                                  |   91 +-
 drivers/clk/imx/Makefile                           |    2 +
 drivers/clk/imx/clk-vf610.c                        | 1224 ++++++++++++++++++++
 drivers/clk/imx/clk.c                              |   49 +
 drivers/i2c/busses/i2c-imx.c                       |  215 +++-
 drivers/mci/imx-esdhc.c                            |  123 +-
 drivers/pinctrl/Kconfig                            |    5 +
 drivers/pinctrl/Makefile                           |    1 +
 drivers/pinctrl/pinctrl-vf610.c                    |  118 ++
 drivers/serial/Kconfig                             |    4 +
 drivers/serial/Makefile                            |    1 +
 drivers/serial/serial_lpuart.c                     |  217 ++++
 images/Makefile.imx                                |    5 +
 include/linux/clk/clk-conf.h                       |   22 +
 include/serial/lpuart.h                            |  281 +++++
 scripts/imx/imx.c                                  |    1 +
 39 files changed, 3575 insertions(+), 103 deletions(-)
 create mode 100644 arch/arm/boards/freescale-vf610-twr/Makefile
 create mode 100644 arch/arm/boards/freescale-vf610-twr/board.c
 create mode 100644 arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
 create mode 100644 arch/arm/boards/freescale-vf610-twr/lowlevel.c
 create mode 100644 arch/arm/dts/vf610-twr.dts
 create mode 100644 arch/arm/mach-imx/include/mach/clock-vf610.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-vf610.h
 create mode 100644 arch/arm/mach-imx/include/mach/vf610-regs.h
 create mode 100644 drivers/clk/clk-conf.c
 create mode 100644 drivers/clk/imx/Makefile
 create mode 100644 drivers/clk/imx/clk-vf610.c
 create mode 100644 drivers/clk/imx/clk.c
 create mode 100644 drivers/pinctrl/pinctrl-vf610.c
 create mode 100644 drivers/serial/serial_lpuart.c
 create mode 100644 include/linux/clk/clk-conf.h
 create mode 100644 include/serial/lpuart.h

-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
