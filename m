Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f174.google.com ([209.85.217.174])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRcYQ-0003wb-A1
 for barebox@lists.infradead.org; Wed, 10 Sep 2014 07:43:03 +0000
Received: by mail-lb0-f174.google.com with SMTP id n15so10391207lbi.19
 for <barebox@lists.infradead.org>; Wed, 10 Sep 2014 00:42:36 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 Sep 2014 11:42:17 +0400
Message-Id: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/9] MIPS: xburst: add JZ4780 SoC and MIPS Creator CI20 board
 support
To: barebox@lists.infradead.org

The MIPS Creator CI20 board is a high performance, fully featured
Linux and Android development platform.

The Creator CI20 is supplied free of charge to certain approved projects
under Imagination's ecosystem.

Please see http://store.imgtec.com/product/mips-creator-ci20/ for details.

Barebox CI20-related changes are available on github:
  https://github.com/frantony/barebox/tree/next.ci20.20140910


Antony Pavlov (9):
  common.h: use special IOMEM() for MIPS
  MIPS: dts: use physical addresses (as Linux does)
  MIPS: xburst: add JZ4780 SoC support
  MIPS: add (another) Ingenic vendor ID
  MIPS: xburst: debug_ll: rework common code, add JZ4780 support
  MIPS: dts: add jz4780.dtsi
  MIPS: add MIPS Creator CI20 board support
  MIPS: add img-ci20_defconfig
  Documentation: add MIPS Creator CI20 board mini-howto

 Documentation/boards/mips/img-ci20.rst             | 42 ++++++++++++++++
 arch/mips/Kconfig                                  |  1 -
 arch/mips/Makefile                                 |  1 +
 arch/mips/boards/img-ci20/Makefile                 |  1 +
 arch/mips/boards/img-ci20/board.c                  | 27 +++++++++++
 .../img-ci20/include/board/board_pbl_start.h       | 43 +++++++++++++++++
 arch/mips/boards/img-ci20/include/board/debug_ll.h | 23 +++++++++
 arch/mips/configs/img-ci20_defconfig               | 42 ++++++++++++++++
 arch/mips/dts/ar9331.dtsi                          | 10 ++--
 arch/mips/dts/dlink-dir-320.dts                    |  4 +-
 arch/mips/dts/img-ci20.dts                         | 35 ++++++++++++++
 arch/mips/dts/jz4755.dtsi                          | 30 ++++++------
 arch/mips/dts/jz4780.dtsi                          | 56 ++++++++++++++++++++++
 arch/mips/dts/ls1b.dtsi                            | 16 +++----
 arch/mips/dts/qemu-malta.dts                       | 14 +++---
 arch/mips/include/asm/cpu.h                        |  1 +
 arch/mips/lib/cpu-probe.c                          |  1 +
 arch/mips/mach-xburst/Kconfig                      | 30 ++++++++++--
 .../mach-xburst/include/mach/debug_ll_jz4750d.h    |  6 +--
 .../mach-xburst/include/mach/debug_ll_jz4780.h     | 51 ++++++++++++++++++++
 arch/mips/mach-xburst/include/mach/jz4780.h        | 30 ++++++++++++
 include/common.h                                   |  6 +++
 22 files changed, 424 insertions(+), 46 deletions(-)
 create mode 100644 Documentation/boards/mips/img-ci20.rst
 create mode 100644 arch/mips/boards/img-ci20/Makefile
 create mode 100644 arch/mips/boards/img-ci20/board.c
 create mode 100644 arch/mips/boards/img-ci20/include/board/board_pbl_start.h
 create mode 100644 arch/mips/boards/img-ci20/include/board/debug_ll.h
 create mode 100644 arch/mips/configs/img-ci20_defconfig
 create mode 100644 arch/mips/dts/img-ci20.dts
 create mode 100644 arch/mips/dts/jz4780.dtsi
 create mode 100644 arch/mips/mach-xburst/include/mach/debug_ll_jz4780.h
 create mode 100644 arch/mips/mach-xburst/include/mach/jz4780.h

-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
