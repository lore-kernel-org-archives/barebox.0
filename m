Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVD7N-0004iX-Ra
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 10:12:25 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri,  7 Dec 2018 11:11:56 +0100
Message-Id: <20181207101156.2213-5-m.tretter@pengutronix.de>
In-Reply-To: <20181207101156.2213-1-m.tretter@pengutronix.de>
References: <20181128112053.6027-1-m.tretter@pengutronix.de>
 <20181207101156.2213-1-m.tretter@pengutronix.de>
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
Subject: [PATCH v3 4/4] ARM: zynqmp: add support for Xilinx ZCU104 board
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Add support for the Xilinx Zynq Ultrascale+ MPSoC architecture (ZynqMP)
and the Xilinx ZCU104 board.

Barebox is booted as BL33 in EL-1 and expects that a BL2 (i.e. the FSBL)
already took care of initializing the RAM. Also for debug_ll, the UART
is expected to be already setup correctly. Thus, you have to add the
Barebox binary to a boot image as described in "Chapter 11: Boot and
Configuration" of "Zynq Ultrascale+ Device Technical Reference Manual".

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

---
Changelog:

v3:
- add more SPDX-License-Identifiers

v2:
- introduce ENTRY_PROC in a separate patch
- move ENTRY_PROC to a separate header file
- switch to piggydata for assembling the image
- remove zynqmp.c and board.c and the respective empty init calls
- use SPDX-License-Identifiers
---
 arch/arm/Kconfig                              | 14 +++++++
 arch/arm/Makefile                             |  1 +
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/xilinx-zcu104/Makefile        |  2 +
 arch/arm/boards/xilinx-zcu104/lowlevel.c      | 21 ++++++++++
 arch/arm/boards/xilinx-zcu104/lowlevel_init.S | 12 ++++++
 arch/arm/configs/zynqmp_defconfig             | 38 +++++++++++++++++++
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/zynqmp-zcu104-revA.dts           | 10 +++++
 arch/arm/mach-zynqmp/Kconfig                  | 10 +++++
 arch/arm/mach-zynqmp/Makefile                 |  2 +
 arch/arm/mach-zynqmp/include/mach/debug_ll.h  | 31 +++++++++++++++
 images/Makefile                               |  1 +
 images/Makefile.zynqmp                        |  8 ++++
 14 files changed, 152 insertions(+)
 create mode 100644 arch/arm/boards/xilinx-zcu104/Makefile
 create mode 100644 arch/arm/boards/xilinx-zcu104/lowlevel.c
 create mode 100644 arch/arm/boards/xilinx-zcu104/lowlevel_init.S
 create mode 100644 arch/arm/configs/zynqmp_defconfig
 create mode 100644 arch/arm/dts/zynqmp-zcu104-revA.dts
 create mode 100644 arch/arm/mach-zynqmp/Kconfig
 create mode 100644 arch/arm/mach-zynqmp/Makefile
 create mode 100644 arch/arm/mach-zynqmp/include/mach/debug_ll.h
 create mode 100644 images/Makefile.zynqmp

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index cdc22efdeb..c1f385b11b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -245,6 +245,19 @@ config ARCH_ZYNQ
 	bool "Xilinx Zynq-based boards"
 	select HAS_DEBUG_LL
 
+config ARCH_ZYNQMP
+	bool "Xilinx ZynqMP-based boards"
+	select CPU_V8
+	select HAS_DEBUG_LL
+	select HAVE_PBL_MULTI_IMAGES
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select CLKDEV_LOOKUP
+	select OFDEVICE
+	select OFTREE
+	select RELOCATABLE
+	select SYS_SUPPORTS_64BIT_KERNEL
+
 config ARCH_QEMU
 	bool "ARM QEMU boards"
 	select HAS_DEBUG_LL
@@ -275,6 +288,7 @@ source arch/arm/mach-tegra/Kconfig
 source arch/arm/mach-uemd/Kconfig
 source arch/arm/mach-zynq/Kconfig
 source arch/arm/mach-qemu/Kconfig
