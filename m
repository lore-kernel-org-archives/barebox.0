Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dcbZQ-0004Qp-BF
 for barebox@lists.infradead.org; Tue, 01 Aug 2017 18:07:06 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue,  1 Aug 2017 20:06:18 +0200
Message-Id: <20170801180621.25325-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 0/3] provide QCA AR9344 support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

This patch set is providing initial support for QCA AR9344 SoC.
So far it provides PLL and DDR2 initialization.
UART and SPI controller should work as well.

Following variants was tested:
- load PBL to SRAM over JTAG for PLL and DDR2 initialization or configure
  them with JTAG.
- load and start complete zbarebox.bin or barebox.bin to previously configured
  DDR2 RAM. Both variants are working.
- start zbarebox.bin from SPI flash

JTAG config for OpenOCD can be found here:
https://github.com/olerem/openocd/commits/ar9344
or maybe later upstrean in OpenOCD directly.

Oleksij Rempel (3):
  MIPS: ath79: provide CONFIG_SOC_QCA_AR9331 option
  MIPS: ath79: add initial QCA AR9344 SoC support
  MIPS: ath79: add TP-Link WDR4300 board support

 arch/mips/Makefile                                 |   1 +
 arch/mips/boards/tplink-wdr4300/Makefile           |   1 +
 arch/mips/boards/tplink-wdr4300/board.c            |  28 ++
 .../tplink-wdr4300/include/board/board_pbl_start.h |  62 +++
 arch/mips/configs/tplink-wdr4300_defconfig         |  50 ++
 arch/mips/dts/ar9344.dtsi                          |  53 ++
 arch/mips/dts/ar9344_tl_wdr3400.dts                |  47 ++
 arch/mips/mach-ath79/Kconfig                       |  15 +
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |   9 +
 arch/mips/mach-ath79/include/mach/debug_ll.h       | 167 +------
 .../mips/mach-ath79/include/mach/debug_ll_ar9331.h | 176 +++++++
 .../mips/mach-ath79/include/mach/debug_ll_ar9344.h | 191 ++++++++
 .../include/mach/pbl_ll_init_ar9344_1.1.h          | 540 +++++++++++++++++++++
 13 files changed, 1182 insertions(+), 158 deletions(-)
 create mode 100644 arch/mips/boards/tplink-wdr4300/Makefile
 create mode 100644 arch/mips/boards/tplink-wdr4300/board.c
 create mode 100644 arch/mips/boards/tplink-wdr4300/include/board/board_pbl_start.h
 create mode 100644 arch/mips/configs/tplink-wdr4300_defconfig
 create mode 100644 arch/mips/dts/ar9344.dtsi
 create mode 100644 arch/mips/dts/ar9344_tl_wdr3400.dts
 create mode 100644 arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h
 create mode 100644 arch/mips/mach-ath79/include/mach/debug_ll_ar9344.h
 create mode 100644 arch/mips/mach-ath79/include/mach/pbl_ll_init_ar9344_1.1.h

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
