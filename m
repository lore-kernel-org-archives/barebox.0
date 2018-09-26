Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4yjI-0007bj-Ez
 for barebox@lists.infradead.org; Wed, 26 Sep 2018 01:35:10 +0000
Received: by mail-pg1-x541.google.com with SMTP id n31-v6so5987548pgm.7
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2018 18:34:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 25 Sep 2018 18:34:12 -0700
Message-Id: <20180926013418.26920-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/6] ZII RPU2 i.MX7D board support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series is a number of small patches I developed while adding
support for ZII's RPU2 board. Hopefully all of them are self-explanatory.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (6):
  ARM: i.MX: esdctl: Add memory size detection for i.MX7D
  ARM: freescale-mx7-sabresd: Make used of imx7d_barebox_entry()
  i.MX7D: DCD: Create shared DDR configuration header
  ARM: i.MX7: bbu: Add MMC boot handler
  ARM: i.MX7: bbu: Add I2C and SPI handler
  i.MX: Add support for ZII's i.MX7D-based RPU2 board

 arch/arm/boards/Makefile                      |   1 +
 .../flash-header-mx7-sabresd.imxcfg           |  79 +--
 .../boards/freescale-mx7-sabresd/lowlevel.c   |   7 +-
 arch/arm/boards/zii-imx7d-rpu2/Makefile       |   2 +
 arch/arm/boards/zii-imx7d-rpu2/board.c        |  49 ++
 .../flash-header-zii-imx7d-rpu2.imxcfg        |   6 +
 arch/arm/boards/zii-imx7d-rpu2/lowlevel.c     |  50 ++
 arch/arm/dts/Makefile                         |   2 +
 arch/arm/dts/imx7d-ddrc.dtsi                  |  15 +
 arch/arm/dts/imx7d-zii-rpu2.dts               | 613 ++++++++++++++++++
 arch/arm/mach-imx/Kconfig                     |   4 +
 arch/arm/mach-imx/esdctl.c                    |  61 ++
 arch/arm/mach-imx/imx-bbu-internal.c          |  11 +
 arch/arm/mach-imx/include/mach/bbu.h          |  20 +
 arch/arm/mach-imx/include/mach/esdctl.h       |   1 +
 .../flash-header/imx7d-ddr-default.imxcfg     |  78 +++
 arch/arm/mach-imx/include/mach/imx7-regs.h    |   2 +
 images/Makefile.imx                           |   5 +
 18 files changed, 923 insertions(+), 83 deletions(-)
 create mode 100644 arch/arm/boards/zii-imx7d-rpu2/Makefile
 create mode 100644 arch/arm/boards/zii-imx7d-rpu2/board.c
 create mode 100644 arch/arm/boards/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg
 create mode 100644 arch/arm/boards/zii-imx7d-rpu2/lowlevel.c
 create mode 100644 arch/arm/dts/imx7d-ddrc.dtsi
 create mode 100644 arch/arm/dts/imx7d-zii-rpu2.dts
 create mode 100644 arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-default.imxcfg

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
