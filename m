Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3HHS-0003g4-5S
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 09:31:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 14/14] ARM: Add initial STM32MP1 support
Date: Mon, 11 Mar 2019 10:31:23 +0100
Message-Id: <20190311093123.7956-15-s.hauer@pengutronix.de>
In-Reply-To: <20190311093123.7956-1-s.hauer@pengutronix.de>
References: <20190311093123.7956-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

This adds initial STMicroelectronics MP1 support along with support
for the DK2 devel board. Only very basic support:

- UART
- SDRAM memory base/size
- No 1st stage support

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                              | 11 +++
 arch/arm/Makefile                             |  1 +
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/stm32mp157c-dk2/Makefile      |  2 +
 arch/arm/boards/stm32mp157c-dk2/board.c       | 16 +++
 arch/arm/boards/stm32mp157c-dk2/lowlevel.c    | 18 ++++
 arch/arm/configs/stm32mp1_defconfig           | 98 +++++++++++++++++++
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/stm32mp157a-dk1.dts              | 62 ++++++++++++
 arch/arm/dts/stm32mp157c-dk2.dts              | 14 +++
 arch/arm/dts/stm32mp157c.dtsi                 |  7 ++
 arch/arm/mach-stm32mp1/Kconfig                | 10 ++
 arch/arm/mach-stm32mp1/Makefile               |  1 +
 .../arm/mach-stm32mp1/include/mach/debug_ll.h | 28 ++++++
 arch/arm/mach-stm32mp1/include/mach/stm32.h   | 35 +++++++
 images/Makefile                               |  1 +
 images/Makefile.stm32mp1                      |  8 ++
 17 files changed, 314 insertions(+)
 create mode 100644 arch/arm/boards/stm32mp157c-dk2/Makefile
 create mode 100644 arch/arm/boards/stm32mp157c-dk2/board.c
 create mode 100644 arch/arm/boards/stm32mp157c-dk2/lowlevel.c
 create mode 100644 arch/arm/configs/stm32mp1_defconfig
 create mode 100644 arch/arm/dts/stm32mp157a-dk1.dts
 create mode 100644 arch/arm/dts/stm32mp157c-dk2.dts
 create mode 100644 arch/arm/dts/stm32mp157c.dtsi
 create mode 100644 arch/arm/mach-stm32mp1/Kconfig
 create mode 100644 arch/arm/mach-stm32mp1/Makefile
 create mode 100644 arch/arm/mach-stm32mp1/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-stm32mp1/include/mach/stm32.h
 create mode 100644 images/Makefile.stm32mp1

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 9d3f5b2ca7..6e5f431e29 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -198,6 +198,16 @@ config ARCH_S3C64xx
 	select CPU_V6
 	select GENERIC_GPIO
 
+config ARCH_STM32MP1
+	bool "ST stm32mp1xx"
+	select CPU_V7
+	select HAVE_PBL_MULTI_IMAGES
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select HAS_DEBUG_LL
+	select HAVE_CLK
+
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
 	select GPIOLIB
@@ -284,6 +294,7 @@ source arch/arm/mach-pxa/Kconfig
 source arch/arm/mach-rockchip/Kconfig
 source arch/arm/mach-samsung/Kconfig
 source arch/arm/mach-socfpga/Kconfig
+source arch/arm/mach-stm32mp1/Kconfig
 source arch/arm/mach-versatile/Kconfig
 source arch/arm/mach-vexpress/Kconfig
 source arch/arm/mach-tegra/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 6b5f21a7a9..9b0e34f50b 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -96,6 +96,7 @@ machine-$(CONFIG_ARCH_PXA)		:= pxa
 machine-$(CONFIG_ARCH_ROCKCHIP)		:= rockchip
 machine-$(CONFIG_ARCH_SAMSUNG)		:= samsung
 machine-$(CONFIG_ARCH_SOCFPGA)		:= socfpga
