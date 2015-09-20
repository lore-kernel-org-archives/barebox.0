Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zdny2-0006Ds-Sb
 for barebox@lists.infradead.org; Sun, 20 Sep 2015 23:24:24 +0000
Received: by lamp12 with SMTP id p12so57503340lam.0
 for <barebox@lists.infradead.org>; Sun, 20 Sep 2015 16:24:01 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-254-180.pppoe.spdop.ru.
 [79.139.254.180])
 by smtp.gmail.com with ESMTPSA id x1sm3091424lbb.32.2015.09.20.16.24.00
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 20 Sep 2015 16:24:00 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 Sep 2015 02:23:43 +0300
Message-Id: <1442791433-10892-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 00/10] MIPS: barebox as a first stage loader on the Black
 Swift board
To: barebox@lists.infradead.org

This patchseries adds necessary AR9331 SoC low level initialization routines.
The patchseries makes it possible to use barebox as a first stage loader
on the Black Swift board and, I suppose, other widespread AR9331-based boards.

The patchseries is heavily based on Oleksij Rempel's work on barebox for TP-Link MR3020.

TODOs:

  * add TP-Link MR3020 support (see http://openocd.zylin.com/gitweb?p=openocd.git;a=commitdiff;h=f59d2d9ecfee8899df531b87b7acaa468725f238);
  * clean up Black Swift GPIO code (pbl_reg_set (1 << 18), 0xb80600ac);
  * check macros names linux kernel source compartibility;
  * DT compatible string vendor "smartlx" appears un-documented.
     The site http://www.smartlx.ru/ is suspended.


Changes since RFC v1:

  * add UART initialization routune for DEBUG_LL and NMON;
  * add macros for GPIO_FUNCTION_1 register initialization;
  * add ar71xx GPIO driver.


Antony Pavlov (9):
  MIPS: ar933x: pbl: add pbl_ar9331_ddr2_config macro
  MIPS: mach-ath79: add pbl_ar9331_uart_enable macro
  MIPS: mach-ath79: add debug_ll_ar9331_init macro
  MIPS: ath79: add black-swift board support
  MIPS: add black-swift_defconfig
  gpio: add ath79-gpio driver for Atheros MIPS SoCs
  MIPS: ath79: use gpiolib
  MIPS: dts: ar9331.dtsi: add gpio
  WIP: MIPS: black-swift: use GPIO

Oleksij Rempel (1):
  MIPS: ar933x: pbl: add pbl_ar9331_pll macro

 arch/mips/Kconfig                                  |   1 +
 arch/mips/Makefile                                 |   1 +
 arch/mips/boards/black-swift/Makefile              |   1 +
 arch/mips/boards/black-swift/board.c               |  27 ++++
 .../black-swift/include/board/board_pbl_start.h    |  41 ++++++
 arch/mips/boot/start.S                             |   2 +
 arch/mips/configs/black-swift_defconfig            |  45 +++++++
 arch/mips/dts/ar9331.dtsi                          |  10 ++
 arch/mips/dts/black-swift.dts                      |  60 +++++++++
 arch/mips/include/asm/pbl_macros.h                 |  32 +++++
 arch/mips/mach-ath79/Kconfig                       |   6 +
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |  41 ++++++
 arch/mips/mach-ath79/include/mach/debug_ll.h       |  29 ++++
 arch/mips/mach-ath79/include/mach/pbl_macros.h     | 139 ++++++++++++++++++++
 drivers/gpio/Makefile                              |   1 +
 drivers/gpio/gpio-ath79.c                          | 146 +++++++++++++++++++++
 16 files changed, 582 insertions(+)
 create mode 100644 arch/mips/boards/black-swift/Makefile
 create mode 100644 arch/mips/boards/black-swift/board.c
 create mode 100644 arch/mips/boards/black-swift/include/board/board_pbl_start.h
 create mode 100644 arch/mips/configs/black-swift_defconfig
 create mode 100644 arch/mips/dts/black-swift.dts
 create mode 100644 arch/mips/mach-ath79/include/mach/pbl_macros.h
 create mode 100644 drivers/gpio/gpio-ath79.c

-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
