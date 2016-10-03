Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x244.google.com ([2607:f8b0:400e:c03::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4Qr-0008GQ-FH
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:52 +0000
Received: by mail-pa0-x244.google.com with SMTP id t6so5023974pae.2
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:41 -0700
Message-Id: <1475505657-898-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/20] i.MX: Add support for VF610 Tower board
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add support for VF610 Tower board.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/Makefile                           |   3 +-
 arch/arm/boards/freescale-vf610-twr/Makefile       |   4 +
 arch/arm/boards/freescale-vf610-twr/board.c        |  61 +++++
 .../flash-header-vf610-twr.imxcfg                  | 277 +++++++++++++++++++++
 arch/arm/boards/freescale-vf610-twr/lowlevel.c     |  45 ++++
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/vf610-twr.dts                         |  14 ++
 arch/arm/mach-imx/Kconfig                          |   4 +
 arch/arm/mach-imx/include/mach/clock-vf610.h       | 215 ++++++++++++++++
 arch/arm/mach-imx/include/mach/iomux-vf610.h       | 258 +++++++++++++++++++
 images/Makefile.imx                                |   5 +
 11 files changed, 886 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/freescale-vf610-twr/Makefile
 create mode 100644 arch/arm/boards/freescale-vf610-twr/board.c
 create mode 100644 arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
 create mode 100644 arch/arm/boards/freescale-vf610-twr/lowlevel.c
 create mode 100644 arch/arm/dts/vf610-twr.dts
 create mode 100644 arch/arm/mach-imx/include/mach/clock-vf610.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-vf610.h

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 23a8dbd..c8bc565 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -10,7 +10,7 @@ obj-$(CONFIG_MACH_AT91SAM9G20EK)		+= at91sam9260ek/
 obj-$(CONFIG_MACH_AT91SAM9M10G45EK)		+= at91sam9m10g45ek/
 obj-$(CONFIG_MACH_AT91SAM9M10IHD)		+= at91sam9m10ihd/
 obj-$(CONFIG_MACH_AT91SAM9N12EK)		+= at91sam9n12ek/
-obj-$(CONFIG_MACH_AT91SAM9X5EK)			+= at91sam9x5ek/
+nobj-$(CONFIG_MACH_AT91SAM9X5EK)			+= at91sam9x5ek/
 obj-$(CONFIG_MACH_BEAGLE)			+= beagle/
 obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
 obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
@@ -138,3 +138,4 @@ obj-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard/
 obj-$(CONFIG_MACH_ZYLONITE)			+= zylonite/
 obj-$(CONFIG_MACH_VARISCITE_MX6)		+= variscite-mx6/
 obj-$(CONFIG_MACH_QEMU_VIRT64)			+= qemu-virt64/
+obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
diff --git a/arch/arm/boards/freescale-vf610-twr/Makefile b/arch/arm/boards/freescale-vf610-twr/Makefile
new file mode 100644
index 0000000..32a7da5
--- /dev/null
+++ b/arch/arm/boards/freescale-vf610-twr/Makefile
@@ -0,0 +1,4 @@
+obj-y += board.o
+obj-y += flash-header-vf610-twr.dcd.o
+extra-y += flash-header-vf610-twr.dcd.S flash-header-vf610-twr.dcd
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-vf610-twr/board.c b/arch/arm/boards/freescale-vf610-twr/board.c
new file mode 100644
index 0000000..0879f74
--- /dev/null
+++ b/arch/arm/boards/freescale-vf610-twr/board.c
@@ -0,0 +1,61 @@
+/*
+ * Copyright (c) 2016 Zodiac Inflight Innovation
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <config.h>
+#include <common.h>
+#include <dma.h>
+#include <driver.h>
+#include <init.h>
+#include <of.h>
+#include <malloc.h>
+#include <mci.h>
+#include <clock.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+/*
+ * Make sure that esdhc1's clock divider is 1
+ */
+static int vf610_twr_sdhc1_clock_init(void)
+{
+	int err;
+	struct clk *esdhc1_div, *esdhc1_div_parent;
+
+	if (!of_machine_is_compatible("fsl,vf610-twr"))
+		return 0;
+
+	esdhc1_div = clk_lookup("esdhc1_div");
+
+	if (IS_ERR(esdhc1_div))
+		return PTR_ERR(esdhc1_div);
+
+	esdhc1_div_parent = clk_get_parent(esdhc1_div);
+	if (IS_ERR(esdhc1_div_parent))
+		return PTR_ERR(esdhc1_div_parent);
+
+	err = clk_set_rate(esdhc1_div,
+			   clk_get_rate(esdhc1_div_parent));
+	if (err)
+		return err;
+
+	clk_put(esdhc1_div);
+
+	return 0;
+}
+coredevice_initcall(vf610_twr_sdhc1_clock_init);
diff --git a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
new file mode 100644
index 0000000..18138d2
--- /dev/null
+++ b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
@@ -0,0 +1,277 @@
+soc vf610
+loadaddr 0x80000000
+dcdofs 0x400
+
+#define VF610_DDR_PAD_CTRL	0x00000180 /* 25 Ohm drive strength */
+#define VF610_DDR_PAD_CTRL_1	0x00010180 /* 25 Ohm drive strength + differential input */
+
+#define DDRMC_PHY_DQ_TIMING	0x00002613
+#define DDRMC_PHY_DQS_TIMING	0x00002615
+#define DDRMC_PHY_CTRL		0x00210000
+#define DDRMC_PHY_MASTER_CTRL	0x0001012a
+#define DDRMC_PHY_SLAVE_CTRL	0x00002000
+#define DDRMC_PHY_OFF		0x00000000
+#define DDRMC_PHY_PROC_PAD_ODT	0x00010101
+
+#ifdef DEBUG
+#define CHECKPOINT(n) wm 32 0x3f000000 n
+#else
+#define CHECKPOINT(n)
+#endif
+
+CHECKPOINT(1)
+
+/* ======================= Clock initialization =======================*/
+
+/*
+ * Ungate all IP block clocks
+ */
+wm 32 0x4006b040 0xffffffff
+wm 32 0x4006b044 0xffffffff
+wm 32 0x4006b048 0xffffffff
+wm 32 0x4006b04c 0xffffffff
+wm 32 0x4006b050 0xffffffff
+wm 32 0x4006b058 0xffffffff
+wm 32 0x4006b05c 0xffffffff
+wm 32 0x4006b060 0xffffffff
+wm 32 0x4006b064 0xffffffff
+wm 32 0x4006b068 0xffffffff
+wm 32 0x4006b06c 0xffffffff
+
+
+/*
+ * We have to options to clock DDR controller:
+ *
+ *  - Use Core-A5 clock
+ *  - Use PLL2 PFD2 clock
+ *
+
+ * Using first option without changing PLL settings doesn't seem to be
+ * possible given that DDRMC requires minimum of 300Mhz and MaskROM
+ * configures it to be clocked at 264Mhz. Changing PLL1 settings
+ * proved to be challenging becuase MaskROM code executing this DCD
+ * will also be fetching the rest of the bootloader via some
+ * peripheral interface whose clock is derived from Cortex-A5 clock.
+ *
+ * As a result this DCD configuration code uses the second option of
+ * clocking DDR wiht PLL2 PFD2 clock output
+ *
+ * Turn PLL2 on
+ */
+wm 32 0x40050030 0x00002001 /* Fout = Fin * 22 */
+
+CHECKPOINT(2)
+
+/*
+ * Wait for PLLs to lock
+ */
+check 32 while_any_bit_clear 0x40050030 0x80000000
+
+
+CHECKPOINT(3)
+
+/*
+ * Switch DDRMC to be clocked with PLL2 PFD2 and enable PFD2 output
+ */
+clear_bits 32 0x4006b008 0x00000040
+set_bits   32 0x4006b008 0x00002000
+
+
+
+/* ======================= DDR IOMUX ======================= */
+
+CHECKPOINT(4)
+
+wm 32 0x40048220 VF610_DDR_PAD_CTRL
+wm 32 0x40048224 VF610_DDR_PAD_CTRL
+wm 32 0x40048228 VF610_DDR_PAD_CTRL
+wm 32 0x4004822c VF610_DDR_PAD_CTRL
+wm 32 0x40048230 VF610_DDR_PAD_CTRL
+wm 32 0x40048234 VF610_DDR_PAD_CTRL
+wm 32 0x40048238 VF610_DDR_PAD_CTRL
+wm 32 0x4004823c VF610_DDR_PAD_CTRL
+wm 32 0x40048240 VF610_DDR_PAD_CTRL
+wm 32 0x40048244 VF610_DDR_PAD_CTRL
+wm 32 0x40048248 VF610_DDR_PAD_CTRL
+wm 32 0x4004824c VF610_DDR_PAD_CTRL
+wm 32 0x40048250 VF610_DDR_PAD_CTRL
+wm 32 0x40048254 VF610_DDR_PAD_CTRL
+wm 32 0x40048258 VF610_DDR_PAD_CTRL
+wm 32 0x4004825c VF610_DDR_PAD_CTRL
+wm 32 0x40048260 VF610_DDR_PAD_CTRL
+wm 32 0x40048264 VF610_DDR_PAD_CTRL
+wm 32 0x40048268 VF610_DDR_PAD_CTRL
+wm 32 0x4004826c VF610_DDR_PAD_CTRL
+wm 32 0x40048270 VF610_DDR_PAD_CTRL
+wm 32 0x40048274 VF610_DDR_PAD_CTRL
+wm 32 0x40048278 VF610_DDR_PAD_CTRL
+wm 32 0x4004827c VF610_DDR_PAD_CTRL_1
+wm 32 0x40048280 VF610_DDR_PAD_CTRL_1
+wm 32 0x40048284 VF610_DDR_PAD_CTRL_1
+wm 32 0x40048288 VF610_DDR_PAD_CTRL_1
+wm 32 0x4004828c VF610_DDR_PAD_CTRL_1
+wm 32 0x40048290 VF610_DDR_PAD_CTRL_1
+wm 32 0x40048294 VF610_DDR_PAD_CTRL_1
+wm 32 0x40048298 VF610_DDR_PAD_CTRL_1
+wm 32 0x4004829c VF610_DDR_PAD_CTRL_1
+wm 32 0x400482a0 VF610_DDR_PAD_CTRL_1
+wm 32 0x400482a4 VF610_DDR_PAD_CTRL_1
+wm 32 0x400482a8 VF610_DDR_PAD_CTRL_1
+wm 32 0x400482ac VF610_DDR_PAD_CTRL_1
+wm 32 0x400482b0 VF610_DDR_PAD_CTRL_1
+wm 32 0x400482b4 VF610_DDR_PAD_CTRL_1
+wm 32 0x400482b8 VF610_DDR_PAD_CTRL_1
+wm 32 0x400482bc VF610_DDR_PAD_CTRL_1
+wm 32 0x400482c0 VF610_DDR_PAD_CTRL_1
+wm 32 0x400482c4 VF610_DDR_PAD_CTRL_1
+wm 32 0x400482c8 VF610_DDR_PAD_CTRL_1
+wm 32 0x400482cc VF610_DDR_PAD_CTRL
+wm 32 0x400482d0 VF610_DDR_PAD_CTRL
+wm 32 0x400482d4 VF610_DDR_PAD_CTRL
+wm 32 0x400482d8 VF610_DDR_PAD_CTRL
+wm 32 0x4004821c VF610_DDR_PAD_CTRL
+
+/* ======================= DDR Controller =======================*/
+
+CHECKPOINT(5)
+
+wm 32 0x400ae000 0x00000600
+wm 32 0x400ae008 0x00000020
+wm 32 0x400ae028 0x00013880
+wm 32 0x400ae02c 0x00030d40
+wm 32 0x400ae030 0x0000050c
+wm 32 0x400ae034 0x15040400
+wm 32 0x400ae038 0x1406040f
+wm 32 0x400ae040 0x04040000
+wm 32 0x400ae044 0x006db00c
+wm 32 0x400ae048 0x00000403
+wm 32 0x400ae050 0x01000000
+wm 32 0x400ae054 0x00060001
+wm 32 0x400ae058 0x000c0000
+wm 32 0x400ae05c 0x03000200
+wm 32 0x400ae060 0x00000006
+wm 32 0x400ae064 0x00010000
+wm 32 0x400ae068 0x0c30002c
+wm 32 0x400ae070 0x00000000
+wm 32 0x400ae074 0x00000003
+wm 32 0x400ae078 0x0000000a
+wm 32 0x400ae07c 0x003001d4
+wm 32 0x400ae084 0x00010000
+wm 32 0x400ae088 0x00050500
+wm 32 0x400ae098 0x00000000
+wm 32 0x400ae09c 0x04001002
+wm 32 0x400ae0a4 0x00000001
+wm 32 0x400ae0c0 0x00460420
+wm 32 0x400ae108 0x01000200
+wm 32 0x400ae10c 0x00000040
+wm 32 0x400ae114 0x00000200
+wm 32 0x400ae118 0x00000040
+wm 32 0x400ae120 0x00000000
+wm 32 0x400ae124 0x0a010300
+wm 32 0x400ae128 0x01014040
+wm 32 0x400ae12c 0x01010101
+wm 32 0x400ae130 0x03030100
+wm 32 0x400ae134 0x01000101
+wm 32 0x400ae138 0x0700000c
+wm 32 0x400ae13c 0x00000000
+wm 32 0x400ae148 0x10000000
+wm 32 0x400ae15c 0x01000000
+wm 32 0x400ae160 0x00040000
+wm 32 0x400ae164 0x00000002
+wm 32 0x400ae16c 0x00020000
+wm 32 0x400ae180 0x00002819
+wm 32 0x400ae184 0x01000000
+wm 32 0x400ae188 0x00000000
+wm 32 0x400ae18c 0x00000000
+wm 32 0x400ae198 0x00010100
+wm 32 0x400ae1a4 0x00000000
+wm 32 0x400ae1a8 0x00000004
+wm 32 0x400ae1b8 0x00040000
+wm 32 0x400ae1c8 0x00000000
+wm 32 0x400ae1cc 0x00000000
+wm 32 0x400ae1d4 0x00000000
+wm 32 0x400ae1d8 0x01010000
+wm 32 0x400ae1e0 0x02020000
+wm 32 0x400ae1e4 0x00000202
+wm 32 0x400ae1e8 0x01010064
+wm 32 0x400ae1ec 0x00010101
+wm 32 0x400ae1f0 0x00000064
+wm 32 0x400ae1f8 0x00000800
+wm 32 0x400ae210 0x00000506
+wm 32 0x400ae224 0x00020000
+wm 32 0x400ae228 0x01000000
+wm 32 0x400ae22c 0x04070303
+wm 32 0x400ae230 0x00000040
+wm 32 0x400ae23c 0x06000080
+wm 32 0x400ae240 0x04070303
+wm 32 0x400ae244 0x00000040
+wm 32 0x400ae248 0x00000040
+wm 32 0x400ae24c 0x000f0000
+wm 32 0x400ae250 0x000f0000
+wm 32 0x400ae25c 0x00000101
+wm 32 0x400ae268 0x682c4000
+wm 32 0x400ae26c 0x00000012
+wm 32 0x400ae278 0x00000006
+wm 32 0x400ae284 0x00010202
+
+/* ======================= DDR PHY =======================*/
+
+CHECKPOINT(6)
+
+wm 32 0x400ae400 DDRMC_PHY_DQ_TIMING
+wm 32 0x400ae440 DDRMC_PHY_DQ_TIMING
+wm 32 0x400ae480 DDRMC_PHY_DQ_TIMING
+wm 32 0x400ae404 DDRMC_PHY_DQS_TIMING
+wm 32 0x400ae444 DDRMC_PHY_DQS_TIMING
+wm 32 0x400ae408 DDRMC_PHY_CTRL
+wm 32 0x400ae448 DDRMC_PHY_CTRL
+wm 32 0x400ae488 DDRMC_PHY_CTRL
+wm 32 0x400ae40c DDRMC_PHY_CTRL
+wm 32 0x400ae44c DDRMC_PHY_CTRL
+wm 32 0x400ae48c DDRMC_PHY_CTRL
+wm 32 0x400ae410 DDRMC_PHY_SLAVE_CTRL
+wm 32 0x400ae450 DDRMC_PHY_SLAVE_CTRL
+wm 32 0x400ae490 DDRMC_PHY_SLAVE_CTRL
+wm 32 0x400ae4c4 DDRMC_PHY_OFF
+wm 32 0x400ae4c8 0x00001100
+wm 32 0x400ae4d0 DDRMC_PHY_PROC_PAD_ODT
+wm 32 0x400ae000 0x00000601
+
+CHECKPOINT(7)
+
+check 32 while_any_bit_clear 0x400ae140 0x100
+
+CHECKPOINT(8)
+
+/*
+ * Cargo cult DDR controller initialization here we come!
+ *
+ * Experemintation with VF610 Tower Board shows that without the
+ * following code the board would not boot off of SD card when
+ * power-cycled. It will however happily boot when reset via SW3/Reset
+ * button. For whatever reason the following actions appear to be
+ * necessary:
+ *
+ *          - Initialize DDRMC as usual
+ *	    - Issue a read to location in DDR address space
+ *	    - Disable DDRMC
+ *	    - Enable DDRMC and wait for it to finish initializing
+ *
+ * I am sure this is all going to be extrememly embarrassing to read
+ * if/when the real problem and real solution is found.
+ */
+
+/*
+ * Because there's no standalone read command what we do here instead
+ * is write a pattern to memory and then checking that memory address
+ * against that pattern
+ */
+wm 32 0x80000000 0xa5a5a5a5
+check 32 while_any_bit_clear 0x80000000 0xa5a5a5a5
+
+wm 32 0x400ae000 0x00000600
+wm 32 0x400ae000 0x00000601
+
+check 32 while_any_bit_clear 0x400ae140 0x100
+
+CHECKPOINT(9)
\ No newline at end of file
diff --git a/arch/arm/boards/freescale-vf610-twr/lowlevel.c b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
new file mode 100644
index 0000000..6504273
--- /dev/null
+++ b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
@@ -0,0 +1,45 @@
+#include <common.h>
+#include <linux/sizes.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/vf610-regs.h>
+#include <mach/clock-vf610.h>
+#include <mach/iomux-vf610.h>
+#include <debug_ll.h>
+
+static inline void setup_uart(void)
+{
+	void __iomem *iomuxbase = IOMEM(VF610_IOMUXC_BASE_ADDR);
+
+	vf610_ungate_all_peripherals();
+
+	/*
+	 * VF610_PAD_PTB4__UART1_TX
+	 */
+	writel(VF610_UART_PAD_CTRL | (2 << 20), iomuxbase + 0x0068);
+	writel(0, iomuxbase + 0x0380);
+
+	vf610_uart_setup_ll();
+}
+
+extern char __dtb_vf610_twr_start[];
+
+ENTRY_FUNCTION(start_vf610_twr, r0, r1, r2)
+{
+	int i;
+	void *fdt;
+	void __iomem *mscm = IOMEM(VF610_MSCM_BASE_ADDR);
+
+	vf610_cpu_lowlevel_init();
+
+	for (i = 0; i < VF610_MSCM_IRSPRC_NUM; i++)
+		writew(VF610_MSCM_IRSPRC_CP0_EN,
+		       mscm + VF610_MSCM_IRSPRC(i));
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_vf610_twr_start - get_runtime_offset();
+	barebox_arm_entry(0x80000000, SZ_128M, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d1a3fe8..f93152c 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -76,5 +76,6 @@ pbl-dtb-$(CONFIG_MACH_TX6X) += imx6q-tx6q.dtb.o
 pbl-dtb-$(CONFIG_MACH_UDOO) += imx6q-udoo.dtb.o
 pbl-dtb-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
+pbl-dtb-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/arm/dts/vf610-twr.dts b/arch/arm/dts/vf610-twr.dts
new file mode 100644
index 0000000..54b4435
--- /dev/null
+++ b/arch/arm/dts/vf610-twr.dts
@@ -0,0 +1,14 @@
+/*
+ * Copyright 2013 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#include <arm/vf610-twr.dts>
+
+&usbdev0 {
+	status = "disabled";
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 71862ef..0284a8f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -332,6 +332,10 @@ config MACH_CM_FX6
 	bool "CM FX6"
 	select ARCH_IMX6
 
+config MACH_VF610_TWR
+	bool "Freescale VF610 Tower Board"
+	select ARCH_VF610
+
 endif
 
 # ----------------------------------------------------------
diff --git a/arch/arm/mach-imx/include/mach/clock-vf610.h b/arch/arm/mach-imx/include/mach/clock-vf610.h
new file mode 100644
index 0000000..b75309a
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/clock-vf610.h
@@ -0,0 +1,215 @@
+/*
+ * Copyright 2013-2014 Freescale Semiconductor, Inc.
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#ifndef __ARCH_ARM_MACH_VF610_CCM_REGS_H__
+#define __ARCH_ARM_MACH_VF610_CCM_REGS_H__
+
+
+#define VF610_CCM_CCR			(VF610_CCM_BASE_ADDR + 0x00)
+#define VF610_CCM_CSR			(VF610_CCM_BASE_ADDR + 0x04)
+#define VF610_CCM_CCSR			(VF610_CCM_BASE_ADDR + 0x08)
+#define VF610_CCM_CACRR			(VF610_CCM_BASE_ADDR + 0x0c)
+#define VF610_CCM_CSCMR1		(VF610_CCM_BASE_ADDR + 0x10)
+#define VF610_CCM_CSCDR1		(VF610_CCM_BASE_ADDR + 0x14)
+#define VF610_CCM_CSCDR2		(VF610_CCM_BASE_ADDR + 0x18)
+#define VF610_CCM_CSCDR3		(VF610_CCM_BASE_ADDR + 0x1c)
+#define VF610_CCM_CSCMR2		(VF610_CCM_BASE_ADDR + 0x20)
+#define VF610_CCM_CTOR		(VF610_CCM_BASE_ADDR + 0x28)
+#define VF610_CCM_CLPCR		(VF610_CCM_BASE_ADDR + 0x2c)
+#define VF610_CCM_CISR		(VF610_CCM_BASE_ADDR + 0x30)
+#define VF610_CCM_CIMR		(VF610_CCM_BASE_ADDR + 0x34)
+#define VF610_CCM_CCOSR		(VF610_CCM_BASE_ADDR + 0x38)
+#define VF610_CCM_CGPR		(VF610_CCM_BASE_ADDR + 0x3c)
+#define VF610_CCM_CCGR0		(VF610_CCM_BASE_ADDR + 0x40)
+#define VF610_CCM_CCGR1		(VF610_CCM_BASE_ADDR + 0x44)
+#define VF610_CCM_CCGR2		(VF610_CCM_BASE_ADDR + 0x48)
+#define VF610_CCM_CCGR3		(VF610_CCM_BASE_ADDR + 0x4c)
+#define VF610_CCM_CCGR4		(VF610_CCM_BASE_ADDR + 0x50)
+#define VF610_CCM_CCGR5		(VF610_CCM_BASE_ADDR + 0x54)
+#define VF610_CCM_CCGR6		(VF610_CCM_BASE_ADDR + 0x58)
+#define VF610_CCM_CCGR7		(VF610_CCM_BASE_ADDR + 0x5c)
+#define VF610_CCM_CCGR8		(VF610_CCM_BASE_ADDR + 0x60)
+#define VF610_CCM_CCGR9		(VF610_CCM_BASE_ADDR + 0x64)
+#define VF610_CCM_CCGR10		(VF610_CCM_BASE_ADDR + 0x68)
+#define VF610_CCM_CCGR11		(VF610_CCM_BASE_ADDR + 0x6c)
+#define VF610_CCM_CMEOR0		(VF610_CCM_BASE_ADDR + 0x70)
+#define VF610_CCM_CMEOR1		(VF610_CCM_BASE_ADDR + 0x74)
+#define VF610_CCM_CMEOR2		(VF610_CCM_BASE_ADDR + 0x78)
+#define VF610_CCM_CMEOR3		(VF610_CCM_BASE_ADDR + 0x7c)
+#define VF610_CCM_CMEOR4		(VF610_CCM_BASE_ADDR + 0x80)
+#define VF610_CCM_CMEOR5		(VF610_CCM_BASE_ADDR + 0x84)
+#define VF610_CCM_CPPDSR		(VF610_CCM_BASE_ADDR + 0x88)
+#define VF610_CCM_CCOWR			(VF610_CCM_BASE_ADDR + 0x8c)
+#define VF610_CCM_CCPGR0		(VF610_CCM_BASE_ADDR + 0x90)
+#define VF610_CCM_CCPGR1		(VF610_CCM_BASE_ADDR + 0x94)
+#define VF610_CCM_CCPGR2		(VF610_CCM_BASE_ADDR + 0x98)
+#define VF610_CCM_CCPGR3		(VF610_CCM_BASE_ADDR + 0x9c)
+
+#define VF610_CCM_CCGRx_CGn(n)	((n) * 2)
+
+/* #define VF610_ANADIG_PFD_PLL1_BASE	(VF610_ANADIG_BASE_ADDR + 0x2b0) */
+/* #define VF610_ANADIG_PFD_PLL2_BASE	(VF610_ANADIG_BASE_ADDR + 0x100) */
+/* #define VF610_ANADIG_PFD_PLL3_BASE	(VF610_ANADIG_BASE_ADDR + 0xf0) */
+#define VF610_ANADIG_PLL1_CTRL		(VF610_ANADIG_BASE_ADDR + 0x270)
+#define VF610_ANADIG_PLL1_NUM		(VF610_ANADIG_BASE_ADDR + 0x290)
+#define VF610_ANADIG_PLL1_DENOM		(VF610_ANADIG_BASE_ADDR + 0x2A0)
+#define VF610_ANADIG_PLL2_CTRL		(VF610_ANADIG_BASE_ADDR + 0x30)
+#define VF610_ANADIG_PLL2_NUM		(VF610_ANADIG_BASE_ADDR + 0x50)
+#define VF610_ANADIG_PLL3_CTRL		(VF610_ANADIG_BASE_ADDR + 0x10)
+#define VF610_ANADIG_PLL4_CTRL		(VF610_ANADIG_BASE_ADDR + 0x70)
+#define VF610_ANADIG_PLL5_CTRL		(VF610_ANADIG_BASE_ADDR + 0xe0)
+#define VF610_ANADIG_PLL6_CTRL		(VF610_ANADIG_BASE_ADDR + 0xa0)
+#define VF610_ANADIG_PLL7_CTRL		(VF610_ANADIG_BASE_ADDR + 0x20)
+#define VF610_ANADIG_ANA_MISC1		(VF610_ANADIG_BASE_ADDR + 0x160)
+#define VF610_ANADIG_LOCK		(VF610_ANADIG_BASE_ADDR + 0x2C0)
+
+#define CCM_CCR_FIRC_EN				(1 << 16)
+#define CCM_CCR_OSCNT_MASK			0xff
+#define CCM_CCR_OSCNT(v)			((v) & 0xff)
+
+#define CCM_CCSR_PLL2_PFD_CLK_SEL_OFFSET	19
+#define CCM_CCSR_PLL2_PFD_CLK_SEL_MASK		(0x7 << 19)
+#define CCM_CCSR_PLL2_PFD_CLK_SEL(v)		(((v) & 0x7) << 19)
+
+#define CCM_CCSR_PLL1_PFD_CLK_SEL_OFFSET	16
+#define CCM_CCSR_PLL1_PFD_CLK_SEL_MASK		(0x7 << 16)
+#define CCM_CCSR_PLL1_PFD_CLK_SEL(v)		(((v) & 0x7) << 16)
+
+#define CCM_CCSR_PLL2_PFD4_EN			(1 << 15)
+#define CCM_CCSR_PLL2_PFD3_EN			(1 << 14)
+#define CCM_CCSR_PLL2_PFD2_EN			(1 << 13)
+#define CCM_CCSR_PLL2_PFD1_EN			(1 << 12)
+#define CCM_CCSR_PLL1_PFD4_EN			(1 << 11)
+#define CCM_CCSR_PLL1_PFD3_EN			(1 << 10)
+#define CCM_CCSR_PLL1_PFD2_EN			(1 << 9)
+#define CCM_CCSR_PLL1_PFD1_EN			(1 << 8)
+
+#define CCM_CCSR_DDRC_CLK_SEL(v)		((v) << 6)
+#define CCM_CCSR_FAST_CLK_SEL(v)		((v) << 5)
+
+#define CCM_CCSR_SYS_CLK_SEL_OFFSET		0
+#define CCM_CCSR_SYS_CLK_SEL_MASK		0x7
+#define CCM_CCSR_SYS_CLK_SEL(v)			((v) & 0x7)
+
+#define CCM_CACRR_IPG_CLK_DIV_OFFSET		11
+#define CCM_CACRR_IPG_CLK_DIV_MASK		(0x3 << 11)
+#define CCM_CACRR_IPG_CLK_DIV(v)		(((v) & 0x3) << 11)
+#define CCM_CACRR_BUS_CLK_DIV_OFFSET		3
+#define CCM_CACRR_BUS_CLK_DIV_MASK		(0x7 << 3)
+#define CCM_CACRR_BUS_CLK_DIV(v)		(((v) & 0x7) << 3)
+#define CCM_CACRR_ARM_CLK_DIV_OFFSET		0
+#define CCM_CACRR_ARM_CLK_DIV_MASK		0x7
+#define CCM_CACRR_ARM_CLK_DIV(v)		((v) & 0x7)
+
+#define CCM_CSCMR1_QSPI0_CLK_SEL_OFFSET		22
+#define CCM_CSCMR1_QSPI0_CLK_SEL_MASK		(0x3 << 22)
+#define CCM_CSCMR1_QSPI0_CLK_SEL(v)		(((v) & 0x3) << 22)
+#define CCM_CSCMR1_ESDHC1_CLK_SEL_OFFSET	18
+#define CCM_CSCMR1_ESDHC1_CLK_SEL_MASK		(0x3 << 18)
+#define CCM_CSCMR1_ESDHC1_CLK_SEL(v)		(((v) & 0x3) << 18)
+#define CCM_CSCMR1_NFC_CLK_SEL_OFFSET		12
+#define CCM_CSCMR1_NFC_CLK_SEL_MASK		(0x3 << 12)
+#define CCM_CSCMR1_NFC_CLK_SEL(v)		(((v) & 0x3) << 12)
+
+#define CCM_CSCDR1_RMII_CLK_EN			(1 << 24)
+
+#define CCM_CSCDR2_NFC_EN			(1 << 9)
+#define CCM_CSCDR2_NFC_FRAC_DIV_EN		(1 << 13)
+#define CCM_CSCDR2_NFC_CLK_INV			(1 << 14)
+#define CCM_CSCDR2_NFC_FRAC_DIV_OFFSET		4
+#define CCM_CSCDR2_NFC_FRAC_DIV_MASK		(0xf << 4)
+#define CCM_CSCDR2_NFC_FRAC_DIV(v)		(((v) & 0xf) << 4)
+
+#define CCM_CSCDR2_ESDHC1_EN			(1 << 29)
+#define CCM_CSCDR2_ESDHC1_CLK_DIV_OFFSET	20
+#define CCM_CSCDR2_ESDHC1_CLK_DIV_MASK		(0xf << 20)
+#define CCM_CSCDR2_ESDHC1_CLK_DIV(v)		(((v) & 0xf) << 20)
+
+#define CCM_CSCDR3_NFC_PRE_DIV_OFFSET		13
+#define CCM_CSCDR3_NFC_PRE_DIV_MASK		(0x7 << 13)
+#define CCM_CSCDR3_NFC_PRE_DIV(v)		(((v) & 0x7) << 13)
+#define CCM_CSCDR3_QSPI0_EN			(1 << 4)
+#define CCM_CSCDR3_QSPI0_DIV(v)			((v) << 3)
+#define CCM_CSCDR3_QSPI0_X2_DIV(v)		((v) << 2)
+#define CCM_CSCDR3_QSPI0_X4_DIV(v)		((v) & 0x3)
+
+#define CCM_CSCMR2_RMII_CLK_SEL_OFFSET		4
+#define CCM_CSCMR2_RMII_CLK_SEL_MASK		(0x3 << 4)
+#define CCM_CSCMR2_RMII_CLK_SEL(v)		(((v) & 0x3) << 4)
+
+#define CCM_REG_CTRL_MASK			0xffffffff
+#define CCM_CCGR0_UART0_CTRL_MASK               (0x3 << 14)
+#define CCM_CCGR0_UART1_CTRL_MASK		(0x3 << 16)
+#define CCM_CCGR0_DSPI0_CTRL_MASK		(0x3 << 24)
+#define CCM_CCGR0_DSPI1_CTRL_MASK		(0x3 << 26)
+#define CCM_CCGR1_USBC0_CTRL_MASK       (0x3 << 8)
+#define CCM_CCGR1_PIT_CTRL_MASK			(0x3 << 14)
+#define CCM_CCGR1_WDOGA5_CTRL_MASK		(0x3 << 28)
+#define CCM_CCGR2_QSPI0_CTRL_MASK		(0x3 << 8)
+#define CCM_CCGR2_IOMUXC_CTRL_MASK		(0x3 << 16)
+#define CCM_CCGR2_PORTA_CTRL_MASK		(0x3 << 18)
+#define CCM_CCGR2_PORTB_CTRL_MASK		(0x3 << 20)
+#define CCM_CCGR2_PORTC_CTRL_MASK		(0x3 << 22)
+#define CCM_CCGR2_PORTD_CTRL_MASK		(0x3 << 24)
+#define CCM_CCGR2_PORTE_CTRL_MASK		(0x3 << 26)
+#define CCM_CCGR3_ANADIG_CTRL_MASK		0x3
+#define CCM_CCGR3_SCSC_CTRL_MASK        (0x3 << 4)
+#define CCM_CCGR4_WKUP_CTRL_MASK		(0x3 << 20)
+#define CCM_CCGR4_CCM_CTRL_MASK			(0x3 << 22)
+#define CCM_CCGR4_GPC_CTRL_MASK			(0x3 << 24)
+#define CCM_CCGR4_I2C0_CTRL_MASK		(0x3 << 12)
+#define CCM_CCGR4_I2C1_CTRL_MASK		(0x3 << 14)
+#define CCM_CCGR6_OCOTP_CTRL_MASK		(0x3 << 10)
+#define CCM_CCGR6_DSPI2_CTRL_MASK		(0x3 << 24)
+#define CCM_CCGR6_DSPI3_CTRL_MASK		(0x3 << 26)
+#define CCM_CCGR6_DDRMC_CTRL_MASK		(0x3 << 28)
+#define CCM_CCGR7_SDHC1_CTRL_MASK		(0x3 << 4)
+#define CCM_CCGR7_USBC1_CTRL_MASK       (0x3 << 8)
+#define CCM_CCGR9_FEC0_CTRL_MASK		0x3
+#define CCM_CCGR9_FEC1_CTRL_MASK		(0x3 << 2)
+#define CCM_CCGR10_NFC_CTRL_MASK		0x3
+#define CCM_CCGR10_I2C2_CTRL_MASK		(0x3 << 12)
+#define CCM_CCGR10_I2C3_CTRL_MASK		(0x3 << 14)
+
+#define ANADIG_PLL7_CTRL_BYPASS         (1 << 16)
+#define ANADIG_PLL7_CTRL_ENABLE         (1 << 13)
+#define ANADIG_PLL7_CTRL_POWERDOWN      (1 << 12)
+#define ANADIG_PLL7_CTRL_DIV_SELECT     (1 << 1)
+#define ANADIG_PLL5_CTRL_BYPASS                 (1 << 16)
+#define ANADIG_PLL5_CTRL_ENABLE                 (1 << 13)
+#define ANADIG_PLL5_CTRL_POWERDOWN              (1 << 12)
+#define ANADIG_PLL5_CTRL_DIV_SELECT		1
+#define ANADIG_PLL3_CTRL_BYPASS         (1 << 16)
+#define ANADIG_PLL3_CTRL_ENABLE         (1 << 13)
+#define ANADIG_PLL3_CTRL_POWERDOWN      (1 << 12)
+#define ANADIG_PLL3_CTRL_DIV_SELECT     (1 << 1)
+#define ANADIG_PLL2_CTRL_ENABLE			(1 << 13)
+#define ANADIG_PLL2_CTRL_POWERDOWN		(1 << 12)
+#define ANADIG_PLL2_CTRL_DIV_SELECT		1
+#define ANADIG_PLL1_CTRL_ENABLE			(1 << 13)
+#define ANADIG_PLL1_CTRL_POWERDOWN		(1 << 12)
+#define ANADIG_PLL1_CTRL_DIV_SELECT		1
+
+#define FASE_CLK_FREQ		24000000
+#define SLOW_CLK_FREQ		32000
+#define PLL1_PFD1_FREQ		500000000
+#define PLL1_PFD2_FREQ		452000000
+#define PLL1_PFD3_FREQ		396000000
+#define PLL1_PFD4_FREQ		528000000
+#define PLL1_MAIN_FREQ		528000000
+#define PLL2_PFD1_FREQ		500000000
+#define PLL2_PFD2_FREQ		396000000
+#define PLL2_PFD3_FREQ		339000000
+#define PLL2_PFD4_FREQ		413000000
+#define PLL2_MAIN_FREQ		528000000
+#define PLL3_MAIN_FREQ		480000000
+#define PLL3_PFD3_FREQ		298000000
+#define PLL5_MAIN_FREQ		500000000
+
+#define ENET_EXTERNAL_CLK	50000000
+#define AUDIO_EXTERNAL_CLK	24576000
+
+#endif /*__ARCH_ARM_MACH_VF610_CCM_REGS_H__ */
diff --git a/arch/arm/mach-imx/include/mach/iomux-vf610.h b/arch/arm/mach-imx/include/mach/iomux-vf610.h
new file mode 100644
index 0000000..db0e59f
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/iomux-vf610.h
@@ -0,0 +1,258 @@
+/*
+ * Copyright 2013-2014 Freescale Semiconductor, Inc.
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#ifndef __IOMUX_VF610_H__
+#define __IOMUX_VF610_H__
+
+#include <mach/iomux-v3.h>
+
+#undef PAD_CTL_ODE
+#undef PAD_CTL_PKE
+#undef PAD_CTL_PUE
+
+#define PAD_MUX_MODE_SHIFT	20
+
+#define PAD_CTL_INPUT_DIFFERENTIAL (1 << 16)
+
+#define PAD_CTL_SPEED_MED	(1 << 12)
+#define PAD_CTL_SPEED_HIGH	(3 << 12)
+
+#define PAD_CTL_SRE		(1 << 11)
+
+
+#define PAD_CTL_ODE		(1 << 10)
+
+#define PAD_CTL_DSE_150ohm	(1 << 6)
+#define PAD_CTL_DSE_50ohm	(3 << 6)
+#define PAD_CTL_DSE_25ohm	(6 << 6)
+#define PAD_CTL_DSE_20ohm	(7 << 6)
+
+#define PAD_CTL_PUS_47K_UP	(1 << 4 | PAD_CTL_PUE)
+#define PAD_CTL_PUS_100K_UP	(2 << 4 | PAD_CTL_PUE)
+#define PAD_CTL_PUS_22K_UP	(3 << 4 | PAD_CTL_PUE)
+
+#define PAD_CTL_PKE		(1 << 3)
+#define PAD_CTL_PUE		(1 << 2 | PAD_CTL_PKE)
+
+#define PAD_CTL_OBE_IBE_ENABLE	(3 << 0)
+#define PAD_CTL_OBE_ENABLE	(1 << 1)
+#define PAD_CTL_IBE_ENABLE	(1 << 0)
+
+
+/* These 2 defines are for pins that may not have a mux register, but could
+ * have a pad setting register, and vice-versa. */
+#define __NA_	0x00
+
+
+
+/* Pad control groupings */
+#define VF610_UART_PAD_CTRL	(PAD_CTL_PUS_100K_UP | PAD_CTL_DSE_25ohm | \
+				PAD_CTL_OBE_IBE_ENABLE)
+#define VF610_SDHC_PAD_CTRL	(PAD_CTL_PUS_100K_UP | PAD_CTL_DSE_20ohm | \
+				PAD_CTL_OBE_IBE_ENABLE)
+#define VF610_ENET_PAD_CTRL	(PAD_CTL_PUS_47K_UP | PAD_CTL_DSE_50ohm | \
+				PAD_CTL_OBE_IBE_ENABLE)
+#define VF610_DDR_PAD_CTRL	PAD_CTL_DSE_25ohm
+#define VF610_DDR_PAD_CTRL_1	(PAD_CTL_DSE_25ohm | \
+				PAD_CTL_INPUT_DIFFERENTIAL)
+#define VF610_I2C_PAD_CTRL	(PAD_CTL_PUS_47K_UP | PAD_CTL_DSE_50ohm | \
+				PAD_CTL_SPEED_HIGH | PAD_CTL_ODE | \
+				PAD_CTL_OBE_IBE_ENABLE)
+#define VF610_NFC_IO_PAD_CTRL	(PAD_CTL_SPEED_MED | PAD_CTL_SRE | \
+				PAD_CTL_DSE_50ohm | PAD_CTL_PUS_47K_UP | \
+				PAD_CTL_OBE_IBE_ENABLE)
+#define VF610_NFC_CN_PAD_CTRL	(PAD_CTL_SPEED_MED | PAD_CTL_SRE | \
+				PAD_CTL_DSE_25ohm | PAD_CTL_OBE_ENABLE)
+#define VF610_NFC_RB_PAD_CTRL	(PAD_CTL_SPEED_MED | PAD_CTL_SRE | \
+				PAD_CTL_PUS_22K_UP | PAD_CTL_IBE_ENABLE)
+
+#define VF610_QSPI_PAD_CTRL	(PAD_CTL_SPEED_HIGH | PAD_CTL_DSE_150ohm | \
+				PAD_CTL_PUS_22K_UP | PAD_CTL_OBE_IBE_ENABLE)
+
+#define VF610_GPIO_PAD_CTRL	(PAD_CTL_SPEED_MED | PAD_CTL_DSE_50ohm | \
+				PAD_CTL_IBE_ENABLE)
+
+#define VF610_DSPI_PAD_CTRL	(PAD_CTL_OBE_ENABLE | PAD_CTL_DSE_20ohm | \
+				PAD_CTL_PUS_100K_UP | PAD_CTL_SPEED_HIGH)
+#define VF610_DSPI_SIN_PAD_CTRL	(PAD_CTL_IBE_ENABLE | PAD_CTL_DSE_20ohm | \
+				PAD_CTL_PUS_100K_UP | PAD_CTL_SPEED_HIGH)
+
+enum {
+	VF610_PAD_PTA6__RMII0_CLKIN		= IOMUX_PAD(0x0000, 0x0000, 2, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTA6__RMII0_CLKOUT		= IOMUX_PAD(0x0000, 0x0000, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTA7__GPIO_134		= IOMUX_PAD(0x0218, 0x0218, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTA17__GPIO_7			= IOMUX_PAD(0x001c, 0x001c, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTA20__GPIO_10		= IOMUX_PAD(0x0028, 0x0028, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTA21__GPIO_11		= IOMUX_PAD(0x002c, 0x002c, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTA30__GPIO_20		= IOMUX_PAD(0x0050, 0x0050, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTA31__GPIO_21		= IOMUX_PAD(0x0054, 0x0054, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB0__GPIO_22			= IOMUX_PAD(0x0058, 0x0058, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB1__GPIO_23			= IOMUX_PAD(0x005C, 0x005C, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB4__UART1_TX		= IOMUX_PAD(0x0068, 0x0068, 2, 0x0380, 0, VF610_UART_PAD_CTRL),
+	VF610_PAD_PTB5__UART1_RX		= IOMUX_PAD(0x006c, 0x006c, 2, 0x037c, 0, VF610_UART_PAD_CTRL),
+	VF610_PAD_PTB6__GPIO_28			= IOMUX_PAD(0x0070, 0x0070, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB7__GPIO_29			= IOMUX_PAD(0x0074, 0x0074, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB8__GPIO_30			= IOMUX_PAD(0x0078, 0x0078, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB9__GPIO_31			= IOMUX_PAD(0x007C, 0x007C, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB10__UART0_TX		= IOMUX_PAD(0x0080, 0x0080, 1, __NA_, 0, VF610_UART_PAD_CTRL),
+	VF610_PAD_PTB11__UART0_RX		= IOMUX_PAD(0x0084, 0x0084, 1, __NA_, 0, VF610_UART_PAD_CTRL),
+	VF610_PAD_PTB12__GPIO_34		= IOMUX_PAD(0x0088, 0x0088, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB13__GPIO_35		= IOMUX_PAD(0x008c, 0x008c, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB16__GPIO_38		= IOMUX_PAD(0x0098, 0x0098, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB17__GPIO_39		= IOMUX_PAD(0x009c, 0x009c, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB18__GPIO_40		= IOMUX_PAD(0x00a0, 0x00a0, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB21__GPIO_43		= IOMUX_PAD(0x00ac, 0x00ac, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB22__GPIO_44		= IOMUX_PAD(0x00b0, 0x00b0, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB23__GPIO_93		= IOMUX_PAD(0x0174, 0x0174, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB26__GPIO_96		= IOMUX_PAD(0x0180, 0x0180, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTB28__GPIO_98		= IOMUX_PAD(0x0188, 0x0188, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTC1__GPIO_46			= IOMUX_PAD(0x00b8, 0x00b8, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTC1__RMII0_MDIO		= IOMUX_PAD(0x00b8, 0x00b8, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC0__GPIO_45			= IOMUX_PAD(0x00b4, 0x00b4, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTC0__RMII0_MDC		= IOMUX_PAD(0x00b4, 0x00b4, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC2__RMII0_CRS_DV		= IOMUX_PAD(0x00bc, 0x00bc, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC2__GPIO_47			= IOMUX_PAD(0x00bc, 0x00bc, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTC3__RMII0_RD1		= IOMUX_PAD(0x00c0, 0x00c0, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC3__GPIO_48			= IOMUX_PAD(0x00c0, 0x00c0, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTC4__RMII0_RD0		= IOMUX_PAD(0x00c4, 0x00c4, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC4__GPIO_49			= IOMUX_PAD(0x00c4, 0x00c4, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTC5__RMII0_RXER		= IOMUX_PAD(0x00c8, 0x00c8, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC5__GPIO_50			= IOMUX_PAD(0x00c8, 0x00c8, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTC6__RMII0_TD1		= IOMUX_PAD(0x00cc, 0x00cc, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC6__GPIO_51			= IOMUX_PAD(0x00cc, 0x00cc, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTC7__RMII0_TD0		= IOMUX_PAD(0x00D0, 0x00D0, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC7__GPIO_52			= IOMUX_PAD(0x00D0, 0x00D0, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTC8__RMII0_TXEN		= IOMUX_PAD(0x00D4, 0x00D4, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC8__GPIO_53			= IOMUX_PAD(0x00D4, 0x00D4, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTC10__RMII1_MDIO		= IOMUX_PAD(0x00dc, 0x00dc, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC9__RMII1_MDC		= IOMUX_PAD(0x00d8, 0x00d8, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC11__RMII1_CRS_DV		= IOMUX_PAD(0x00e0, 0x00e0, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC12__RMII1_RD1		= IOMUX_PAD(0x00e4, 0x00e4, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC13__RMII1_RD0		= IOMUX_PAD(0x00e8, 0x00e8, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC14__RMII1_RXER		= IOMUX_PAD(0x00ec, 0x00ec, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC15__RMII1_TD1		= IOMUX_PAD(0x00f0, 0x00f0, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC16__RMII1_TD0		= IOMUX_PAD(0x00f4, 0x00f4, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTC17__RMII1_TXEN		= IOMUX_PAD(0x00f8, 0x00f8, 1, __NA_, 0, VF610_ENET_PAD_CTRL),
+	VF610_PAD_PTD5__DSPI1_CS0		= IOMUX_PAD(0x0150, 0x0150, 3, 0x300, 1, VF610_DSPI_PAD_CTRL),
+	VF610_PAD_PTD6__DSPI1_SIN		= IOMUX_PAD(0x0154, 0x0154, 3, 0x2fc, 1, VF610_DSPI_SIN_PAD_CTRL),
+	VF610_PAD_PTD7__DSPI1_SOUT		= IOMUX_PAD(0x0158, 0x0158, 3, __NA_, 0, VF610_DSPI_PAD_CTRL),
+	VF610_PAD_PTD8__DSPI1_SCK		= IOMUX_PAD(0x015c, 0x015c, 3, 0x2f8, 1, VF610_DSPI_PAD_CTRL),
+	VF610_PAD_PTC29__GPIO_102		= IOMUX_PAD(0x0198, 0x0198, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTC30__GPIO_103		= IOMUX_PAD(0x019c, 0x019c, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTA24__ESDHC1_CLK		= IOMUX_PAD(0x0038, 0x0038, 5, __NA_, 0, VF610_SDHC_PAD_CTRL),
+	VF610_PAD_PTA25__ESDHC1_CMD		= IOMUX_PAD(0x003c, 0x003c, 5, __NA_, 0, VF610_SDHC_PAD_CTRL),
+	VF610_PAD_PTA26__ESDHC1_DAT0		= IOMUX_PAD(0x0040, 0x0040, 5, __NA_, 0, VF610_SDHC_PAD_CTRL),
+	VF610_PAD_PTA27__ESDHC1_DAT1		= IOMUX_PAD(0x0044, 0x0044, 5, __NA_, 0, VF610_SDHC_PAD_CTRL),
+	VF610_PAD_PTA28__ESDHC1_DAT2		= IOMUX_PAD(0x0048, 0x0048, 5, __NA_, 0, VF610_SDHC_PAD_CTRL),
+	VF610_PAD_PTA29__ESDHC1_DAT3		= IOMUX_PAD(0x004c, 0x004c, 5, __NA_, 0, VF610_SDHC_PAD_CTRL),
+	VF610_PAD_PTB14__I2C0_SCL		= IOMUX_PAD(0x0090, 0x0090, 2, 0x033c, 1, VF610_I2C_PAD_CTRL),
+	VF610_PAD_PTB15__I2C0_SDA		= IOMUX_PAD(0x0094, 0x0094, 2, 0x0340, 1, VF610_I2C_PAD_CTRL),
+	VF610_PAD_PTA22__I2C2_SCL		= IOMUX_PAD(0x0030, 0x0030, 6, 0x034c, 0, VF610_I2C_PAD_CTRL),
+	VF610_PAD_PTA23__I2C2_SDA		= IOMUX_PAD(0x0034, 0x0034, 6, 0x0350, 0, VF610_I2C_PAD_CTRL),
+	VF610_PAD_PTD31__NF_IO15		= IOMUX_PAD(0x00fc, 0x00fc, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD31__GPIO_63		= IOMUX_PAD(0x00fc, 0x00fc, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTD30__NF_IO14		= IOMUX_PAD(0x0100, 0x0100, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD30__GPIO_64		= IOMUX_PAD(0x0100, 0x0100, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTD29__NF_IO13		= IOMUX_PAD(0x0104, 0x0104, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD29__GPIO_65		= IOMUX_PAD(0x0104, 0x0104, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTD28__NF_IO12		= IOMUX_PAD(0x0108, 0x0108, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD28__GPIO_66		= IOMUX_PAD(0x0108, 0x0108, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTD27__NF_IO11		= IOMUX_PAD(0x010c, 0x010c, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD27__GPIO_67		= IOMUX_PAD(0x010c, 0x010c, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTD26__NF_IO10		= IOMUX_PAD(0x0110, 0x0110, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD26__GPIO_68		= IOMUX_PAD(0x0110, 0x0110, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTD25__NF_IO9			= IOMUX_PAD(0x0114, 0x0114, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD25__GPIO_69		= IOMUX_PAD(0x0114, 0x0114, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTD24__NF_IO8			= IOMUX_PAD(0x0118, 0x0118, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD24__GPIO_70		= IOMUX_PAD(0x0118, 0x0118, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTD23__NF_IO7			= IOMUX_PAD(0x011c, 0x011c, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD0__QSPI0_A_QSCK		= IOMUX_PAD(0x013c, 0x013c, 1, __NA_, 0, VF610_QSPI_PAD_CTRL),
+	VF610_PAD_PTD1__QSPI0_A_CS0		= IOMUX_PAD(0x0140, 0x0140, 1, __NA_, 0, VF610_QSPI_PAD_CTRL),
+	VF610_PAD_PTD2__QSPI0_A_DATA3		= IOMUX_PAD(0x0144, 0x0144, 1, __NA_, 0, VF610_QSPI_PAD_CTRL),
+	VF610_PAD_PTD3__QSPI0_A_DATA2		= IOMUX_PAD(0x0148, 0x0148, 1, __NA_, 0, VF610_QSPI_PAD_CTRL),
+	VF610_PAD_PTD4__GPIO_83         = IOMUX_PAD(0x014C, 0x014C, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTD4__QSPI0_A_DATA1		= IOMUX_PAD(0x014c, 0x014c, 1, __NA_, 0, VF610_QSPI_PAD_CTRL),
+	VF610_PAD_PTD5__QSPI0_A_DATA0		= IOMUX_PAD(0x0150, 0x0150, 1, __NA_, 0, VF610_QSPI_PAD_CTRL),
+	VF610_PAD_PTD7__QSPI0_B_QSCK		= IOMUX_PAD(0x0158, 0x0158, 1, __NA_, 0, VF610_QSPI_PAD_CTRL),
+	VF610_PAD_PTD8__QSPI0_B_CS0		= IOMUX_PAD(0x015c, 0x015c, 1, __NA_, 0, VF610_QSPI_PAD_CTRL),
+	VF610_PAD_PTD9__QSPI0_B_DATA3		= IOMUX_PAD(0x0160, 0x0160, 1, __NA_, 0, VF610_QSPI_PAD_CTRL),
+	VF610_PAD_PTD9__GPIO_88			= IOMUX_PAD(0x0160, 0x0160, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTD10__QSPI0_B_DATA2		= IOMUX_PAD(0x0164, 0x0164, 1, __NA_, 0, VF610_QSPI_PAD_CTRL),
+	VF610_PAD_PTD10__GPIO_89		= IOMUX_PAD(0x0164, 0x0164, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTD11__QSPI0_B_DATA1		= IOMUX_PAD(0x0168, 0x0168, 1, __NA_, 0, VF610_QSPI_PAD_CTRL),
+	VF610_PAD_PTD11__GPIO_90		= IOMUX_PAD(0x0168, 0x0168, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTD12__QSPI0_B_DATA0		= IOMUX_PAD(0x016c, 0x016c, 1, __NA_, 0, VF610_QSPI_PAD_CTRL),
+	VF610_PAD_PTD12__GPIO_91		= IOMUX_PAD(0x016c, 0x016c, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTD13__GPIO_92		= IOMUX_PAD(0x0170, 0x0170, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
+	VF610_PAD_PTD22__NF_IO6			= IOMUX_PAD(0x0120, 0x0120, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD21__NF_IO5			= IOMUX_PAD(0x0124, 0x0124, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD20__NF_IO4			= IOMUX_PAD(0x0128, 0x0128, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD19__NF_IO3			= IOMUX_PAD(0x012c, 0x012c, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD18__NF_IO2			= IOMUX_PAD(0x0130, 0x0130, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD17__NF_IO1			= IOMUX_PAD(0x0134, 0x0134, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD16__NF_IO0			= IOMUX_PAD(0x0138, 0x0138, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTB24__NF_WE_B		= IOMUX_PAD(0x0178, 0x0178, 5, __NA_, 0, VF610_NFC_CN_PAD_CTRL),
+	VF610_PAD_PTB25__NF_CE0_B		= IOMUX_PAD(0x017c, 0x017c, 5, __NA_, 0, VF610_NFC_CN_PAD_CTRL),
+
+	VF610_PAD_PTB27__NF_RE_B 		= IOMUX_PAD(0x0184, 0x0184, 6, __NA_, 0, VF610_NFC_CN_PAD_CTRL),
+
+	VF610_PAD_PTC26__NF_RB_B 		= IOMUX_PAD(0x018C, 0x018C, 5, __NA_, 0, VF610_NFC_RB_PAD_CTRL),
+
+	VF610_PAD_PTC27__NF_ALE  		= IOMUX_PAD(0x0190, 0x0190, 6, __NA_, 0, VF610_NFC_CN_PAD_CTRL),
+
+	VF610_PAD_PTC28__NF_CLE  		= IOMUX_PAD(0x0194, 0x0194, 6, __NA_, 0, VF610_NFC_CN_PAD_CTRL),
+
+	VF610_PAD_DDR_RESETB			= IOMUX_PAD(0x021c, 0x021c, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A15__DDR_A_15		= IOMUX_PAD(0x0220, 0x0220, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A14__DDR_A_14		= IOMUX_PAD(0x0224, 0x0224, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A13__DDR_A_13		= IOMUX_PAD(0x0228, 0x0228, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A12__DDR_A_12		= IOMUX_PAD(0x022c, 0x022c, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A11__DDR_A_11		= IOMUX_PAD(0x0230, 0x0230, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A10__DDR_A_10		= IOMUX_PAD(0x0234, 0x0234, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A9__DDR_A_9		= IOMUX_PAD(0x0238, 0x0238, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A8__DDR_A_8		= IOMUX_PAD(0x023c, 0x023c, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A7__DDR_A_7		= IOMUX_PAD(0x0240, 0x0240, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A6__DDR_A_6		= IOMUX_PAD(0x0244, 0x0244, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A5__DDR_A_5		= IOMUX_PAD(0x0248, 0x0248, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A4__DDR_A_4		= IOMUX_PAD(0x024c, 0x024c, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A3__DDR_A_3		= IOMUX_PAD(0x0250, 0x0250, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A2__DDR_A_2		= IOMUX_PAD(0x0254, 0x0254, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A1__DDR_A_1		= IOMUX_PAD(0x0258, 0x0258, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_A0__DDR_A_0		= IOMUX_PAD(0x025c, 0x025c, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_BA2__DDR_BA_2		= IOMUX_PAD(0x0260, 0x0260, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_BA1__DDR_BA_1		= IOMUX_PAD(0x0264, 0x0264, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_BA0__DDR_BA_0		= IOMUX_PAD(0x0268, 0x0268, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_CAS__DDR_CAS_B		= IOMUX_PAD(0x026c, 0x026c, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_CKE__DDR_CKE_0		= IOMUX_PAD(0x0270, 0x0270, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_CLK__DDR_CLK_0		= IOMUX_PAD(0x0274, 0x0274, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_CS__DDR_CS_B_0		= IOMUX_PAD(0x0278, 0x0278, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_D15__DDR_D_15		= IOMUX_PAD(0x027c, 0x027c, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D14__DDR_D_14		= IOMUX_PAD(0x0280, 0x0280, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D13__DDR_D_13		= IOMUX_PAD(0x0284, 0x0284, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D12__DDR_D_12		= IOMUX_PAD(0x0288, 0x0288, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D11__DDR_D_11		= IOMUX_PAD(0x028c, 0x028c, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D10__DDR_D_10		= IOMUX_PAD(0x0290, 0x0290, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D9__DDR_D_9		= IOMUX_PAD(0x0294, 0x0294, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D8__DDR_D_8		= IOMUX_PAD(0x0298, 0x0298, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D7__DDR_D_7		= IOMUX_PAD(0x029c, 0x029c, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D6__DDR_D_6		= IOMUX_PAD(0x02a0, 0x02a0, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D5__DDR_D_5		= IOMUX_PAD(0x02a4, 0x02a4, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D4__DDR_D_4		= IOMUX_PAD(0x02a8, 0x02a8, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D3__DDR_D_3		= IOMUX_PAD(0x02ac, 0x02ac, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D2__DDR_D_2		= IOMUX_PAD(0x02b0, 0x02b0, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D1__DDR_D_1		= IOMUX_PAD(0x02b4, 0x02b4, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_D0__DDR_D_0		= IOMUX_PAD(0x02b8, 0x02b8, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_DQM1__DDR_DQM_1		= IOMUX_PAD(0x02bc, 0x02bc, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_DQM0__DDR_DQM_0		= IOMUX_PAD(0x02c0, 0x02c0, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_DQS1__DDR_DQS_1		= IOMUX_PAD(0x02c4, 0x02c4, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_DQS0__DDR_DQS_0		= IOMUX_PAD(0x02c8, 0x02c8, 0, __NA_, 0, VF610_DDR_PAD_CTRL_1),
+	VF610_PAD_DDR_RAS__DDR_RAS_B		= IOMUX_PAD(0x02cc, 0x02cc, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_WE__DDR_WE_B		= IOMUX_PAD(0x02d0, 0x02d0, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_ODT1__DDR_ODT_0		= IOMUX_PAD(0x02d4, 0x02d4, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+	VF610_PAD_DDR_ODT0__DDR_ODT_1		= IOMUX_PAD(0x02d8, 0x02d8, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
+};
+
+#endif	/* __IOMUX_VF610_H__ */
diff --git a/images/Makefile.imx b/images/Makefile.imx
index b02fdff..14241b6 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -392,3 +392,8 @@ pblx-$(CONFIG_MACH_ELTEC_HIPERCAM) += start_imx6dl_eltec_hipercam
 CFG_start_imx6dl_eltec_hipercam.pblx.imximg = $(board)/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
 FILE_barebox-eltec-hipercam.img = start_imx6dl_eltec_hipercam.pblx.imximg
 image-$(CONFIG_MACH_ELTEC_HIPERCAM) += barebox-eltec-hipercam.img
+
+pblx-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
+CFG_start_vf610_twr.pblx.imximg = $(board)/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
+FILE_barebox-vf610-twr.img = start_vf610_twr.pblx.imximg
+image-$(CONFIG_MACH_VF610_TWR) += barebox-vf610-twr.img
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
