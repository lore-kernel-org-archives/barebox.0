Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gQBcw-0002q7-09
 for barebox@lists.infradead.org; Fri, 23 Nov 2018 13:36:13 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 23 Nov 2018 14:35:50 +0100
Message-Id: <20181123133553.24761-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 0/3] Xilinx Zynq Ultrascale+ MPSoC support
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

This series adds support for the Xilinx Zynq Ultrascale+ MPSoC platform and
the ZCU104 Evaluation Kit.

Barebox is executed as BL33, i.e, platform setup is already done by the First
Stage Boot Loader. This also implies that the Barebox image cannot be booted
as is, but must be added to a ZynqMP boot.bin binary first. See "mkimage -T
zynqmpbif" from U-Boot for how to generate such an image.

I'm not really happy how the entry function is implemented in
arch/arm/boards/xilinx-zcu104/lowlevel_init.S and any suggestions for
improvement are welcome.

Michael

Michael Tretter (3):
  ARM: lib64: .gitignore barebox.lds
  ARM: aarch64: compile with general-regs-only
  ARM: zynqmp: add support for Xilinx ZCU104 board

 arch/arm/Kconfig                              | 14 +++++++
 arch/arm/Makefile                             |  5 +++
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/xilinx-zcu104/Makefile        |  2 +
 arch/arm/boards/xilinx-zcu104/board.c         | 25 ++++++++++++
 arch/arm/boards/xilinx-zcu104/lowlevel.c      | 30 +++++++++++++++
 arch/arm/boards/xilinx-zcu104/lowlevel_init.S | 32 ++++++++++++++++
 arch/arm/configs/zynqmp_defconfig             | 38 +++++++++++++++++++
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/lib64/.gitignore                     |  1 +
 arch/arm/mach-zynqmp/Kconfig                  |  9 +++++
 arch/arm/mach-zynqmp/Makefile                 |  1 +
 arch/arm/mach-zynqmp/include/mach/debug_ll.h  | 30 +++++++++++++++
 arch/arm/mach-zynqmp/zynqmp.c                 | 22 +++++++++++
 images/Makefile                               |  1 +
 images/Makefile.zynqmp                        |  7 ++++
 16 files changed, 219 insertions(+)
 create mode 100644 arch/arm/boards/xilinx-zcu104/Makefile
 create mode 100644 arch/arm/boards/xilinx-zcu104/board.c
 create mode 100644 arch/arm/boards/xilinx-zcu104/lowlevel.c
 create mode 100644 arch/arm/boards/xilinx-zcu104/lowlevel_init.S
 create mode 100644 arch/arm/configs/zynqmp_defconfig
 create mode 100644 arch/arm/lib64/.gitignore
 create mode 100644 arch/arm/mach-zynqmp/Kconfig
 create mode 100644 arch/arm/mach-zynqmp/Makefile
 create mode 100644 arch/arm/mach-zynqmp/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-zynqmp/zynqmp.c
 create mode 100644 images/Makefile.zynqmp

-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
