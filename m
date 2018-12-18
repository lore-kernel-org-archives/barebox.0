Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZ9fn-0002SD-VZ
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 07:20:17 +0000
Received: by mail-lj1-x244.google.com with SMTP id t9-v6so13269763ljh.6
 for <barebox@lists.infradead.org>; Mon, 17 Dec 2018 23:20:01 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 18 Dec 2018 10:19:33 +0300
Message-Id: <20181218071943.2560-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 00/10] Add initial RISC-V architecture support
To: barebox@lists.infradead.org

This patchseries adds initial RISC-V architecture support for barebox.

See Documentation/boards/riscv.rst for instructions.

You can obtain this patchseries from github:

    $ git clone -b 20181218.riscv https://github.com/frantony/barebox

Changes since PATCH v2 (20180628)
(http://lists.infradead.org/pipermail/barebox/2018-June/033879.html)

    * eliminate arch/riscv/boards/erizo-generic;
    * use obj-dtb-y to include the dtb;
    * simplify barebox.lds.S (see http://lists.infradead.org/pipermail/barebox/2018-June/033901.html);
    * add SPDX-License-Identifier;
    * rebase over latest master.

Changes since PATCH v1 (20170415)
(http://lists.infradead.org/pipermail/barebox/2018-April/032647.html)

    * drop skeleton.dtsi;
    * drop SPI GPIO bindings for erizo_generic;
    * improve erizo-nmon-image;
    * generic linker script is dropped;
    * use generic GCC library routines from lib.

Changes since RFC v4 (20170927)
(http://lists.infradead.org/pipermail/barebox/2017-September/031226.html)

    * drop 64-bit support;
    * sync with RISC-V linux;
    * RISC-V in barebox now is little endian only;
    * fix according to notes by Oleksij Rempel.

Changes since RFC v3 (20161212)
(http://lists.infradead.org/pipermail/barebox/2016-December/028716.html)

    * drop SiFive support, add support for custom Erizo SoC;
    * barebox runs on real hardware (e.g. DE0-Nano FPGA board,
      see https://github.com/miet-riscv-workgroup/rv32-simple-soc for
details);
    * introduce NMON for RISC-V;
    * add relocator to start.S.

Changes since RFC v2 (20161113)
(http://lists.infradead.org/pipermail/barebox/2016-November/028533.html):

    * add RV32 support.

Changes since RFC v1 (20161013)
(http://lists.infradead.org/pipermail/barebox/2016-October/028309.html):

    * drop spike pk support;
    * add qemu-sifive board support;
    * add Documentation/boards/riscv.rst;
    * fix guard macro names.

Antony Pavlov (10):
  Add initial RISC-V architecture support
  RISC-V: add Erizo SoC support
  RISC-V: add low-level debug macros for ns16550
  RISC-V: add nmon nano-monitor
  RISC-V: erizo: add DEBUG_LL support
  RISC-V: erizo: enable nmon
  RISC-V: erizo: add nmon image creation
  RISC-V: add erizo_generic_defconfig
  scripts: add nmon-loader
  Documentation: add RISC-V docs

 Documentation/boards/riscv.rst                |  91 +++++++
 arch/riscv/Kconfig                            |  91 +++++++
 arch/riscv/Makefile                           |  67 +++++
 arch/riscv/boot/Makefile                      |   3 +
 arch/riscv/boot/dtb.c                         |  37 +++
 arch/riscv/boot/main_entry.c                  |  35 +++
 arch/riscv/boot/start.S                       |  68 +++++
 arch/riscv/configs/erizo_generic_defconfig    |  51 ++++
 arch/riscv/dts/.gitignore                     |   1 +
 arch/riscv/dts/Makefile                       |  13 +
 arch/riscv/dts/erizo-generic.dts              |  14 ++
 arch/riscv/dts/erizo.dtsi                     |  46 ++++
 arch/riscv/include/asm/barebox.h              |   1 +
 arch/riscv/include/asm/bitops.h               |  32 +++
 arch/riscv/include/asm/bitsperlong.h          |  10 +
 arch/riscv/include/asm/byteorder.h            |   6 +
 arch/riscv/include/asm/common.h               |   6 +
 arch/riscv/include/asm/debug_ll_ns16550.h     | 182 ++++++++++++++
 arch/riscv/include/asm/elf.h                  |  11 +
 arch/riscv/include/asm/io.h                   |   8 +
 arch/riscv/include/asm/mmu.h                  |   6 +
 arch/riscv/include/asm/posix_types.h          |   1 +
 arch/riscv/include/asm/riscv_nmon.h           | 234 ++++++++++++++++++
 arch/riscv/include/asm/sections.h             |   1 +
 arch/riscv/include/asm/string.h               |   1 +
 arch/riscv/include/asm/swab.h                 |   6 +
 arch/riscv/include/asm/types.h                |  60 +++++
 arch/riscv/include/asm/unaligned.h            |  19 ++
 arch/riscv/lib/.gitignore                     |   1 +
 arch/riscv/lib/Makefile                       |   3 +
 arch/riscv/lib/asm-offsets.c                  |  12 +
 arch/riscv/lib/barebox.lds.S                  |  79 ++++++
 arch/riscv/lib/riscv_timer.c                  |  63 +++++
 arch/riscv/mach-erizo/Kconfig                 |  11 +
 arch/riscv/mach-erizo/Makefile                |   3 +
 arch/riscv/mach-erizo/include/mach/debug_ll.h |  33 +++
 drivers/of/Kconfig                            |   2 +-
 scripts/erizo-nmon-image                      |  10 +
 scripts/nmon-loader                           |  31 +++
 39 files changed, 1348 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/boards/riscv.rst
 create mode 100644 arch/riscv/Kconfig
 create mode 100644 arch/riscv/Makefile
 create mode 100644 arch/riscv/boot/Makefile
 create mode 100644 arch/riscv/boot/dtb.c
 create mode 100644 arch/riscv/boot/main_entry.c
 create mode 100644 arch/riscv/boot/start.S
 create mode 100644 arch/riscv/configs/erizo_generic_defconfig
 create mode 100644 arch/riscv/dts/.gitignore
 create mode 100644 arch/riscv/dts/Makefile
 create mode 100644 arch/riscv/dts/erizo-generic.dts
 create mode 100644 arch/riscv/dts/erizo.dtsi
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
 create mode 100644 arch/riscv/lib/asm-offsets.c
 create mode 100644 arch/riscv/lib/barebox.lds.S
 create mode 100644 arch/riscv/lib/riscv_timer.c
 create mode 100644 arch/riscv/mach-erizo/Kconfig
 create mode 100644 arch/riscv/mach-erizo/Makefile
 create mode 100644 arch/riscv/mach-erizo/include/mach/debug_ll.h
 create mode 100755 scripts/erizo-nmon-image
 create mode 100755 scripts/nmon-loader

-- 
2.20.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
