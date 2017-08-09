Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dfTHA-00051k-2Z
 for barebox@lists.infradead.org; Wed, 09 Aug 2017 15:52:05 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed,  9 Aug 2017 17:51:28 +0200
Message-Id: <20170809155131.1913-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 0/3] provide basic support for TP-Link WDR4300
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

this set also including support of QCA AR9344 too.

Oleksij Rempel (3):
  MIPS: ath79: provide CONFIG_SOC_QCA_AR9331 option
  MIPS: ath79: add initial QCA AR9344 SoC support
  MIPS: ath79: add TP-Link WDR4300 board support

 arch/mips/Makefile                                 |   1 +
 arch/mips/boards/tplink-wdr4300/Makefile           |   1 +
 arch/mips/boards/tplink-wdr4300/board.c            |  28 ++
 .../tplink-wdr4300/include/board/board_pbl_start.h |  62 +++
 arch/mips/configs/tplink-wdr4300_defconfig         |  78 +++
 arch/mips/dts/ar9344.dtsi                          |  53 ++
 arch/mips/dts/ar9344_tl_wdr4300.dts                |  63 +++
 arch/mips/mach-ath79/Kconfig                       |  15 +
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |   9 +
 arch/mips/mach-ath79/include/mach/debug_ll.h       | 167 +------
 .../mips/mach-ath79/include/mach/debug_ll_ar9331.h | 176 +++++++
 .../mips/mach-ath79/include/mach/debug_ll_ar9344.h | 191 ++++++++
 .../include/mach/pbl_ll_init_ar9344_1.1.h          | 540 +++++++++++++++++++++
 13 files changed, 1226 insertions(+), 158 deletions(-)
 create mode 100644 arch/mips/boards/tplink-wdr4300/Makefile
 create mode 100644 arch/mips/boards/tplink-wdr4300/board.c
 create mode 100644 arch/mips/boards/tplink-wdr4300/include/board/board_pbl_start.h
 create mode 100644 arch/mips/configs/tplink-wdr4300_defconfig
 create mode 100644 arch/mips/dts/ar9344.dtsi
 create mode 100644 arch/mips/dts/ar9344_tl_wdr4300.dts
 create mode 100644 arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h
 create mode 100644 arch/mips/mach-ath79/include/mach/debug_ll_ar9344.h
 create mode 100644 arch/mips/mach-ath79/include/mach/pbl_ll_init_ar9344_1.1.h

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
