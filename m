Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x244.google.com ([2607:f8b0:400e:c03::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4Qr-0008GO-FA
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:40 +0000
Received: by mail-pa0-x244.google.com with SMTP id r9so7947032paz.1
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:39 -0700
Message-Id: <1475505657-898-3-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/20] i.MX: Add DEBUG_LL hooks for VF610
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to support DEBUG_LL functionality on VF610/Vybrid platform.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/debug_ll.h   |  27 ++-
 arch/arm/mach-imx/include/mach/vf610-regs.h | 126 +++++++++++++
 common/Kconfig                              |  10 +-
 include/serial/lpuart.h                     | 265 ++++++++++++++++++++++++++++
 4 files changed, 426 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/vf610-regs.h
 create mode 100644 include/serial/lpuart.h

diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index 5c2db6c..a132f3c 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -14,8 +14,10 @@
 #include <mach/imx51-regs.h>
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
+#include <mach/vf610-regs.h>
 
 #include <serial/imx-uart.h>
+#include <serial/lpuart.h>
 
 #ifdef CONFIG_DEBUG_LL
 
@@ -42,6 +44,8 @@
 #define IMX_DEBUG_SOC MX53
 #elif defined CONFIG_DEBUG_IMX6Q_UART
 #define IMX_DEBUG_SOC MX6
+#elif defined CONFIG_DEBUG_VF610_UART
+#define IMX_DEBUG_SOC VF610
 #else
 #error "unknown i.MX debug uart soc type"
 #endif
@@ -74,6 +78,13 @@ static inline void imx6_uart_setup_ll(void)
 	imx6_uart_setup(base);
 }
 
+static inline void vf610_uart_setup_ll(void)
+{
+	void *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC, CONFIG_DEBUG_IMX_UART_PORT));
+
+	lpuart_setup(base, 66000000);
+}
+
 static inline void PUTC_LL(int c)
 {
 	void __iomem *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,
@@ -82,14 +93,19 @@ static inline void PUTC_LL(int c)
 	if (!base)
 		return;
 
-	imx_uart_putc(base, c);
+	if (IS_ENABLED(CONFIG_DEBUG_VF610_UART))
+		lpuart_putc(base, c);
+	else
+		imx_uart_putc(base, c);
 }
+
 #else
 
 static inline void imx50_uart_setup_ll(void) {}
 static inline void imx51_uart_setup_ll(void) {}
 static inline void imx53_uart_setup_ll(void) {}
 static inline void imx6_uart_setup_ll(void)  {}
+static inline void vf610_uart_setup_ll(void) {}
 
 #endif /* CONFIG_DEBUG_LL */
 
@@ -115,4 +131,13 @@ static inline void imx53_ungate_all_peripherals(void)
 	imx_ungate_all_peripherals(IOMEM(MX53_CCM_BASE_ADDR));
 }
 
+static inline void vf610_ungate_all_peripherals(void)
+{
+	void __iomem *ccmbase = IOMEM(VF610_CCM_BASE_ADDR);
+	int i;
+
+	for (i = 0x40; i <= 0x6c; i += 4)
+		writel(0xffffffff, ccmbase + i);
+}
+
 #endif /* __MACH_DEBUG_LL_H__ */
