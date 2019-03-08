Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h2DDO-0006GU-VI
 for barebox@lists.infradead.org; Fri, 08 Mar 2019 10:59:07 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri,  8 Mar 2019 11:58:50 +0100
Message-Id: <20190308105854.10089-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 0/4] MIPS: add relocation support 
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

with this patches, same main binary version of barebox xan be reused
on different board with different RAM size.
The barebox will find best possible location for it self depending
on RAM size information provided by PBL.

changes v2:
- don't remove no-pic flag to avoid confusion.
- don't set ggdb flag for barebox tools.

Oleksij Rempel (4):
  MIPS: relocation: pass ram size to pbl_main_entry
  MIPS: relocation: add relocation support
  MIPS: relocation: do not use configurable memory layout
  MIPS: remove request_sdram_region "fdt"

 arch/mips/Kconfig                             |  19 +-
 arch/mips/Makefile                            |   9 +-
 arch/mips/boards/8devices-lima/lowlevel.S     |   3 +-
 arch/mips/boards/black-swift/lowlevel.S       |   3 +-
 arch/mips/boards/dlink-dir-320/lowlevel.S     |   3 +-
 .../boards/dptechnics-dpt-module/lowlevel.S   |   3 +-
 arch/mips/boards/img-ci20/lowlevel.S          |   3 +-
 arch/mips/boards/loongson-ls1b/lowlevel.S     |   3 +-
 arch/mips/boards/qemu-malta/lowlevel.S        |   3 +-
 arch/mips/boards/ritmix-rzx50/lowlevel.S      |   3 +-
 arch/mips/boards/tplink-mr3020/lowlevel.S     |   3 +-
 arch/mips/boards/tplink-wdr4300/lowlevel.S    |   3 +-
 arch/mips/boot/dtb.c                          |   4 -
 arch/mips/boot/main_entry-pbl.c               |  13 +-
 arch/mips/boot/main_entry.c                   |  17 +-
 arch/mips/boot/start.S                        |   4 +-
 arch/mips/include/asm/asm.h                   |   3 +-
 arch/mips/include/asm/pbl_macros.h            |   4 +-
 arch/mips/include/asm/relocs.h                |  23 +
 arch/mips/include/asm/sections.h              |  14 +
 arch/mips/lib/Makefile                        |   2 +
 arch/mips/lib/barebox.lds.S                   |  27 +-
 arch/mips/lib/cpu-probe.c                     |  14 +
 arch/mips/lib/pbl.lds.S                       |   2 +-
 arch/mips/lib/reloc.c                         | 182 ++++++++
 arch/mips/lib/sections.c                      |   9 +
 scripts/Makefile                              |   1 +
 scripts/mips-relocs.c                         | 426 ++++++++++++++++++
 28 files changed, 771 insertions(+), 32 deletions(-)
 create mode 100644 arch/mips/include/asm/relocs.h
 create mode 100644 arch/mips/lib/reloc.c
 create mode 100644 arch/mips/lib/sections.c
 create mode 100644 scripts/mips-relocs.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