+machine-$(CONFIG_ARCH_STM32MP1)		:= stm32mp1
 machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
 machine-$(CONFIG_ARCH_VEXPRESS)		:= vexpress
 machine-$(CONFIG_ARCH_TEGRA)		:= tegra
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index c5dc41526b..5193edff9f 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -123,6 +123,7 @@ obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC)	+= terasic-de0-nano-soc/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
 obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox/
 obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)		+= solidrun-microsom/
+obj-$(CONFIG_MACH_STM32MP157C_DK2)		+= stm32mp157c-dk2/
 obj-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT)	+= technexion-pico-hobbit/
 obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)		+= technexion-wandboard/
 obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
diff --git a/arch/arm/boards/stm32mp157c-dk2/Makefile b/arch/arm/boards/stm32mp157c-dk2/Makefile
new file mode 100644
index 0000000000..092c31d6b2
--- /dev/null
+++ b/arch/arm/boards/stm32mp157c-dk2/Makefile
@@ -0,0 +1,2 @@
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp157c-dk2/board.c
new file mode 100644
index 0000000000..278a0c0126
--- /dev/null
+++ b/arch/arm/boards/stm32mp157c-dk2/board.c
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <common.h>
+#include <linux/sizes.h>
+#include <init.h>
+#include <asm/memory.h>
+
+static int dk2_postcore_init(void)
+{
+	if (!of_machine_is_compatible("st,stm32mp157c-dk2"))
+		return 0;
+
+	arm_add_mem_device("ram0", 0xc0000000, SZ_512M);
+
+	return 0;
+}
+mem_initcall(dk2_postcore_init);
diff --git a/arch/arm/boards/stm32mp157c-dk2/lowlevel.c b/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
new file mode 100644
index 0000000000..be12160a0b
--- /dev/null
+++ b/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <common.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <debug_ll.h>
+
+extern char __dtb_stm32mp157c_dk2_start[];
+
+ENTRY_FUNCTION(start_stm32mp157c_dk2, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = __dtb_stm32mp157c_dk2_start + get_runtime_offset();
+
+	barebox_arm_entry(0xc0000000, SZ_512M, fdt);
+}
diff --git a/arch/arm/configs/stm32mp1_defconfig b/arch/arm/configs/stm32mp1_defconfig
new file mode 100644
index 0000000000..2922ce3632
--- /dev/null
+++ b/arch/arm/configs/stm32mp1_defconfig
@@ -0,0 +1,98 @@
+CONFIG_ARCH_STM32MP1=y
+CONFIG_MACH_STM32MP157C_DK2=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_ARM_BOARD_APPEND_ATAG=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_ARM_PSCI=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BLSPEC=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_POLLER=y
+CONFIG_RESET_SOURCE=y
+CONFIG_DEBUG_INITCALLS=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_STM32=y
+CONFIG_DRIVER_NET_DESIGNWARE=y
+CONFIG_DRIVER_NET_DESIGNWARE_GENERIC=y
+CONFIG_AT803X_PHY=y
+CONFIG_MICREL_PHY=y
+# CONFIG_SPI is not set
+# CONFIG_PINCTRL is not set
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_ZLIB=y
+CONFIG_LZO_DECOMPRESS=y
+CONFIG_CRC8=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index f989df6b0c..c89efeaf85 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -89,6 +89,7 @@ pbl-dtb-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o \
 				imx6dl-hummingboard2.dtb.o imx6q-hummingboard2.dtb.o \
 				imx6q-h100.dtb.o
+pbl-dtb-$(CONFIG_MACH_STM32MP157C_DK2) += stm32mp157c-dk2.dtb.o
 pbl-dtb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
 pbl-dtb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += imx6ul-pico-hobbit.dtb.o
 pbl-dtb-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += imx6ull-14x14-evk.dtb.o
