Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TA-0000eL-W4
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:02 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TG6T7-0007gL-Cx
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 13:04:53 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TG6T7-0006VD-Bn
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 13:04:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:29 +0200
Message-Id: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] common clk support
To: barebox@lists.infradead.org

The following introduces common clk support based on the Linux common clk
support and switches the i.MX architecture over to use it.

For i.MX we now have real drivers for the clk support. I have taken the
approach that all clocks we need are enabled from the driver, so we do
not need to support all the gates which lowers the overhead of the clock
support quite a bit.

This series has been tested on all i.MX SoCs except the i.MX21 (which I still
don't have).

Sascha

----------------------------------------------------------------
Sascha Hauer (23):
      err.h: introduce IS_ERR_OR_NULL
      clk clkdev: Add clkdev matching based on physbase
      clk: initial common clk support
      commands: Add clk commands
      ARM i.MX: initial clk support
      ARM i.MX27: implement clk support
      ARM i.MX25: Switch to common clk support
      ARM i.MX5: Switch to common clk support
      ARM i.MX1: Switch to common clk support
      ARM i.MX31: Switch to common clk
      ARM i.MX6: Switch to common clk
      ARM i.MX21: Switch to common clk
      ARM i.MX35: Switch to common clk
      net fec: Switch to clk support
      serial i.MX: Switch to clk support
      spi i.MX: Switch to clk support
      ARM i.MX: Switch clocksource to clk_get
      mci i.MX ESDHC: Switch to clock support
      mci i.MX: Switch to clock support
      i2c i.MX: Switch to clock support
      video i.MX: Switch to clock support
      video i.MX IPU: Switch to clock support
      ARM i.MX: Remove old clock support

 arch/arm/Kconfig                           |    2 +
 arch/arm/mach-imx/Kconfig                  |    8 -
 arch/arm/mach-imx/Makefile                 |   21 +-
 arch/arm/mach-imx/clk-imx1.c               |  108 ++++++++
 arch/arm/mach-imx/clk-imx21.c              |  119 ++++++++
 arch/arm/mach-imx/clk-imx25.c              |  154 +++++++++++
 arch/arm/mach-imx/clk-imx27.c              |  154 +++++++++++
 arch/arm/mach-imx/clk-imx31.c              |  133 +++++++++
 arch/arm/mach-imx/clk-imx35.c              |  186 +++++++++++++
 arch/arm/mach-imx/clk-imx5.c               |  298 ++++++++++++++++++++
 arch/arm/mach-imx/clk-imx6.c               |  306 +++++++++++++++++++++
 arch/arm/mach-imx/clk-pfd.c                |  148 ++++++++++
 arch/arm/mach-imx/{speed.c => clk-pllv1.c} |   70 +++--
 arch/arm/mach-imx/clk-pllv2.c              |  164 +++++++++++
 arch/arm/mach-imx/clk-pllv3.c              |  386 ++++++++++++++++++++++++++
 arch/arm/mach-imx/clk.h                    |   66 +++++
 arch/arm/mach-imx/clko.c                   |   60 -----
 arch/arm/mach-imx/clocksource.c            |   18 +-
 arch/arm/mach-imx/imx1.c                   |    3 +-
 arch/arm/mach-imx/imx21.c                  |    1 +
 arch/arm/mach-imx/imx25.c                  |    3 +-
 arch/arm/mach-imx/imx27.c                  |    4 +-
 arch/arm/mach-imx/imx31.c                  |    3 +-
 arch/arm/mach-imx/imx35.c                  |    3 +-
 arch/arm/mach-imx/imx51.c                  |    3 +-
 arch/arm/mach-imx/imx53.c                  |    3 +-
 arch/arm/mach-imx/imx6.c                   |    3 +-
 arch/arm/mach-imx/include/mach/clkdev.h    |    7 +
 arch/arm/mach-imx/include/mach/clock.h     |   42 +--
 arch/arm/mach-imx/speed-imx1.c             |   91 -------
 arch/arm/mach-imx/speed-imx21.c            |  193 -------------
 arch/arm/mach-imx/speed-imx25.c            |  155 -----------
 arch/arm/mach-imx/speed-imx27.c            |  227 ----------------
 arch/arm/mach-imx/speed-imx31.c            |   79 ------
 arch/arm/mach-imx/speed-imx35.c            |  255 ------------------
 arch/arm/mach-imx/speed-imx51.c            |  311 ---------------------
 arch/arm/mach-imx/speed-imx53.c            |  236 ----------------
 arch/arm/mach-imx/speed-imx6.c             |  404 ----------------------------
 commands/Kconfig                           |    8 +
 commands/Makefile                          |    1 +
 commands/clk.c                             |  133 +++++++++
 drivers/clk/Kconfig                        |    3 +
 drivers/clk/Makefile                       |    2 +-
 drivers/clk/clk-divider.c                  |   98 +++++++
 drivers/clk/clk-fixed-factor.c             |   63 +++++
 drivers/clk/clk-fixed.c                    |   55 ++++
 drivers/clk/clk-mux.c                      |   77 ++++++
 drivers/clk/clk.c                          |  224 +++++++++++++++
 drivers/clk/clkdev.c                       |   47 ++++
 drivers/i2c/busses/i2c-imx.c               |   23 +-
 drivers/mci/imx-esdhc.c                    |   16 +-
 drivers/mci/imx.c                          |   15 +-
 drivers/net/fec_imx.c                      |   27 +-
 drivers/net/fec_imx.h                      |    1 +
 drivers/serial/serial_imx.c                |   18 +-
 drivers/spi/imx_spi.c                      |   13 +-
 drivers/video/imx-ipu-fb.c                 |   10 +-
 drivers/video/imx.c                        |   10 +-
 include/linux/clk.h                        |   42 +++
 include/linux/clkdev.h                     |    3 +
 include/linux/err.h                        |    5 +
 61 files changed, 3184 insertions(+), 2137 deletions(-)
 create mode 100644 arch/arm/mach-imx/clk-imx1.c
 create mode 100644 arch/arm/mach-imx/clk-imx21.c
 create mode 100644 arch/arm/mach-imx/clk-imx25.c
 create mode 100644 arch/arm/mach-imx/clk-imx27.c
 create mode 100644 arch/arm/mach-imx/clk-imx31.c
 create mode 100644 arch/arm/mach-imx/clk-imx35.c
 create mode 100644 arch/arm/mach-imx/clk-imx5.c
 create mode 100644 arch/arm/mach-imx/clk-imx6.c
 create mode 100644 arch/arm/mach-imx/clk-pfd.c
 rename arch/arm/mach-imx/{speed.c => clk-pllv1.c} (53%)
 create mode 100644 arch/arm/mach-imx/clk-pllv2.c
 create mode 100644 arch/arm/mach-imx/clk-pllv3.c
 create mode 100644 arch/arm/mach-imx/clk.h
 delete mode 100644 arch/arm/mach-imx/clko.c
 create mode 100644 arch/arm/mach-imx/include/mach/clkdev.h
 delete mode 100644 arch/arm/mach-imx/speed-imx1.c
 delete mode 100644 arch/arm/mach-imx/speed-imx21.c
 delete mode 100644 arch/arm/mach-imx/speed-imx25.c
 delete mode 100644 arch/arm/mach-imx/speed-imx27.c
 delete mode 100644 arch/arm/mach-imx/speed-imx31.c
 delete mode 100644 arch/arm/mach-imx/speed-imx35.c
 delete mode 100644 arch/arm/mach-imx/speed-imx51.c
 delete mode 100644 arch/arm/mach-imx/speed-imx53.c
 delete mode 100644 arch/arm/mach-imx/speed-imx6.c
 create mode 100644 commands/clk.c
 create mode 100644 drivers/clk/clk-divider.c
 create mode 100644 drivers/clk/clk-fixed-factor.c
 create mode 100644 drivers/clk/clk-fixed.c
 create mode 100644 drivers/clk/clk-mux.c
 create mode 100644 drivers/clk/clk.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
