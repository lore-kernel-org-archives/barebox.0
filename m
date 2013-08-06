Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6hXi-0006Wm-Kd
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 13:43:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Aug 2013 15:42:54 +0200
Message-Id: <1375796574-8759-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1375796574-8759-1-git-send-email-s.hauer@pengutronix.de>
References: <1375796574-8759-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: i.MX6: Add dfi fs700 m60 i.MX6 Q7 board support
To: barebox@lists.infradead.org

This is an i.MX6 based Q7 module, see:

http://www.dfi.com.tw/products/ProductDetails.jsp?productId=1164&mainCategoryId=2&subCategoryId=581

This patch adds basic support for this module.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/dfi-fs700-m60/Makefile             |   5 +
 arch/arm/boards/dfi-fs700-m60/board.c              |  80 +++++++++++++
 .../dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg | 128 +++++++++++++++++++++
 .../dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg |  63 ++++++++++
 arch/arm/boards/dfi-fs700-m60/lowlevel.c           | 102 ++++++++++++++++
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/dts/Makefile                              |   3 +
 arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts           |  23 ++++
 arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts            |  23 ++++
 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi            | 115 ++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |   5 +
 images/Makefile.imx                                |  12 ++
 13 files changed, 561 insertions(+)
 create mode 100644 arch/arm/boards/dfi-fs700-m60/Makefile
 create mode 100644 arch/arm/boards/dfi-fs700-m60/board.c
 create mode 100644 arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg
 create mode 100644 arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
 create mode 100644 arch/arm/boards/dfi-fs700-m60/lowlevel.c
 create mode 100644 arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts
 create mode 100644 arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts
 create mode 100644 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 2e924fd..8068f67 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
 obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
 obj-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing/
 obj-$(CONFIG_MACH_CLEP7212)			+= clep7212/
+obj-$(CONFIG_MACH_DFI_FS700_M60)		+= dfi-fs700-m60/
 obj-$(CONFIG_MACH_DSS11)			+= dss11/
 obj-$(CONFIG_MACH_EDB93012)			+= edb93xx/
 obj-$(CONFIG_MACH_EDB9301)			+= edb93xx/
