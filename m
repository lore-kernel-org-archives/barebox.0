Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UKPvF-0003A8-NE
 for barebox@lists.infradead.org; Tue, 26 Mar 2013 09:12:05 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 26 Mar 2013 10:11:26 +0100
Message-Id: <1364289086-2241-6-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1364289086-2241-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1364289086-2241-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 5/5] ARM: zynq: Add support for the Avnet Zedboard
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The Avnet ZedBoard is an evalboard with a Zynq-7020 based MPSoC.
There is also a Digilent ZedBoard, that is the same but only for
academic customers.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---

Changes since v2:
	- use pbl image
	- remove useless flash_header_start

 arch/arm/boards/avnet-zedboard/Makefile            |   3 +
 arch/arm/boards/avnet-zedboard/board.c             |  38 ++++
 arch/arm/boards/avnet-zedboard/config.h            |   4 +
 .../boards/avnet-zedboard/env/init/config-board    |   7 +
 arch/arm/boards/avnet-zedboard/flash_header.c      |  62 +++++
 arch/arm/boards/avnet-zedboard/lowlevel.c          | 252 +++++++++++++++++++++
 arch/arm/configs/zedboard_defconfig                |  49 ++++
 7 files changed, 415 insertions(+)
 create mode 100644 arch/arm/boards/avnet-zedboard/Makefile
 create mode 100644 arch/arm/boards/avnet-zedboard/board.c
 create mode 100644 arch/arm/boards/avnet-zedboard/config.h
 create mode 100644 arch/arm/boards/avnet-zedboard/env/init/config-board
 create mode 100644 arch/arm/boards/avnet-zedboard/flash_header.c
 create mode 100644 arch/arm/boards/avnet-zedboard/lowlevel.c
 create mode 100644 arch/arm/configs/zedboard_defconfig

