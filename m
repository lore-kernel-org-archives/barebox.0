Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f51.google.com ([209.85.215.51])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTHpX-00025e-Ky
 for barebox@lists.infradead.org; Thu, 27 Mar 2014 21:27:20 +0000
Received: by mail-la0-f51.google.com with SMTP id pv20so3134461lab.10
 for <barebox@lists.infradead.org>; Thu, 27 Mar 2014 14:26:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Mar 2014 01:26:35 +0400
Message-Id: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/9] MIPS: add Atheros AR933x SoC & TP-LINK MR3020 board
 support
To: barebox@lists.infradead.org

Antony Pavlov (8):
  MIPS: lib: add BAREBOX_CLK_TABLE to linker script
  MIPS: ath79: add DEBUG_LL support for Atheros AR933x
  serial: add Atheros AR933x driver
  clk: add Atheros AR933x driver
  MIPS: ath79: ar9331: add devicetree files
  MIPS: ath79: add tplink-mr3020 board support
  MIPS: tplink-mr3020: add documentation
  MIPS: add tplink-mr3020_defconfig

Du Huanpeng (1):
  MIPS: add Atheros ar933x family support

 Documentation/boards.dox                         |   1 +
 arch/mips/Kconfig                                |  14 ++
 arch/mips/Makefile                               |   3 +
 arch/mips/boards/tplink-mr3020/Makefile          |   1 +
 arch/mips/boards/tplink-mr3020/board.c           |  27 +++
 arch/mips/boards/tplink-mr3020/tplink-mr3020.dox |  64 +++++++
 arch/mips/configs/tplink-mr3020_defconfig        |  29 ++++
 arch/mips/dts/ar9331.dtsi                        |  26 +++
 arch/mips/dts/include/dt-bindings                |   1 +
 arch/mips/dts/tplink-mr3020.dts                  |  18 ++
 arch/mips/lib/barebox.lds.S                      |   2 +
 arch/mips/mach-ath79/Kconfig                     |  15 ++
 arch/mips/mach-ath79/Makefile                    |   1 +
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h  |  64 +++++++
 arch/mips/mach-ath79/include/mach/ath79.h        |  33 ++++
 arch/mips/mach-ath79/include/mach/debug_ll.h     |  56 +++++++
 arch/mips/mach-ath79/reset.c                     |  32 ++++
 drivers/clk/Makefile                             |   1 +
 drivers/clk/clk-ar933x.c                         | 175 +++++++++++++++++++
 drivers/serial/Kconfig                           |   7 +
 drivers/serial/Makefile                          |   1 +
 drivers/serial/serial_ar933x.c                   | 204 +++++++++++++++++++++++
 drivers/serial/serial_ar933x.h                   |  69 ++++++++
 include/dt-bindings/clock/ar933x-clk.h           |  22 +++
 24 files changed, 866 insertions(+)
 create mode 100644 arch/mips/boards/tplink-mr3020/Makefile
 create mode 100644 arch/mips/boards/tplink-mr3020/board.c
 create mode 100644 arch/mips/boards/tplink-mr3020/tplink-mr3020.dox
 create mode 100644 arch/mips/configs/tplink-mr3020_defconfig
 create mode 100644 arch/mips/dts/ar9331.dtsi
 create mode 120000 arch/mips/dts/include/dt-bindings
 create mode 100644 arch/mips/dts/tplink-mr3020.dts
 create mode 100644 arch/mips/mach-ath79/Kconfig
 create mode 100644 arch/mips/mach-ath79/Makefile
 create mode 100644 arch/mips/mach-ath79/include/mach/ar71xx_regs.h
 create mode 100644 arch/mips/mach-ath79/include/mach/ath79.h
 create mode 100644 arch/mips/mach-ath79/include/mach/debug_ll.h
 create mode 100644 arch/mips/mach-ath79/reset.c
 create mode 100644 drivers/clk/clk-ar933x.c
 create mode 100644 drivers/serial/serial_ar933x.c
 create mode 100644 drivers/serial/serial_ar933x.h
 create mode 100644 include/dt-bindings/clock/ar933x-clk.h

-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
