Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGF0S-00072a-Is
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 01:02:18 +0000
Received: by mail-wm0-x242.google.com with SMTP id u144so7924115wmu.0
 for <barebox@lists.infradead.org>; Sun, 11 Dec 2016 17:01:56 -0800 (PST)
Received: from localhost.localdomain (ppp109-252-108-40.pppoe.spdop.ru.
 [109.252.108.40])
 by smtp.gmail.com with ESMTPSA id l137sm2795913lfb.7.2016.12.11.17.01.51
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Dec 2016 17:01:52 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 12 Dec 2016 04:01:44 +0300
Message-Id: <20161212010146.18667-1-antonynpavlov@gmail.com>
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
Subject: [RFC v3 0/2] add initial RISC-V architecture support
To: barebox@lists.infradead.org

This patchseries adds initial RISC-V architecture support for barebox.

See Documentation/boards/riscv.rst for instructions.

You can obtain this patchseries from github:

    $ git clone -b 20161212.riscv https://github.com/frantony/barebox

Changes since RFC v2 (20161113) (http://lists.infradead.org/pipermail/barebox/2016-November/028533.html):

    * add RV32 support.

Changes since RFC v1 (20161013) (http://lists.infradead.org/pipermail/barebox/2016-October/028309.html):

    * drop spike pk support;
    * add qemu-sifive board support;
    * add Documentation/boards/riscv.rst;
    * fix guard macro names.

TODOs:
    * add nmon for RISC-V;
    * run barebox on a real FPGA board.

Antony Pavlov (2):
  serial: add driver for SiFive UART
  Add initial RISC-V architecture support

 Documentation/boards/riscv.rst                 |  93 +++++++++++++++++++++
 arch/riscv/Kconfig                             |  76 +++++++++++++++++
 arch/riscv/Makefile                            |  51 ++++++++++++
 arch/riscv/boards/qemu-sifive/.gitignore       |   1 +
 arch/riscv/boards/qemu-sifive/Makefile         |   1 +
 arch/riscv/boards/qemu-sifive/board.c          |  28 +++++++
 arch/riscv/boot/Makefile                       |   2 +
 arch/riscv/boot/main_entry.c                   |  40 +++++++++
 arch/riscv/boot/start.S                        |  44 ++++++++++
 arch/riscv/configs/qemu-sifive-e300_defconfig  |  76 +++++++++++++++++
 arch/riscv/configs/qemu-sifive-u500_defconfig  |  75 +++++++++++++++++
 arch/riscv/dts/.gitignore                      |   1 +
 arch/riscv/dts/Makefile                        |   9 ++
 arch/riscv/dts/qemu-sifive.dts                 |  19 +++++
 arch/riscv/dts/skeleton.dtsi                   |  13 +++
 arch/riscv/include/asm/barebox.h               |   1 +
 arch/riscv/include/asm/bitops.h                |  35 ++++++++
 arch/riscv/include/asm/bitsperlong.h           |  10 +++
 arch/riscv/include/asm/byteorder.h             |  12 +++
 arch/riscv/include/asm/common.h                |   6 ++
 arch/riscv/include/asm/elf.h                   |  11 +++
 arch/riscv/include/asm/io.h                    |   8 ++
 arch/riscv/include/asm/posix_types.h           |   1 +
 arch/riscv/include/asm/sections.h              |   1 +
 arch/riscv/include/asm/string.h                |   1 +
 arch/riscv/include/asm/swab.h                  |   6 ++
 arch/riscv/include/asm/types.h                 |  60 ++++++++++++++
 arch/riscv/include/asm/unaligned.h             |  19 +++++
 arch/riscv/lib/.gitignore                      |   1 +
 arch/riscv/lib/Makefile                        |   7 ++
 arch/riscv/lib/ashldi3.c                       |  28 +++++++
 arch/riscv/lib/ashrdi3.c                       |  30 +++++++
 arch/riscv/lib/asm-offsets.c                   |  12 +++
 arch/riscv/lib/barebox.lds.S                   |  87 ++++++++++++++++++++
 arch/riscv/lib/dtb.c                           |  41 ++++++++++
 arch/riscv/lib/libgcc.h                        |  29 +++++++
 arch/riscv/lib/lshrdi3.c                       |  28 +++++++
 arch/riscv/mach-sifive/Kconfig                 |  16 ++++
 arch/riscv/mach-sifive/Makefile                |   3 +
 arch/riscv/mach-sifive/include/mach/debug_ll.h |  38 +++++++++
 drivers/of/Kconfig                             |   2 +-
 drivers/serial/Kconfig                         |   3 +
 drivers/serial/Makefile                        |   1 +
 drivers/serial/serial_sifive.c                 | 109 +++++++++++++++++++++++++
 44 files changed, 1134 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/boards/riscv.rst
 create mode 100644 arch/riscv/Kconfig
 create mode 100644 arch/riscv/Makefile
 create mode 100644 arch/riscv/boards/qemu-sifive/.gitignore
 create mode 100644 arch/riscv/boards/qemu-sifive/Makefile
 create mode 100644 arch/riscv/boards/qemu-sifive/board.c
 create mode 100644 arch/riscv/boot/Makefile
 create mode 100644 arch/riscv/boot/main_entry.c
 create mode 100644 arch/riscv/boot/start.S
 create mode 100644 arch/riscv/configs/qemu-sifive-e300_defconfig
 create mode 100644 arch/riscv/configs/qemu-sifive-u500_defconfig
 create mode 100644 arch/riscv/dts/.gitignore
 create mode 100644 arch/riscv/dts/Makefile
 create mode 100644 arch/riscv/dts/qemu-sifive.dts
 create mode 100644 arch/riscv/dts/skeleton.dtsi
 create mode 100644 arch/riscv/include/asm/barebox.h
 create mode 100644 arch/riscv/include/asm/bitops.h
 create mode 100644 arch/riscv/include/asm/bitsperlong.h
 create mode 100644 arch/riscv/include/asm/byteorder.h
 create mode 100644 arch/riscv/include/asm/common.h
 create mode 100644 arch/riscv/include/asm/elf.h
 create mode 100644 arch/riscv/include/asm/io.h
 create mode 100644 arch/riscv/include/asm/posix_types.h
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
 create mode 100644 arch/riscv/mach-sifive/Kconfig
 create mode 100644 arch/riscv/mach-sifive/Makefile
 create mode 100644 arch/riscv/mach-sifive/include/mach/debug_ll.h
 create mode 100644 drivers/serial/serial_sifive.c

-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
