Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x233.google.com ([2a00:1450:4010:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtU52-0005y3-Lr
 for barebox@lists.infradead.org; Tue, 03 Nov 2015 05:24:25 +0000
Received: by lfgh9 with SMTP id h9so5417002lfg.1
 for <barebox@lists.infradead.org>; Mon, 02 Nov 2015 21:24:02 -0800 (PST)
Received: from localhost.localdomain (ppp91-79-39-184.pppoe.mtu-net.ru.
 [91.79.39.184])
 by smtp.gmail.com with ESMTPSA id dz9sm4494605lbc.40.2015.11.02.21.24.01
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 02 Nov 2015 21:24:01 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  3 Nov 2015 08:23:47 +0300
Message-Id: <1446528236-30236-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 0/9] MIPS: ath79: add ar9331 pbl support
To: barebox@lists.infradead.org

This patchseries adds full clock and RAM initialization
for AR9331-based boards: now barebox can start
without any other bootloader's help.

This series tested with TP-Link MR3020 (DDR1 RAM)
and Black Swift (DDR2 RAM) boards.

See also
  https://github.com/pepe2k/u-boot_mod


Future works:

  * add 'check run from ROM' commit by Oleksij Rempel (do 0xbfc test);
  * enable more GPIO features (see 'pbl_reg_set (1 << 18), 0xb80600ac').


Changes since v1:

  * make commit messages more consistent;
  * add 'Future works' to cover letter.

Antony Pavlov (8):
  MIPS: ath79: add pbl_ar9331_ddr2_config macro
  MIPS: ath79: add pbl_ar9331_uart_enable macro
  MIPS: ath79: add debug_ll_ar9331_init macro
  MIPS: ath79: add black-swift board support
  MIPS: ath79: add black-swift_defconfig
  MIPS: ath79: add pbl_ar9331_ddr1_config macro
  MIPS: tplink-mr3020: add pbl low level init
  MIPS: tplink-mr3020_defconfig: enable pbl; make image shorter

Oleksij Rempel (1):
  MIPS: ath79: add pbl_ar9331_pll macro

 arch/mips/Makefile                                 |   1 +
 arch/mips/boards/black-swift/Makefile              |   1 +
 arch/mips/boards/black-swift/board.c               |  27 +++
 .../black-swift/include/board/board_pbl_start.h    |  41 +++++
 .../tplink-mr3020/include/board/board_pbl_start.h  |   6 +
 arch/mips/configs/black-swift_defconfig            |  46 ++++++
 arch/mips/configs/tplink-mr3020_defconfig          |   3 +
 arch/mips/dts/black-swift.dts                      |  34 ++++
 arch/mips/include/asm/pbl_macros.h                 |  32 ++++
 arch/mips/mach-ath79/Kconfig                       |   6 +
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |  24 +++
 arch/mips/mach-ath79/include/mach/debug_ll.h       |  29 ++++
 arch/mips/mach-ath79/include/mach/pbl_macros.h     | 182 +++++++++++++++++++++
 13 files changed, 432 insertions(+)
 create mode 100644 arch/mips/boards/black-swift/Makefile
 create mode 100644 arch/mips/boards/black-swift/board.c
 create mode 100644 arch/mips/boards/black-swift/include/board/board_pbl_start.h
 create mode 100644 arch/mips/configs/black-swift_defconfig
 create mode 100644 arch/mips/dts/black-swift.dts
 create mode 100644 arch/mips/mach-ath79/include/mach/pbl_macros.h

-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
