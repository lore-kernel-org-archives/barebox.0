Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZekz-0003Ru-0Z
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 14:54:50 +0000
Received: by mail-pg0-x241.google.com with SMTP id y129so11960577pgy.3
 for <barebox@lists.infradead.org>; Mon, 24 Jul 2017 07:54:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 24 Jul 2017 07:53:51 -0700
Message-Id: <20170724145400.2279-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/9] i.MX7 SabreSD support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone,

This is a patch series to add support for NXP's i.MX7 SabreSD
board. It's most likely lacking some advanced features, but basics
such as SD card, Ethernet and, of course, booting Linux seem to work
OK.

The patchset is updated to use defenitions from Uwe's most recent
submission ("ARM: i.MX7: provide DDR register definitions") so this
series has that as a dependency.

Patch 1/9 contains a fix for a pretty serious screw-up on my part, so
I think it should be applied to master as well.

Also, note, that for a reason I haven't been able to track down yet,
compiling Barebox + this patchset without support for FEC will cause
upstream kernel (at least 4.12-rc1) to hang during boot while trying
to access FEC's register file. I suspect clock initialization issue,
but, as I said, I did not find that out conclusively.

Anyway, as usual, any feedback is wellcome.

Thanks,
Andrey Smirnov


Andrey Smirnov (9):
  gpiolib: Fix buggy flag detection code
  clk: i.MX7: Remove unused UART clocks array
  ARM: i.MX: Import mx7d_pins.h from U-Boot
  ARM: i.MX: Add mx7_setup_pad()
  ARM: i.MX: Add imx7_uart_setup_ll()
  ARM: i.MX: Add minimal imx7-ccm-regs.h
  ARM: i.MX: Add ARCH_HAD_FEC_IMX to ARCH_IMX7
  ARM: i.MX: Import imx7-iomuxc-gpr.h from Linux kernel
  ARM: i.MX: Add support for NXP i.MX7 SABRESD board

 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/freescale-mx7-sabresd/Makefile     |    3 +
 arch/arm/boards/freescale-mx7-sabresd/board.c      |   59 +
 .../flash-header-mx7-sabresd.imxcfg                |   79 ++
 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c   |   46 +
 arch/arm/dts/Makefile                              |    2 +-
 arch/arm/dts/imx7d-sdb.dts                         |   70 ++
 arch/arm/mach-imx/Kconfig                          |    8 +
 arch/arm/mach-imx/include/mach/debug_ll.h          |    7 +
 arch/arm/mach-imx/include/mach/imx7-ccm-regs.h     |   32 +
 arch/arm/mach-imx/include/mach/iomux-mx7.h         | 1328 ++++++++++++++++++++
 arch/arm/mach-imx/include/mach/iomux-v3.h          |    1 +
 drivers/clk/imx/clk-imx7.c                         |   11 -
 drivers/gpio/gpiolib.c                             |    8 +-
 images/Makefile.imx                                |    5 +
 include/mfd/imx7-iomuxc-gpr.h                      |   51 +
 16 files changed, 1696 insertions(+), 15 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx7-sabresd/Makefile
 create mode 100644 arch/arm/boards/freescale-mx7-sabresd/board.c
 create mode 100644 arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
 create mode 100644 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
 create mode 100644 arch/arm/dts/imx7d-sdb.dts
 create mode 100644 arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx7.h
 create mode 100644 include/mfd/imx7-iomuxc-gpr.h

-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
