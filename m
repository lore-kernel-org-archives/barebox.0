Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UHskC-0002Vc-Av
 for barebox@lists.infradead.org; Tue, 19 Mar 2013 09:22:25 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 19 Mar 2013 10:21:57 +0100
Message-Id: <1363684920-3034-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1363684920-3034-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1363684920-3034-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 2/5] ARM: zynq: Add new architecture zynq
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Add basic support for the Xilinx Zynq-7000 EPP architecture.
The Zynq-7000 is an embedded processing platform that combines a Cortex A9
dualcore MPSoC with an Artix-7 FPGA.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/Kconfig                                   |   5 +
 arch/arm/Makefile                                  |   2 +
 arch/arm/mach-zynq/Kconfig                         |  39 ++++++
 arch/arm/mach-zynq/Makefile                        |   1 +
 arch/arm/mach-zynq/devices.c                       |  14 +++
 arch/arm/mach-zynq/include/mach/barebox.lds.h      |   9 ++
 arch/arm/mach-zynq/include/mach/debug_ll.h         |  37 ++++++
 arch/arm/mach-zynq/include/mach/devices.h          |  13 ++
 .../arm/mach-zynq/include/mach/zynq-flash-header.h |  40 +++++++
 arch/arm/mach-zynq/include/mach/zynq7000-regs.h    | 132 +++++++++++++++++++++
 arch/arm/mach-zynq/zynq.c                          |  56 +++++++++
 include/asm-generic/barebox.lds.h                  |   3 +-
 12 files changed, 350 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-zynq/Kconfig
 create mode 100644 arch/arm/mach-zynq/Makefile
 create mode 100644 arch/arm/mach-zynq/devices.c
 create mode 100644 arch/arm/mach-zynq/include/mach/barebox.lds.h
 create mode 100644 arch/arm/mach-zynq/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-zynq/include/mach/devices.h
 create mode 100644 arch/arm/mach-zynq/include/mach/zynq-flash-header.h
 create mode 100644 arch/arm/mach-zynq/include/mach/zynq7000-regs.h
 create mode 100644 arch/arm/mach-zynq/zynq.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 28332ec..8431fa8 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -110,6 +110,10 @@ config ARCH_TEGRA
 	select CPU_ARM926T
 	select HAS_DEBUG_LL
 
+config ARCH_ZYNQ
+	bool "Xilinx Zynq-based boards"
+	select HAS_DEBUG_LL
+
 endchoice
 
 source arch/arm/cpu/Kconfig
@@ -126,6 +130,7 @@ source arch/arm/mach-pxa/Kconfig
 source arch/arm/mach-samsung/Kconfig
 source arch/arm/mach-versatile/Kconfig
 source arch/arm/mach-tegra/Kconfig
+source arch/arm/mach-zynq/Kconfig
 
 config ARM_ASM_UNIFIED
 	bool
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index fcb2969..ceb45dc 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -64,6 +64,7 @@ machine-$(CONFIG_ARCH_PXA)		:= pxa
 machine-$(CONFIG_ARCH_SAMSUNG)		:= samsung
 machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
 machine-$(CONFIG_ARCH_TEGRA)		:= tegra
+machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
 
 # Board directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
@@ -157,6 +158,7 @@ board-$(CONFIG_MACH_SABRELITE)			:= freescale-mx6-sabrelite
 board-$(CONFIG_MACH_TX53)			:= karo-tx53
 board-$(CONFIG_MACH_GUF_VINCELL)		:= guf-vincell
 board-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		:= efika-mx-smartbook
