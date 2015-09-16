Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zc88F-0006Wz-2w
 for barebox@lists.infradead.org; Wed, 16 Sep 2015 08:32:01 +0000
Received: by lbcao8 with SMTP id ao8so99037894lbc.3
 for <barebox@lists.infradead.org>; Wed, 16 Sep 2015 01:31:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 16 Sep 2015 11:31:28 +0300
Message-Id: <1442392292-15898-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 0/4] MIPS: barebox as a first stage loader on the Black Swift
 board
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

This patchseries add necessary low level initialization routines for AR9331 SoC.
The patchseries makes possible to use barebox as a first stage loader
on the Black Swift board.

The patchseries is heavily based on Oleksij Rempel's work on barebox for TP-Link MR3020.

TODOs:

  * add UART initialization routune for DEBUG_LL and NMON;
  * add macros for GPIO_FUNCTION_1 register initialization;
  * check macros names linux kernel source compartibility;
  * DT compatible string vendor "smartlx" appears un-documented.
     The site http://www.smartlx.ru/ is suspended.



Antony Pavlov (3):
  MIPS: ar933x: pbl: add pbl_ar9331_ddr2_config macro
  MIPS: ath79: add black-swift board support
  MIPS: add black-swift_defconfig

Oleksij Rempel (1):
  MIPS: ar933x: pbl: add pbl_ar9331_pll macro

 arch/mips/Makefile                                 |   1 +
 arch/mips/boards/black-swift/Makefile              |   1 +
 arch/mips/boards/black-swift/board.c               |  27 +++++
 .../black-swift/include/board/board_pbl_start.h    |  46 +++++++
 arch/mips/configs/black-swift_defconfig            |  37 ++++++
 arch/mips/dts/black-swift.dts                      |  36 ++++++
 arch/mips/include/asm/pbl_macros.h                 |  21 ++++
 arch/mips/mach-ath79/Kconfig                       |   5 +
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |  25 ++++
 arch/mips/mach-ath79/include/mach/pbl_macros.h     | 132 +++++++++++++++++++++
 10 files changed, 331 insertions(+)
 create mode 100644 arch/mips/boards/black-swift/Makefile
 create mode 100644 arch/mips/boards/black-swift/board.c
 create mode 100644 arch/mips/boards/black-swift/include/board/board_pbl_start.h
 create mode 100644 arch/mips/configs/black-swift_defconfig
 create mode 100644 arch/mips/dts/black-swift.dts
 create mode 100644 arch/mips/mach-ath79/include/mach/pbl_macros.h

-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
