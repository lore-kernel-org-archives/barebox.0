Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f176.google.com ([209.85.217.176])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSBGM-0002Pf-Ds
 for barebox@lists.infradead.org; Mon, 24 Mar 2014 20:14:27 +0000
Received: by mail-lb0-f176.google.com with SMTP id 10so4056490lbg.35
 for <barebox@lists.infradead.org>; Mon, 24 Mar 2014 13:14:01 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 25 Mar 2014 00:13:46 +0400
Message-Id: <1395692034-5821-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 0/8] MIPS: improve Ingenic JZ4755 device tree support
To: barebox@lists.infradead.org

This patcheseries moves Ingenic JZ4755 UART initialization
into device tree and makes JZ4755 device tree organization
more clear.

This patchseries is a part of work on Ingenic chips support
and prepares MIPS board support switch to device tree.
Next patchseries will add device tree Ingenic gpio, clk
and pinctls support.

Changes since v1:
  * use "make FCR setup value part of struct ns16550_priv"
    instead of "make it possible to get reg_write() from devtype";
  * add a trivial "fix whitespaces" patch.


Antony Pavlov (8):
  MIPS: mach-xburst: fix DEBUG_LL=n build error
  MIPS: dts: rzx50: move jz4755 description to the separate file
  serial: ns16550: fix whitespaces
  serial: ns16550: make FCR setup value part of struct ns16550_priv
  serial: ns16550: add compatible entry for "ingenic,jz4740-uart"
  MIPS: rzx50: drop console initialization in board code
  MIPS: mach-xburst: drop serial.c
  MIPS: boards: rename rzx50 -> ritmix-rzx50

 Documentation/boards.dox                           |  2 +-
 arch/mips/Makefile                                 |  2 +-
 arch/mips/boards/ritmix-rzx50/Makefile             |  1 +
 .../ritmix-rzx50/include/board/board_pbl_start.h   | 43 ++++++++++++++++
 .../boards/ritmix-rzx50/include/board/debug_ll.h   | 23 +++++++++
 arch/mips/boards/ritmix-rzx50/ritmix-rzx50.dox     | 46 +++++++++++++++++
 arch/mips/boards/ritmix-rzx50/serial.c             | 27 ++++++++++
 arch/mips/boards/rzx50/Makefile                    |  1 -
 .../boards/rzx50/include/board/board_pbl_start.h   | 43 ----------------
 arch/mips/boards/rzx50/include/board/debug_ll.h    | 23 ---------
 arch/mips/boards/rzx50/rzx50.dox                   | 46 -----------------
 arch/mips/boards/rzx50/serial.c                    | 32 ------------
 arch/mips/configs/ritmix-rzx50_defconfig           | 39 ++++++++++++++
 arch/mips/configs/rzx50_defconfig                  | 39 --------------
 arch/mips/dts/jz4755.dtsi                          | 35 +++++++++++++
 arch/mips/dts/rzx50.dts                            |  8 ++-
 arch/mips/include/asm/debug_ll_ns16550.h           |  2 +
 arch/mips/mach-xburst/Makefile                     |  1 -
 arch/mips/mach-xburst/mach-xburst.dox              |  2 +-
 arch/mips/mach-xburst/serial.c                     | 60 ----------------------
 drivers/serial/serial_ns16550.c                    | 35 ++++++++++---
 21 files changed, 254 insertions(+), 256 deletions(-)
 create mode 100644 arch/mips/boards/ritmix-rzx50/Makefile
 create mode 100644 arch/mips/boards/ritmix-rzx50/include/board/board_pbl_start.h
 create mode 100644 arch/mips/boards/ritmix-rzx50/include/board/debug_ll.h
 create mode 100644 arch/mips/boards/ritmix-rzx50/ritmix-rzx50.dox
 create mode 100644 arch/mips/boards/ritmix-rzx50/serial.c
 delete mode 100644 arch/mips/boards/rzx50/Makefile
 delete mode 100644 arch/mips/boards/rzx50/include/board/board_pbl_start.h
 delete mode 100644 arch/mips/boards/rzx50/include/board/debug_ll.h
 delete mode 100644 arch/mips/boards/rzx50/rzx50.dox
 delete mode 100644 arch/mips/boards/rzx50/serial.c
 create mode 100644 arch/mips/configs/ritmix-rzx50_defconfig
 delete mode 100644 arch/mips/configs/rzx50_defconfig
 create mode 100644 arch/mips/dts/jz4755.dtsi
 delete mode 100644 arch/mips/mach-xburst/serial.c

-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
