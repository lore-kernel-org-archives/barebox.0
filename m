Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2GZ-0003LO-AI
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 06:58:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 08:58:07 +0200
Message-Id: <20181018065827.19973-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/20] Fixes for -Wmissing-prototypes warnings
To: Barebox List <barebox@lists.infradead.org>

This fixes several warnings that occur with -Wmissing-prototypes enabled.
There are many warnings left to fix, so feel free to continue the work ;)

Sascha

Sascha Hauer (20):
  ARM: Fix missing prototype warning
  mtd: nand: mxs: make locally used functions static
  video: imx-ipu-v3: Make locally used function static
  ARM: mmu: rename dma_alloc
  dma: Add missing re-inclusion protector
  ARM: mmu: include dma.h
  fs: Make locally used functions static
  ARM: cache: include mmu.h
  ARM: boards: GuF Vincell: Make locally used function static
  ARM: boards: karo-tx6x: Make locally used function static
  ARM: boards: kindle mx50: Make locally used function static
  ARM: boards: kontron-samx6i: Add include file to provide prototype
  ARM: boards: phytec-som-imx6: Make locally used function static
  ARM: legacy Linux support: Make locally used functions static
  drivers: clk: imx5: Make locally used functions static
  usb: ulpi: Make locally used functions static
  ARM: unwind: Provide prototypes for exported functions
  ARM: unwind: Make locally used function static
  ARM: i.MX: Add missing include
  nvmem: i.MX ocotp: Make locally used functions static

 arch/arm/boards/guf-vincell/lowlevel.c    |  2 +-
 arch/arm/boards/karo-tx6x/board.c         |  2 +-
 arch/arm/boards/kindle-mx50/board.c       |  2 +-
 arch/arm/boards/kontron-samx6i/board.c    |  2 +-
 arch/arm/boards/kontron-samx6i/lowlevel.c |  2 +-
 arch/arm/boards/kontron-samx6i/mem.c      |  2 ++
 arch/arm/boards/kontron-samx6i/mem.h      |  6 ++++
 arch/arm/boards/phytec-som-imx6/board.c   |  2 +-
 arch/arm/cpu/cache.c                      |  2 ++
 arch/arm/cpu/mmu.c                        |  7 +++--
 arch/arm/include/asm/barebox-arm.h        |  2 ++
 arch/arm/lib32/armlinux.c                 |  6 ++--
 arch/arm/lib32/unwind.c                   |  7 ++++-
 arch/arm/mach-imx/cpu_init.c              |  1 +
 drivers/clk/imx/clk-imx5.c                |  6 ++--
 drivers/mtd/nand/nand_mxs.c               |  4 +--
 drivers/nvmem/ocotp.c                     |  4 +--
 drivers/usb/otg/ulpi.c                    |  4 +--
 drivers/video/imx-ipu-v3/ipufb.c          |  2 +-
 fs/fs.c                                   | 36 +++++++++++------------
 include/dma-dir.h                         |  5 ++++
 21 files changed, 65 insertions(+), 41 deletions(-)
 create mode 100644 arch/arm/boards/kontron-samx6i/mem.h

-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
