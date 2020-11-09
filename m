Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc7TI-0004wA-Ii
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 13:44:37 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  9 Nov 2020 14:44:22 +0100
Message-Id: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 0/8] QEMU virt machine support via mach-vexpress
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Instead of using ARCH_QEMU, this variant uses ARCH_VEXPRESS to base its
support for the QEMU virt machine on. Contains a cleanup and conversion
of the vexpress boards to board drivers and an implementation of
zero_page_access and faulting for ARM32.

Rouven Czerwinski (8):
  ARM: MMU: add zero_page_{access,faulting}
  mtd: cfi_flash: allow 0x0 mapping
  amba: add *_amba_driver helper macros
  ARM: vexpress: remove unused KConfig file
  ARM: vexpress: convert to board driver
  ARM: vexpress: move Options to ARCH_VEXPRESS
  ARM: qemu: add support for qemu virt platform
  ARM: vexpress: enable VIRT board, MMU and cmds

 arch/arm/Kconfig                    |  6 ++-
 arch/arm/boards/Makefile            |  1 +
 arch/arm/boards/qemu-virt/Makefile  |  1 +
 arch/arm/boards/qemu-virt/board.c   | 36 +++++++++++++++
 arch/arm/boards/vexpress/Kconfig    |  8 ----
 arch/arm/boards/vexpress/init.c     | 69 +++++++++++++++++------------
 arch/arm/configs/vexpress_defconfig |  5 +++
 arch/arm/cpu/Kconfig                |  1 -
 arch/arm/cpu/mmu.c                  | 13 ++++++
 arch/arm/mach-vexpress/Kconfig      | 12 ++---
 drivers/clocksource/amba-sp804.c    |  2 +-
 drivers/mci/mmci.c                  |  7 +--
 drivers/mtd/nor/cfi_flash.c         |  6 +++
 drivers/mtd/nor/cfi_flash.h         | 18 ++++++++
 drivers/serial/amba-pl011.c         |  8 +---
 include/linux/amba/bus.h            |  7 +++
 include/zero_page.h                 | 14 ------
 lib/Kconfig                         |  3 --
 18 files changed, 139 insertions(+), 78 deletions(-)
 create mode 100644 arch/arm/boards/qemu-virt/Makefile
 create mode 100644 arch/arm/boards/qemu-virt/board.c
 delete mode 100644 arch/arm/boards/vexpress/Kconfig

-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
