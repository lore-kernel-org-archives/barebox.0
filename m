Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2l5-00005M-Db
 for barebox@lists.infradead.org; Mon, 11 May 2020 07:21:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 May 2020 09:21:17 +0200
Message-Id: <20200511072140.29610-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 00/23] sandbox: support COMPILE_TESTing drivers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We have quite a few drivers marked for COMPILE_TEST in tree now.
I compile-tested them so far under ARCH_STM32MP and ARCH_IMX.

The end goal was to be able to build them for non-ARM as well,
especially ARCH=sandbox, which, being a hosted platform, can
easily be compiled with clang-analyzer or other static analyzers.

This series adds the last few bells and whistles to COMPILE_TEST
these drivers under sandbox as well.

The five last patches address the first few issues found by
clang-analyzer. There are still hundreds more in need of triage:
http://a3f.at/up/barebox-clang-analyzer/

(Check it out; control flow visualization is pretty! j/k to navigate)

Cheers,
Ahmad (23):
  scripts: import Linux Kconfig.include
  sandbox: define CONFIG_64BIT as appropriate
  sandbox: asm: bitsperlong.h: detect bitness according to 64BIT symbol
  include: io.h: provide (in|out)_(le|be)(16|32) helpers for all archs
  ARM: asm/io.h: fall back to asm-generic out_be32 and friends
  clocksource: arm_global_timer.c: remove unused asm/ header
  mtd: nand: orion: depend on ARM
  ddr: fsl: depend on ARM
  net: fec_imx: depend on HAS_DMA
  net: macb: depend on HAS_DMA
  sandbox: implement stub physical virtual translation
  sandbox: asm: implement stub DMA functions
  sandbox: select HAS_DMA
  ARM: atomic.h: move generic implementation to asm-generic
  sandbox: asm: implement <asm/atomic.h>
  sandbox: support forcing 32-bit x86
  usb: xhci-hcd: remove unused #include <asm/cache.h>
  usb: xhci-hcd: replace opencoded non-atomic 64-bit MMIO with lo_hi
    helper
  include: bitops: fix dead increment in fls() and ffs()
  commands: tftp: drop unused variable
  commands: test: drop dead assignment
  sandbox: os: add_image: fix memory leak
  mtd: nand: base: fix use of uninitialized struct member

 arch/arm/include/asm/atomic.h          | 108 +------------------
 arch/arm/include/asm/io.h              |  57 ----------
 arch/sandbox/Kconfig                   |  17 +++
 arch/sandbox/Makefile                  |  12 ++-
 arch/sandbox/include/asm/atomic.h      |  11 ++
 arch/sandbox/include/asm/bitsperlong.h |  11 +-
 arch/sandbox/include/asm/dma.h         |  53 +++++++++-
 arch/sandbox/include/asm/io.h          |  10 ++
 arch/sandbox/include/asm/system.h      |  14 +++
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
 include/asm-generic/atomic.h           |  99 ++++++++++++++++++
 include/asm-generic/bitops/ffs.h       |   2 +-
 include/asm-generic/bitops/fls.h       |   2 +-
 include/asm-generic/io.h               | 138 +++++++++++++++++++++++++
 scripts/Kconfig.include                |  53 ++++++++++
 scripts/gcc-64bitptr.sh                |   9 ++
 scripts/gcc-version.sh                 |  20 ++++
 26 files changed, 452 insertions(+), 198 deletions(-)
 create mode 100644 arch/sandbox/include/asm/atomic.h
 create mode 100644 arch/sandbox/include/asm/system.h
 create mode 100644 include/asm-generic/atomic.h
 create mode 100644 scripts/Kconfig.include
 create mode 100755 scripts/gcc-64bitptr.sh
 create mode 100755 scripts/gcc-version.sh

-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
