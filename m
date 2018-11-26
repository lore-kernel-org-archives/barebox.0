Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRD27-0000ez-BR
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 09:18:28 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Nov 2018 10:17:57 +0100
Message-Id: <20181126091807.19398-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 00/10] MIPS: migrate to multiimage support 
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

This patch series is a huge move to a multiimage support.
As long as we do not have lots of boards, it is better to do it now.
The most painful patch is "MIPS: port all mach* to multiimage", since
it was too hard to split the work to multiple step, it is all-in-one
patch. I hope my children will forgive me this... ;)

Oleksij Rempel (10):
  images: piggy: use "a" instead of #alloc flag
  MIPS: add arch/mips/lib/pbl.lds.S
  pbl: enable MIPS for PBL_RELOCATABLE
  MIPS: start: preserve DTB pointer for later use
  MIPS: multiimage: add ENTRY_FUNCTION macros
  MIPS: mutliimage: pass devicetree from PBL to the main_entry
  MIPS: put main_entry to __bare_init section
  MIPS: port all mach* to multiimage
  MIPS: remove HAS_NO_BOARD_HL_CODE support
  MIPS: multiimage: remove useless board files

 arch/mips/Kconfig                             | 10 ++-
 arch/mips/Makefile                            | 30 +------
 arch/mips/boards/8devices-lima/Makefile       |  1 +
 .../board/board_pbl_start.h => lowlevel.S}    | 27 ++----
 arch/mips/boards/Makefile                     | 11 +++
 arch/mips/boards/black-swift/Makefile         |  2 +-
 arch/mips/boards/black-swift/board.c          | 27 ------
 .../board/board_pbl_start.h => lowlevel.S}    | 17 ++--
 .../boards/dptechnics-dpt-module/Makefile     |  1 +
 .../board/board_pbl_start.h => lowlevel.S}    | 14 +--
 arch/mips/boards/img-ci20/Makefile            |  2 +-
 arch/mips/boards/img-ci20/board.c             | 27 ------
 .../boards/img-ci20/include/board/debug_ll.h  | 23 -----
 .../board/board_pbl_start.h => lowlevel.S}    | 14 ++-
 arch/mips/boards/loongson-ls1b/Makefile       |  2 +-
 .../board/board_pbl_start.h => lowlevel.S}    | 14 ++-
 arch/mips/boards/loongson-ls1b/serial.c       | 10 ---
 arch/mips/boards/netgear-wg102/Makefile       |  1 +
 .../board/board_pbl_start.h => lowlevel.S}    | 20 +++--
 arch/mips/boards/qemu-malta/Makefile          |  2 +-
 arch/mips/boards/qemu-malta/init.c            | 29 ------
 .../board/board_pbl_start.h => lowlevel.S}    | 16 ++--
 arch/mips/boards/ritmix-rzx50/Makefile        |  2 +-
 .../ritmix-rzx50/include/board/debug_ll.h     | 23 -----
 .../board/board_pbl_start.h => lowlevel.S}    | 14 ++-
 arch/mips/boards/ritmix-rzx50/serial.c        | 27 ------
 arch/mips/boards/tplink-mr3020/Makefile       |  2 +-
 arch/mips/boards/tplink-mr3020/board.c        | 27 ------
 .../board/board_pbl_start.h => lowlevel.S}    | 17 ++--
 arch/mips/boards/tplink-wdr4300/Makefile      |  2 +-
 arch/mips/boards/tplink-wdr4300/board.c       | 28 ------
 .../board/board_pbl_start.h => lowlevel.S}    | 27 ++----
 arch/mips/boot/Makefile                       |  4 +-
 arch/mips/boot/dtb.c                          | 16 +++-
 arch/mips/boot/main_entry-pbl.c               | 15 ++--
 arch/mips/boot/main_entry.c                   | 11 ++-
 arch/mips/boot/start-pbl.S                    |  1 -
 arch/mips/boot/start.S                        |  7 ++
 arch/mips/configs/8devices-lima_defconfig     | 83 -----------------
 ...plink-mr3020_defconfig => ath79_defconfig} |  9 +-
 arch/mips/configs/black-swift_defconfig       | 54 -----------
 .../configs/dptechnics-dpt-module_defconfig   | 89 -------------------
 arch/mips/configs/img-ci20_defconfig          | 45 ----------
 arch/mips/configs/qemu-malta_defconfig        | 12 +--
 arch/mips/configs/tplink-wdr4300_defconfig    | 82 -----------------
 ...itmix-rzx50_defconfig => xburst_defconfig} |  8 +-
 arch/mips/dts/Makefile                        | 15 +++-
 arch/mips/include/asm/asm.h                   | 29 ++++++
 arch/mips/lib/pbl.lds.S                       | 54 +++++++++++
 arch/mips/mach-ar231x/include/mach/debug_ll.h |  2 +-
 arch/mips/mach-ath79/Kconfig                  | 22 ++++-
 arch/mips/mach-ath79/include/mach/debug_ll.h  | 12 ++-
 .../mach-ath79/include/mach/debug_ll_ar9331.h |  2 +-
 .../mach-ath79/include/mach/debug_ll_ar9344.h |  4 +-
 .../mips/mach-ath79/include/mach/pbl_macros.h |  5 +-
 arch/mips/mach-loongson/Kconfig               |  1 +
 .../mach-loongson/include/mach/debug_ll.h     |  2 +-
 arch/mips/mach-malta/Kconfig                  |  9 +-
 arch/mips/mach-malta/include/mach/debug_ll.h  | 10 ++-
 arch/mips/mach-xburst/Kconfig                 | 14 ++-
 arch/mips/mach-xburst/include/mach/debug_ll.h | 14 ++-
 images/Makefile                               |  7 +-
 images/Makefile.ar231x                        |  3 +
 images/Makefile.ath79                         | 20 +++++
 images/Makefile.loongson                      |  3 +
 images/Makefile.malta                         |  3 +
 images/Makefile.xburst                        |  7 ++
 images/piggy.S                                |  2 +-
 pbl/Kconfig                                   |  2 +-
 69 files changed, 377 insertions(+), 770 deletions(-)
 create mode 100644 arch/mips/boards/8devices-lima/Makefile
 rename arch/mips/boards/8devices-lima/{include/board/board_pbl_start.h => lowlevel.S} (78%)
 create mode 100644 arch/mips/boards/Makefile
 delete mode 100644 arch/mips/boards/black-swift/board.c
 rename arch/mips/boards/black-swift/{include/board/board_pbl_start.h => lowlevel.S} (84%)
 create mode 100644 arch/mips/boards/dptechnics-dpt-module/Makefile
 rename arch/mips/boards/dptechnics-dpt-module/{include/board/board_pbl_start.h => lowlevel.S} (55%)
 delete mode 100644 arch/mips/boards/img-ci20/board.c
 delete mode 100644 arch/mips/boards/img-ci20/include/board/debug_ll.h
 rename arch/mips/boards/img-ci20/{include/board/board_pbl_start.h => lowlevel.S} (85%)
 rename arch/mips/boards/loongson-ls1b/{include/board/board_pbl_start.h => lowlevel.S} (83%)
 delete mode 100644 arch/mips/boards/loongson-ls1b/serial.c
 rename arch/mips/boards/netgear-wg102/{include/board/board_pbl_start.h => lowlevel.S} (87%)
 delete mode 100644 arch/mips/boards/qemu-malta/init.c
 rename arch/mips/boards/qemu-malta/{include/board/board_pbl_start.h => lowlevel.S} (92%)
 delete mode 100644 arch/mips/boards/ritmix-rzx50/include/board/debug_ll.h
 rename arch/mips/boards/ritmix-rzx50/{include/board/board_pbl_start.h => lowlevel.S} (85%)
 delete mode 100644 arch/mips/boards/ritmix-rzx50/serial.c
 delete mode 100644 arch/mips/boards/tplink-mr3020/board.c
 rename arch/mips/boards/tplink-mr3020/{include/board/board_pbl_start.h => lowlevel.S} (84%)
 delete mode 100644 arch/mips/boards/tplink-wdr4300/board.c
 rename arch/mips/boards/tplink-wdr4300/{include/board/board_pbl_start.h => lowlevel.S} (77%)
 delete mode 100644 arch/mips/configs/8devices-lima_defconfig
 rename arch/mips/configs/{tplink-mr3020_defconfig => ath79_defconfig} (90%)
 delete mode 100644 arch/mips/configs/black-swift_defconfig
 delete mode 100644 arch/mips/configs/dptechnics-dpt-module_defconfig
 delete mode 100644 arch/mips/configs/img-ci20_defconfig
 delete mode 100644 arch/mips/configs/tplink-wdr4300_defconfig
 rename arch/mips/configs/{ritmix-rzx50_defconfig => xburst_defconfig} (89%)
 create mode 100644 arch/mips/lib/pbl.lds.S
 create mode 100644 images/Makefile.ar231x
 create mode 100644 images/Makefile.ath79
 create mode 100644 images/Makefile.loongson
 create mode 100644 images/Makefile.malta
 create mode 100644 images/Makefile.xburst

-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