+board-$(CONFIG_MACH_ZEDBOARD)			:= avnet-zedboard
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
new file mode 100644
index 0000000..3965ad4
--- /dev/null
+++ b/arch/arm/mach-zynq/Kconfig
@@ -0,0 +1,39 @@
+if ARCH_ZYNQ
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x1ff00000 if MACH_ZEDBOARD
+
+config ZYNQ_DEBUG_LL_UART_BASE
+	hex
+	default 0xe0001000 if MACH_ZEDBOARD
+
+config BOARDINFO
+	default "ZedBoard" if MACH_ZEDBOARD
+
+choice
+	prompt "Xilinx Zynq type board"
+
+config ARCH_ZYNQ7000
+	bool "Zynq-7000"
+	select CPU_V7
+	select DRIVER_SERIAL_CADENCE
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+	select ARM_SMP_TWD
+
+endchoice
+
+if ARCH_ZYNQ7000
+
+choice
+	prompt "Zynq-7000 Board Type"
+
+config MACH_ZEDBOARD
+	bool "Avnet Zynq-7000 ZedBoard"
+	select MACH_HAS_LOWLEVEL_INIT
+
+endchoice
+endif
+
+endif
diff --git a/arch/arm/mach-zynq/Makefile b/arch/arm/mach-zynq/Makefile
new file mode 100644
index 0000000..459c957
--- /dev/null
+++ b/arch/arm/mach-zynq/Makefile
@@ -0,0 +1 @@
+obj-y += zynq.o devices.o clk-zynq7000.o
diff --git a/arch/arm/mach-zynq/devices.c b/arch/arm/mach-zynq/devices.c
new file mode 100644
index 0000000..2bb3c92
--- /dev/null
+++ b/arch/arm/mach-zynq/devices.c
@@ -0,0 +1,14 @@
+#include <common.h>
+#include <driver.h>
+#include <mach/devices.h>
+
+static inline struct device_d *zynq_add_device(char *name, int id, void *base, int size, void *pdata)
+{
+	return add_generic_device(name, id, NULL, (resource_size_t)base, size,
+				  IORESOURCE_MEM, pdata);
+}
+
+struct device_d *zynq_add_uart(void *base, int id)
+{
+	return zynq_add_device("cadence-uart", id, base, 0x1000, NULL);
+}
diff --git a/arch/arm/mach-zynq/include/mach/barebox.lds.h b/arch/arm/mach-zynq/include/mach/barebox.lds.h
new file mode 100644
index 0000000..674a4ac
--- /dev/null
+++ b/arch/arm/mach-zynq/include/mach/barebox.lds.h
@@ -0,0 +1,9 @@
+#define PRE_IMAGE \
+	.pre_image : {					\
+		KEEP(*(.flash_header_start*))		\
+		. = 0x20;				\
+		KEEP(*(.flash_header_0x0*))		\
+		. = 0xa0;				\
+		KEEP(*(.ps7reg_entry_0x0A0))		\
+		. = 0x8c0;				\
+	}
diff --git a/arch/arm/mach-zynq/include/mach/debug_ll.h b/arch/arm/mach-zynq/include/mach/debug_ll.h
new file mode 100644
index 0000000..478a9f0
--- /dev/null
+++ b/arch/arm/mach-zynq/include/mach/debug_ll.h
@@ -0,0 +1,37 @@
+/*
+ * based on mach-imx/include/mach/debug_ll.h
+ */
+
+#ifndef __MACH_DEBUG_LL_H__
+#define __MACH_DEBUG_LL_H__
+
+#include <io.h>
+#include <mach/zynq7000-regs.h>
+
+#ifndef CONFIG_ZYNQ_DEBUG_LL_UART_BASE
+#warning define ZYNQ_DEBUG_LL_UART_BASE properly for debug_ll
+#define ZYNQ_DEBUG_LL_UART_BASE ZYNQ_UART1_BASE_ADDR
+#else
+#define ZYNQ_DEBUG_LL_UART_BASE CONFIG_ZYNQ_DEBUG_LL_UART_BASE
+#endif
+
+#define ZYNQ_UART_RXTXFIFO	0x30
+#define ZYNQ_UART_CHANNEL_STS	0x2C
+
+#define ZYNQ_UART_STS_TFUL	(1 << 4)
+#define ZYNQ_UART_TXDIS		(1 << 5)
+
+static inline void PUTC_LL(int c)
+{
+	void __iomem *base = (void *)ZYNQ_DEBUG_LL_UART_BASE;
+
+	if (readl(base) & ZYNQ_UART_TXDIS)
+		return;
+
+	while ((readl(base + ZYNQ_UART_CHANNEL_STS) & ZYNQ_UART_STS_TFUL) != 0)
+		;
+
+	writel(c, base + ZYNQ_UART_RXTXFIFO);
+}
+
+#endif
diff --git a/arch/arm/mach-zynq/include/mach/devices.h b/arch/arm/mach-zynq/include/mach/devices.h
new file mode 100644
index 0000000..7085aeb
--- /dev/null
+++ b/arch/arm/mach-zynq/include/mach/devices.h
@@ -0,0 +1,13 @@
+#include <mach/zynq7000-regs.h>
+
+struct device_d *zynq_add_uart(void *base, int id);
+
+static inline struct device_d *zynq_add_uart0(void)
+{
+	return zynq_add_uart((void *)ZYNQ_UART0_BASE_ADDR, 0);
+}
+
+static inline struct device_d *zynq_add_uart1(void)
+{
+	return zynq_add_uart((void *)ZYNQ_UART1_BASE_ADDR, 1);
+}
diff --git a/arch/arm/mach-zynq/include/mach/zynq-flash-header.h b/arch/arm/mach-zynq/include/mach/zynq-flash-header.h
new file mode 100644
index 0000000..a0251cb
--- /dev/null
+++ b/arch/arm/mach-zynq/include/mach/zynq-flash-header.h
@@ -0,0 +1,40 @@
+#ifndef __MACH_FLASH_HEADER_H
+#define __MACH_FLASH_HEADER_H
+
+#include <asm-generic/sections.h>
+
+#define __flash_header_start		__section(.flash_header_start)
+
+#define __flash_header_section		__section(.flash_header_0x0)
+#define __ps7reg_entry_section		__section(.ps7reg_entry_0x0A0)
+#define __image_len_section		__section(.image_len_0x08c0)
+#define FLASH_HEADER_OFFSET		0x0
+#define IMAGE_OFFSET			0x8c0
+
+#define DEST_BASE			0x8c0
+#define FLASH_HEADER_BASE	(DEST_BASE + FLASH_HEADER_OFFSET)
+
+struct zynq_reg_entry {
+	__le32 addr;
+	__le32 val;
+};
+
+#define WIDTH_DETECTION_MAGIC	0xAA995566
+#define IMAGE_IDENTIFICATION	0x584C4E58	/* "XLNX" */
+
+struct zynq_flash_header {
+	uint32_t width_det;
+	uint32_t image_id;
+	uint32_t enc_stat;
+	uint32_t user;
+	uint32_t flash_offset;
+	uint32_t length;
+	uint32_t res0;
+	uint32_t start_of_exec;
+	uint32_t total_len;
+	uint32_t res1;
+	uint32_t checksum;
+	uint32_t res2;
+};
+
+#endif /* __MACH_FLASH_HEADER_H */
diff --git a/arch/arm/mach-zynq/include/mach/zynq7000-regs.h b/arch/arm/mach-zynq/include/mach/zynq7000-regs.h
new file mode 100644
index 0000000..f5ccbb0
--- /dev/null
+++ b/arch/arm/mach-zynq/include/mach/zynq7000-regs.h
@@ -0,0 +1,132 @@
+/*
+ * (c) 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#define ZYNQ_UART0_BASE_ADDR		0xE0000000
+#define ZYNQ_UART1_BASE_ADDR		0xE0001000
+#define ZYNQ_I2C0_BASE_ADDR		0xE0004000
+#define ZYNQ_I2C1_BASE_ADDR		0xE0005000
+#define ZYNQ_SPI0_BASE_ADDR		0xE0006000
+#define ZYNQ_SPI1_BASE_ADDR		0xE0007000
+#define ZYNQ_CAN0_BASE_ADDR		0xE0008000
+#define ZYNQ_CAN1_BASE_ADDR		0xE0009000
+#define ZYNQ_GPIO_BASE_ADDR		0xE000A000
+
+#define ZYNQ_SLCR_BASE			0xF8000000
+#define ZYNQ_SLCR_SCL			(ZYNQ_SLCR_BASE + 0x000)
+#define ZYNQ_SLCR_LOCK			(ZYNQ_SLCR_BASE + 0x004)
+#define ZYNQ_SLCR_UNLOCK		(ZYNQ_SLCR_BASE + 0x008)
+#define ZYNQ_SLCR_LOCKSTA		(ZYNQ_SLCR_BASE + 0x00C)
+#define ZYNQ_CLOCK_CTRL_BASE		(ZYNQ_SLCR_BASE + 0x100)
+#define ZYNQ_ARM_PLL_CTRL		0x000
+#define ZYNQ_DDR_PLL_CTRL		0x004
+#define ZYNQ_IO_PLL_CTRL		0x008
+#define ZYNQ_PLL_STATUS			0x00C
+#define ZYNQ_ARM_PLL_CFG		0x010
+#define ZYNQ_DDR_PLL_CFG		0x014
+#define ZYNQ_IO_PLL_CFG			0x018
+#define ZYNQ_ARM_CLK_CTRL		0x020
+#define ZYNQ_DDR_CLK_CTRL		0x024
+#define ZYNQ_DCI_CLK_CTRL		0x028
+#define ZYNQ_APER_CLK_CTRL		0x02C
+#define ZYNQ_USB0_CLK_CTRL		0x030
+#define ZYNQ_USB1_CLK_CTRL		0x034
+#define ZYNQ_GEM0_RCLK_CTRL		0x038
+#define ZYNQ_GEM1_RCLK_CTRL		0x03C
+#define ZYNQ_GEM0_CLK_CTRL		0x040
+#define ZYNQ_GEM1_CLK_CTRL		0x044
+#define ZYNQ_SMC_CLK_CTRL		0x048
+#define ZYNQ_LQSPI_CLK_CTRL		0x04C
+#define ZYNQ_SDIO_CLK_CTRL		0x050
+#define ZYNQ_UART_CLK_CTRL		0x054
+#define ZYNQ_SPI_CLK_CTRL		0x058
+#define ZYNQ_CAN_CLK_CTRL		0x05C
+#define ZYNQ_CAN_MIOCLK_CTRL		0x060
+#define ZYNQ_DBG_CLK_CTRL		0x064
+#define ZYNQ_PCAP_CLK_CTRL		0x068
+#define ZYNQ_TOPSW_CLK_CTRL		0x06C
+#define ZYNQ_FPGA0_CLK_CTRL		0x070
+#define ZYNQ_FPGA1_CLK_CTRL		0x080
+#define ZYNQ_FPGA2_CLK_CTRL		0x090
+#define ZYNQ_FPGA3_CLK_CTRL		0x0A0
+#define ZYNQ_CLK_621_TRUE		0x0C4
+#define ZYNQ_RST_CTRL_BASE		(ZYNQ_SLCR_BASE + 0x200)
+#define ZYNQ_PSS_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x000)
+#define ZYNQ_DDR_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x004)
+#define ZYNQ_TOPSW_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x008)
+#define ZYNQ_DMAC_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x00C)
+#define ZYNQ_USB_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x010)
+#define ZYNQ_GEM_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x014)
+#define ZYNQ_SDIO_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x018)
+#define ZYNQ_SPI_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x01C)
+#define ZYNQ_CAN_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x020)
+#define ZYNQ_I2C_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x024)
+#define ZYNQ_UART_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x028)
+#define ZYNQ_GPIO_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x02C)
+#define ZYNQ_LQSPI_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x030)
+#define ZYNQ_SMC_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x034)
+#define ZYNQ_OCM_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x038)
+#define ZYNQ_DEVCI_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x03C)
+#define ZYNQ_FPGA_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x040)
+#define ZYNQ_A9_CPU_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x044)
+#define ZYNQ_RS_AWDT_CTRL		(ZYNQ_RST_CTRL_BASE + 0x04C)
+#define ZYNQ_REBOOT_STATUS		(ZYNQ_SLCR_BASE + 0x258)
+#define ZYNQ_BOOT_MODE			(ZYNQ_SLCR_BASE + 0x25C)
+#define ZYNQ_APU_CTRL			(ZYNQ_SLCR_BASE + 0x300)
+#define ZYNQ_WDT_CLK_SEL		(ZYNQ_SLCR_BASE + 0x304)
+#define ZYNQ_PSS_IDCODE			(ZYNQ_SLCR_BASE + 0x530)
+#define ZYNQ_DDR_URGENT			(ZYNQ_SLCR_BASE + 0x600)
+#define ZYNQ_DDR_CAL_START		(ZYNQ_SLCR_BASE + 0x60C)
+#define ZYNQ_DDR_REF_START		(ZYNQ_SLCR_BASE + 0x614)
+#define ZYNQ_DDR_CMD_STA		(ZYNQ_SLCR_BASE + 0x618)
+#define ZYNQ_DDR_URGENT_SEL		(ZYNQ_SLCR_BASE + 0x61C)
+#define ZYNQ_DDR_DFI_STATUS		(ZYNQ_SLCR_BASE + 0x620)
+#define ZYNQ_MIO_BASE			(ZYNQ_SLCR_BASE + 0x700)
+#define ZYNQ_MIO_LOOPBACK		(ZYNQ_MIO_BASE + 0x104)
+#define ZYNQ_MIO_MST_TRI0		(ZYNQ_MIO_BASE + 0x10C)
+#define ZYNQ_MIO_MST_TRI1		(ZYNQ_MIO_BASE + 0x110)
+#define ZYNQ_SD0_WP_SEL			(ZYNQ_SLCR_BASE + 0x830)
+#define ZYNQ_SD1_WP_SEL			(ZYNQ_SLCR_BASE + 0x834)
+#define ZYNQ_LVL_SHIFTR_EN		(ZYNQ_SLCR_BASE + 0x900)
+#define ZYNQ_OCM_CFG			(ZYNQ_SLCR_BASE + 0x910)
+#define ZYNQ_GPIOB_BASE			(ZYNQ_SLCR_BASE + 0xB00)
+#define ZYNQ_GPIOB_CTRL			(ZYNQ_GPIOB_BASE + 0x000)
+#define ZYNQ_GPIOB_CFG_CMOS18		(ZYNQ_GPIOB_BASE + 0x004)
+#define ZYNQ_GPIOB_CFG_CMOS25		(ZYNQ_GPIOB_BASE + 0x008)
+#define ZYNQ_GPIOB_CFG_CMOS33		(ZYNQ_GPIOB_BASE + 0x00C)
+#define ZYNQ_GPIOB_CFG_LVTTL		(ZYNQ_GPIOB_BASE + 0x010)
+#define ZYNQ_GPIOB_CFG_HSTL		(ZYNQ_GPIOB_BASE + 0x014)
+#define ZYNQ_GPIOB_DRV_BIAS_CTRL	(ZYNQ_GPIOB_BASE + 0x018)
+#define ZYNQ_DDRIOB_BASE		(ZYNQ_SLCR_BASE + 0xB40)
+#define ZYNQ_DDRIOB_ADDR0		(ZYNQ_DDRIOB_BASE + 0x000)
+#define ZYNQ_DDRIOB_ADDR1		(ZYNQ_DDRIOB_BASE + 0x004)
+#define ZYNQ_DDRIOB_DATA0		(ZYNQ_DDRIOB_BASE + 0x008)
+#define ZYNQ_DDRIOB_DATA1		(ZYNQ_DDRIOB_BASE + 0x00C)
+#define ZYNQ_DDRIOB_DIFF0		(ZYNQ_DDRIOB_BASE + 0x010)
+#define ZYNQ_DDRIOB_DIFF1		(ZYNQ_DDRIOB_BASE + 0x014)
+#define ZYNQ_DDRIOB_CLOCK		(ZYNQ_DDRIOB_BASE + 0x018)
+#define ZYNQ_DDRIOB_DRIVE_SLEW_ADDR	(ZYNQ_DDRIOB_BASE + 0x01C)
+#define ZYNQ_DDRIOB_DRIVE_SLEW_DATA	(ZYNQ_DDRIOB_BASE + 0x020)
+#define ZYNQ_DDRIOB_DRIVE_SLEW_DIFF	(ZYNQ_DDRIOB_BASE + 0x024)
+#define ZYNQ_DDRIOB_DRIVE_SLEW_CLOCK	(ZYNQ_DDRIOB_BASE + 0x028)
+#define ZYNQ_DDRIOB_DDR_CTRL		(ZYNQ_DDRIOB_BASE + 0x02C)
+#define ZYNQ_DDRIOB_DCI_CTRL		(ZYNQ_DDRIOB_BASE + 0x030)
+#define ZYNQ_DDRIOB_DCI_STATUS		(ZYNQ_DDRIOB_BASE + 0x034)
+
+#define ZYNQ_TTC0_BASE_ADDR		0xF8001000
+#define ZYNQ_TTC1_BASE_ADDR		0xF8002000
+
+#define ZYNQ_DDRC_BASE			0xF8006000
+
+#define CORTEXA9_SCU_TIMER_BASE_ADDR	0xF8F00600
diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
new file mode 100644
index 0000000..bd29e13
--- /dev/null
+++ b/arch/arm/mach-zynq/zynq.c
@@ -0,0 +1,56 @@
+/*
+ * (c) 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>
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
+#include <asm/system.h>
+#include <asm-generic/io.h>
+#include <common.h>
+#include <init.h>
+#include <mach/zynq7000-regs.h>
+
+static int zynq_init(void)
+{
+	u32 val;
+
+	dsb();
+	isb();
+	writel(0xDF0D, ZYNQ_SLCR_UNLOCK);
+	/* remap ocm high */
+	writel(0x0000000F, 0xf8000910);
+	/* mpcore.filtering_start_address */
+	writel(0x00000000, 0xf8f00040);
+	/* mpcore.filtering_end_address */
+	writel(0xffe00000, 0xf8f00044);
+	val = readl(0xf8f00000);
+	val |= 0x2;
+	writel(val, 0xf8f00000);
+	dmb();
+
+	add_generic_device("zynq-clock", 0, NULL, ZYNQ_SLCR_BASE, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("smp_twd", 0, NULL, CORTEXA9_SCU_TIMER_BASE_ADDR,
+				0x4000, IORESOURCE_MEM, NULL);
+	return 0;
+}
+postcore_initcall(zynq_init);
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	/* write unlock key to slcr */
+	writel(0xDF0D, ZYNQ_SLCR_UNLOCK);
+	/* reset */
+	writel(0x1, ZYNQ_PSS_RST_CTRL);
+
+	while (1)
+		;
+}
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index b2bd19e..0b98c96 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -5,7 +5,8 @@
 	defined CONFIG_ARCH_IMX53 || \
 	defined CONFIG_ARCH_IMX6 || \
 	defined CONFIG_X86 || \
-	defined CONFIG_ARCH_EP93XX
+	defined CONFIG_ARCH_EP93XX || \
+	defined CONFIG_ARCH_ZYNQ
 #include <mach/barebox.lds.h>
 #endif
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
