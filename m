Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4VWe-0005E0-Cy
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 16:15:03 +0000
Received: by mail-pf0-x244.google.com with SMTP id y68so785876pfb.1
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2016 08:14:40 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Nov 2016 08:13:48 -0800
Message-Id: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 00/28] Vybrid support in Barebox
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone,

It took me a bit more than a month, but I finally put together a
second version (for v1 see [1]) of the Vybrid support patchset.

Some highlights of this version:

     - Various code/commit arrangement feedback for v1 is addressed
     - Added commit to move all of the i.MX clock code to drivers/clk
       (Sascha, we'd probably have to coordinate with your i.MX6ul
       patches on this one)
     - I2C commit split in two
     - clock tree is reconciled with Linux code, since having a custom
       version of it proved to be difficult to compare agains Linux's
       implementation
     - GPIO driver (tested on a custom Vybrid board)
     - FEC support (tested on a custom Vybrid board)

Any feedback is, as always, very much appreciated.

Thank you,
Andrey Smirnov

[1] http://lists.infradead.org/pipermail/barebox/2016-October/028225.html

Andrey Smirnov (28):
  i.MX: Add primitive functions for VF610 family
  i.MX: Add register definitions for VF610 SoC
  i.MX: Add DEBUG_LL hooks for VF610
  i.MX: scripts: Add "vf610" soc to imx-image
  i.MX: Add support for VF610 Tower board
  pinctrl: Add provisions to control GPIO pin direction
  i.MX: Add pinctrl driver for VF610
  clk: Port clock dependency resolution code
  clk: Port of_clk_set_defaults()
  i.MX: Move clk code from 'mach-imx' to 'drivers'
  i.MX: clk: Port imx_clk_gate2_cgr()
  i.MX: clk: Add IMX_PLLV3_USB_VF610 support
  i.MX: clk: Port imx_check_clocks()
  i.MX: clk: Port imx_clk_mux_flags from Linux
  i.MX: Add VF610 clock tree initialization code
  vf610: Give enet_osc explicit "enet_ext" name
  i.MX: Add 'lpuart' serial driver
  i.MX: i2c: Use read/write adapter functions
  i.MX: i2c: Add Vybrid support
  i.MX: esdhc: Do not rely on CPU type for quirks
  i.MX: esdhc: Request "per" clock explicitly
  i.MX: Kconfig: Enable OCOTP on Vybrid
  i.MX: ocotp: Remove unused #define
  i.MX: ocotp: Account for shadow memory gaps
  i.MX: ocotp: Add Vybrid support
  i.MX: fec: Enable all clocks specified for FEC
  i.MX: fec: Add support for Vybrid variant
  gpio: Add GPIO driver for Vybrid

 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/freescale-vf610-twr/Makefile       |   3 +
 .../flash-header-vf610-twr.imxcfg                  | 278 +++++++++++
 arch/arm/boards/freescale-vf610-twr/lowlevel.c     |  45 ++
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/vf610-twr.dts                         |  18 +
 arch/arm/mach-imx/Kconfig                          |  16 +-
 arch/arm/mach-imx/Makefile                         |  23 +-
 arch/arm/mach-imx/clk-gate-exclusive.c             | 103 ----
 arch/arm/mach-imx/clk-gate2.c                      | 145 ------
 arch/arm/mach-imx/clk-imx1.c                       | 121 -----
 arch/arm/mach-imx/clk-imx21.c                      | 196 --------
 arch/arm/mach-imx/clk-imx25.c                      | 200 --------
 arch/arm/mach-imx/clk-imx27.c                      | 270 ----------
 arch/arm/mach-imx/clk-imx31.c                      | 146 ------
 arch/arm/mach-imx/clk-imx35.c                      | 219 ---------
 arch/arm/mach-imx/clk-imx5.c                       | 533 --------------------
 arch/arm/mach-imx/clk-imx6.c                       | 541 ---------------------
 arch/arm/mach-imx/clk-imx6sx.c                     | 483 ------------------
 arch/arm/mach-imx/clk-pfd.c                        | 148 ------
 arch/arm/mach-imx/clk-pllv1.c                      |  95 ----
 arch/arm/mach-imx/clk-pllv2.c                      | 230 ---------
 arch/arm/mach-imx/clk-pllv3.c                      | 326 -------------
 arch/arm/mach-imx/clk.h                            | 104 ----
 arch/arm/mach-imx/cpu_init.c                       |   5 +
 arch/arm/mach-imx/imx.c                            |   4 +
 arch/arm/mach-imx/include/mach/clock-vf610.h       | 171 +++++++
 arch/arm/mach-imx/include/mach/debug_ll.h          |  27 +-
 arch/arm/mach-imx/include/mach/generic.h           |  13 +
 arch/arm/mach-imx/include/mach/imx_cpu_types.h     |   1 +
 arch/arm/mach-imx/include/mach/iomux-vf610.h       | 226 +++++++++
 arch/arm/mach-imx/include/mach/vf610-regs.h        | 110 +++++
 arch/arm/mach-imx/ocotp.c                          |  51 +-
 common/Kconfig                                     |  10 +-
 drivers/clk/Makefile                               |   3 +-
 drivers/clk/clk-conf.c                             | 144 ++++++
 drivers/clk/clk.c                                  |  91 +++-
 drivers/clk/imx/Makefile                           |  21 +
 drivers/clk/imx/clk-gate-exclusive.c               | 103 ++++
 drivers/clk/imx/clk-gate2.c                        | 147 ++++++
 drivers/clk/imx/clk-imx1.c                         | 121 +++++
 drivers/clk/imx/clk-imx21.c                        | 196 ++++++++
 drivers/clk/imx/clk-imx25.c                        | 200 ++++++++
 drivers/clk/imx/clk-imx27.c                        | 270 ++++++++++
 drivers/clk/imx/clk-imx31.c                        | 146 ++++++
 drivers/clk/imx/clk-imx35.c                        | 219 +++++++++
 drivers/clk/imx/clk-imx5.c                         | 533 ++++++++++++++++++++
 drivers/clk/imx/clk-imx6.c                         | 541 +++++++++++++++++++++
 drivers/clk/imx/clk-imx6sx.c                       | 483 ++++++++++++++++++
 drivers/clk/imx/clk-pfd.c                          | 148 ++++++
 drivers/clk/imx/clk-pllv1.c                        |  95 ++++
 drivers/clk/imx/clk-pllv2.c                        | 230 +++++++++
 drivers/clk/imx/clk-pllv3.c                        | 329 +++++++++++++
 drivers/clk/imx/clk-vf610.c                        | 443 +++++++++++++++++
 drivers/clk/imx/clk.c                              |  21 +
 drivers/clk/imx/clk.h                              | 123 +++++
 drivers/gpio/Kconfig                               |   3 +
 drivers/gpio/Makefile                              |   1 +
 drivers/gpio/gpio-vf610.c                          | 181 +++++++
 drivers/i2c/busses/i2c-imx.c                       | 225 ++++++---
 drivers/mci/imx-esdhc.c                            | 123 ++++-
 drivers/net/fec_imx.c                              |  74 ++-
 drivers/net/fec_imx.h                              |  10 +-
 drivers/pinctrl/Kconfig                            |   5 +
 drivers/pinctrl/Makefile                           |   1 +
 drivers/pinctrl/pinctrl-vf610.c                    | 167 +++++++
 drivers/pinctrl/pinctrl.c                          |  45 ++
 drivers/serial/Kconfig                             |   5 +
 drivers/serial/Makefile                            |   1 +
 drivers/serial/serial_lpuart.c                     | 217 +++++++++
 images/Makefile.imx                                |   5 +
 include/linux/clk/clk-conf.h                       |  14 +
 include/pinctrl.h                                  |  21 +
 include/serial/lpuart.h                            | 281 +++++++++++
 scripts/imx/imx.c                                  |   1 +
 75 files changed, 6870 insertions(+), 3980 deletions(-)
 create mode 100644 arch/arm/boards/freescale-vf610-twr/Makefile
 create mode 100644 arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
 create mode 100644 arch/arm/boards/freescale-vf610-twr/lowlevel.c
 create mode 100644 arch/arm/dts/vf610-twr.dts
 delete mode 100644 arch/arm/mach-imx/clk-gate-exclusive.c
 delete mode 100644 arch/arm/mach-imx/clk-gate2.c
 delete mode 100644 arch/arm/mach-imx/clk-imx1.c
 delete mode 100644 arch/arm/mach-imx/clk-imx21.c
 delete mode 100644 arch/arm/mach-imx/clk-imx25.c
 delete mode 100644 arch/arm/mach-imx/clk-imx27.c
 delete mode 100644 arch/arm/mach-imx/clk-imx31.c
 delete mode 100644 arch/arm/mach-imx/clk-imx35.c
 delete mode 100644 arch/arm/mach-imx/clk-imx5.c
 delete mode 100644 arch/arm/mach-imx/clk-imx6.c
 delete mode 100644 arch/arm/mach-imx/clk-imx6sx.c
 delete mode 100644 arch/arm/mach-imx/clk-pfd.c
 delete mode 100644 arch/arm/mach-imx/clk-pllv1.c
 delete mode 100644 arch/arm/mach-imx/clk-pllv2.c
 delete mode 100644 arch/arm/mach-imx/clk-pllv3.c
 delete mode 100644 arch/arm/mach-imx/clk.h
 create mode 100644 arch/arm/mach-imx/include/mach/clock-vf610.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-vf610.h
 create mode 100644 arch/arm/mach-imx/include/mach/vf610-regs.h
 create mode 100644 drivers/clk/clk-conf.c
 create mode 100644 drivers/clk/imx/Makefile
 create mode 100644 drivers/clk/imx/clk-gate-exclusive.c
 create mode 100644 drivers/clk/imx/clk-gate2.c
 create mode 100644 drivers/clk/imx/clk-imx1.c
 create mode 100644 drivers/clk/imx/clk-imx21.c
 create mode 100644 drivers/clk/imx/clk-imx25.c
 create mode 100644 drivers/clk/imx/clk-imx27.c
 create mode 100644 drivers/clk/imx/clk-imx31.c
 create mode 100644 drivers/clk/imx/clk-imx35.c
 create mode 100644 drivers/clk/imx/clk-imx5.c
 create mode 100644 drivers/clk/imx/clk-imx6.c
 create mode 100644 drivers/clk/imx/clk-imx6sx.c
 create mode 100644 drivers/clk/imx/clk-pfd.c
 create mode 100644 drivers/clk/imx/clk-pllv1.c
 create mode 100644 drivers/clk/imx/clk-pllv2.c
 create mode 100644 drivers/clk/imx/clk-pllv3.c
 create mode 100644 drivers/clk/imx/clk-vf610.c
 create mode 100644 drivers/clk/imx/clk.c
 create mode 100644 drivers/clk/imx/clk.h
 create mode 100644 drivers/gpio/gpio-vf610.c
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
