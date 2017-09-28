Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x234.google.com ([2a00:1450:400c:c0c::234])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxhzc-0004So-DO
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 23:13:23 +0000
Received: by mail-wr0-x234.google.com with SMTP id 54so5331623wrz.10
 for <barebox@lists.infradead.org>; Thu, 28 Sep 2017 16:12:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 29 Sep 2017 02:12:39 +0300
Message-Id: <20170928231249.4158-1-antonynpavlov@gmail.com>
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
Subject: [RFC v4 00/10] add initial RISC-V architecture support
To: barebox@lists.infradead.org

This patchseries adds initial RISC-V architecture support for barebox.

See Documentation/boards/riscv.rst for instructions.

You can obtain this patchseries from github:

    $ git clone -b 20170929.riscv https://github.com/frantony/barebox

Changes since RFC v3 (20161212) (http://lists.infradead.org/pipermail/barebox/2016-December/028716.html)

    * drop SiFive support, add support for custom Erizo SoC;
    * barebox runs on real hardware (e.g. DE0-Nano FPGA board,
      see https://github.com/miet-riscv-workgroup/rv32-simple-soc for details);
    * introduce NMON for RISC-V;
    * add relocator to start.S.

Changes since RFC v2 (20161113) (http://lists.infradead.org/pipermail/barebox/2016-November/028533.html):

    * add RV32 support.

Changes since RFC v1 (20161013) (http://lists.infradead.org/pipermail/barebox/2016-October/028309.html):

    * drop spike pk support;
    * add qemu-sifive board support;
    * add Documentation/boards/riscv.rst;
    * fix guard macro names

TODOs:

    * add pbl support;
    * sync with https://github.com/riscv/riscv-linux;
    * RV64 definitions are unused now;
    * sync MIPS debug_ll codes with RISC-V;
    * add support for Opencores I2C and SPI IP-blocks.

Antony Pavlov (10):
  Add initial RISC-V architecture support
  RISC-V: add Erizo SoC support
  RISC-V: add low-level debug macros for ns16550
  RISC-V: add nmon nano-monitor
  RISC-V: erizo: add DEBUG_LL support
  RISC-V: erizo: enable NMON
  RISC-V: erizo: add nmon image creation
  RISC-V: add erizo_generic_defconfig
  scripts: add nmon-loader
  Documentation: add RISC-V docs

 Documentation/boards/riscv.rst                | 110 ++++++++++++
 arch/riscv/Kconfig                            | 110 ++++++++++++
 arch/riscv/Makefile                           |  82 +++++++++
 arch/riscv/boards/erizo-generic/.gitignore    |   1 +
 arch/riscv/boards/erizo-generic/Makefile      |   1 +
 arch/riscv/boards/erizo-generic/board.c       |  28 +++
 arch/riscv/boot/Makefile                      |   2 +
 arch/riscv/boot/main_entry.c                  |  40 +++++
 arch/riscv/boot/start.S                       |  88 ++++++++++
 arch/riscv/configs/erizo_generic_defconfig    |  55 ++++++
 arch/riscv/dts/.gitignore                     |   1 +
 arch/riscv/dts/Makefile                       |   9 +
 arch/riscv/dts/erizo.dtsi                     |  46 +++++
 arch/riscv/dts/erizo_generic.dts              |  31 ++++
 arch/riscv/dts/skeleton.dtsi                  |  13 ++
 arch/riscv/include/asm/barebox.h              |   1 +
 arch/riscv/include/asm/bitops.h               |  35 ++++
 arch/riscv/include/asm/bitsperlong.h          |  10 ++
 arch/riscv/include/asm/byteorder.h            |  10 ++
 arch/riscv/include/asm/common.h               |   6 +
 arch/riscv/include/asm/debug_ll_ns16550.h     | 186 ++++++++++++++++++++
 arch/riscv/include/asm/elf.h                  |  11 ++
 arch/riscv/include/asm/io.h                   |   8 +
 arch/riscv/include/asm/mmu.h                  |   6 +
 arch/riscv/include/asm/posix_types.h          |   1 +
 arch/riscv/include/asm/riscv_nmon.h           | 234 ++++++++++++++++++++++++++
 arch/riscv/include/asm/sections.h             |   1 +
 arch/riscv/include/asm/string.h               |   1 +
 arch/riscv/include/asm/swab.h                 |   6 +
 arch/riscv/include/asm/types.h                |  60 +++++++
 arch/riscv/include/asm/unaligned.h            |  19 +++
 arch/riscv/lib/.gitignore                     |   1 +
 arch/riscv/lib/Makefile                       |   9 +
 arch/riscv/lib/ashldi3.c                      |  28 +++
 arch/riscv/lib/ashrdi3.c                      |  30 ++++
 arch/riscv/lib/asm-offsets.c                  |  12 ++
 arch/riscv/lib/barebox.lds.S                  |  89 ++++++++++
 arch/riscv/lib/dtb.c                          |  41 +++++
 arch/riscv/lib/libgcc.h                       |  29 ++++
 arch/riscv/lib/lshrdi3.c                      |  28 +++
 arch/riscv/lib/riscv_timer.c                  |  68 ++++++++
 arch/riscv/mach-erizo/Kconfig                 |  11 ++
 arch/riscv/mach-erizo/Makefile                |   3 +
 arch/riscv/mach-erizo/include/mach/debug_ll.h |  37 ++++
 drivers/of/Kconfig                            |   2 +-
 scripts/erizo-nmon-image                      |   3 +
 scripts/nmon-loader                           |  31 ++++
 47 files changed, 1633 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/boards/riscv.rst
 create mode 100644 arch/riscv/Kconfig
 create mode 100644 arch/riscv/Makefile
 create mode 100644 arch/riscv/boards/erizo-generic/.gitignore
 create mode 100644 arch/riscv/boards/erizo-generic/Makefile
 create mode 100644 arch/riscv/boards/erizo-generic/board.c
 create mode 100644 arch/riscv/boot/Makefile
 create mode 100644 arch/riscv/boot/main_entry.c
 create mode 100644 arch/riscv/boot/start.S
 create mode 100644 arch/riscv/configs/erizo_generic_defconfig
 create mode 100644 arch/riscv/dts/.gitignore
 create mode 100644 arch/riscv/dts/Makefile
 create mode 100644 arch/riscv/dts/erizo.dtsi
 create mode 100644 arch/riscv/dts/erizo_generic.dts
 create mode 100644 arch/riscv/dts/skeleton.dtsi
 create mode 100644 arch/riscv/include/asm/barebox.h
 create mode 100644 arch/riscv/include/asm/bitops.h
 create mode 100644 arch/riscv/include/asm/bitsperlong.h
 create mode 100644 arch/riscv/include/asm/byteorder.h
 create mode 100644 arch/riscv/include/asm/common.h
 create mode 100644 arch/riscv/include/asm/debug_ll_ns16550.h
 create mode 100644 arch/riscv/include/asm/elf.h
 create mode 100644 arch/riscv/include/asm/io.h
 create mode 100644 arch/riscv/include/asm/mmu.h
 create mode 100644 arch/riscv/include/asm/posix_types.h
 create mode 100644 arch/riscv/include/asm/riscv_nmon.h
 create mode 100644 arch/riscv/include/asm/sections.h
 create mode 100644 arch/riscv/include/asm/string.h
 create mode 100644 arch/riscv/include/asm/swab.h
 create mode 100644 arch/riscv/include/asm/types.h
 create mode 100644 arch/riscv/include/asm/unaligned.h
 create mode 100644 arch/riscv/lib/.gitignore
 create mode 100644 arch/riscv/lib/Makefile
 create mode 100644 arch/riscv/lib/ashldi3.c
 create mode 100644 arch/riscv/lib/ashrdi3.c
 create mode 100644 arch/riscv/lib/asm-offsets.c
 create mode 100644 arch/riscv/lib/barebox.lds.S
 create mode 100644 arch/riscv/lib/dtb.c
 create mode 100644 arch/riscv/lib/libgcc.h
 create mode 100644 arch/riscv/lib/lshrdi3.c
 create mode 100644 arch/riscv/lib/riscv_timer.c
 create mode 100644 arch/riscv/mach-erizo/Kconfig
 create mode 100644 arch/riscv/mach-erizo/Makefile
 create mode 100644 arch/riscv/mach-erizo/include/mach/debug_ll.h
 create mode 100755 scripts/erizo-nmon-image
 create mode 100755 scripts/nmon-loader

-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
