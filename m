Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBMBC-0001uK-C0
 for barebox@lists.infradead.org; Fri, 01 Mar 2013 09:23:11 +0000
Received: from antimon.pengutronix.de (port-212-202-120-50.static.qsc.de
 [212.202.120.50])
 by km20343-01.keymachine.de (Postfix) with ESMTPA id 975A17D42E3
 for <barebox@lists.infradead.org>; Fri,  1 Mar 2013 10:22:59 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  1 Mar 2013 10:22:47 +0100
Message-Id: <1362129773-4579-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/7] tegra: move address map to tegra20-silicon.h
To: barebox@lists.infradead.org

The address map is specific to the Tegra20 SoC. Move it to a
file with an appropriate name. While at it clarify and fix
the definitions.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/toshiba-ac100/board.c              |   2 +-
 arch/arm/boards/toshiba-ac100/serial.c             |   2 +-
 arch/arm/mach-tegra/clock.c                        |   2 +-
 arch/arm/mach-tegra/include/mach/debug_ll.h        |   2 +-
 arch/arm/mach-tegra/include/mach/iomap.h           | 292 ---------------------
 arch/arm/mach-tegra/include/mach/tegra20-silicon.h | 229 ++++++++++++++++
 arch/arm/mach-tegra/reset.c                        |   2 +-
 7 files changed, 234 insertions(+), 297 deletions(-)
 delete mode 100644 arch/arm/mach-tegra/include/mach/iomap.h
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra20-silicon.h

diff --git a/arch/arm/boards/toshiba-ac100/board.c b/arch/arm/boards/toshiba-ac100/board.c
index 0eb85c5..af397cc 100644
--- a/arch/arm/boards/toshiba-ac100/board.c
+++ b/arch/arm/boards/toshiba-ac100/board.c
@@ -21,7 +21,7 @@
 #include <asm/armlinux.h>
 #include <sizes.h>
 #include <usb/ehci.h>