diff --git a/arch/arm/mach-imx/include/mach/vf610-regs.h b/arch/arm/mach-imx/include/mach/vf610-regs.h
new file mode 100644
index 0000000..a1c1a09
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/vf610-regs.h
@@ -0,0 +1,126 @@
+/*
+ * Copyright 2013-2014 Freescale Semiconductor, Inc.
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#ifndef __ASM_ARCH_IMX_REGS_H__
+#define __ASM_ARCH_IMX_REGS_H__
+
+#define VF610_IRAM_BASE_ADDR		0x3F000000	/* internal ram */
+#define VF610_IRAM_SIZE			0x00080000	/* 512 KB */
+
+#define VF610_AIPS0_BASE_ADDR		0x40000000
+#define VF610_AIPS1_BASE_ADDR		0x40080000
+
+/* AIPS 0 */
+#define VF610_MSCM_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00001000)
+#define VF610_MSCM_IR_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00001800)
+#define VF610_CA5SCU_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00002000)
+#define VF610_CA5_INTD_BASE_ADDR	(VF610_AIPS0_BASE_ADDR + 0x00003000)
+#define VF610_CA5_L2C_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00006000)
+#define VF610_NIC0_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00008000)
+#define VF610_NIC1_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00009000)
+#define VF610_NIC2_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0000A000)
+#define VF610_NIC3_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0000B000)
+#define VF610_NIC4_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0000C000)
+#define VF610_NIC5_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0000D000)
+#define VF610_NIC6_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0000E000)
+#define VF610_NIC7_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0000F000)
+#define VF610_AHBTZASC_BASE_ADDR	(VF610_AIPS0_BASE_ADDR + 0x00010000)
+#define VF610_TZASC_SYS0_BASE_ADDR	(VF610_AIPS0_BASE_ADDR + 0x00011000)
+#define VF610_TZASC_SYS1_BASE_ADDR	(VF610_AIPS0_BASE_ADDR + 0x00012000)
+#define VF610_TZASC_GFX_BASE_ADDR	(VF610_AIPS0_BASE_ADDR + 0x00013000)
+#define VF610_TZASC_DDR0_BASE_ADDR	(VF610_AIPS0_BASE_ADDR + 0x00014000)
+#define VF610_TZASC_DDR1_BASE_ADDR	(VF610_AIPS0_BASE_ADDR + 0x00015000)
+#define VF610_CSU_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00017000)
+#define VF610_DMA0_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00018000)
+#define VF610_DMA0_TCD_BASE_ADDR	(VF610_AIPS0_BASE_ADDR + 0x00019000)
+#define VF610_SEMA4_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0001D000)
+#define VF610_FB_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0001E000)
+#define VF610_DMA_MUX0_BASE_ADDR	(VF610_AIPS0_BASE_ADDR + 0x00024000)
+#define VF610_UART1_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00027000)
+#define VF610_UART2_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00028000)
+#define VF610_UART3_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00029000)
+#define VF610_UART4_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0002A000)
+#define VF610_SPI0_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0002C000)
+#define VF610_SPI1_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0002D000)
+#define VF610_SAI0_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0002F000)
+#define VF610_SAI1_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00030000)
+#define VF610_SAI2_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00031000)
+#define VF610_SAI3_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00032000)
+#define VF610_CRC_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00033000)
+#define VF610_USBC0_BASE_ADDR     	(VF610_AIPS0_BASE_ADDR + 0x00034000)
+#define VF610_PDB_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00036000)
+#define VF610_PIT_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00037000)
+#define VF610_FTM0_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00038000)
+#define VF610_FTM1_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00039000)
+#define VF610_ADC_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0003B000)
+#define VF610_TCON0_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0003D000)
+#define VF610_WDOG1_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0003E000)
+#define VF610_LPTMR_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00040000)
+#define VF610_RLE_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00042000)
+#define VF610_MLB_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00043000)
+#define VF610_QSPI0_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00044000)
+#define VF610_IOMUXC_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00048000)
+#define VF610_ANADIG_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00050000)
+#define VF610_USB_PHY0_BASE_ADDR	(VF610_AIPS0_BASE_ADDR + 0x00050800)
+#define VF610_USB_PHY1_BASE_ADDR	(VF610_AIPS0_BASE_ADDR + 0x00050C00)
+#define VF610_SCSC_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00052000)
+#define VF610_ASRC_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00060000)
+#define VF610_SPDIF_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00061000)
+#define VF610_ESAI_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00062000)
+#define VF610_ESAI_FIFO_BASE_ADDR	(VF610_AIPS0_BASE_ADDR + 0x00063000)
+#define VF610_WDOG_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00065000)
+#define VF610_I2C1_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00066000)
+#define VF610_I2C2_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00067000)
+#define VF610_I2C3_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x000E6000)
+#define VF610_I2C4_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x000E7000)
+#define VF610_WKUP_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0006A000)
+#define VF610_CCM_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0006B000)
+#define VF610_GPC_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0006C000)
+#define VF610_VREG_DIG_BASE_ADDR	(VF610_AIPS0_BASE_ADDR + 0x0006D000)
+#define VF610_SRC_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0006E000)
+#define VF610_CMU_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x0006F000)
+#define VF610_GPIO0_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x000FF000)
+#define VF610_GPIO1_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x000FF040)
+#define VF610_GPIO2_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x000FF080)
+#define VF610_GPIO3_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x000FF0C0)
+#define VF610_GPIO4_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x000FF100)
+
+/* AIPS 1 */
+#define VF610_OCOTP_BASE_ADDR		(VF610_AIPS1_BASE_ADDR + 0x00025000)
+#define VF610_DDR_BASE_ADDR		(VF610_AIPS1_BASE_ADDR + 0x0002E000)
+#define VF610_ESDHC0_BASE_ADDR		(VF610_AIPS1_BASE_ADDR + 0x00031000)
+#define VF610_ESDHC1_BASE_ADDR		(VF610_AIPS1_BASE_ADDR + 0x00032000)
+#define VF610_USBC1_BASE_ADDR		(VF610_AIPS1_BASE_ADDR + 0x00034000)
+#define VF610_ENET_BASE_ADDR		(VF610_AIPS1_BASE_ADDR + 0x00050000)
+#define VF610_ENET1_BASE_ADDR		(VF610_AIPS1_BASE_ADDR + 0x00051000)
+#define VF610_NFC_BASE_ADDR		(VF610_AIPS1_BASE_ADDR + 0x00060000)
+
+#define VF610_QSPI0_AMBA_BASE		0x20000000
+
+
+/* MSCM interrupt rounter */
+#define VF610_MSCM_IRSPRC(n)				(0x880 + 2 * (n))
+#define VF610_MSCM_CPxTYPE					0
+#define VF610_MSCM_IRSPRC_CP0_EN				1
+#define VF610_MSCM_IRSPRC_NUM					112
+
+/* System Reset Controller (SRC) */
+#define SRC_SRSR_SW_RST					(0x1 << 18)
+#define SRC_SRSR_RESETB					(0x1 << 7)
+#define SRC_SRSR_JTAG_RST				(0x1 << 5)
+#define SRC_SRSR_WDOG_M4				(0x1 << 4)
+#define SRC_SRSR_WDOG_A5				(0x1 << 3)
+#define SRC_SRSR_POR_RST				(0x1 << 0)
+#define SRC_SBMR2_BMOD_MASK             (0x3 << 24)
+#define SRC_SBMR2_BMOD_SHIFT            24
+#define SRC_SBMR2_BMOD_FUSES            0x0
+#define SRC_SBMR2_BMOD_SERIAL           0x1
+#define SRC_SBMR2_BMOD_RCON             0x2
+
+/* Slow Clock Source Controller Module (SCSC) */
+#define SCSC_SOSC_CTR_SOSC_EN            0x1
+
+#endif	/* __ASM_ARCH_IMX_REGS_H__ */
diff --git a/common/Kconfig b/common/Kconfig
index f2badc7..3f1583f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1071,6 +1071,13 @@ config DEBUG_IMX6Q_UART
 	  Say Y here if you want kernel low-level debugging support
 	  on i.MX6Q.
 
