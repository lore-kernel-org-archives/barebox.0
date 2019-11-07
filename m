Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSp4Q-0001xH-1z
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 21:11:59 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id 4F301E7414D
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 22:11:24 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 22:11:01 +0100
Message-Id: <20191107211119.68064-1-dev@lynxeye.de>
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
Subject: [PATCH 00/18] Zynq multi-image conversion and improvements
To: barebox@lists.infradead.org

Hi all,

this converts the Zynq architecture over to the multi-image build
mechanism, which isn't exactly new anymore at this point. This isn't
too useful right now, considering that we only support a single board
from this Zynq generation and the resulting image must fit into the
on-chip RAM due to missing 2 stage loading, but it removes the
accumulated dust from the architecture support.

Regards,
Lucas

Lucas Stach (18):
  ARM: zynq: zedboard: enable MACB driver in defconfig
  ARM: zynq: add trivial image build mechanism
  ARM: zynq: use getopt in zynq_mkimage
  ARM: zynq: move header generation to zynq_mkimage
  ARM: zynq: add size check in zynq_mkimage
  ARM: zynq: zedboard: provide DTB
  net: macb: handle more clocks
  net: macb: add Zynq compatible
  ARM: zynq: move clock controller driver to drivers/clk
  clk: zynq: use base address of clock controller
  ARM: zynq: fixup SLCR ranges
  clk: zynq: improve PLL enable handling
  clk: zynq: partially sync with Linux
  ARM: zynq: switch to DT based probing
  clk: zynq: remove clkdevs
  ARM: zynq: switch to multi-image build
  bootsource: add JTAG bootsource
  ARM: zynq: add bootsource detection

 arch/arm/Kconfig                              |   1 +
 arch/arm/boards/avnet-zedboard/Makefile       |   1 -
 arch/arm/boards/avnet-zedboard/board.c        |  24 --
 arch/arm/boards/avnet-zedboard/flash_header.c |  62 ----
 arch/arm/boards/avnet-zedboard/lowlevel.c     |  10 +-
 .../boards/avnet-zedboard/zedboard.zynqcfg    |  24 ++
 .../{zedboard_defconfig => zynq_defconfig}    |   4 +-
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/zynq-7000.dtsi                   |   4 +
 arch/arm/dts/zynq-zed.dts                     |   8 +
 arch/arm/mach-zynq/Kconfig                    |  21 +-
 arch/arm/mach-zynq/Makefile                   |   2 +-
 arch/arm/mach-zynq/devices.c                  |  13 -
 arch/arm/mach-zynq/include/mach/barebox.lds.h |   8 -
 arch/arm/mach-zynq/include/mach/devices.h     |  20 --
 .../include/mach/zynq-flash-header.h          |  39 +--
 .../include/mach/zynq7000-header-regs.h       |  49 ++++
 .../mach-zynq/include/mach/zynq7000-regs.h    |   1 +
 arch/arm/mach-zynq/zynq.c                     |  30 +-
 common/bootsource.c                           |   1 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/zynq/Makefile                     |   1 +
 .../clk-zynq7000.c => drivers/clk/zynq/clkc.c | 126 +++++---
 drivers/net/macb.c                            |  25 +-
 images/Makefile                               |   3 +-
 images/Makefile.zynq                          |  23 ++
 include/asm-generic/barebox.lds.h             |   3 +-
 include/bootsource.h                          |   1 +
 scripts/Makefile                              |   1 +
 scripts/zynq_mkimage.c                        | 274 ++++++++++++++++--
 30 files changed, 552 insertions(+), 229 deletions(-)
 delete mode 100644 arch/arm/boards/avnet-zedboard/flash_header.c
 create mode 100644 arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
 rename arch/arm/configs/{zedboard_defconfig => zynq_defconfig} (92%)
 create mode 100644 arch/arm/dts/zynq-7000.dtsi
 create mode 100644 arch/arm/dts/zynq-zed.dts
 delete mode 100644 arch/arm/mach-zynq/devices.c
 delete mode 100644 arch/arm/mach-zynq/include/mach/barebox.lds.h
 delete mode 100644 arch/arm/mach-zynq/include/mach/devices.h
 create mode 100644 arch/arm/mach-zynq/include/mach/zynq7000-header-regs.h
 create mode 100644 drivers/clk/zynq/Makefile
 rename arch/arm/mach-zynq/clk-zynq7000.c => drivers/clk/zynq/clkc.c (69%)
 create mode 100644 images/Makefile.zynq

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