-#include <mach/iomap.h>
+#include <mach/tegra20-silicon.h>
 
 static int ac100_mem_init(void)
 {
diff --git a/arch/arm/boards/toshiba-ac100/serial.c b/arch/arm/boards/toshiba-ac100/serial.c
index 880270d..cdd47ab 100644
--- a/arch/arm/boards/toshiba-ac100/serial.c
+++ b/arch/arm/boards/toshiba-ac100/serial.c
@@ -21,7 +21,7 @@
 #include <ns16550.h>
 #include <asm/io.h>
 #include <asm/common.h>
-#include <mach/iomap.h>
+#include <mach/tegra20-silicon.h>
 
 static struct NS16550_plat serial_plat = {
 	.clock = 0x75 * 115200 * 16 /* MODE_X_DIV */,
diff --git a/arch/arm/mach-tegra/clock.c b/arch/arm/mach-tegra/clock.c
index 82065ee..8a7525d 100644
--- a/arch/arm/mach-tegra/clock.c
+++ b/arch/arm/mach-tegra/clock.c
@@ -26,7 +26,7 @@
 #include <linux/clk.h>
 #include <init.h>
 #include <asm/io.h>
-#include <mach/iomap.h>
+#include <mach/tegra20-silicon.h>
 
 static void __iomem *timer_reg_base = (void __iomem *) (TEGRA_TMR1_BASE);
 
diff --git a/arch/arm/mach-tegra/include/mach/debug_ll.h b/arch/arm/mach-tegra/include/mach/debug_ll.h
index 290ad58..4a54e44 100644
--- a/arch/arm/mach-tegra/include/mach/debug_ll.h
+++ b/arch/arm/mach-tegra/include/mach/debug_ll.h
@@ -22,7 +22,7 @@
 #define __INCLUDE_ARCH_DEBUG_LL_H__
 
 #include <asm/io.h>
-#include <mach/iomap.h>
+#include <mach/tegra20-silicon.h>
 
 #define DEBUG_LL_UART_ADDR	TEGRA_UARTA_BASE
 #define DEBUG_LL_UART_RSHFT	2
diff --git a/arch/arm/mach-tegra/include/mach/iomap.h b/arch/arm/mach-tegra/include/mach/iomap.h
deleted file mode 100644
index ba478e7..0000000
--- a/arch/arm/mach-tegra/include/mach/iomap.h
+++ /dev/null
@@ -1,292 +0,0 @@
-/*
- * arch/arm/mach-tegra/include/mach/iomap.h
- *
- * Copyright (C) 2010 Google, Inc.
- *
- * Author:
- *	Colin Cross <ccross@google.com>
- *	Erik Gilling <konkers@google.com>
- *
- * This software is licensed under the terms of the GNU General Public
- * License version 2, as published by the Free Software Foundation, and
- * may be copied, distributed, and modified under those terms.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __MACH_TEGRA_IOMAP_H
-#define __MACH_TEGRA_IOMAP_H
-
-#include <sizes.h>
-
-#define TEGRA_IRAM_BASE			0x40000000
-#define TEGRA_IRAM_SIZE			SZ_256K
-
-#define TEGRA_HOST1X_BASE		0x50000000
-#define TEGRA_HOST1X_SIZE		0x24000
-
-#define TEGRA_ARM_PERIF_BASE		0x50040000
-#define TEGRA_ARM_PERIF_SIZE		SZ_8K
-
-#define TEGRA_ARM_PL310_BASE		0x50043000
-#define TEGRA_ARM_PL310_SIZE		SZ_4K
-
-#define TEGRA_ARM_INT_DIST_BASE		0x50041000
-#define TEGRA_ARM_INT_DIST_SIZE		SZ_4K
-
-#define TEGRA_MPE_BASE			0x54040000
-#define TEGRA_MPE_SIZE			SZ_256K
-
-#define TEGRA_VI_BASE			0x54080000
-#define TEGRA_VI_SIZE			SZ_256K
-
-#define TEGRA_ISP_BASE			0x54100000
-#define TEGRA_ISP_SIZE			SZ_256K
-
-#define TEGRA_DISPLAY_BASE		0x54200000
-#define TEGRA_DISPLAY_SIZE		SZ_256K
-
-#define TEGRA_DISPLAY2_BASE		0x54240000
-#define TEGRA_DISPLAY2_SIZE		SZ_256K
-
-#define TEGRA_HDMI_BASE			0x54280000
-#define TEGRA_HDMI_SIZE			SZ_256K
-
-#define TEGRA_GART_BASE			0x58000000
-#define TEGRA_GART_SIZE			SZ_32M
-
-#define TEGRA_RES_SEMA_BASE		0x60001000
-#define TEGRA_RES_SEMA_SIZE		SZ_4K
-
-#define TEGRA_HDMI_BASE			0x54280000
-#define TEGRA_HDMI_SIZE			SZ_256K
-
-#define TEGRA_GART_BASE			0x58000000
-#define TEGRA_GART_SIZE			SZ_32M
-
-#define TEGRA_RES_SEMA_BASE		0x60001000
-#define TEGRA_RES_SEMA_SIZE		SZ_4K
-
-#define TEGRA_ARB_SEMA_BASE		0x60002000
-#define TEGRA_ARB_SEMA_SIZE		SZ_4K
-
-#define TEGRA_PRIMARY_ICTLR_BASE	0x60004000
-#define TEGRA_PRIMARY_ICTLR_SIZE	64
-
-#define TEGRA_ARBGNT_ICTLR_BASE		0x60004040
-#define TEGRA_ARBGNT_ICTLR_SIZE		192
-
-#define TEGRA_SECONDARY_ICTLR_BASE	0x60004100
-#define TEGRA_SECONDARY_ICTLR_SIZE	64
-
-#define TEGRA_TERTIARY_ICTLR_BASE	0x60004200
-#define TEGRA_TERTIARY_ICTLR_SIZE	64
-
-#define TEGRA_QUATERNARY_ICTLR_BASE	0x60004300
-#define TEGRA_QUATERNARY_ICTLR_SIZE	64
-
-#define TEGRA_TMR1_BASE			0x60005000
-#define TEGRA_TMR1_SIZE			8
-
-#define TEGRA_TMR2_BASE			0x60005008
-#define TEGRA_TMR2_SIZE			8
-
-#define TEGRA_TMRUS_BASE		0x60005010
-#define TEGRA_TMRUS_SIZE		64
-
-#define TEGRA_TMR3_BASE			0x60005050
-#define TEGRA_TMR3_SIZE			8
-
-#define TEGRA_TMR4_BASE			0x60005058
-#define TEGRA_TMR4_SIZE			8
-
-#define TEGRA_CLK_RESET_BASE		0x60006000
-#define TEGRA_CLK_RESET_SIZE		SZ_4K
-
-#define TEGRA_FLOW_CTRL_BASE		0x60007000
-#define TEGRA_FLOW_CTRL_SIZE		20
-
-#define TEGRA_AHB_DMA_BASE		0x60008000
-#define TEGRA_AHB_DMA_SIZE		SZ_4K
-
-#define TEGRA_AHB_DMA_CH0_BASE		0x60009000
-#define TEGRA_AHB_DMA_CH0_SIZE		32
-
-#define TEGRA_APB_DMA_BASE		0x6000A000
-#define TEGRA_APB_DMA_SIZE		SZ_4K
-
-#define TEGRA_APB_DMA_CH0_BASE		0x6000B000
-#define TEGRA_APB_DMA_CH0_SIZE		32
-
-#define TEGRA_AHB_GIZMO_BASE		0x6000C004
-#define TEGRA_AHB_GIZMO_SIZE		0x10C
-
-#define TEGRA_STATMON_BASE		0x6000C400
-#define TEGRA_STATMON_SIZE		SZ_1K
-
-#define TEGRA_GPIO_BASE			0x6000D000
-#define TEGRA_GPIO_SIZE			SZ_4K
-
-#define TEGRA_EXCEPTION_VECTORS_BASE    0x6000F000
-#define TEGRA_EXCEPTION_VECTORS_SIZE    SZ_4K
-
-#define TEGRA_VDE_BASE		0x6001A000
-#define TEGRA_VDE_SIZE		(SZ_8K + SZ_4K - SZ_256)
-
-#define TEGRA_APB_MISC_BASE		0x70000000
-#define TEGRA_APB_MISC_SIZE		SZ_4K
-
-#define TEGRA_APB_MISC_DAS_BASE		0x70000c00
-#define TEGRA_APB_MISC_DAS_SIZE		SZ_128
-
-#define TEGRA_AC97_BASE			0x70002000
-#define TEGRA_AC97_SIZE			SZ_512
-
-#define TEGRA_SPDIF_BASE		0x70002400
-#define TEGRA_SPDIF_SIZE		SZ_512
-
-#define TEGRA_I2S1_BASE			0x70002800
-#define TEGRA_I2S1_SIZE			SZ_256
-
-#define TEGRA_I2S2_BASE			0x70002A00
-#define TEGRA_I2S2_SIZE			SZ_256
-
-#define TEGRA_UARTA_BASE		0x70006000
-#define TEGRA_UARTA_SIZE		64
-
-#define TEGRA_UARTB_BASE		0x70006040
-#define TEGRA_UARTB_SIZE		64
-
-#define TEGRA_UARTC_BASE		0x70006200
-#define TEGRA_UARTC_SIZE		SZ_256
-
-#define TEGRA_UARTD_BASE		0x70006300
-#define TEGRA_UARTD_SIZE		SZ_256
-
-#define TEGRA_UARTE_BASE		0x70006400
-#define TEGRA_UARTE_SIZE		SZ_256
-
-#define TEGRA_NAND_BASE			0x70008000
-#define TEGRA_NAND_SIZE			SZ_256
-
-#define TEGRA_HSMMC_BASE		0x70008500
-#define TEGRA_HSMMC_SIZE		SZ_256
-
-#define TEGRA_SNOR_BASE			0x70009000
-#define TEGRA_SNOR_SIZE			SZ_4K
-
-#define TEGRA_PWFM_BASE			0x7000A000
-#define TEGRA_PWFM_SIZE			SZ_256
-
-#define TEGRA_PWFM0_BASE		0x7000A000
-#define TEGRA_PWFM0_SIZE		4
-
-#define TEGRA_PWFM1_BASE		0x7000A010
-#define TEGRA_PWFM1_SIZE		4
-
-#define TEGRA_PWFM2_BASE		0x7000A020
-#define TEGRA_PWFM2_SIZE		4
-
-#define TEGRA_PWFM3_BASE		0x7000A030
-#define TEGRA_PWFM3_SIZE		4
-
-#define TEGRA_MIPI_BASE			0x7000B000
-#define TEGRA_MIPI_SIZE			SZ_256
-
-#define TEGRA_I2C_BASE			0x7000C000
-#define TEGRA_I2C_SIZE			SZ_256
-
-#define TEGRA_TWC_BASE			0x7000C100
-#define TEGRA_TWC_SIZE			SZ_256
-
-#define TEGRA_SPI_BASE			0x7000C380
-#define TEGRA_SPI_SIZE			48
-
-#define TEGRA_I2C2_BASE			0x7000C400
-#define TEGRA_I2C2_SIZE			SZ_256
-
-#define TEGRA_I2C3_BASE			0x7000C500
-#define TEGRA_I2C3_SIZE			SZ_256
-
-#define TEGRA_OWR_BASE			0x7000C600
-#define TEGRA_OWR_SIZE			80
-
-#define TEGRA_DVC_BASE			0x7000D000
-#define TEGRA_DVC_SIZE			SZ_512
-
-#define TEGRA_SPI1_BASE			0x7000D400
-#define TEGRA_SPI1_SIZE			SZ_512
-
-#define TEGRA_SPI2_BASE			0x7000D600
-#define TEGRA_SPI2_SIZE			SZ_512
-
-#define TEGRA_SPI3_BASE			0x7000D800
-#define TEGRA_SPI3_SIZE			SZ_512
-
-#define TEGRA_SPI4_BASE			0x7000DA00
-#define TEGRA_SPI4_SIZE			SZ_512
-
-#define TEGRA_RTC_BASE			0x7000E000
-#define TEGRA_RTC_SIZE			SZ_256
-
-#define TEGRA_KBC_BASE			0x7000E200
-#define TEGRA_KBC_SIZE			SZ_256
-
-#define TEGRA_PMC_BASE			0x7000E400
-#define TEGRA_PMC_SIZE			SZ_256
-
-#define TEGRA_MC_BASE			0x7000F000
-#define TEGRA_MC_SIZE			SZ_1K
-
-#define TEGRA_EMC_BASE			0x7000F400
-#define TEGRA_EMC_SIZE			SZ_1K
-
-#define TEGRA_FUSE_BASE			0x7000F800
-#define TEGRA_FUSE_SIZE			SZ_1K
-
-#define TEGRA_KFUSE_BASE		0x7000FC00
-#define TEGRA_KFUSE_SIZE		SZ_1K
-
-#define TEGRA_CSITE_BASE		0x70040000
-#define TEGRA_CSITE_SIZE		SZ_256K
-
-#define TEGRA_USB_BASE			0xC5000000
-#define TEGRA_USB_SIZE			SZ_16K
-
-#define TEGRA_USB2_BASE			0xC5004000
-#define TEGRA_USB2_SIZE			SZ_16K
-
-#define TEGRA_USB3_BASE			0xC5008000
-#define TEGRA_USB3_SIZE			SZ_16K
-
-#define TEGRA_SDMMC1_BASE		0xC8000000
-#define TEGRA_SDMMC1_SIZE		SZ_512
-
-#define TEGRA_SDMMC2_BASE		0xC8000200
-#define TEGRA_SDMMC2_SIZE		SZ_512
-
-#define TEGRA_SDMMC3_BASE		0xC8000400
-#define TEGRA_SDMMC3_SIZE		SZ_512
-
-#define TEGRA_SDMMC4_BASE		0xC8000600
-#define TEGRA_SDMMC4_SIZE		SZ_512
-
-#if defined(CONFIG_TEGRA_DEBUG_UART_NONE)
-# define TEGRA_DEBUG_UART_BASE 0
-#elif defined(CONFIG_TEGRA_DEBUG_UARTA)
-# define TEGRA_DEBUG_UART_BASE TEGRA_UARTA_BASE
-#elif defined(CONFIG_TEGRA_DEBUG_UARTB)
-# define TEGRA_DEBUG_UART_BASE TEGRA_UARTB_BASE
-#elif defined(CONFIG_TEGRA_DEBUG_UARTC)
-# define TEGRA_DEBUG_UART_BASE TEGRA_UARTC_BASE
-#elif defined(CONFIG_TEGRA_DEBUG_UARTD)
-# define TEGRA_DEBUG_UART_BASE TEGRA_UARTD_BASE
-#elif defined(CONFIG_TEGRA_DEBUG_UARTE)
-# define TEGRA_DEBUG_UART_BASE TEGRA_UARTE_BASE
-#endif
-
-#endif
diff --git a/arch/arm/mach-tegra/include/mach/tegra20-silicon.h b/arch/arm/mach-tegra/include/mach/tegra20-silicon.h
new file mode 100644
index 0000000..d7140fb
--- /dev/null
+++ b/arch/arm/mach-tegra/include/mach/tegra20-silicon.h
@@ -0,0 +1,229 @@
+/*
+ * Copyright (C) 2010 Google, Inc.
+ * Copyright (C) 2012 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * Author:
+ *	Colin Cross <ccross@google.com>
+ *	Erik Gilling <konkers@google.com>
+ *
+ * This software is licensed under the terms of the GNU General Public
+ * License version 2, as published by the Free Software Foundation, and
+ * may be copied, distributed, and modified under those terms.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __MACH_TEGRA_IOMAP_H
+#define __MACH_TEGRA_IOMAP_H
+
+#include <sizes.h>
+
+#define TEGRA_EMEM_BASE			0x0
+#define TEGRA_EMEM_SIZE			SZ_1G
+
+#define TEGRA_IRAM_BASE			0x40000000
+#define TEGRA_IRAM_SIZE			SZ_256K
+
+#define TEGRA_ARM_PERIPHBASE		0x50040000
+#define TEGRA_ARM_PERIPHSIZE		SZ_8K
+
+#define TEGRA_ARM_INT_DIST_BASE		TEGRA_ARM_PERIPHBASE + 0x1000
+#define TEGRA_ARM_INT_DIST_SIZE		SZ_4K
+
+#define TEGRA_ARM_PL310_BASE		TEGRA_ARM_PERIPHBASE + 0x3000
+#define TEGRA_ARM_PL310_SIZE		SZ_4K
+
+#define TEGRA_HOST1X_BASE		0x50000000
+#define TEGRA_HOST1X_SIZE		SZ_64M
+
+#define TEGRA_MPE_BASE			TEGRA_HOST1X_BASE + 0x40000
+#define TEGRA_MPE_SIZE			SZ_256K
+
+#define TEGRA_VI_BASE			TEGRA_HOST1X_BASE + 0x80000
+#define TEGRA_VI_SIZE			SZ_256K
+
+#define TEGRA_ISP_BASE			TEGRA_HOST1X_BASE + 0x100000
+#define TEGRA_ISP_SIZE			SZ_256K
+
+#define TEGRA_DISPLAY_BASE		TEGRA_HOST1X_BASE + 0x200000
+#define TEGRA_DISPLAY_SIZE		SZ_256K
+
+#define TEGRA_DISPLAY2_BASE		TEGRA_HOST1X_BASE + 0x240000
+#define TEGRA_DISPLAY2_SIZE		SZ_256K
+
+#define TEGRA_HDMI_BASE			TEGRA_HOST1X_BASE + 0x280000
+#define TEGRA_HDMI_SIZE			SZ_256K
+
+#define TEGRA_TVO_BASE			TEGRA_HOST1X_BASE + 0x2C0000
+#define TGERA_TVO_SIZE			SZ_256K
+
+#define TEGRA_DSI_BASE			TEGRA_HOST1X_BASE + 0x300000
+#define TEGRA_DSI_SIZE			SZ_256K
+
+#define TEGRA_GART_BASE			0x58000000
+#define TEGRA_GART_SIZE			SZ_32M
+
+#define TEGRA_PPSB_BASE			0x60000000
+#define TEGRA_PPSB_SIZE			SZ_256M
+
+#define TEGRA_RES_SEMA_BASE		TEGRA_PPSB_BASE + 0x1000
+#define TEGRA_RES_SEMA_SIZE		SZ_4K
+
+#define TEGRA_ARB_SEMA_BASE		TEGRA_PPSB_BASE + 0x2000
+#define TEGRA_ARB_SEMA_SIZE		SZ_4K
+
+#define TEGRA_PRIMARY_ICTLR_BASE	TEGRA_PPSB_BASE + 0x4000
+#define TEGRA_PRIMARY_ICTLR_SIZE	64
+
+#define TEGRA_ARBGNT_ICTLR_BASE		TEGRA_PPSB_BASE + 0x4040
+#define TEGRA_ARBGNT_ICTLR_SIZE		192
+
+#define TEGRA_SECONDARY_ICTLR_BASE	TEGRA_PPSB_BASE + 0x4100
+#define TEGRA_SECONDARY_ICTLR_SIZE	64
+
+#define TEGRA_TERTIARY_ICTLR_BASE	TEGRA_PPSB_BASE + 0x4200
+#define TEGRA_TERTIARY_ICTLR_SIZE	64
+
+#define TEGRA_QUATERNARY_ICTLR_BASE	TEGRA_PPSB_BASE + 0x4300
+#define TEGRA_QUATERNARY_ICTLR_SIZE	64
+
+#define TEGRA_TMR1_BASE			TEGRA_PPSB_BASE + 0x5000
+#define TEGRA_TMR1_SIZE			8
+
+#define TEGRA_TMR2_BASE			TEGRA_PPSB_BASE + 0x5008
+#define TEGRA_TMR2_SIZE			8
+
+#define TEGRA_TMRUS_BASE		TEGRA_PPSB_BASE + 0x5010
+#define TEGRA_TMRUS_SIZE		64
+
+#define TEGRA_TMR3_BASE			TEGRA_PPSB_BASE + 0x5050
+#define TEGRA_TMR3_SIZE			8
+
+#define TEGRA_TMR4_BASE			TEGRA_PPSB_BASE + 0x5058
+#define TEGRA_TMR4_SIZE			8
+
+#define TEGRA_CLK_RESET_BASE		TEGRA_PPSB_BASE + 0x6000
+#define TEGRA_CLK_RESET_SIZE		SZ_4K
+
+#define TEGRA_FLOW_CTRL_BASE		TEGRA_PPSB_BASE + 0x7000
+#define TEGRA_FLOW_CTRL_SIZE		20
+
+#define TEGRA_AHB_DMA_BASE		TEGRA_PPSB_BASE + 0x8000
+#define TEGRA_AHB_DMA_SIZE		SZ_4K
+
+#define TEGRA_GPIO_BASE			TEGRA_PPSB_BASE + 0xD000
+#define TEGRA_GPIO_SIZE			SZ_4K
+
+#define TEGRA_EXCEPTION_VECTORS_BASE	TEGRA_PPSB_BASE + 0xF000
+#define TEGRA_EXCEPTION_VECTORS_SIZE	SZ_4K
+
+#define TEGRA_APB_BASE			0x70000000
+#define TEGRA_APB_SIZE			SZ_256M
+
+#define TEGRA_UARTA_BASE		TEGRA_APB_BASE + 0x6000
+#define TEGRA_UARTA_SIZE		64
+
+#define TEGRA_UARTB_BASE		TEGRA_APB_BASE + 0x6040
+#define TEGRA_UARTB_SIZE		64
+
+#define TEGRA_UARTC_BASE		TEGRA_APB_BASE + 0x6200
+#define TEGRA_UARTC_SIZE		256
+
+#define TEGRA_UARTD_BASE		TEGRA_APB_BASE + 0x6300
+#define TEGRA_UARTD_SIZE		256
+
+#define TEGRA_UARTE_BASE		TEGRA_APB_BASE + 0x6400
+#define TEGRA_UARTE_SIZE		256
+
+#define TEGRA_NAND_BASE			TEGRA_APB_BASE + 0x8000
+#define TEGRA_NAND_SIZE			256
+
+#define TEGRA_SNOR_BASE			TEGRA_APB_BASE + 0x9000
+#define TEGRA_SNOR_SIZE			SZ_4K
+
+#define TEGRA_I2C_BASE			TEGRA_APB_BASE + 0xC000
+#define TEGRA_I2C_SIZE			256
+
+#define TEGRA_TWC_BASE			TEGRA_APB_BASE + 0xC100
+#define TEGRA_TWC_SIZE			256
+
+#define TEGRA_SPI_BASE			TEGRA_APB_BASE + 0xC380
+#define TEGRA_SPI_SIZE			48
+
+#define TEGRA_I2C2_BASE			TEGRA_APB_BASE + 0xC400
+#define TEGRA_I2C2_SIZE			256
+
+#define TEGRA_I2C3_BASE			TEGRA_APB_BASE + 0xC500
+#define TEGRA_I2C3_SIZE			256
+
+#define TEGRA_OWR_BASE			TEGRA_APB_BASE + 0xC600
+#define TEGRA_OWR_SIZE			80
+
+#define TEGRA_DVC_BASE			TEGRA_APB_BASE + 0xD000
+#define TEGRA_DVC_SIZE			512
+
+#define TEGRA_SPI1_BASE			TEGRA_APB_BASE + 0xD400
+#define TEGRA_SPI1_SIZE			512
+
+#define TEGRA_SPI2_BASE			TEGRA_APB_BASE + 0xD600
+#define TEGRA_SPI2_SIZE			512
+
+#define TEGRA_SPI3_BASE			TEGRA_APB_BASE + 0xD800
+#define TEGRA_SPI3_SIZE			512
+
+#define TEGRA_SPI4_BASE			TEGRA_APB_BASE + 0xDA00
+#define TEGRA_SPI4_SIZE			512
+
+#define TEGRA_RTC_BASE			TEGRA_APB_BASE + 0xE000
+#define TEGRA_RTC_SIZE			256
+
+#define TEGRA_KBC_BASE			TEGRA_APB_BASE + 0xE200
+#define TEGRA_KBC_SIZE			256
+
+#define TEGRA_PMC_BASE			TEGRA_APB_BASE + 0xE400
+#define TEGRA_PMC_SIZE			256
+
+#define TEGRA_MC_BASE			TEGRA_APB_BASE + 0xF000
+#define TEGRA_MC_SIZE			SZ_1K
+
+#define TEGRA_EMC_BASE			TEGRA_APB_BASE + 0xF400
+#define TEGRA_EMC_SIZE			SZ_1K
+
+#define TEGRA_FUSE_BASE			TEGRA_APB_BASE + 0xF800
+#define TEGRA_FUSE_SIZE			SZ_1K
+
+#define TEGRA_KFUSE_BASE		TEGRA_APB_BASE + 0xFC00
+#define TEGRA_KFUSE_SIZE		SZ_1K
+
+#define TEGRA_CSITE_BASE		TEGRA_APB_BASE + 0x40000
+#define TEGRA_CSITE_SIZE		SZ_256K
+
+#define TEGRA_AHB_BASE			0xC0000000
+#define TEGRA_AHB_SIZE			SZ_256M
+
+#define TEGRA_USB_BASE			TEGRA_AHB_BASE + 0x5000000
+#define TEGRA_USB_SIZE			SZ_16K
+
+#define TEGRA_USB2_BASE			TEGRA_AHB_BASE + 0x5004000
+#define TEGRA_USB2_SIZE			SZ_16K
+
+#define TEGRA_USB3_BASE			TEGRA_AHB_BASE + 0x5008000
+#define TEGRA_USB3_SIZE			SZ_16K
+
+#define TEGRA_SDMMC1_BASE		TEGRA_AHB_BASE + 0x8000000
+#define TEGRA_SDMMC1_SIZE		512
+
+#define TEGRA_SDMMC2_BASE		TEGRA_AHB_BASE + 0x8000200
+#define TEGRA_SDMMC2_SIZE		512
+
+#define TEGRA_SDMMC3_BASE		TEGRA_AHB_BASE + 0x8000400
+#define TEGRA_SDMMC3_SIZE		512
+
+#define TEGRA_SDMMC4_BASE		TEGRA_AHB_BASE + 0x8000600
+#define TEGRA_SDMMC4_SIZE		512
+
+#endif
diff --git a/arch/arm/mach-tegra/reset.c b/arch/arm/mach-tegra/reset.c
index 91f9b3b..73d7ca2 100644
--- a/arch/arm/mach-tegra/reset.c
+++ b/arch/arm/mach-tegra/reset.c
@@ -22,7 +22,7 @@
 
 #include <common.h>
 #include <asm/io.h>
-#include <mach/iomap.h>
+#include <mach/tegra20-silicon.h>
 
 #define PRM_RSTCTRL		TEGRA_PMC_BASE
 
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