+config DEBUG_VF610_UART
+	bool "VF610 Debug UART"
+	depends on ARCH_VF610
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on VF610.
+
 config DEBUG_OMAP3_UART
 	bool "OMAP3 Debug UART"
 	depends on ARCH_OMAP3
@@ -1111,7 +1118,8 @@ config DEBUG_IMX_UART_PORT
 						DEBUG_IMX51_UART || \
 						DEBUG_IMX53_UART || \
 						DEBUG_IMX6Q_UART || \
-						DEBUG_IMX6SL_UART
+						DEBUG_IMX6SL_UART || \
+						DEBUG_VF610_UART
 	default 1
 	depends on ARCH_IMX
 	help
diff --git a/include/serial/lpuart.h b/include/serial/lpuart.h
new file mode 100644
index 0000000..13077f9
--- /dev/null
+++ b/include/serial/lpuart.h
@@ -0,0 +1,265 @@
+/*
+ * Copyright (c) 2016 Zodiac Inflight Innovation
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * Based on code found in Linux kernel and U-Boot.
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
+#ifndef __LPUART_H__
+#define __LPUART_H__
+
+
+/* All registers are 8-bit width */
+#define UARTBDH			0x00
+#define UARTBDL			0x01
+#define UARTCR1			0x02
+#define UARTCR2			0x03
+#define UARTSR1			0x04
+#define UARTCR3			0x06
+#define UARTDR			0x07
+#define UARTCR4			0x0a
+#define UARTCR5			0x0b
+#define UARTMODEM		0x0d
+#define UARTPFIFO		0x10
+#define UARTCFIFO		0x11
+#define UARTSFIFO		0x12
+#define UARTTWFIFO		0x13
+#define UARTTCFIFO		0x14
+#define UARTRWFIFO		0x15
+#define UARTRCFIFO		0x16
+
+#define UARTBDH_LBKDIE		0x80
+#define UARTBDH_RXEDGIE		0x40
+#define UARTBDH_SBR_MASK	0x1f
+
+#define UARTCR1_LOOPS		0x80
+#define UARTCR1_RSRC		0x20
+#define UARTCR1_M		0x10
+#define UARTCR1_WAKE		0x08
+#define UARTCR1_ILT		0x04
+#define UARTCR1_PE		0x02
+#define UARTCR1_PT		0x01
+
+#define UARTCR2_TIE		0x80
+#define UARTCR2_TCIE		0x40
+#define UARTCR2_RIE		0x20
+#define UARTCR2_ILIE		0x10
+#define UARTCR2_TE		0x08
+#define UARTCR2_RE		0x04
+#define UARTCR2_RWU		0x02
+#define UARTCR2_SBK		0x01
+
+#define UARTSR1_TDRE		0x80
+#define UARTSR1_TC		0x40
+#define UARTSR1_RDRF		0x20
+#define UARTSR1_IDLE		0x10
+#define UARTSR1_OR		0x08
+#define UARTSR1_NF		0x04
+#define UARTSR1_FE		0x02
+#define UARTSR1_PE		0x01
+
+#define UARTCR3_R8		0x80
+#define UARTCR3_T8		0x40
+#define UARTCR3_TXDIR		0x20
+#define UARTCR3_TXINV		0x10
+#define UARTCR3_ORIE		0x08
+#define UARTCR3_NEIE		0x04
+#define UARTCR3_FEIE		0x02
+#define UARTCR3_PEIE		0x01
+
+#define UARTCR4_MAEN1		0x80
+#define UARTCR4_MAEN2		0x40
+#define UARTCR4_M10		0x20
+#define UARTCR4_BRFA_MASK	0x1f
+#define UARTCR4_BRFA_OFF	0
+
+#define UARTCR5_TDMAS		0x80
+#define UARTCR5_RDMAS		0x20
+
+#define UARTMODEM_RXRTSE	0x08
+#define UARTMODEM_TXRTSPOL	0x04
+#define UARTMODEM_TXRTSE	0x02
+#define UARTMODEM_TXCTSE	0x01
+
+#define UARTPFIFO_TXFE		0x80
+#define UARTPFIFO_FIFOSIZE_MASK	0x7
+#define UARTPFIFO_TXSIZE_OFF	4
+#define UARTPFIFO_RXFE		0x08
+#define UARTPFIFO_RXSIZE_OFF	0
+
+#define UARTCFIFO_TXFLUSH	0x80
+#define UARTCFIFO_RXFLUSH	0x40
+#define UARTCFIFO_RXOFE		0x04
+#define UARTCFIFO_TXOFE		0x02
+#define UARTCFIFO_RXUFE		0x01
+
+#define UARTSFIFO_TXEMPT	0x80
+#define UARTSFIFO_RXEMPT	0x40
+#define UARTSFIFO_RXOF		0x04
+#define UARTSFIFO_TXOF		0x02
+#define UARTSFIFO_RXUF		0x01
+
+/* 32-bit register defination */
+#define UARTBAUD		0x00
+#define UARTSTAT		0x04
+#define UARTCTRL		0x08
+#define UARTDATA		0x0C
+#define UARTMATCH		0x10
+#define UARTMODIR		0x14
+#define UARTFIFO		0x18
+#define UARTWATER		0x1c
+
+#define UARTBAUD_MAEN1		0x80000000
+#define UARTBAUD_MAEN2		0x40000000
+#define UARTBAUD_M10		0x20000000
+#define UARTBAUD_TDMAE		0x00800000
+#define UARTBAUD_RDMAE		0x00200000
+#define UARTBAUD_MATCFG		0x00400000
+#define UARTBAUD_BOTHEDGE	0x00020000
+#define UARTBAUD_RESYNCDIS	0x00010000
+#define UARTBAUD_LBKDIE		0x00008000
+#define UARTBAUD_RXEDGIE	0x00004000
+#define UARTBAUD_SBNS		0x00002000
+#define UARTBAUD_SBR		0x00000000
+#define UARTBAUD_SBR_MASK	0x1fff
+
+#define UARTSTAT_LBKDIF		0x80000000
+#define UARTSTAT_RXEDGIF	0x40000000
+#define UARTSTAT_MSBF		0x20000000
+#define UARTSTAT_RXINV		0x10000000
+#define UARTSTAT_RWUID		0x08000000
+#define UARTSTAT_BRK13		0x04000000
+#define UARTSTAT_LBKDE		0x02000000
+#define UARTSTAT_RAF		0x01000000
+#define UARTSTAT_TDRE		0x00800000
+#define UARTSTAT_TC		0x00400000
+#define UARTSTAT_RDRF		0x00200000
+#define UARTSTAT_IDLE		0x00100000
+#define UARTSTAT_OR		0x00080000
+#define UARTSTAT_NF		0x00040000
+#define UARTSTAT_FE		0x00020000
+#define UARTSTAT_PE		0x00010000
+#define UARTSTAT_MA1F		0x00008000
+#define UARTSTAT_M21F		0x00004000
+
+#define UARTCTRL_R8T9		0x80000000
+#define UARTCTRL_R9T8		0x40000000
+#define UARTCTRL_TXDIR		0x20000000
+#define UARTCTRL_TXINV		0x10000000
+#define UARTCTRL_ORIE		0x08000000
+#define UARTCTRL_NEIE		0x04000000
+#define UARTCTRL_FEIE		0x02000000
+#define UARTCTRL_PEIE		0x01000000
+#define UARTCTRL_TIE		0x00800000
+#define UARTCTRL_TCIE		0x00400000
+#define UARTCTRL_RIE		0x00200000
+#define UARTCTRL_ILIE		0x00100000
+#define UARTCTRL_TE		0x00080000
+#define UARTCTRL_RE		0x00040000
+#define UARTCTRL_RWU		0x00020000
+#define UARTCTRL_SBK		0x00010000
+#define UARTCTRL_MA1IE		0x00008000
+#define UARTCTRL_MA2IE		0x00004000
+#define UARTCTRL_IDLECFG	0x00000100
+#define UARTCTRL_LOOPS		0x00000080
+#define UARTCTRL_DOZEEN		0x00000040
+#define UARTCTRL_RSRC		0x00000020
+#define UARTCTRL_M		0x00000010
+#define UARTCTRL_WAKE		0x00000008
+#define UARTCTRL_ILT		0x00000004
+#define UARTCTRL_PE		0x00000002
+#define UARTCTRL_PT		0x00000001
+
+#define UARTDATA_NOISY		0x00008000
+#define UARTDATA_PARITYE	0x00004000
+#define UARTDATA_FRETSC		0x00002000
+#define UARTDATA_RXEMPT		0x00001000
+#define UARTDATA_IDLINE		0x00000800
+#define UARTDATA_MASK		0x3ff
+
+#define UARTMODIR_IREN		0x00020000
+#define UARTMODIR_TXCTSSRC	0x00000020
+#define UARTMODIR_TXCTSC	0x00000010
+#define UARTMODIR_RXRTSE	0x00000008
+#define UARTMODIR_TXRTSPOL	0x00000004
+#define UARTMODIR_TXRTSE	0x00000002
+#define UARTMODIR_TXCTSE	0x00000001
+
+#define UARTFIFO_TXEMPT		0x00800000
+#define UARTFIFO_RXEMPT		0x00400000
+#define UARTFIFO_TXOF		0x00020000
+#define UARTFIFO_RXUF		0x00010000
+#define UARTFIFO_TXFLUSH	0x00008000
+#define UARTFIFO_RXFLUSH	0x00004000
+#define UARTFIFO_TXOFE		0x00000200
+#define UARTFIFO_RXUFE		0x00000100
+#define UARTFIFO_TXFE		0x00000080
+#define UARTFIFO_FIFOSIZE_MASK	0x7
+#define UARTFIFO_TXSIZE_OFF	4
+#define UARTFIFO_RXFE		0x00000008
+#define UARTFIFO_RXSIZE_OFF	0
+
+#define UARTWATER_COUNT_MASK	0xff
+#define UARTWATER_TXCNT_OFF	8
+#define UARTWATER_RXCNT_OFF	24
+#define UARTWATER_WATER_MASK	0xff
+#define UARTWATER_TXWATER_OFF	0
+#define UARTWATER_RXWATER_OFF	16
+
+#define FSL_UART_RX_DMA_BUFFER_SIZE	64
+
+static inline void lpuart_setbrg(void __iomem *base,
+				 unsigned int refclock,
+				 unsigned int baudrate)
+{
+	u16 sbr;
+	sbr = (u16) (refclock / (16 * baudrate));
+
+	writeb(sbr >> 8,   base + UARTBDH);
+	writeb(sbr & 0xff, base + UARTBDL);
+}
+
+static inline void lpuart_setup(void __iomem *base,
+				unsigned int refclock)
+{
+
+	/* Disable UART */
+	writeb(0, base + UARTCR2);
+	writeb(0, base + UARTMODEM);
+	writeb(0, base + UARTCR1);
+
+	/* Disable FIFOs */
+	writeb(0, base + UARTPFIFO);
+	writeb(0, base + UARTTWFIFO);
+	writeb(1, base + UARTRWFIFO);
+	writeb(UARTCFIFO_RXFLUSH | UARTCFIFO_TXFLUSH, base + UARTCFIFO);
+
+	lpuart_setbrg(base, refclock, CONFIG_BAUDRATE);
+
+	writeb(UARTCR2_TE | UARTCR2_RE, base + UARTCR2);
+}
+
+static inline void lpuart_putc(void __iomem *base, int c)
+{
+	if (!(readb(base + UARTCR2) & UARTCR2_TE))
+		return;
+
+	while (!(readb(base + UARTSR1) & UARTSR1_TDRE));
+
+	writeb(c, base + UARTDR);
+}
+
+#endif	/* __IMX_UART_H__ */
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