+source arch/arm/mach-zynqmp/Kconfig
 
 config ARM_ASM_UNIFIED
 	bool
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 50958b787f..675d3433cc 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -101,6 +101,7 @@ machine-$(CONFIG_ARCH_VEXPRESS)		:= vexpress
 machine-$(CONFIG_ARCH_TEGRA)		:= tegra
 machine-$(CONFIG_ARCH_UEMD)		:= uemd
 machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
+machine-$(CONFIG_ARCH_ZYNQMP)		:= zynqmp
 machine-$(CONFIG_ARCH_QEMU)		:= qemu
 
 
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 3bf176b14d..a15a24c02e 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -153,6 +153,7 @@ obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
 obj-$(CONFIG_MACH_QEMU_VIRT64)			+= qemu-virt64/
 obj-$(CONFIG_MACH_WARP7)			+= element14-warp7/
 obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
+obj-$(CONFIG_MACH_XILINX_ZCU104)		+= xilinx-zcu104/
 obj-$(CONFIG_MACH_ZII_RDU1)			+= zii-imx51-rdu1/
 obj-$(CONFIG_MACH_ZII_RDU2)			+= zii-imx6q-rdu2/
 obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
diff --git a/arch/arm/boards/xilinx-zcu104/Makefile b/arch/arm/boards/xilinx-zcu104/Makefile
new file mode 100644
index 0000000000..884d6e63b0
--- /dev/null
+++ b/arch/arm/boards/xilinx-zcu104/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+lwl-y += lowlevel.o lowlevel_init.o
diff --git a/arch/arm/boards/xilinx-zcu104/lowlevel.c b/arch/arm/boards/xilinx-zcu104/lowlevel.c
new file mode 100644
index 0000000000..5541f9bc8e
--- /dev/null
+++ b/arch/arm/boards/xilinx-zcu104/lowlevel.c
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2018 Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
+ */
+
+#include <common.h>
+#include <debug_ll.h>
+#include <asm/barebox-arm.h>
+
+extern char __dtb_zynqmp_zcu104_revA_start[];
+
+void zynqmp_zcu104_start(uint32_t, uint32_t, uint32_t);
+
+void noinline zynqmp_zcu104_start(uint32_t r0, uint32_t r1, uint32_t r2)
+{
+	/* Assume that the first stage boot loader configured the UART */
+	putc_ll('>');
+
+	barebox_arm_entry(0, SZ_2G,
+			  __dtb_zynqmp_zcu104_revA_start + global_variable_offset());
+}
diff --git a/arch/arm/boards/xilinx-zcu104/lowlevel_init.S b/arch/arm/boards/xilinx-zcu104/lowlevel_init.S
new file mode 100644
index 0000000000..0482cf8caa
--- /dev/null
+++ b/arch/arm/boards/xilinx-zcu104/lowlevel_init.S
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#include <linux/linkage.h>
+#include <asm/barebox-arm64.h>
+
+/* The DRAM is already setup */
+#define STACK_TOP 0x80000000
+
+ENTRY_PROC(start_zynqmp_zcu104)
+	mov x0, #STACK_TOP
+	mov sp, x0
+	b zynqmp_zcu104_start
+ENTRY_PROC_END(start_zynqmp_zcu104)
diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
new file mode 100644
index 0000000000..4dea9647fe
--- /dev/null
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -0,0 +1,38 @@
+CONFIG_ARCH_ZYNQMP=y
+CONFIG_MACH_XILINX_ZCU104=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_DRIVER_SERIAL_CADENCE=y
+# CONFIG_SPI is not set
+CONFIG_DIGEST=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index c08b35a101..8183b14898 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -120,6 +120,7 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
 pbl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
+pbl-dtb-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
 
 pbl-dtb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += imx7d-zii-rpu2.dtb.o
 
