Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpFUF-0005DW-Tp
 for barebox@lists.infradead.org; Mon, 04 May 2015 12:28:41 +0000
Received: by lagv1 with SMTP id v1so102708557lag.3
 for <barebox@lists.infradead.org>; Mon, 04 May 2015 05:28:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  4 May 2015 15:29:20 +0300
Message-Id: <1430742565-18714-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/5] MIPS: tplink-mr3020: initial PBL support
To: barebox@lists.infradead.org

This patch series enables PBL for AR9331-based TP-Link MR3020 router.
This makes it possible to implement full-grown bootloader for AR9331-based
boards in the future.

AR9331 lowlevel initialization links:

  * https://github.com/pepe2k/u-boot_mod
  * https://github.com/frantony/barebox/commits/20140507.ar933x.pbl.dirty
  * https://wikidevi.com/wiki/TP-LINK_TL-MR3020#Notes_on_JTAG
  * http://openocd.zylin.com/#/c/2519/
  * http://geektimes.ru/post/245066/
  * http://geektimes.ru/post/249184/
  * http://openocd.zylin.com/#/c/2722/

Antony Pavlov (4):
  MIPS: debug_ll_ns16550.h: drop _ns16550 suffix
  MIPS: mach-ath79: debug_ll.h: add assembler routines
  MIPS: tplink-mr3020: enable nmon
  Documentation: mips: fix tplink-mr3020 instruction

Oleksij Rempel (1):
  MIPS: tplink-mr3020: enable PBL and compression

 Documentation/boards/mips/tplink-mr3020.rst        |   7 +-
 .../img-ci20/include/board/board_pbl_start.h       |   2 +-
 .../loongson-ls1b/include/board/board_pbl_start.h  |   2 +-
 .../netgear-wg102/include/board/board_pbl_start.h  |   6 +-
 .../ritmix-rzx50/include/board/board_pbl_start.h   |   2 +-
 .../tplink-mr3020/include/board/board_pbl_start.h  |  35 ++++++
 arch/mips/include/asm/debug_ll_ns16550.h           |  20 +--
 arch/mips/include/asm/pbl_nmon.h                   |  21 ++--
 arch/mips/mach-ath79/Kconfig                       |   3 +
 arch/mips/mach-ath79/include/mach/debug_ll.h       | 136 ++++++++++++++++++++-
 10 files changed, 199 insertions(+), 35 deletions(-)
 create mode 100644 arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