diff --git a/arch/arm/boards/avnet-zedboard/Makefile b/arch/arm/boards/avnet-zedboard/Makefile
new file mode 100644
index 0000000..a2c3104
--- /dev/null
+++ b/arch/arm/boards/avnet-zedboard/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o
+lwl-y += lowlevel.o
+lwl-y += flash_header.o
diff --git a/arch/arm/boards/avnet-zedboard/board.c b/arch/arm/boards/avnet-zedboard/board.c
new file mode 100644
index 0000000..4e3d5a5
--- /dev/null
+++ b/arch/arm/boards/avnet-zedboard/board.c
@@ -0,0 +1,38 @@
+/*
+ * Copyright (C) 2013 Steffen Trumtrar <s.trumtrar@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <asm/armlinux.h>
+#include <common.h>
+#include <environment.h>
+#include <generated/mach-types.h>
+#include <init.h>
+#include <mach/devices.h>
+#include <mach/zynq7000-regs.h>
+#include <sizes.h>
+
+static int zedboard_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0, SZ_512M);
+
+	return 0;
+}
+mem_initcall(zedboard_mem_init);
+
+static int zedboard_console_init(void)
+{
+	zynq_add_uart1();
+
+	return 0;
+}
+console_initcall(zedboard_console_init);
diff --git a/arch/arm/boards/avnet-zedboard/config.h b/arch/arm/boards/avnet-zedboard/config.h
new file mode 100644
index 0000000..ca15136
--- /dev/null
+++ b/arch/arm/boards/avnet-zedboard/config.h
@@ -0,0 +1,4 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/avnet-zedboard/env/init/config-board b/arch/arm/boards/avnet-zedboard/env/init/config-board
new file mode 100644
index 0000000..9957653
--- /dev/null
+++ b/arch/arm/boards/avnet-zedboard/env/init/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=ZedBoard
+global.linux.bootargs.base="console=ttyPS1,115200"
diff --git a/arch/arm/boards/avnet-zedboard/flash_header.c b/arch/arm/boards/avnet-zedboard/flash_header.c
new file mode 100644
index 0000000..ea20524
--- /dev/null
+++ b/arch/arm/boards/avnet-zedboard/flash_header.c
@@ -0,0 +1,62 @@
+/*
+ * Copyright (C) 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <asm/byteorder.h>
+#include <mach/zynq-flash-header.h>
+#include <mach/zynq7000-regs.h>
+#include <asm/barebox-arm-head.h>
+
+#define REG(a, v) { .addr = cpu_to_le32(a), .val = cpu_to_le32(v), }
+
+struct zynq_reg_entry __ps7reg_entry_section reg_entry[] = {
+	REG(ZYNQ_SLCR_UNLOCK, 0x0000DF0D),
+	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_CLK_621_TRUE, 0x00000001),
+	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_APER_CLK_CTRL, 0x01FC044D),
+
+	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028008),
+	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CFG, 0x000FA220),
+	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028010),
+	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028011),
+	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028010),
+	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028000),
+
+	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E008),
+	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CFG, 0x001452C0),
+	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E010),
+	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E011),
+	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E010),
+	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E000),
+
+	REG(0xf8000150, 0x00000a03),
+
+	/* stop */
+	REG(0xFFFFFFFF, 0x00000000),
+};
+
+struct zynq_flash_header __flash_header_section flash_header = {
+	.width_det		= WIDTH_DETECTION_MAGIC,
+	.image_id		= IMAGE_IDENTIFICATION,
+	.enc_stat		= 0x0,
+	.user			= 0x0,
+	.flash_offset		= 0x8c0,
+	.length			= barebox_image_size,
+	.res0			= 0x0,
+	.start_of_exec		= 0x0,
+	.total_len		= barebox_image_size,
+	.res1			= 0x1,
+	.checksum		= 0x0,
+	.res2			= 0x0,
+};
diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
new file mode 100644
index 0000000..b50886e
--- /dev/null
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -0,0 +1,252 @@
+/*
+ *
+ * (c) 2013 Steffen Trumtrar <s.trumtrar@pengutronix.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <io.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/zynq7000-regs.h>
+
+#define DCI_DONE	(1 << 13)
+#define PLL_ARM_LOCK	(1 << 0)
+#define PLL_DDR_LOCK	(1 << 1)
+#define PLL_IO_LOCK	(1 << 2)
+
+void __naked barebox_arm_reset_vector(void)
+{
+	/* open sesame */
+	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
+
+	/* turn on LD9 */
+	writel(0x00000200, 0xF800071C);
+	writel(0x00000080, 0xE000A204);
+	writel(0x00000080, 0xE000A000);
+
+	/* ps7_clock_init_data */
+	writel(0x1F000200, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_CLK_CTRL);
+	writel(0x00F00701, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DCI_CLK_CTRL);
+	writel(0x00002803, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_UART_CLK_CTRL);
+	writel(0x00000A03, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DBG_CLK_CTRL);
+	writel(0x00000501, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_PCAP_CLK_CTRL);
+	writel(0x00000000, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_TOPSW_CLK_CTRL);
+	writel(0x00100A00, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_FPGA0_CLK_CTRL);
+	writel(0x00100700, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_FPGA1_CLK_CTRL);
+	writel(0x00101400, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_FPGA2_CLK_CTRL);
+	writel(0x00101400, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_FPGA3_CLK_CTRL);
+	/* 6:2:1 mode */
+	writel(0x00000001, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_CLK_621_TRUE);
+	writel(0x01FC044D, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_APER_CLK_CTRL);
+
+	/* configure the PLLs */
+	/* ARM PLL */
+	writel(0x00028008, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);
+	writel(0x000FA220, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CFG);
+	writel(0x00028010, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);
+	writel(0x00028011, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);
+	writel(0x00028010, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);
+
+	while (!(readl(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_PLL_STATUS) & PLL_ARM_LOCK))
+		;
+	writel(0x00028000, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);
+
+	/* DDR PLL */
+	/* set to bypass mode */
+	writel(0x0001A018, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
+	/* assert reset */
+	writel(0x0001A019, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
+	/* set feedback divs */
+	writel(0x00020019, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
+	writel(0x0012C220, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CFG);
+	/* set ddr2xclk and ddr3xclk: 3,2 */
+	writel(0x0C200003, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_CLK_CTRL);
+	/* deassert reset */
+	writel(0x00020018, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
+	/* wait pll lock */
+	while (!(readl(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_PLL_STATUS) & PLL_DDR_LOCK))
+		;
+	/* remove bypass mode */
+	writel(0x00020008, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
+
+	/* IO PLL */
+	writel(0x0001E008, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
+	writel(0x001452C0, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CFG);
+	writel(0x0001E010, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
+	writel(0x0001E011, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
+	writel(0x0001E010, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
+
+	while (!(readl(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_PLL_STATUS) & PLL_IO_LOCK))
+		;
+	writel(0x0001E000, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
+
+	/*
+	 * INP_TYPE[1:2] = {off, vref, diff, lvcmos}
+	 * DCI_UPDATE[3], TERM_EN[4]
+	 * DCI_TYPE[5:6] = {off, drive, res, term}
+	 * IBUF_DISABLE_MODE[7] = {ibuf, ibuf_disable}
+	 * TERM_DISABLE_MODE[8] = {always, dynamic}
+	 * OUTPUT_EN[9:10] = {ibuf, res, res, obuf}
+	 * PULLUP_EN[11]
+	 */
+	writel(0x00000600, ZYNQ_DDRIOB_ADDR0);
+	writel(0x00000600, ZYNQ_DDRIOB_ADDR1);
+	writel(0x00000672, ZYNQ_DDRIOB_DATA0);
+	writel(0x00000672, ZYNQ_DDRIOB_DATA1);
+	writel(0x00000674, ZYNQ_DDRIOB_DIFF0);
+	writel(0x00000674, ZYNQ_DDRIOB_DIFF1);
+	writel(0x00000600, ZYNQ_DDRIOB_CLOCK);
+	/*
+	 * Drive_P[0:6], Drive_N[7:13]
+	 * Slew_P[14:18], Slew_N[19:23]
+	 * GTL[24:26], RTerm[27:31]
+	 */
+	writel(0x00D6861C, ZYNQ_DDRIOB_DRIVE_SLEW_ADDR);
+	writel(0x00F9861C, ZYNQ_DDRIOB_DRIVE_SLEW_DATA);
+	writel(0x00F9861C, ZYNQ_DDRIOB_DRIVE_SLEW_DIFF);
+	writel(0x00D6861C, ZYNQ_DDRIOB_DRIVE_SLEW_CLOCK);
+	/*
+	 * VREF_INT_EN[0]
+	 * VREF_SEL[1:4] = {0001=0.6V, 0100=0.75V, 1000=0.9V}
+	 * VREF_EXT_EN[5:6] = {dis/dis, dis/en, en/dis, en/en}
+	 * RES[7:8], REFIO_EN[9]
+	 */
+	/* FIXME: Xilinx sets this to internal, but Zedboard should support
+	   external VRef, too */
+	writel(0x00000E09, ZYNQ_DDRIOB_DDR_CTRL);
+	/*
+	 * RESET[0], ENABLE[1]
+	 * NREF_OPT1[6:7], NREF_OPT2[8:10], NREF_OPT4[11:13]
+	 * PREF_OPT1[14:15], PREF_OPT2[17:19], UPDATE_CONTROL[20]
+	 */
+	writel(0x00000021, ZYNQ_DDRIOB_DCI_CTRL);
+	writel(0x00000020, ZYNQ_DDRIOB_DCI_CTRL);
+	writel(0x00100823, ZYNQ_DDRIOB_DCI_CTRL);
+
+	while (!(readl(ZYNQ_DDRIOB_DCI_STATUS) & DCI_DONE))
+		;
+
+	writel(0x0E00E07F, 0xF8007000);
+
+	/* ps7_ddr_init_data */
+	writel(0x00000080, 0XF8006000);
+	writel(0x00081081, 0XF8006004);
+	writel(0x03C0780F, 0XF8006008);
+	writel(0x02001001, 0XF800600C);
+	writel(0x00014001, 0XF8006010);
+	writel(0x0004159B, 0XF8006014);
+	writel(0x452460D2, 0XF8006018);
+	writel(0x720238E5, 0XF800601C);
+	writel(0x272872D0, 0XF8006020);
+	writel(0x0000003C, 0XF8006024);
+	writel(0x00002007, 0XF8006028);
+	writel(0x00000008, 0XF800602C);
+	writel(0x00040930, 0XF8006030);
+	writel(0x00010694, 0XF8006034);
+	writel(0x00000000, 0XF8006038);
+	writel(0x00000777, 0XF800603C);
+	writel(0xFFF00000, 0XF8006040);
+	writel(0x0FF66666, 0XF8006044);
+	writel(0x0003C248, 0XF8006048);
+	writel(0x77010800, 0XF8006050);
+	writel(0x00000101, 0XF8006058);
+	writel(0x00005003, 0XF800605C);
+	writel(0x0000003E, 0XF8006060);
+	writel(0x00020000, 0XF8006064);
+	writel(0x00284141, 0XF8006068);
+	writel(0x00001610, 0XF800606C);
+	writel(0x00008000, 0XF80060A0);
+	writel(0x10200802, 0XF80060A4);
+	writel(0x0690CB73, 0XF80060A8);
+	writel(0x000001FE, 0XF80060AC);
+	writel(0x1CFFFFFF, 0XF80060B0);
+	writel(0x00000200, 0XF80060B4);
+	writel(0x00200066, 0XF80060B8);
+	writel(0x00000000, 0XF80060BC);
+	writel(0x00000000, 0XF80060C4);
+	writel(0x00000000, 0XF80060C8);
+	writel(0x00000000, 0XF80060DC);
+	writel(0x00000000, 0XF80060F0);
+	writel(0x00000008, 0XF80060F4);
+	writel(0x00000000, 0XF8006114);
+	writel(0x40000001, 0XF8006118);
+	writel(0x40000001, 0XF800611C);
+	writel(0x40000001, 0XF8006120);
+	writel(0x40000001, 0XF8006124);
+	writel(0x00033C03, 0XF800612C);
+	writel(0x00034003, 0XF8006130);
+	writel(0x0002F400, 0XF8006134);
+	writel(0x00030400, 0XF8006138);
+	writel(0x00000035, 0XF8006140);
+	writel(0x00000035, 0XF8006144);
+	writel(0x00000035, 0XF8006148);
+	writel(0x00000035, 0XF800614C);
+	writel(0x00000083, 0XF8006154);
+	writel(0x00000083, 0XF8006158);
+	writel(0x0000007F, 0XF800615C);
+	writel(0x00000078, 0XF8006160);
+	writel(0x00000124, 0XF8006168);
+	writel(0x00000125, 0XF800616C);
+	writel(0x00000112, 0XF8006170);
+	writel(0x00000116, 0XF8006174);
+	writel(0x000000C3, 0XF800617C);
+	writel(0x000000C3, 0XF8006180);
+	writel(0x000000BF, 0XF8006184);
+	writel(0x000000B8, 0XF8006188);
+	writel(0x10040080, 0XF8006190);
+	writel(0x0001FC82, 0XF8006194);
+	writel(0x00000000, 0XF8006204);
+	writel(0x000803FF, 0XF8006208);
+	writel(0x000803FF, 0XF800620C);
+	writel(0x000803FF, 0XF8006210);
+	writel(0x000803FF, 0XF8006214);
+	writel(0x000003FF, 0XF8006218);
+	writel(0x000003FF, 0XF800621C);
+	writel(0x000003FF, 0XF8006220);
+	writel(0x000003FF, 0XF8006224);
+	writel(0x00000000, 0XF80062A8);
+	writel(0x00000000, 0XF80062AC);
+	writel(0x00005125, 0XF80062B0);
+	writel(0x000012A8, 0XF80062B4);
+	writel(0x00000081, 0XF8006000);
+
+	/* poor mans pinctrl */
+	writel(0x000002E0, ZYNQ_MIO_BASE + 0xC0);
+	writel(0x000002E1, ZYNQ_MIO_BASE + 0xC4);
+	/* UART1 pinmux */
+	writel(0x000002E1, ZYNQ_MIO_BASE + 0xC8);
+	writel(0x000002E0, ZYNQ_MIO_BASE + 0xCC);
+
+	/* poor mans clkctrl */
+	writel(0x00001403, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_UART_CLK_CTRL);
+
+	writel(0x00000001, 0xf8000138);
+	writel(0x00100801, 0xf8000140);
+	writel(0x00000302, 0xf8000740);
+	writel(0x00000302, 0xf8000744);
+	writel(0x00000302, 0xf8000748);
+	writel(0x00000302, 0xf800074C);
+	writel(0x00000302, 0xf8000750);
+	writel(0x00000302, 0xf8000754);
+
+	writel(0x00000001, 0xf8000B00);
+
+	/* lock up. secure, secure */
+	writel(0x0000767B, ZYNQ_SLCR_LOCK);
+
+	arm_cpu_lowlevel_init();
+	barebox_arm_entry(0, SZ_512M, 0);
+}
diff --git a/arch/arm/configs/zedboard_defconfig b/arch/arm/configs/zedboard_defconfig
new file mode 100644
index 0000000..773177c
--- /dev/null
+++ b/arch/arm/configs/zedboard_defconfig
@@ -0,0 +1,49 @@
+CONFIG_ARCH_ZYNQ=y
+CONFIG_AEABI=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_ARM_UNWIND=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_STACK_SIZE=0xf000
+CONFIG_MALLOC_SIZE=0x8000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_LONGHELP=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/avnet-zedboard/env"
+CONFIG_DEBUG_INFO=y
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_READLINK=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OFTREE_PROBE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_CLK=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+# CONFIG_SPI is not set
+CONFIG_FS_TFTP=y
+CONFIG_DIGEST=y
+CONFIG_MD5=y
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
