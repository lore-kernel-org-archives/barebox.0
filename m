Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2gY-0006qR-Nf
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 08:54:18 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 10:53:47 +0200
Message-Id: <20200602085412.16554-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 00/25] sandbox: support COMPILE_TESTing drivers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This series adds the last few bells and whistles to COMPILE_TEST
these drivers under sandbox as well.

The five last patches address the first few issues found by
clang-analyzer. There are still hundreds more in need of triage:
http://a3f.at/up/barebox-clang-analyzer/

(Check it out; control flow visualization is pretty! j/k to navigate)

v1 -> v2:
  - Patch stack rebased
  - Added separate <asm-generic/bitio.h> (Sascha)
  - fixed Author/Signed-off-by mismatch (Roland)
  - Drop local_irq_ stubs (Sascha)

Ahmad Fatoum (25):
  scripts: import Linux Kconfig.include
  sandbox: define CONFIG_64BIT as appropriate
  sandbox: asm: bitsperlong.h: detect bitness according to 64BIT symbol
  sandbox: support forcing 32-bit x86
  include: asm-generic: provide (in|out)_(le|be)(16|32) helpers for all
    archs
  ARM: asm/io.h: fall back to <asm-generic/bitio.h> out_be32 and friends
  sandbox: <asm/io.h>: include bitio accessors
  clocksource: arm_global_timer.c: remove unused asm/ header
  mtd: nand: orion: depend on ARM
  ddr: fsl: depend on ARM
  net: fec_imx: depend on HAS_DMA
  net: macb: depend on HAS_DMA
  sandbox: implement stub physical virtual translation
  sandbox: asm: implement stub DMA functions
  sandbox: select HAS_DMA
  ARM: atomic.h: move generic implementation to asm-generic
  include: <asm-generic/atomic.h>: remove stub IRQ save/restore
  sandbox: asm: implement <asm/atomic.h>
  usb: xhci-hcd: remove unused #include <asm/cache.h>
  usb: xhci-hcd: replace opencoded non-atomic 64-bit MMIO with lo_hi
    helper
  include: bitops: fix dead increment in fls() and ffs()
  commands: tftp: drop unused variable
  commands: test: drop dead assignment
  sandbox: os: add_image: fix memory leak
  mtd: nand: base: fix use of uninitialized struct member

 arch/arm/include/asm/atomic.h          | 108 +-----------------
 arch/arm/include/asm/io.h              |  58 +---------
 arch/sandbox/Kconfig                   |  17 +++
 arch/sandbox/Makefile                  |  12 +-
 arch/sandbox/include/asm/atomic.h      |   2 +
 arch/sandbox/include/asm/bitsperlong.h |  11 +-
 arch/sandbox/include/asm/dma.h         |  53 ++++++++-
 arch/sandbox/include/asm/io.h          |  11 ++
 arch/sandbox/os/Makefile               |   2 +-
 arch/sandbox/os/common.c               |   2 +-
 commands/test.c                        |   1 -
 commands/tftp.c                        |   8 +-
 drivers/clocksource/arm_global_timer.c |   1 -
 drivers/ddr/fsl/Kconfig                |   1 +
 drivers/mtd/nand/Kconfig               |   2 +-
 drivers/mtd/nand/nand_base.c           |   1 +
 drivers/net/Kconfig                    |   2 +
 drivers/usb/host/xhci.h                |  14 +--
 include/asm-generic/atomic.h           |  73 +++++++++++++
 include/asm-generic/bitio.h            | 145 +++++++++++++++++++++++++
 include/asm-generic/bitops/ffs.h       |   4 +-
 include/asm-generic/bitops/fls.h       |   4 +-
 scripts/Kconfig.include                |  53 +++++++++
 scripts/gcc-64bitptr.sh                |   9 ++
 scripts/gcc-version.sh                 |  20 ++++
 25 files changed, 412 insertions(+), 202 deletions(-)
 create mode 100644 arch/sandbox/include/asm/atomic.h
 create mode 100644 include/asm-generic/atomic.h
 create mode 100644 include/asm-generic/bitio.h
 create mode 100644 scripts/Kconfig.include
 create mode 100755 scripts/gcc-64bitptr.sh
 create mode 100755 scripts/gcc-version.sh

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