diff --git a/arch/arm/dts/zynqmp-zcu104-revA.dts b/arch/arm/dts/zynqmp-zcu104-revA.dts
new file mode 100644
index 0000000000..8c467ee970
--- /dev/null
+++ b/arch/arm/dts/zynqmp-zcu104-revA.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * dts file for Xilinx ZynqMP ZCU104
+ *
+ * (C) Copyright 2017 - 2018, Xilinx, Inc.
+ *
+ * Michal Simek <michal.simek@xilinx.com>
+ */
+
+#include <arm64/xilinx/zynqmp-zcu104-revA.dts>
diff --git a/arch/arm/mach-zynqmp/Kconfig b/arch/arm/mach-zynqmp/Kconfig
new file mode 100644
index 0000000000..c9dc71c9e7
--- /dev/null
+++ b/arch/arm/mach-zynqmp/Kconfig
@@ -0,0 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+if ARCH_ZYNQMP
+
+config MACH_XILINX_ZCU104
+	bool "Xilinx Zynq UltraScale+ MPSoC ZCU104"
+	help
+	  Say Y here if you are using the Xilinx Zynq UltraScale+ MPSoC ZCU104
+	  evaluation board.
+
+endif
diff --git a/arch/arm/mach-zynqmp/Makefile b/arch/arm/mach-zynqmp/Makefile
new file mode 100644
index 0000000000..c601374f6c
--- /dev/null
+++ b/arch/arm/mach-zynqmp/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+obj- := __dummy__.o
diff --git a/arch/arm/mach-zynqmp/include/mach/debug_ll.h b/arch/arm/mach-zynqmp/include/mach/debug_ll.h
new file mode 100644
index 0000000000..67571fe2e1
--- /dev/null
+++ b/arch/arm/mach-zynqmp/include/mach/debug_ll.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#ifndef __MACH_DEBUG_LL_H__
+#define __MACH_DEBUG_LL_H__
+
+#include <io.h>
+
+#define ZYNQMP_UART0_BASE		0xFF000000
+#define ZYNQMP_UART1_BASE		0xFF010000
+#define ZYNQMP_UART_BASE		ZYNQMP_UART0_BASE
+#define ZYNQMP_DEBUG_LL_UART_BASE	ZYNQMP_UART_BASE
+
+#define ZYNQMP_UART_RXTXFIFO	0x30
+#define ZYNQMP_UART_CHANNEL_STS	0x2C
+
+#define ZYNQMP_UART_STS_TFUL	(1 << 4)
+#define ZYNQMP_UART_TXDIS		(1 << 5)
+
+static inline void PUTC_LL(int c)
+{
+	void __iomem *base = (void __iomem *)ZYNQMP_DEBUG_LL_UART_BASE;
+
+	if (readl(base) & ZYNQMP_UART_TXDIS)
+		return;
+
+	while ((readl(base + ZYNQMP_UART_CHANNEL_STS) & ZYNQMP_UART_STS_TFUL) != 0)
+		;
+
+	writel(c, base + 0x30);
+}
+
+#endif
diff --git a/images/Makefile b/images/Makefile
index 4c6d486f08..9aaf8af6ed 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -104,6 +104,7 @@ include $(srctree)/images/Makefile.socfpga
 include $(srctree)/images/Makefile.tegra
 include $(srctree)/images/Makefile.vexpress
 include $(srctree)/images/Makefile.at91
+include $(srctree)/images/Makefile.zynqmp
 
 targets += $(image-y) pbl.lds barebox.x barebox.z
 targets += $(patsubst %,%.pblb,$(pblb-y))
diff --git a/images/Makefile.zynqmp b/images/Makefile.zynqmp
new file mode 100644
index 0000000000..3f7823f039
--- /dev/null
+++ b/images/Makefile.zynqmp
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+#
+# barebox image generation Makefile for Xilinx Zynq UltraScale+
+#
+
+pblx-$(CONFIG_MACH_XILINX_ZCU104) += start_zynqmp_zcu104
+FILE_barebox-zynqmp-zcu104.img = start_zynqmp_zcu104.pblb
+image-$(CONFIG_MACH_XILINX_ZCU104) += barebox-zynqmp-zcu104.img
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