diff --git a/arch/arm/dts/stm32mp157a-dk1.dts b/arch/arm/dts/stm32mp157a-dk1.dts
new file mode 100644
index 0000000000..741284a444
--- /dev/null
+++ b/arch/arm/dts/stm32mp157a-dk1.dts
@@ -0,0 +1,62 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) STMicroelectronics 2018 - All Rights Reserved
+ * Author: Alexandre Torgue <alexandre.torgue@st.com>.
+ */
+
+/dts-v1/;
+
+#include "stm32mp157c.dtsi"
+#include <arm/stm32mp157c.dtsi>
+#include <arm/stm32mp157-pinctrl.dtsi>
+
+/ {
+	model = "STMicroelectronics STM32MP157A-DK1 Discovery Board";
+	compatible = "st,stm32mp157a-dk1", "st,stm32mp157";
+
+	aliases {
+		ethernet0 = &ethernet0;
+		serial0 = &uart4;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	sram: sram@10050000 {
+		compatible = "mmio-sram";
+		reg = <0x10050000 0x10000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x10050000 0x10000>;
+
+		dma_pool: dma_pool@0 {
+			reg = <0x0 0x10000>;
+			pool;
+		};
+	};
+};
+
+&ethernet0 {
+	status = "okay";
+	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
+	pinctrl-names = "default", "sleep";
+	phy-mode = "rgmii";
+	max-speed = <1000>;
+	phy-handle = <&phy0>;
+
+	mdio0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+		phy0: ethernet-phy@0 {
+			reg = <0>;
+		};
+	};
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4_pins_a>;
+	status = "okay";
+};
diff --git a/arch/arm/dts/stm32mp157c-dk2.dts b/arch/arm/dts/stm32mp157c-dk2.dts
new file mode 100644
index 0000000000..7565cabc3d
--- /dev/null
+++ b/arch/arm/dts/stm32mp157c-dk2.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) STMicroelectronics 2018 - All Rights Reserved
+ * Author: Alexandre Torgue <alexandre.torgue@st.com>.
+ */
+
+/dts-v1/;
+
+#include "stm32mp157a-dk1.dts"
+
+/ {
+	model = "STMicroelectronics STM32MP157C-DK2 Discovery Board";
+	compatible = "st,stm32mp157c-dk2", "st,stm32mp157";
+};
diff --git a/arch/arm/dts/stm32mp157c.dtsi b/arch/arm/dts/stm32mp157c.dtsi
new file mode 100644
index 0000000000..fa0d00ff02
--- /dev/null
+++ b/arch/arm/dts/stm32mp157c.dtsi
@@ -0,0 +1,7 @@
+
+/ {
+	clocks {
+		/* Needed to let barebox find the clock nodes */
+		compatible = "simple-bus";
+	};
+};
diff --git a/arch/arm/mach-stm32mp1/Kconfig b/arch/arm/mach-stm32mp1/Kconfig
new file mode 100644
index 0000000000..cc7cf23cfb
--- /dev/null
+++ b/arch/arm/mach-stm32mp1/Kconfig
@@ -0,0 +1,10 @@
+if ARCH_STM32MP1
+
+config ARCH_STM32MP1157
+	bool
+
+config MACH_STM32MP157C_DK2
+	select ARCH_STM32MP1157
+	bool "STM32MP157C-DK2 board"
+
+endif
diff --git a/arch/arm/mach-stm32mp1/Makefile b/arch/arm/mach-stm32mp1/Makefile
new file mode 100644
index 0000000000..16a218658a
--- /dev/null
+++ b/arch/arm/mach-stm32mp1/Makefile
@@ -0,0 +1 @@
+obj- := __dummy__.o
diff --git a/arch/arm/mach-stm32mp1/include/mach/debug_ll.h b/arch/arm/mach-stm32mp1/include/mach/debug_ll.h
new file mode 100644
index 0000000000..99fedb91fe
--- /dev/null
+++ b/arch/arm/mach-stm32mp1/include/mach/debug_ll.h
@@ -0,0 +1,28 @@
+#ifndef __MACH_STM32MP1_DEBUG_LL_H
+#define __MACH_STM32MP1_DEBUG_LL_H
+
+#include <io.h>
+#include <mach/stm32.h>
+
+#define DEBUG_LL_UART_ADDR	STM32_UART4_BASE
+
+#define CR1_OFFSET	0x00
+#define CR3_OFFSET	0x08
+#define BRR_OFFSET	0x0c
+#define ISR_OFFSET	0x1c
+#define ICR_OFFSET	0x20
+#define RDR_OFFSET	0x24
+#define TDR_OFFSET	0x28
+
+#define USART_ISR_TXE	BIT(7)
+
+static inline void PUTC_LL(int c)
+{
+	void __iomem *base = IOMEM(DEBUG_LL_UART_ADDR);
+
+	writel(c, base + TDR_OFFSET);
+
+	while ((readl(base + ISR_OFFSET) & USART_ISR_TXE) == 0);
+}
+
+#endif /* __MACH_STM32MP1_DEBUG_LL_H */
diff --git a/arch/arm/mach-stm32mp1/include/mach/stm32.h b/arch/arm/mach-stm32mp1/include/mach/stm32.h
new file mode 100644
index 0000000000..f9bdb788b9
--- /dev/null
+++ b/arch/arm/mach-stm32mp1/include/mach/stm32.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause */
+/*
+ * Copyright (C) 2018, STMicroelectronics - All Rights Reserved
+ */
+
+#ifndef _MACH_STM32_H_
+#define _MACH_STM32_H_
+
+/*
+ * Peripheral memory map
+ */
+#define STM32_RCC_BASE			0x50000000
+#define STM32_PWR_BASE			0x50001000
+#define STM32_DBGMCU_BASE		0x50081000
+#define STM32_BSEC_BASE			0x5C005000
+#define STM32_TZC_BASE			0x5C006000
+#define STM32_ETZPC_BASE		0x5C007000
+#define STM32_TAMP_BASE			0x5C00A000
+
+#define STM32_USART1_BASE		0x5C000000
+#define STM32_USART2_BASE		0x4000E000
+#define STM32_USART3_BASE		0x4000F000
+#define STM32_UART4_BASE		0x40010000
+#define STM32_UART5_BASE		0x40011000
+#define STM32_USART6_BASE		0x44003000
+#define STM32_UART7_BASE		0x40018000
+#define STM32_UART8_BASE		0x40019000
+
+#define STM32_SYSRAM_BASE		0x2FFC0000
+#define STM32_SYSRAM_SIZE		SZ_256K
+
+#define STM32_DDR_BASE			0xC0000000
+#define STM32_DDR_SIZE			SZ_1G
+
+#endif /* _MACH_STM32_H_ */
diff --git a/images/Makefile b/images/Makefile
index 59b81f9b6d..ea3f913c00 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -108,6 +108,7 @@ include $(srctree)/images/Makefile.mxs
 include $(srctree)/images/Makefile.omap3
 include $(srctree)/images/Makefile.rockchip
 include $(srctree)/images/Makefile.socfpga
+include $(srctree)/images/Makefile.stm32mp1
 include $(srctree)/images/Makefile.tegra
 include $(srctree)/images/Makefile.vexpress
 include $(srctree)/images/Makefile.xburst
diff --git a/images/Makefile.stm32mp1 b/images/Makefile.stm32mp1
new file mode 100644
index 0000000000..d26231cd92
--- /dev/null
+++ b/images/Makefile.stm32mp1
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+#
+# barebox image generation Makefile for STMicroelectronics MP1
+#
+
+pblb-$(CONFIG_MACH_STM32MP157C_DK2) += start_stm32mp157c_dk2.pblb
+FILE_barebox-stm32mp157c-dk2.img = start_stm32mp157c_dk2.pblb
+image-$(CONFIG_MACH_STM32MP157C_DK2) += barebox-stm32mp157c-dk2.img
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