diff --git a/arch/arm/boards/dfi-fs700-m60/Makefile b/arch/arm/boards/dfi-fs700-m60/Makefile
new file mode 100644
index 0000000..28d4f29
--- /dev/null
+++ b/arch/arm/boards/dfi-fs700-m60/Makefile
@@ -0,0 +1,5 @@
+obj-y += board.o
+obj-y += flash-header-fs700-m60-6s.dcd.o flash-header-fs700-m60-6q.dcd.o
+extra-y += flash-header-fs700-m60-6s.dcd.S flash-header-fs700-m60-6q.dcd.S
+extra-y += flash-header-fs700-m60-6s.dcd flash-header-fs700-m60-6q.dcd
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/dfi-fs700-m60/board.c b/arch/arm/boards/dfi-fs700-m60/board.c
new file mode 100644
index 0000000..9894654
--- /dev/null
+++ b/arch/arm/boards/dfi-fs700-m60/board.c
@@ -0,0 +1,80 @@
+/*
+ * Copyright (C) 2013 Sascha Hauer, Pengutronix
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation.
+ *
+ */
+#define pr_fmt(fmt)  "dfi-fs700-m60: " fmt
+
+#include <generated/mach-types.h>
+#include <common.h>
+#include <sizes.h>
+#include <envfs.h>
+#include <init.h>
+#include <gpio.h>
+#include <net.h>
+#include <linux/phy.h>
+
+#include <asm/armlinux.h>
+#include <asm/memory.h>
+#include <asm/mmu.h>
+#include <asm/io.h>
+
+#include <mach/imx6-regs.h>
+#include <mach/generic.h>
+#include <mach/bbu.h>
+
+static int ar8031_phy_fixup(struct phy_device *dev)
+{
+	u16 val;
+
+	/* To enable AR8031 ouput a 125MHz clk from CLK_25M */
+	phy_write(dev, 0xd, 0x7);
+	phy_write(dev, 0xe, 0x8016);
+	phy_write(dev, 0xd, 0x4007);
+
+	val = phy_read(dev, 0xe);
+	val &= 0xffe3;
+	val |= 0x18;
+	phy_write(dev, 0xe, val);
+
+	/* introduce tx clock delay */
+	phy_write(dev, 0x1d, 0x5);
+	val = phy_read(dev, 0x1e);
+	val |= 0x0100;
+	phy_write(dev, 0x1e, val);
+
+	return 0;
+}
+
+#define PHY_ID_AR8031	0x004dd074
+#define AR_PHY_ID_MASK	0xffffffff
+
+static int dfi_fs700_m60_init(void)
+{
+	if (!of_machine_is_compatible("dfi,fs700-m60"))
+		return 0;
+
+	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK, ar8031_phy_fixup);
+
+	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc3.boot0",
+		BBU_HANDLER_FLAG_DEFAULT, NULL, 0, 0);
+
+	armlinux_set_bootparams((void *)0x10000100);
+	armlinux_set_architecture(MACH_TYPE_MX6Q_SABRESD);
+
+	return 0;
+}
+device_initcall(dfi_fs700_m60_init);
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg
new file mode 100644
index 0000000..f88157f
--- /dev/null
+++ b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg
@@ -0,0 +1,128 @@
+loadaddr 0x27800000
+soc imx6
+dcdofs 0x400
+wm 32 0x020e05a8 0x00000030
+wm 32 0x020e05b0 0x00000030
+wm 32 0x020e0524 0x00000030
+wm 32 0x020e051c 0x00000030
+
+wm 32 0x020e0518 0x00000030
+wm 32 0x020e050c 0x00000030
+wm 32 0x020e05b8 0x00000030
+wm 32 0x020e05c0 0x00000030
+
+wm 32 0x020e05ac 0x00020030
+wm 32 0x020e05b4 0x00020030
+wm 32 0x020e0528 0x00020030
+wm 32 0x020e0520 0x00020030
+
+wm 32 0x020e0514 0x00020030
+wm 32 0x020e0510 0x00020030
+wm 32 0x020e05bc 0x00020030
+wm 32 0x020e05c4 0x00020030
+
+wm 32 0x020e056c 0x00020030
+wm 32 0x020e0578 0x00020030
+wm 32 0x020e0588 0x00020030
+wm 32 0x020e0594 0x00020030
+
+wm 32 0x020e057c 0x00020030
+wm 32 0x020e0590 0x00003000
+wm 32 0x020e0598 0x00003000
+wm 32 0x020e058c 0x00000000
+
+wm 32 0x020e059c 0x00003030
+wm 32 0x020e05a0 0x00003030
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e0788 0x00000030
+
+wm 32 0x020e0794 0x00000030
+wm 32 0x020e079c 0x00000030
+wm 32 0x020e07a0 0x00000030
+wm 32 0x020e07a4 0x00000030
+
+wm 32 0x020e07a8 0x00000030
+wm 32 0x020e0748 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0750 0x00020000
+
+wm 32 0x020e0758 0x00000000
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0798 0x000C0000
+
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+wm 32 0x021b0018 0x00081740
+
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b000c 0x555A7974
+wm 32 0x021b0010 0xDB538F64
+wm 32 0x021b0014 0x01FF00DB
+wm 32 0x021b002c 0x000026D2
+
+wm 32 0x021b0030 0x005A1023
+wm 32 0x021b0008 0x09444040
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0040 0x00000027
+wm 32 0x021b0000 0x831A0000
+
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x0408803A
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x0000803B
+wm 32 0x021b001c 0x00428031
+wm 32 0x021b001c 0x00428039
+wm 32 0x021b001c 0x19308030
+wm 32 0x021b001c 0x19308038
+
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b001c 0x04008048
+wm 32 0x021b0800 0xA1380003
+wm 32 0x021b4800 0xA1380003
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00022227
+wm 32 0x021b4818 0x00022227
+
+wm 32 0x021b083c 0x434B0350
+wm 32 0x021b0840 0x034C0359
+wm 32 0x021b483c 0x434B0350
+wm 32 0x021b4840 0x03650348
+wm 32 0x021b0848 0x4436383B
+wm 32 0x021b4848 0x39393341
+wm 32 0x021b0850 0x35373933
+wm 32 0x021b4850 0x48254A36
+
+wm 32 0x021b080c 0x001F001F
+wm 32 0x021b0810 0x001F001F
+
+wm 32 0x021b480c 0x00440044
+wm 32 0x021b4810 0x00440044
+
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+
+wm 32 0x021b001c 0x00000000
+wm 32 0x021b0404 0x00011006
+
+wm 32 0x020c4068 0x00C03F3F
+wm 32 0x020c406c 0x0030FC03
+wm 32 0x020c4070 0x0FFFC000
+wm 32 0x020c4074 0x3FF00000
+wm 32 0x020c4078 0x00FFF300
+wm 32 0x020c407c 0x0F0000C3
+wm 32 0x020c4080 0x000003FF
+
+
+wm 32 0x020e0010 0xF00000CF
+
+wm 32 0x020e0018 0x007F007F
+wm 32 0x020e001c 0x007F007F
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
new file mode 100644
index 0000000..9f5b14f
--- /dev/null
+++ b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
@@ -0,0 +1,63 @@
+loadaddr 0x17800000
+soc imx6
+dcdofs 0x400
+
+wm 32 0x020e0774 0x000c0000
+wm 32 0x020e0754 0x00000000
+wm 32 0x020e04ac 0x00000030
+wm 32 0x020e04b0 0x00000030
+wm 32 0x020e0464 0x00000030
+wm 32 0x020e0490 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0494 0x00000030
+wm 32 0x020e04a0 0x00000000
+wm 32 0x020e04b4 0x00000030
+wm 32 0x020e04b8 0x00000030
+wm 32 0x020e076c 0x00000030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e04bc 0x00000030
+wm 32 0x020e04c0 0x00000030
+wm 32 0x020e04c4 0x00000030
+wm 32 0x020e04c8 0x00000030
+wm 32 0x020e0760 0x00020000
+wm 32 0x020e0764 0x00000030
+wm 32 0x020e0770 0x00000030
+wm 32 0x020e0778 0x00000030
+wm 32 0x020e077c 0x00000030
+wm 32 0x020e0470 0x00000030
+wm 32 0x020e0474 0x00000030
+wm 32 0x020e0478 0x00000030
+wm 32 0x020e047c 0x00000030
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b080c 0x001f001f
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b083c 0x42190219
+wm 32 0x021b0840 0x017b0177
+wm 32 0x021b0848 0x4b4d4e4d
+wm 32 0x021b0850 0x3f3e2d36
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b0004 0x0002002d
+wm 32 0x021b0008 0x00333030
+wm 32 0x021b000c 0x3f435313
+wm 32 0x021b0010 0xb66e8b63
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b0018 0x00001740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x00431023
+wm 32 0x021b0040 0x00000027
+wm 32 0x021b0000 0x84190000
+wm 32 0x021b001c 0x04008032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x05208030
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00011117
+wm 32 0x021b0004 0x0002556d
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
diff --git a/arch/arm/boards/dfi-fs700-m60/lowlevel.c b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
new file mode 100644
index 0000000..725c58d
--- /dev/null
+++ b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
@@ -0,0 +1,102 @@
+/*
+ * Copyright (C) 2013 Sascha Hauer <s.hauer@pengutronix.de>
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
+#include <sizes.h>
+#include <io.h>
+#include <asm/sections.h>
+#include <asm/mmu.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx6-mmdc.h>
+#include <mach/imx6-regs.h>
+
+#include <debug_ll.h>
+
+static inline void early_uart_init(void)
+{
+	writel(0x00000000, MX6_UART1_BASE_ADDR + 0x80);
+	writel(0x00004027, MX6_UART1_BASE_ADDR + 0x84);
+	writel(0x00000704, MX6_UART1_BASE_ADDR + 0x88);
+	writel(0x00000a81, MX6_UART1_BASE_ADDR + 0x90);
+	writel(0x0000002b, MX6_UART1_BASE_ADDR + 0x9c);
+	writel(0x00013880, MX6_UART1_BASE_ADDR + 0xb0);
+	writel(0x0000047f, MX6_UART1_BASE_ADDR + 0xa4);
+	writel(0x0000c34f, MX6_UART1_BASE_ADDR + 0xa8);
+	writel(0x00000001, MX6_UART1_BASE_ADDR + 0x80);
+}
+
+static inline void early_uart_init_6q(void)
+{
+	writel(0x3, MX6_IOMUXC_BASE_ADDR + 0x280);
+	writel(0x3, MX6_IOMUXC_BASE_ADDR + 0x284);
+	writel(0x1, MX6_IOMUXC_BASE_ADDR + 0x920);
+	writel(0x0001b0b1, MX6_IOMUXC_BASE_ADDR + 0x650);
+	writel(0x0001b0b1, MX6_IOMUXC_BASE_ADDR + 0x654);
+
+	early_uart_init();
+}
+
+static inline void early_uart_init_6s(void)
+{
+	writel(0x3, MX6_IOMUXC_BASE_ADDR + 0x4c);
+	writel(0x3, MX6_IOMUXC_BASE_ADDR + 0x50);
+	writel(0x1, MX6_IOMUXC_BASE_ADDR + 0x8fc);
+	writel(0x0001b0b1, MX6_IOMUXC_BASE_ADDR + 0x360);
+	writel(0x0001b0b1, MX6_IOMUXC_BASE_ADDR + 0x364);
+
+	early_uart_init();
+}
+
+extern char __dtb_imx6q_dfi_fs700_m60_6q_start[];
+
+ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q)(void)
+{
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00940000 - 8);
+
+	early_uart_init_6q();
+
+	fdt = (uint32_t)__dtb_imx6q_dfi_fs700_m60_6q_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
+
+extern char __dtb_imx6dl_dfi_fs700_m60_6s_start[];
+
+ENTRY_FUNCTION(start_imx6dl_dfi_fs700_m60_6s)(void)
+{
+	uint32_t fdt;
+	int i;
+
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000 - 8);
+
+	for (i = 0x68; i <= 0x80; i += 4)
+		writel(0xffffffff, MX6_CCM_BASE_ADDR + i);
+
+	early_uart_init_6s();
+
+	fdt = (uint32_t)__dtb_imx6dl_dfi_fs700_m60_6s_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 79fdc9b..10bdda6 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
 CONFIG_MACH_FREESCALE_MX51_PDK=y
 CONFIG_MACH_FREESCALE_MX53_LOCO=y
 CONFIG_MACH_PHYTEC_PFLA02=y
+CONFIG_MACH_DFI_FS700_M60=y
 CONFIG_MACH_REALQ7=y
 CONFIG_MACH_GK802=y
 CONFIG_MACH_TQMA6X=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 77645ff..b44518e 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -2,6 +2,8 @@ dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb \
 	imx51-genesi-efika-sb.dtb
 dtb-$(CONFIG_ARCH_IMX53) += imx53-qsb.dtb
 dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
+	imx6dl-dfi-fs700-m60-6s.dtb \
+	imx6q-dfi-fs700-m60-6q.dtb \
 	imx6q-dmo-realq7.dtb \
 	imx6q-sabrelite.dtb \
 	imx6q-sabresd.dtb \
@@ -16,6 +18,7 @@ obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 pbl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o
+pbl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
 pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6q-phytec-pbab01.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-realq7.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
diff --git a/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts b/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts
new file mode 100644
index 0000000..36ea00b
--- /dev/null
+++ b/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts
@@ -0,0 +1,23 @@
+/*
+ * Copyright 2013 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#ifndef __DTS_V1__
+#define __DTS_V1__
+/dts-v1/;
+#endif
+
+#include "imx6dl.dtsi"
+#include "imx6qdl-dfi-fs700-m60.dtsi"
+
+/ {
+	model = "DFI FS700-M60-6S i.MX6s Q7 Board";
+	compatible = "dfi,fs700-m60-6s", "dfi,fs700-m60", "fsl,imx6dl";
+};
diff --git a/arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts b/arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts
new file mode 100644
index 0000000..1178e0b
--- /dev/null
+++ b/arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts
@@ -0,0 +1,23 @@
+/*
+ * Copyright 2013 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#ifndef __DTS_V1__
+#define __DTS_V1__
+/dts-v1/;
+#endif
+
+#include "imx6q.dtsi"
+#include "imx6qdl-dfi-fs700-m60.dtsi"
+
+/ {
+	model = "DFI FS700-M60-6Q i.MX6q Q7 Board";
+	compatible = "dfi,fs700-m60-6q", "dfi,fs700-m60", "fsl,imx6q";
+};
diff --git a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
new file mode 100644
index 0000000..c5c9a48
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
@@ -0,0 +1,115 @@
+/ {
+	memory {
+		reg = <0x10000000 0x40000000>;
+	};
+
+	regulators {
+		compatible = "simple-bus";
+
+		dummy_reg: fixed@0 {
+			compatible = "regulator-fixed";
+			regulator-name = "dummy-supply";
+		};
+
+		reg_usb_otg_vbus: usb_otg_vbus {
+			compatible = "regulator-fixed";
+			regulator-name = "usb_otg_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			gpio = <&gpio3 22 0>;
+			enable-active-high;
+		};
+	};
+
+	chosen {
+		linux,stdout-path = &uart1;
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &usdhc4, "partname:boot1";
+		};
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet_1>;
+	status = "okay";
+	phy-mode = "rgmii";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	hog {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25 0x80000000
+				MX6QDL_PAD_GPIO_18__GPIO7_IO13 0x80000000 /* PMIC irq */
+				MX6QDL_PAD_EIM_D26__GPIO3_IO26 0x80000000 /* MAX11801 irq */
+				MX6QDL_PAD_NANDF_D5__GPIO2_IO05 0x000030b0 /* Backlight enable */
+				MX6QDL_PAD_NANDF_D2__GPIO2_IO02 0x80000000 /* SD2 card detect */
+			>;
+		};
+	};
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2_1>;
+	status = "okay";
+
+	pmic: pf0100@08 {
+		compatible = "pf0100-regulator";
+		reg = <0x08>;
+		interrupt-parent = <&gpio7>;
+		interrupts = <13 8>;
+	};
+};
+
+&ocotp1 {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1_1>;
+	status = "okay";
+};
+
+&usbh1 {
+	barebox,phy_type = "utmi";
+	barebox,dr_mode = "host";
+	status = "okay";
+};
+
+&usbotg {
+	vbus-supply = <&reg_usb_otg_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg_2>;
+	disable-over-current;
+	barebox,phy_type = "utmi";
+	barebox,dr_mode = "host";
+	status = "okay";
+};
+
+&usdhc2 { /* module slot */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2_2>;
+	cd-gpios = <&gpio2 2 0>;
+	status = "okay";
+};
+
+&usdhc3 { /* baseboard slot */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3_2>;
+};
+
+&usdhc4 { /* eMMC */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc4_1>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index e087e11..44765dd 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -35,6 +35,7 @@ config ARCH_TEXT_BASE
 	default 0x4fc00000 if MACH_GK802
 	default 0x2fc00000 if MACH_TQMA6X
 	default 0x4fc00000 if MACH_PHYTEC_PFLA02
+	default 0x4fc00000 if MACH_DFI_FS700_M60
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -231,6 +232,10 @@ config MACH_PHYTEC_PFLA02
 	bool "Phytec phyFLEX-i.MX6 Ouad"
 	select ARCH_IMX6
 
+config MACH_DFI_FS700_M60
+	bool "DFI i.MX6 FS700 M60 Q7 Board"
+	select ARCH_IMX6
+
 config MACH_REALQ7
 	bool "DataModul i.MX6Q Real Qseven Board"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index d9662d7..c38edc4 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -65,3 +65,15 @@ CFG_start_phytec_pbab01_1gib.pblx.imximg = $(board)/phytec-pfla02/flash-header-p
 imximage-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_1gib.pblx.imximg
 FILE_barebox-phytec-pbab01-1gib.img = start_phytec_pbab01_1gib.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-1gib.img
+
+pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6dl_dfi_fs700_m60_6s
+CFG_start_imx6dl_dfi_fs700_m60_6s.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
+imximage-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6dl_dfi_fs700_m60_6s.pblx.imximg
+FILE_barebox-dfi-fs700-m60-6s.img = start_imx6dl_dfi_fs700_m60_6s.pblx.imximg
+image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6s.img
+
+pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q
+CFG_start_imx6q_dfi_fs700_m60_6q.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg
+imximage-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q.pblx.imximg
+FILE_barebox-dfi-fs700-m60-6q.img = start_imx6q_dfi_fs700_m60_6q.pblx.imximg
+image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q.img
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
